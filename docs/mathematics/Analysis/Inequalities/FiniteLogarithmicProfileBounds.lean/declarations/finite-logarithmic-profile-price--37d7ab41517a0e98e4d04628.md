# finite_logarithmic_profile_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbdbe09-e02b-8ade-1807-071da4fc31ee",
  "kind": "theorem",
  "lexical_name": "finite_logarithmic_profile_price",
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
  "slug": "finite-logarithmic-profile-price--37d7ab41517a0e98e4d04628",
  "source": {
    "blob": "d131550a02f087f68c11367d4bd54a17b586017b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 27,
    "path": "GRWTSK/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37d7ab41517a0e98e4d04628a7a3807e667297d0c7f48e0bd429e0ad25907126",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbdbe09-e02b-8ade-1807-071da4fc31ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_logarithmic_profile_price {F : ℝ → ℝ} {t U B D : ℝ}
    (regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)))
    (differentiable : Differentiable ℝ F) (price : ∀ u : ℝ, |F u| ≤ B)
    (derivativePrice : ∀ u : ℝ, |deriv F u| ≤ D)
    (admitted : IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x))
      (Ioi 0))
    (fullZero : (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) = 0)
    (silent : ∀ u : ℝ, U < u → F u = 0) (hU : 0 ≤ U) (ht : 0 ≤ t) :
    |∑ i ∈ Finset.Icc 2 ⌊Real.exp U⌋₊, Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))| ≤ 8 * B + 4 * D := by
  let N : ℕ := ⌊Real.exp U⌋₊
  have lower : 1 ≤ N := (LogarithmicProfileCutoff.exponential_floor_bounds hU).1
  have orderedNat : 1 ≤ N + 1 := lower.trans (Nat.le_succ N)
  have ordered : (1 : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast orderedNat
  have tail : ∀ x : ℝ, ((N + 1 : ℕ) : ℝ) < x →
      Real.log x / Real.sqrt x * F (t + Real.log x) = 0 := by
    intro x hx
    apply LogarithmicProfileCutoff.logarithmic_profile_zero_above_floor silent ht
    simpa only [Nat.cast_add, Nat.cast_one] using hx.le
  have error : |(∑ i ∈ Finset.Ico 1 (N + 1), Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))) - (∫ x in (1 : ℝ)..((N + 1 : ℕ) : ℝ),
      Real.log x / Real.sqrt x * F (t + Real.log x))| ≤ 4 * B + 4 * D := by
    have fullError := FiniteUnitSumVariation.finite_unit_sum_error regular orderedNat
    have fullVariation := LogarithmicProfileIntegralPrices.logarithmic_profile_variation_price
      regular differentiable price derivativePrice ordered
    simp only [Nat.cast_one] at fullError
    exact fullError.trans fullVariation
  have samplePrice := PositiveHalfLineCutoffBalance.positive_halfline_sample_price
    admitted fullZero ordered tail error
  rw [LogarithmicProfileCutoff.full_logarithmic_integer_inventory F t N] at samplePrice
  have lowerPrice := LogarithmicProfileIntegralPrices.logarithmic_profile_lower_price
    admitted price
  exact (samplePrice.trans (add_le_add le_rfl lowerPrice)).trans_eq (by ring)

end

end GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d131550a02f087f68c11367d4bd54a17b586017b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
