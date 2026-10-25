# registerCombinatorAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:234613c927e3fc9b722ee02b4803629679d6454e92e4a94a4ff2ef68d3cb88d5",
  "kind": "def",
  "lexical_name": "registerCombinatorAttribute",
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
  "slug": "registercombinatorattribute--f8b3f77f8a330fa831535375",
  "source": {
    "blob": "c556b54c8d7e47f470f4e379ec4cafbd7ed3aea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8b3f77f8a330fa831535375d011c7b8762e919097ca2cfa9a9fba3aca14a586",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:234613c927e3fc9b722ee02b4803629679d6454e92e4a94a4ff2ef68d3cb88d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerCombinatorAttribute (name : Name) (descr : String) (ref : Name := by exact decl_name%)
    : IO CombinatorAttribute := do
  let ext : SimplePersistentEnvExtension (Name × Name) (NameMap Name) ← registerSimplePersistentEnvExtension {
    name            := ref,
    addImportedFn   := mkStateFromImportedEntries (fun s p => s.insert p.1 p.2) {},
    addEntryFn      := fun (s : NameMap Name) (p : Name × Name) => s.insert p.1 p.2,
  }
  let attrImpl : AttributeImpl := {
    ref   := ref,
    name  := name,
    descr := descr,
    add   := fun decl stx _ => do
      let env ← getEnv
      let parserDeclName ← Elab.realizeGlobalConstNoOverloadWithInfo (← Attribute.Builtin.getIdent stx)
      recordExtraModUseFromDecl (isMeta := false) parserDeclName
      setEnv <| ext.addEntry env (parserDeclName, decl)
  }
  registerBuiltinAttribute attrImpl
  pure { impl := attrImpl, ext := ext }

namespace CombinatorAttribute

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c556b54c8d7e47f470f4e379ec4cafbd7ed3aea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
