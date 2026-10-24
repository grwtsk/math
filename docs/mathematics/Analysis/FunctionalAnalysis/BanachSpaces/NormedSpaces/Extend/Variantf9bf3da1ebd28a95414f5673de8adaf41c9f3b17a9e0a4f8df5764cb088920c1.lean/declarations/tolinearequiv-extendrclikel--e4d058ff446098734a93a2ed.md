# toLinearEquiv_extendRCLikeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84d5dd5fbeb0eb763d77eb667953ecafeb8b12de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88f498c7-6a6b-9189-3665-028b86bfd04c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ec89d96-3887-e05b-47e3-0c2026722ee8",
  "kind": "lemma",
  "lexical_name": "toLinearEquiv_extendRCLikeL",
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
  "slug": "tolinearequiv-extendrclikel--e4d058ff446098734a93a2ed",
  "source": {
    "blob": "84d5dd5fbeb0eb763d77eb667953ecafeb8b12de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d058ff446098734a93a2eda1ccb1cb4444f586143540857fcd959329676498",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ec89d96-3887-e05b-47e3-0c2026722ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLinearEquiv_extendRCLikeL {𝕜 F : Type*} [RCLike 𝕜] [TopologicalSpace F]
    [AddCommGroup F] [Module 𝕜 F] [ContinuousSMul 𝕜 F] [Module ℝ F] [IsScalarTower ℝ 𝕜 F] :
    (extendRCLikeL (𝕜 := 𝕜) (F := F)).toLinearEquiv = extendRCLikeₗ :=
  rfl

/-- If a continuous real-linear functional is bounded by a `𝕜`-seminorm, then its `𝕜`-linear
extension is bounded by the same seminorm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extend/Variantf9bf3da1ebd28a95414f5673de8adaf41c9f3b17a9e0a4f8df5764cb088920c1.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d5dd5fbeb0eb763d77eb667953ecafeb8b12de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
