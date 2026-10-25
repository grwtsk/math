# bethNested_subsets_exceed_catalogue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbb9eb97-d9a9-3b93-a623-1d4f6917700b",
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
  "slug": "bethnested-subsets-exceed-catalogue--09b2e91cf3d5258bf5c81a64",
  "source": {
    "blob": "d97469824abc6854062a591199878a52ccde390a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variantb1b7c0df12aced6a20f013513c935f58a1dd0ecea8c1c1d76bff8e61b54b81e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b2e91cf3d5258bf5c81a64c60a188a52894bc11847138aeef5020774e5d4c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variantb1b7c0df12aced6a20f013513c935f58a1dd0ecea8c1c1d76bff8e61b54b81e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb9eb97-d9a9-3b93-a623-1d4f6917700b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–104.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variantb1b7c0df12aced6a20f013513c935f58a1dd0ecea8c1c1d76bff8e61b54b81e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variantb1b7c0df12aced6a20f013513c935f58a1dd0ecea8c1c1d76bff8e61b54b81e2.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97469824abc6854062a591199878a52ccde390a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
