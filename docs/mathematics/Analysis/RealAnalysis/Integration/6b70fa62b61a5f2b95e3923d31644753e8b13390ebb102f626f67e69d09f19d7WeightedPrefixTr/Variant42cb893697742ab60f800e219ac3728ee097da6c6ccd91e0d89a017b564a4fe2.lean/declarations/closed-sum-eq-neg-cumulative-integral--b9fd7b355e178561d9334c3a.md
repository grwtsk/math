# closed_sum_eq_neg_cumulative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ab0b1d-5f6c-f5d4-c1a1-84c58e0e71c7",
  "kind": "theorem",
  "lexical_name": "closed_sum_eq_neg_cumulative_integral",
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
  "slug": "closed-sum-eq-neg-cumulative-integral--b9fd7b355e178561d9334c3a",
  "source": {
    "blob": "43143f1c991f810fa9245bccd9412246001703cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9fd7b355e178561d9334c3a0779d0a59f1691ebab19eca9d83c014f902d59de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ab0b1d-5f6c-f5d4-c1a1-84c58e0e71c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_sum_eq_neg_cumulative_integral (a : ℕ → ℝ) (w : ℝ → ℝ) (X : ℝ)
    (ha : a 0 = 0)
    (hd : ∀ t ∈ Set.Icc 1 X, DifferentiableAt ℝ w t)
    (hi : MeasureTheory.IntegrableOn (deriv w) (Set.Icc 1 X)) (hend : w X = 0) :
    (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, a n * w n) =
      -(∫ x in Set.Ioc 1 X, (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, a n) * deriv w x) := by
  have h := sum_mul_eq_sub_integral_mul₀ a ha X hd hi
  rw [hend, zero_mul, zero_sub] at h
  simpa only [mul_comm] using h

#print axioms signed_sum_by_parts
#print axioms abs_weighted_sum_le_prefix_variation
#print axioms weighted_actual_le_model_add_budget
#print axioms closed_sum_eq_neg_cumulative_integral

end PortfolioUniformity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/6b70fa62b61a5f2b95e3923d31644753e8b13390ebb102f626f67e69d09f19d7WeightedPrefixTr/Variant42cb893697742ab60f800e219ac3728ee097da6c6ccd91e0d89a017b564a4fe2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43143f1c991f810fa9245bccd9412246001703cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
