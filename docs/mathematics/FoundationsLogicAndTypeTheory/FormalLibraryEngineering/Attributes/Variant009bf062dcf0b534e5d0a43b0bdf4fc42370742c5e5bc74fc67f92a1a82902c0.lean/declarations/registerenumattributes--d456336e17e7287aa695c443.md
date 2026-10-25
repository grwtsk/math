# registerEnumAttributes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3536ee576bd17414abfc84b511553d25fd9fa1c243f4efcdfe8dd1be48c51d83",
  "kind": "def",
  "lexical_name": "registerEnumAttributes",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "registerenumattributes--d456336e17e7287aa695c443",
  "source": {
    "blob": "a0dedc7f44f57f9d8b74d6705b30ebae22a11f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d456336e17e7287aa695c4432d059733fd966c9de89a2ad13a65cb31fcd85e8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3536ee576bd17414abfc84b511553d25fd9fa1c243f4efcdfe8dd1be48c51d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerEnumAttributes (attrDescrs : List (Name × String × α))
    (validate : Name → α → AttrM Unit := fun _ _ => pure ())
    (applicationTime := AttributeApplicationTime.afterTypeChecking)
    (ref : Name := by exact decl_name%) : IO (EnumAttributes α) := do
  let ext : PersistentEnvExtension (Name × α) (Name × α) (NameMap α) ← registerPersistentEnvExtension {
    name            := ref
    mkInitial       := pure {}
    addImportedFn   := fun _ _ => pure {}
    addEntryFn      := fun (s : NameMap α) (p : Name × α) => s.insert p.1 p.2
    exportEntriesFnEx := fun env m =>
      let all : Array (Name × α) := m.foldl (fun a n p => a.push (n, p)) #[] |>.qsort (fun a b => Name.quickLt a.1 b.1)
      -- Do not export info for private defs at exported/server levels
      let exported := all.filter ((env.setExporting true).contains (skipRealize := false) ·.1)
      { exported, server := exported, «private» := all }
    statsFn         := fun s => "enumeration attribute extension" ++ Format.line ++ "number of local entries: " ++ format s.size
    -- We assume (and check in `modifyState`) that, if used asynchronously, enum attributes are set
    -- only in the same context in which the tagged declaration was created
    asyncMode       := .async .mainEnv
    replay?         := some fun _ newState consts st => consts.foldl (init := st) fun st c =>
      match newState.find? c with
      | some v => st.insert c v
      | _      => st
  }
  let attrs := attrDescrs.map fun (name, descr, val) => {
    ref             := ref
    name            := name
    descr           := descr
    add             := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let env ← getEnv
      unless (env.getModuleIdxFor? decl).isNone do
        throwAttrDeclInImportedModule name decl
      validate decl val
      modifyEnv fun env => ext.addEntry (asyncDecl := decl) env (decl, val)
    applicationTime := applicationTime
    : AttributeImpl
  }
  attrs.forM registerBuiltinAttribute
  pure { ext := ext, attrs := attrs }

namespace EnumAttributes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0dedc7f44f57f9d8b74d6705b30ebae22a11f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
