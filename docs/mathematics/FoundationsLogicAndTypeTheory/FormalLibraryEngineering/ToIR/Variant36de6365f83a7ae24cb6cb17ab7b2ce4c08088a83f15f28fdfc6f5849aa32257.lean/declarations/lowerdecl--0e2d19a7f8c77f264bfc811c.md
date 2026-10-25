# lowerDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:570602673d915761b74c7104f33fe1eb67b9550743ee9d1428b137610d8131e1",
  "kind": "def",
  "lexical_name": "lowerDecl",
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
  "slug": "lowerdecl--0e2d19a7f8c77f264bfc811c",
  "source": {
    "blob": "00c4a61287655258cd703832aeb46051b65e56c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant36de6365f83a7ae24cb6cb17ab7b2ce4c08088a83f15f28fdfc6f5849aa32257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e2d19a7f8c77f264bfc811c984c1e56cbf3949cbd082adf5452685332c45ab1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant36de6365f83a7ae24cb6cb17ab7b2ce4c08088a83f15f28fdfc6f5849aa32257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:570602673d915761b74c7104f33fe1eb67b9550743ee9d1428b137610d8131e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerDecl (d : LCNF.Decl .impure) : M (Option Decl) := do
  let params ← d.params.mapM lowerParam
  let resultType := toIRType d.type
  match d.value with
  | .code code =>
    let body ← lowerCode code
    pure <| some <| .fdecl d.name params resultType body {}
  | .extern externAttrData =>
    if externAttrData.entries.isEmpty then
      -- TODO: This matches the behavior of the old compiler, but we should
      -- find a better way to handle this.
      addDecl (mkDummyExternDecl d.name params resultType)
      pure <| none
    else
      pure <| some <| .extern d.name params resultType externAttrData

end ToIR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant36de6365f83a7ae24cb6cb17ab7b2ce4c08088a83f15f28fdfc6f5849aa32257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant36de6365f83a7ae24cb6cb17ab7b2ce4c08088a83f15f28fdfc6f5849aa32257.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c4a61287655258cd703832aeb46051b65e56c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
