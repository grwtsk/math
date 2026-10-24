# EF_zero_sum_summable_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e111611-f0fa-fd1d-8b4d-39a224eda65b",
  "kind": "theorem",
  "lexical_name": "EF_zero_sum_summable_gen",
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
  "slug": "ef-zero-sum-summable-gen--0d3d1be080000b8631033fd3",
  "source": {
    "blob": "006f77e53f09a847f031856b466ba626d36bc949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 171,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3d1be080000b8631033fd3bf487573abc6a2478aaa99802792a391a155db1c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e111611-f0fa-fd1d-8b4d-39a224eda65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EF_zero_sum_summable_gen (Z : ZeroConfig) {A₀ : ℝ} (hA₀ : 1 ≤ A₀)
    (hloc' : ∀ t : ℝ, (Z.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3)) {k : ℝ → ℂ}
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun ρ : Z.carrier =>
      (Z.mult ρ : ℂ) * paperFT k (gammaOf ρ)) := by
  classical
  -- support bound
  obtain ⟨r, hr⟩ := hkc.isCompact.isBounded.subset_closedBall 0
  set Λ : ℝ := max r 0 with hΛ
  have hsupp : ∀ u, k u ≠ 0 → |u| ≤ Λ := by
    intro u hu
    have : u ∈ Metric.closedBall (0:ℝ) r := hr (subset_tsupport _ (Function.mem_support.mpr hu))
    rw [Metric.mem_closedBall, dist_zero_right, Real.norm_eq_abs] at this
    exact this.trans (le_max_left _ _)
  set C₂ : ℝ := ∫ u, ‖deriv (deriv k) u‖ with hC₂
  have hC₂0 : 0 ≤ C₂ := integral_nonneg fun _ => norm_nonneg _
  set C : ℝ := 2 * Real.exp (Λ / 2) * C₂ with hC
  -- comparison series
  have hg := (zero_sum_inv_sq_gen Z hA₀ hloc').mul_left C
  refine Summable.of_norm_bounded_eventually hg ?_
  -- exceptional finite set: |Im ρ| < 1 (then possibly ‖γ_ρ‖ < 1)
  have hfin : (Z.window (-1) 1).Finite := Z.finite_window _ _
  have hSfin : ((fun ρ : Z.carrier => (ρ : ℂ)) ⁻¹' (Z.window (-1) 1)).Finite :=
    hfin.preimage Subtype.val_injective.injOn
  filter_upwards [hSfin.compl_mem_cofinite] with ρ hρ
  simp only [Set.mem_compl_iff, Set.mem_preimage, ZeroConfig.window, Set.mem_inter_iff,
    Set.mem_setOf_eq, not_and, not_le] at hρ
  have hρmem : (ρ : ℂ) ∈ Z.carrier := ρ.2
  -- ‖γ_ρ‖ ≥ |Im ρ| ≥ 1
  have him : 1 ≤ |(ρ : ℂ).im| := by
    by_contra h
    rw [not_le, abs_lt] at h
    exact absurd (hρ hρmem h.1) (not_lt.mpr h.2.le)
  have hz1 : 1 ≤ ‖gammaOf (ρ : ℂ)‖ := him.trans (abs_im_le_norm_gammaOf _)
  have hz0 : gammaOf (ρ : ℂ) ≠ 0 := fun h => by rw [h, norm_zero] at hz1; linarith
  have hstrip := Z.strip _ hρmem
  have himγ : |(gammaOf (ρ : ℂ)).im| ≤ 1 / 2 := abs_gammaOf_im_le hstrip
  have hFT := norm_paperFT_le_div hk hsupp hz0
  have hΛ0 : 0 ≤ Λ := le_max_right _ _
  -- assemble
  rw [norm_mul, Complex.norm_natCast]
  have hm : (0:ℝ) ≤ Z.mult ρ := Nat.cast_nonneg _
  have hkey : ‖paperFT k (gammaOf (ρ : ℂ))‖ ≤ C * (1 / (1 + Complex.normSq (gammaOf (ρ : ℂ)))) := by
    have hexp : Real.exp (|(gammaOf (ρ:ℂ)).im| * Λ) ≤ Real.exp (Λ / 2) := by
      apply Real.exp_le_exp.mpr; nlinarith
    have hnsq : Complex.normSq (gammaOf (ρ : ℂ)) = ‖gammaOf (ρ : ℂ)‖ ^ 2 := Complex.normSq_eq_norm_sq _
    have h2 : 1 / ‖gammaOf (ρ : ℂ)‖ ^ 2 ≤ 2 * (1 / (1 + Complex.normSq (gammaOf (ρ : ℂ)))) := by
      rw [hnsq, div_le_iff₀ (by positivity)]
      have : 0 < 1 + ‖gammaOf (ρ:ℂ)‖ ^ 2 := by positivity
      rw [show 2 * (1 / (1 + ‖gammaOf (ρ:ℂ)‖ ^ 2)) * ‖gammaOf (ρ:ℂ)‖ ^ 2
          = 2 * ‖gammaOf (ρ:ℂ)‖ ^ 2 / (1 + ‖gammaOf (ρ:ℂ)‖ ^ 2) by ring, le_div_iff₀ this]
      nlinarith
    calc ‖paperFT k (gammaOf (ρ : ℂ))‖
        ≤ Real.exp (|(gammaOf (ρ:ℂ)).im| * Λ) * C₂ / ‖gammaOf (ρ : ℂ)‖ ^ 2 := hFT
      _ = Real.exp (|(gammaOf (ρ:ℂ)).im| * Λ) * C₂ * (1 / ‖gammaOf (ρ : ℂ)‖ ^ 2) := by ring
      _ ≤ Real.exp (Λ / 2) * C₂ * (2 * (1 / (1 + Complex.normSq (gammaOf (ρ : ℂ))))) :=
          mul_le_mul (mul_le_mul_of_nonneg_right hexp hC₂0) h2 (by positivity) (by positivity)
      _ = C * (1 / (1 + Complex.normSq (gammaOf (ρ : ℂ)))) := by rw [hC]; ring
  calc (Z.mult ρ : ℝ) * ‖paperFT k (gammaOf (ρ : ℂ))‖
      ≤ (Z.mult ρ : ℝ) * (C * (1 / (1 + Complex.normSq (gammaOf (ρ : ℂ))))) :=
        mul_le_mul_of_nonneg_left hkey hm
    _ = C * ((Z.mult (ρ : ℂ) : ℝ) / (1 + Complex.normSq (gammaOf (ρ : ℂ)))) := by
        ring


/-! ### The ζ instances -/

/-- **Σ_ρ m_ρ/(1+|γ_ρ|²) converges** (dyadic/unit-window summation of the local count). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006f77e53f09a847f031856b466ba626d36bc949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
