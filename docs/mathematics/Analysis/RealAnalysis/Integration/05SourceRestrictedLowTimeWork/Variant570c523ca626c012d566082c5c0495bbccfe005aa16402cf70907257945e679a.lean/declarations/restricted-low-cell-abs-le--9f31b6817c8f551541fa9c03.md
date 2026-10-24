# restricted_low_cell_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0501b2a-c3bb-4483-6624-5671b0ada3a7",
  "kind": "theorem",
  "lexical_name": "restricted_low_cell_abs_le",
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
  "slug": "restricted-low-cell-abs-le--9f31b6817c8f551541fa9c03",
  "source": {
    "blob": "0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 235,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f31b6817c8f551541fa9c037005e48fc082d2c223da3eedfe6e50f8d206a745",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0501b2a-c3bb-4483-6624-5671b0ada3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem restricted_low_cell_abs_le
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ}
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (U : ℕ) (hU : 1 ≤ U)
    (H : ℝ) (hH : 0 ≤ H)
    (hpair : ∀ t u : ℝ, |∫ v in S, r (v - t) * r (v + Real.log u)| ≤ H)
    {k : ℝ} (hk : 0 < k) :
    |∫ v in S, timeRow r (Real.log (U : ℝ))
      (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r k v| ≤
      errorBudget * H *
        (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
          cellMass k := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  let P : ℝ → ℝ → ℝ := fun t u => ∫ v in S, r (v - t) * r (v + Real.log u)
  have hinner (t : ℝ) (ht : Real.log (U : ℝ) ≤ t) :
      |∫ u in k..(k + 1), ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))| ≤
        errorBudget * Real.exp (t / 2) * H * cellMass k := by
    have he (u : ℝ) : (∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))) =
        (errorWeight t / (u * Real.sqrt u)) * P t u := by
      unfold P
      simp_rw [show ∀ v : ℝ,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) =
          (errorWeight t / (u * Real.sqrt u)) * (r (v - t) * r (v + Real.log u)) by
            intro v; ring]
      exact integral_const_mul _ _
    have hm := (cell_mass_integrable hk).const_mul (errorBudget * Real.exp (t / 2) * H)
    have hn := intervalIntegral.norm_integral_le_of_norm_le (by linarith : k ≤ k + 1)
      (f := fun u => ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)))
      (g := fun u => (errorBudget * Real.exp (t / 2) * H) *
        (1 / (u * Real.sqrt u))) (by
        filter_upwards [] with u hu
        have hu0 : 0 < u := hk.trans hu.1
        have hd : 0 < u * Real.sqrt u := mul_pos hu0 (Real.sqrt_pos.mpr hu0)
        rw [he u, Real.norm_eq_abs, abs_mul, abs_div]
        have hw : |errorWeight t| = |mangoldtLogError t| * Real.exp (t / 2) := by
          simp only [errorWeight, SourceActualMixedWorkFubini.errorExp, abs_mul,
            abs_of_pos (Real.exp_pos _)]
        rw [hw, abs_of_pos hd]
        have herr := mangoldt_error_on_low_time_abs_le U hU t ht
        have hp := hpair t u
        change |mangoldtLogError t| * Real.exp (t / 2) / (u * Real.sqrt u) * |P t u| ≤ _
        change |P t u| ≤ H at hp
        calc
          _ ≤ |mangoldtLogError t| * Real.exp (t / 2) / (u * Real.sqrt u) * H :=
            _root_.mul_le_mul_of_nonneg_left hp
              (div_nonneg (mul_nonneg (abs_nonneg _) (Real.exp_pos _).le) hd.le)
          _ ≤ errorBudget * Real.exp (t / 2) / (u * Real.sqrt u) * H :=
            _root_.mul_le_mul_of_nonneg_right
              (_root_.div_le_div_of_nonneg_right
                (_root_.mul_le_mul_of_nonneg_right herr (Real.exp_pos _).le) hd.le) hH
          _ = _ := by ring) hm
    rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
    simpa only [cellMass] using hn
  have hcmajor : Continuous (fun t : ℝ =>
      (errorBudget * H * cellMass k) * Real.exp (t / 2)) := by fun_prop
  have hm : IntervalIntegrable (fun t : ℝ =>
      (errorBudget * H * cellMass k) * Real.exp (t / 2))
      (volume : Measure ℝ) (Real.log (U : ℝ))
      (Real.log ((U + 1 : ℕ) : ℝ)) :=
    hcmajor.continuousOn.intervalIntegrable_of_Icc hla
  rw [restricted_cell_fubini_factorization r hc hla hk hs S]
  have hn := intervalIntegral.norm_integral_le_of_norm_le hla
    (f := fun t => ∫ u in k..(k + 1), ∫ v in S,
      errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)))
    (g := fun t => (errorBudget * H * cellMass k) * Real.exp (t / 2)) (by
      filter_upwards [] with t ht
      rw [Real.norm_eq_abs]
      exact (hinner t ht.1.le).trans_eq (by ring)) hm
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  exact hn.trans_eq (by ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
