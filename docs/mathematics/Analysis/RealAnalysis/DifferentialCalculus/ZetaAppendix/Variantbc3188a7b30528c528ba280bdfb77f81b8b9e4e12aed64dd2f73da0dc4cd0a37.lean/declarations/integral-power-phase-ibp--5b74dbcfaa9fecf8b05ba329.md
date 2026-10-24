# integral_power_phase_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e19372ca-6d3c-1e23-afa0-7afed95bf4a6",
  "kind": "theorem",
  "lexical_name": "integral_power_phase_ibp",
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
  "slug": "integral-power-phase-ibp--5b74dbcfaa9fecf8b05ba329",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b74dbcfaa9fecf8b05ba3292a6778ea22e2ce87c4830a89eb59dd0a3a2cd21f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19372ca-6d3c-1e23-afa0-7afed95bf4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_power_phase_ibp (σ : ℝ) (φ : ℝ → ℝ) (a b : ℝ) (hab : a < b) (ha_pos : 0 < a)
    (h_phi_ne : ∀ t ∈ Set.Icc a b, deriv φ t ≠ 0)
    (h_phi_diff : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ φ t)
    (h_phi_diff2 : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ (deriv φ) t)
    (h_phi_cont : ContinuousOn φ (Set.Icc a b))
    (h_deriv_cont : ContinuousOn (fun t ↦ deriv φ t) (Set.Icc a b))
    (h_deriv2_cont : ContinuousOn (fun t ↦ deriv (deriv φ) t) (Set.Icc a b)) :
    let Φ : ℝ → ℂ := fun t ↦ (t ^ (-σ) : ℝ) * e (φ t) / (2 * π * I * (deriv φ t))
    ∫ t in Set.Icc a b, (t ^ (-σ) : ℝ) * e (φ t) = Φ b - Φ a +
      (σ * ∫ t in Set.Icc a b, (t ^ (-σ - 1) : ℝ) / (2 * π * I * (deriv φ t)) * e (φ t)) +
      ∫ t in Set.Icc a b, (t ^ (-σ) : ℝ) * (deriv (deriv φ) t) /
        (2 * π * I * (deriv φ t) ^ 2) * e (φ t) := by
  intro Φ
  have hab_le : a ≤ b := le_of_lt hab
  rw [integral_Icc_eq_interval hab_le, integral_Icc_eq_interval hab_le,
    integral_Icc_eq_interval hab_le]
  let u : ℝ → ℂ := fun t ↦ ((t ^ (-σ) : ℝ) : ℂ) / (2 * π * I * ↑(deriv φ t))
  let v : ℝ → ℂ := fun t ↦ e (φ t)
  let u' : ℝ → ℂ := fun t ↦ ((-σ * t ^ (-σ - 1) : ℝ) : ℂ) / (2 * π * I * ↑(deriv φ t)) +
      ((t ^ (-σ) : ℝ) : ℂ) * (-↑(deriv (deriv φ) t) / (2 * π * I * ↑(deriv φ t) ^ 2))
  let v' : ℝ → ℂ := fun t ↦ 2 * π * I * ↑(deriv φ t) * e (φ t)
  have h_uv_eq_Phi : ∀ t, u t * v t = Φ t := by
    intro t
    simp only [u, v, Φ]
    ring_nf
  have h_lhs : ∫ x in a..b, ((x ^ (-σ) : ℝ) : ℂ) * e (φ x) =
      ∫ x in a..b, u x * v' x := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le hab_le] at hx
    simp only [u, v']
    field_simp [h_phi_ne x hx]
  rw [h_lhs]
  have h_ibp : (∫ x in a..b, u x * v' x) = u b * v b - u a * v a - ∫ x in a..b, u' x * v x := by
    have hIoo_to_Icc : ∀ {x : ℝ}, x ∈ Set.Ioo (min a b) (max a b) → x ∈ Set.Icc a b := by
      intro x hx
      rw [min_eq_left hab_le, max_eq_right hab_le] at hx
      exact Ioo_subset_Icc_self hx
    exact intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
      (by
        rw [uIcc_of_le hab_le]
        exact ContinuousOn.div
          (continuousOn_rpow_toComplex a b (-σ) ha_pos)
          (continuousOn_denom1 φ a b h_deriv_cont)
          (denom1_ne_zero φ a b h_phi_ne))
      (by
        rw [uIcc_of_le hab_le]
        exact continuousOn_e_comp φ _ h_phi_cont)
      (by
        intro x hx
        have hx_in : x ∈ Set.Icc a b := hIoo_to_Icc hx
        have hx_pos : 0 < x := lt_of_lt_of_le ha_pos hx_in.1
        exact hasDerivAt_u_full σ φ x hx_pos (h_phi_diff2 x hx_in) (h_phi_ne x hx_in))
      (by
        intro x hx
        exact hasDerivAt_e_comp φ x (h_phi_diff x (hIoo_to_Icc hx)))
      (by simpa [u'] using
        intervalIntegrable_u' σ φ a b hab_le ha_pos h_deriv_cont h_deriv2_cont h_phi_ne)
      (by simpa [v'] using intervalIntegrable_v' φ a b hab_le h_phi_cont h_deriv_cont)
  rw [h_ibp]
  simp only [h_uv_eq_Phi, sub_eq_add_neg, ← intervalIntegral.integral_neg, add_assoc]
  congr 1
  have h_cong : ∫ x in a..b, -(u' x * v x) =
      ∫ x in a..b,
        (σ * (((x ^ (-σ - 1) : ℝ) : ℂ) / (2 * π * I * ↑(deriv φ x)) * e (φ x)) +
          ((x ^ (-σ) : ℝ) : ℂ) * ↑(deriv (deriv φ) x) /
            (2 * π * I * ↑(deriv φ x) ^ 2) * e (φ x)) := by
    apply intervalIntegral.integral_congr
    intro x hx
    simp only [u', v]
    rw [neg_mul, show (↑(-(σ * x ^ (-σ - 1))) : ℂ) = -((↑σ : ℂ) * ↑(x ^ (-σ - 1))) by norm_cast]
    ring_nf
  have h_int_term1 : IntervalIntegrable
      (fun x ↦ ((x ^ (-σ - 1) : ℝ) : ℂ) / (2 * π * I * ↑(deriv φ x)) * e (φ x)) volume a b :=
    intervalIntegrable_term1 σ φ a b hab_le ha_pos h_phi_cont h_deriv_cont h_phi_ne
  have h_int_term2 : IntervalIntegrable
      (fun x ↦ ((x ^ (-σ) : ℝ) : ℂ) * ↑(deriv (deriv φ) x) /
        (2 * π * I * ↑(deriv φ x) ^ 2) * e (φ x)) volume a b :=
    intervalIntegrable_term2 σ φ a b hab_le ha_pos h_phi_cont h_deriv_cont h_deriv2_cont h_phi_ne
  rw [h_cong, intervalIntegral.integral_add (h_int_term1.const_mul σ) h_int_term2,
      intervalIntegral.integral_const_mul, sub_eq_add_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
