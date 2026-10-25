# bethNested_subsets_exceed_catalogue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be202aeb-93e0-c96c-eed4-a7e06966b17d",
  "kind": "theorem",
  "lexical_name": "bethNested_subsets_exceed_catalogue",
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
  "slug": "bethnested-subsets-exceed-catalogue--bc43cbaa6b867a6ffce7d9d7",
  "source": {
    "blob": "34236f82d953112c477c6249d29ca31e073ede92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc43cbaa6b867a6ffce7d9d73b4b24cfec129d0afd5e4f43006c5be951180e71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be202aeb-93e0-c96c-eed4-a7e06966b17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethNested_subsets_exceed_catalogue :
    #bethNestedCatalogue < #(Set BethAmbient) := by
  rw [bethNestedCatalogue_card, Cardinal.mk_set, bethFiber_sigma_card]
  exact Cardinal.cantor _

end FormalResearch.MathematicalTooling.Coverage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34236f82d953112c477c6249d29ca31e073ede92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
