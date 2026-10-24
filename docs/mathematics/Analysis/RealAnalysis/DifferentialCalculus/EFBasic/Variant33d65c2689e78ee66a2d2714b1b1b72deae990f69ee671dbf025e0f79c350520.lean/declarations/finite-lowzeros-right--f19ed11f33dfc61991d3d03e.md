# finite_lowZeros_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31cf1174-eed0-89e9-92e2-13ff0466ad8e",
  "kind": "theorem",
  "lexical_name": "finite_lowZeros_right",
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
  "slug": "finite-lowzeros-right--f19ed11f33dfc61991d3d03e",
  "source": {
    "blob": "987f6c585cf712ebfb3430a2d8819ef5be564a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 244,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f19ed11f33dfc61991d3d03ee132d6cd57465091e63a4a23ba26f3f92922c520",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31cf1174-eed0-89e9-92e2-13ff0466ad8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_lowZeros_right (t₀ : ℝ) :
    ({s : ℂ | 9/8 ≤ s.re ∧ s.re ≤ 5/4 ∧ |s.im| ≤ t₀} ∩ hardyW ⁻¹' {0}).Finite := by
  -- W is analytic on a neighbourhood of the box and not identically zero there (W = ζ·E₂ with
  -- Re E₂(5/4 + it) ≠ 0 for large t); isolated zeros + compactness.
  obtain ⟨t₁, ht₁, hlow⟩ := hardyW_two_line_lower
  -- We embed the box in the bigger rectangle [9/8, 2] × [−R, R], on which W is analytic
  -- (W has no poles on 1 < Re s < 3), and use the nonvanishing point 2 + i t₁ from the two-line bound.
  set R : ℝ := max (max t₀ 0) t₁ with hR
  have hsub : {s : ℂ | 9/8 ≤ s.re ∧ s.re ≤ 5/4 ∧ |s.im| ≤ t₀} ∩ hardyW ⁻¹' {0}
      ⊆ Rectangle (((9/8:ℝ):ℂ) - R * I) ((2:ℂ) + R * I) ∩ hardyW ⁻¹' {0} := by
    intro s ⟨⟨h1, h2, h3⟩, h0⟩
    refine ⟨?_, h0⟩
    rw [mem_Rect (by simp; norm_num) (by simp; exact le_trans (by positivity) (le_max_of_le_left (le_max_right _ _)))]
    simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self, add_re,
      re_ofNat, add_zero, sub_im, mul_im, zero_sub, add_im, im_ofNat, zero_add, sub_zero]
    refine ⟨h1, by linarith, ?_, ?_⟩
    · have := (abs_le.mp h3).1; have : t₀ ≤ R := le_trans (le_max_left _ _) (le_max_left _ _); linarith
    · have := (abs_le.mp h3).2; have : t₀ ≤ R := le_trans (le_max_left _ _) (le_max_left _ _); linarith
  refine Set.Finite.subset ?_ hsub
  -- analyticity on the closed rectangle [9/8, 2] × [−R, R]: 1 < Re < 3 avoids every pole
  have hanal : AnalyticOnNhd ℂ hardyW (Rectangle (((9/8:ℝ):ℂ) - R * I) ((2:ℂ) + R * I)) := by
    intro s hs
    have hR0 : 0 ≤ R := le_trans (le_max_right _ _) (le_max_left _ _)
    rw [mem_Rect (by simp; norm_num) (by simp; linarith)] at hs
    simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self, add_re,
      re_ofNat, add_zero, sub_im, mul_im, zero_sub, add_im, im_ofNat, zero_add, sub_zero] at hs
    obtain ⟨h1, h2, -, -⟩ := hs
    -- points with 1 < Re < 3: Γℝ(s), Γℝ(1−s) analytic, s ≠ 1
    have hne1 : s ≠ 1 := fun h => by rw [h] at h1; simp at h1; linarith
    have hA : ∀ m : ℕ, s / 2 ≠ -(m:ℂ) := by
      intro m h; have := congrArg Complex.re h; simp at this
      have : (0:ℝ) ≤ m := Nat.cast_nonneg m; linarith
    have hB : ∀ m : ℕ, (1 - s) / 2 ≠ -(m:ℂ) := by
      intro m h; have := congrArg Complex.re h; simp at this
      rcases Nat.eq_zero_or_pos m with rfl | hm
      · simp at this; linarith
      · rcases Nat.lt_or_ge m 2 with hm2 | hm2
        · interval_cases m <;> simp at this <;> linarith
        · have : (2:ℝ) ≤ m := by exact_mod_cast hm2
          linarith
    -- assemble: chiFE analytic & ≠ 0 at s
    have hG : AnalyticAt ℂ Gammaℝ s := by
      refine Complex.analyticAt_iff_eventually_differentiableAt.mpr ?_
      have hopen : IsOpen {z : ℂ | 1 < z.re ∧ z.re < 3} :=
        (isOpen_lt continuous_const Complex.continuous_re).inter (isOpen_lt Complex.continuous_re continuous_const)
      filter_upwards [hopen.mem_nhds (show s ∈ {z : ℂ | 1 < z.re ∧ z.re < 3} from ⟨by linarith, by linarith⟩)] with z hz
      refine differentiableAt_Gammaℝ_of_ne fun m h => ?_
      have := congrArg Complex.re h; simp at this
      have : (0:ℝ) ≤ m := Nat.cast_nonneg m; linarith [hz.1]
    have hG1 : AnalyticAt ℂ (fun z => Gammaℝ (1 - z)) s := by
      have h : AnalyticAt ℂ Gammaℝ (1 - s) := by
        refine Complex.analyticAt_iff_eventually_differentiableAt.mpr ?_
        have hopen : IsOpen {z : ℂ | -2 < z.re ∧ z.re < 0} :=
          (isOpen_lt continuous_const Complex.continuous_re).inter (isOpen_lt Complex.continuous_re continuous_const)
        have hmem : (1 - s) ∈ {z : ℂ | -2 < z.re ∧ z.re < 0} := by
          simp only [mem_setOf_eq, sub_re, one_re]; constructor <;> linarith
        filter_upwards [hopen.mem_nhds hmem] with z hz
        refine differentiableAt_Gammaℝ_of_ne fun m h => ?_
        have := congrArg Complex.re h; simp at this
        rcases Nat.eq_zero_or_pos m with rfl | hm
        · simp at this; linarith [hz.2]
        · have : (1:ℝ) ≤ m := by exact_mod_cast hm
          linarith [hz.1]
      exact h.comp (analyticAt_const.sub analyticAt_id)
    have hχ : AnalyticAt ℂ chiFE s := by
      have : chiFE = fun z => Gammaℝ (1 - z) / Gammaℝ z := funext chiFE_def
      rw [this]; exact hG1.div hG (Gammaℝ_ne_zero_of_ne hA)
    have hχ0 : chiFE s ≠ 0 := div_ne_zero (Gammaℝ_ne_zero_of_ne hB) (Gammaℝ_ne_zero_of_ne hA)
    have hL2 : AnalyticAt ℂ L2 s := by
      have e : L2 = fun z => -(1/2) * (deriv chiFE z / chiFE z) := by funext z; rw [L2, logDeriv_apply]
      rw [e]; exact analyticAt_const.mul (hχ.deriv.div hχ hχ0)
    have e : hardyW = fun z => deriv riemannZeta z + L2 z * riemannZeta z := funext fun z => rfl
    rw [e]
    exact (analyticAt_deriv_riemannZeta hne1).add (hL2.mul (Hardy.analyticAt_riemannZeta hne1))
  -- the nonvanishing point 2 + i t₁ lies in the rectangle
  have hx : (2:ℂ) + t₁ * I ∈ Rectangle (((9/8:ℝ):ℂ) - R * I) ((2:ℂ) + R * I) := by
    have hR0 : t₁ ≤ R := le_max_right _ _
    rw [mem_Rect (by simp; norm_num) (by simp; linarith)]
    simp; constructor <;> [norm_num; constructor <;> linarith]
  have hWx : hardyW ((2:ℂ) + t₁ * I) ≠ 0 := by
    have := (hlow t₁ (by rw [abs_of_pos (by linarith)])).2
    intro h; rw [h, norm_zero] at this; linarith
  exact Zeta23.Analytic.finite_zeros_rectangle hanal hx hWx

/-- **choice of the line**: some c ∈ [9/8, 5/4] such that W has no zero of height < t₀ on Re s = c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6c585cf712ebfb3430a2d8819ef5be564a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
