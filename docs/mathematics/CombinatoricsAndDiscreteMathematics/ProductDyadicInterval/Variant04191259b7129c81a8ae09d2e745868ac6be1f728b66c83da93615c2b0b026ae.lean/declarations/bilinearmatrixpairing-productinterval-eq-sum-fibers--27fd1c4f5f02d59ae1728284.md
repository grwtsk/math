# bilinearMatrixPairing_productInterval_eq_sum_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:181b768c-e902-5363-306e-5762c688b15f",
  "kind": "theorem",
  "lexical_name": "bilinearMatrixPairing_productInterval_eq_sum_fibers",
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
  "slug": "bilinearmatrixpairing-productinterval-eq-sum-fibers--27fd1c4f5f02d59ae1728284",
  "source": {
    "blob": "f8addf8f2001e3bc2480aa5f6a1217640f467146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27fd1c4f5f02d59ae1728284ec629c3d01d07f4c63e7c72693a1b83142db30dd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181b768c-e902-5363-306e-5762c688b15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilinearMatrixPairing_productInterval_eq_sum_fibers
    {N q : ℕ} {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left : Left → ℂ) (right : Right → ℂ)
    (interval : TypeIIProductDyadicInterval N q) :
    bilinearMatrixPairing left
        (typeIIProductIntervalMatrix leftIndex rightIndex interval) right =
      ∑ n ∈ interval.carrier,
        bilinearMatrixPairing left
          (productFiberIncrementMatrix leftIndex rightIndex n) right := by
  rw [typeIIProductIntervalMatrix_eq_sum_fibers]
  exact bilinearMatrixPairing_finset_sum left interval.carrier
    (productFiberIncrementMatrix leftIndex rightIndex) right

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8addf8f2001e3bc2480aa5f6a1217640f467146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
