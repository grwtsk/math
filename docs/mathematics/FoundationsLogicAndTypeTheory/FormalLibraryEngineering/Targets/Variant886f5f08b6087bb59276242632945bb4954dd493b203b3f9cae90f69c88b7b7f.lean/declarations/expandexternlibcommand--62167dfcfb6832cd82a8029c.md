# expandExternLibCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47929bd70ec07724318f098b2be0627117d56134a977b1d406a925350fa0fd04",
  "kind": "def",
  "lexical_name": "expandExternLibCommand",
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
  "slug": "expandexternlibcommand--62167dfcfb6832cd82a8029c",
  "source": {
    "blob": "282f166cc2e5654160774d06dc4836b558e00e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62167dfcfb6832cd82a8029c02aa717324edc34f75571ba5458b7fbf6e88281c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47929bd70ec07724318f098b2be0627117d56134a977b1d406a925350fa0fd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandExternLibCommand : Macro := fun stx => do
  let `(externLibCommand|$(doc?)? $(attrs?)? extern_lib%$kw $spec) := stx
    | Macro.throwErrorAt stx "ill-formed external library declaration"
  let `(externLibDeclSpec| $nameStx $[$pkg?]? := $defn $[$wds?:whereDecls]?) := spec
    | Macro.throwErrorAt spec "ill-formed external library signature"
  withRef kw do
  let attr1 ← `(Term.attrInstance| «target»)
  let attr2 ← `(Term.attrInstance| «extern_lib»)
  let attrs := #[attr1, attr2] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let targetId := mkIdentFrom id <| id.getId.modifyBase (· ++ `static)
  let name := Name.quoteFrom id id.getId
  let kind := Name.quoteFrom kw ExternLib.configKind
  `(target $targetId:ident $[$pkg?]? : FilePath := $defn $[$wds?:whereDecls]?
    family_def $id : CustomOut (__name__, $name) := ConfigTarget $kind
    $[$doc?:docComment]? def $id : ExternLibDecl :=
      Lake.DSL.mkExternLibDecl __name__ $name
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Targets/Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282f166cc2e5654160774d06dc4836b558e00e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
