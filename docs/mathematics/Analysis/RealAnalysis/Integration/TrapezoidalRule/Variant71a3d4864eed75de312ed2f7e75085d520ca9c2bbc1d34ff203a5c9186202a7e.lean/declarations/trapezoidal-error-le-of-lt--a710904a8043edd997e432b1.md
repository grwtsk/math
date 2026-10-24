# trapezoidal_error_le_of_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db9923b-8d46-6e36-206d-d083aac94932",
  "kind": "lemma",
  "lexical_name": "trapezoidal_error_le_of_lt'",
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
  "slug": "trapezoidal-error-le-of-lt--a710904a8043edd997e432b1",
  "source": {
    "blob": "adf07a042f3966614958fb73239bd0b7eac37dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a710904a8043edd997e432b1a6656f240702c5918049add237b2de2482485b90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db9923b-8d46-6e36-206d-d083aac94932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma trapezoidal_error_le_of_lt' {f : ℝ → ℝ} {ζ : ℝ} {a b : ℝ} (a_lt_b : a < b)
    (h_df : DifferentiableOn ℝ f (Icc a b))
    (h_ddf : DifferentiableOn ℝ (derivWithin f (Icc a b)) (Icc a b))
    (fpp_bound : ∀ x, |iteratedDerivWithin 2 f (Icc a b) x| ≤ ζ) :
    |trapezoidal_error f 1 a b| ≤ (b - a) ^ 3 * ζ / 12 := by
  rw [mul_div_assoc, mul_comm]
  let g (t : ℝ) := trapezoidal_error f 1 a t
  -- Hand-computed expressions for g' and g''.
  let dg (t : ℝ) := (1 / 2) * (f a + f t) + ((t - a) / 2) * (derivWithin f (Icc a b) t) - f t
  let ddg (t : ℝ) := ((t - a) / 2) * (iteratedDerivWithin 2 f (Icc a b) t)
  -- Compute g' by applying standard derivative identities.
  have h_dg (y : ℝ) (hy : y ∈ Icc a b) : HasDerivWithinAt g (dg y) (Icc a b) y := by
    unfold g trapezoidal_error trapezoidal_integral
    simp only [Nat.cast_one, div_one, tsub_self, Finset.range_zero, sum_empty, add_zero]
    simp_rw [← mul_comm_div]
    refine fun_sub (fun_mul (div_const (sub_const _ (hasDerivWithinAt_id _ _)) _)
      (const_add _ (h_df y hy).hasDerivWithinAt)) ?_
    have := Fact.mk hy -- Needed for integral_hasDerivWithinAt_right
    apply integral_hasDerivWithinAt_right
    · exact (h_df.continuousOn.mono (Icc_subset_Icc le_rfl hy.2)).intervalIntegrable_of_Icc hy.1
    · exact h_df.continuousOn.stronglyMeasurableAtFilter_nhdsWithin measurableSet_Icc y
    · exact h_df.continuousOn.continuousWithinAt hy
  -- Compute g'', once again applying standard derivative identities.
  have h_ddg (y : ℝ) (hx : y ∈ Icc a b) : HasDerivWithinAt dg (ddg y) (Icc a b) y := by
    -- The eventual expression for g'' has several terms that cancel, which we have to undo here
    -- so that the various HasDerivWithinAt theorems will have everything they need.
    let dfaky := derivWithin f (Icc a b) y
    rw [(by ring : ddg y = (1 / 2) * dfaky + ((1 / 2) * dfaky + ddg y) - dfaky)]
    refine fun_sub (fun_add (const_mul _ (const_add _ (h_df y hx).hasDerivWithinAt))
      (fun_mul (div_const (sub_const _ (hasDerivWithinAt_id _ _)) _) ?_))
      (h_df y hx).hasDerivWithinAt
    rw [iteratedDerivWithin_eq_iterate]
    exact (h_ddf y hx).hasDerivWithinAt
  -- Technically this would work for all x ≥ a, but we only need it for x ∈ Icc a b (and it makes
  -- more pure-mathematical sense that way).
  have bound_ddg (x : ℝ) (hx : x ∈ Icc a b) : |ddg x| ≤ (ζ / 2) * ((x - a) ^ 1) := by
    simp_rw [pow_one, ddg, abs_mul, abs_div, abs_two]
    grw [fpp_bound x, abs_of_nonneg (sub_nonneg.mpr hx.1), div_mul_comm]
  have key {φ φ' : ℝ → ℝ} (h : ∀ x ∈ Icc a b, HasDerivWithinAt φ (φ' x) (Icc a b) x) (h0 : φ a = 0)
      {c : ℝ} {n : ℕ} (h_bound : ∀ t ∈ Icc a b, |φ' t| ≤ c * (t - a) ^ n) :
      ∀ t ∈ Icc a b, |φ t| ≤ c / (n + 1) * (t - a) ^ (n + 1) := by
    intro t ht
    have hB (x) : HasDerivAt (fun y ↦ c / (n + 1) * (y - a) ^ (n + 1)) (c * (x - a) ^ n) x := by
      convert!
        (hasDerivAt_const x (c / (n + 1))).mul
          (((hasDerivAt_id x).sub (hasDerivAt_const x a)).pow (n + 1)) using 1
      simp [sub_eq_add_neg, field]
    simpa [Real.norm_eq_abs, h0] using image_norm_le_of_norm_deriv_right_le_deriv_boundary
      (fun x hx ↦ (h x hx).continuousWithinAt)
      (fun x hx ↦ by grind [Icc_mem_nhdsGE_of_mem, mono_of_mem_nhdsWithin])
      (by simp [h0]) hB (fun x hx ↦ h_bound x (Ico_subset_Icc_self hx)) ht
  exact (key h_dg (trapezoidal_error_eq f 1 a) (key h_ddg (by ring) bound_ddg) b
    ⟨a_lt_b.le, le_rfl⟩).trans_eq (by ring_nf)

/-- The hard part of the trapezoidal rule error bound: proving it in the case of a non-empty closed
interval with ordered endpoints. This lemma is used in the proof of the general error bound later
on. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf07a042f3966614958fb73239bd0b7eac37dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
