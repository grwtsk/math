# LinearMap.finrank_le_of_isSMulRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e612be22f5f7394aa07d0c3f388790d19d4ae00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 499,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16761e67-a796-f218-17ae-a4a40ea0c317",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33cbc424-6758-4313-c9ac-847a22556fdf",
  "kind": "theorem",
  "lexical_name": "LinearMap.finrank_le_of_isSMulRegular",
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
  "slug": "linearmap-finrank-le-of-issmulregular--afc8740094ee873fc08f58fd",
  "source": {
    "blob": "1e612be22f5f7394aa07d0c3f388790d19d4ae00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 499,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc8740094ee873fc08f58fd9693d6abab9f8507cb6bf3a109c55a7cacda9a62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33cbc424-6758-4313-c9ac-847a22556fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.finrank_le_of_isSMulRegular {S : Type*} [CommSemiring S] [Algebra S R]
    [Module S M] [IsScalarTower S R M] (L L' : Submodule R M) [Module.Finite R L'] {s : S}
    (hr : IsSMulRegular M s) (h : ∀ x ∈ L, s • x ∈ L') :
    Module.finrank R L ≤ Module.finrank R L' := by
  refine finrank_le_finrank_of_rank_le_rank (lift_le.mpr <| rank_le_of_isSMulRegular L L' hr h) ?_
  rw [← Module.finrank_eq_rank R L']
  exact nat_lt_aleph0 (finrank R ↥L')

variable (R S M) in
/-- Also see `Module.finrank_top_le_finrank_of_isScalarTower_of_free`
for a version with different typeclass constraints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e612be22f5f7394aa07d0c3f388790d19d4ae00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
