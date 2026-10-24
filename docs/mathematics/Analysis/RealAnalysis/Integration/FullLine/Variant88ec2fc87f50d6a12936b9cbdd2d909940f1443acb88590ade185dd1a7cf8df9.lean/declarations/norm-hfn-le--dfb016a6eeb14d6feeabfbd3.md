# norm_Hfn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b817c44a-c226-63e9-2263-3fcfae8fdf0e",
  "kind": "theorem",
  "lexical_name": "norm_Hfn_le",
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
  "slug": "norm-hfn-le--dfb016a6eeb14d6feeabfbd3",
  "source": {
    "blob": "fddabb897516dcc6a4eb0928590a25c5e6feea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb016a6eeb14d6feeabfbd325ef5917324cd099d804b2862ba7680acef5b5a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b817c44a-c226-63e9-2263-3fcfae8fdf0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Hfn_le {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ σ t : ℝ, -1 ≤ σ → σ ≤ 2 → ‖Hfn k ((σ : ℂ) + t * I)‖ ≤ C / (1 + t ^ 2) := by
  obtain ⟨Λ₁, hΛ₁⟩ := Zeta23.EF.exists_abs_le_of_hasCompactSupport hkc
  set B : ℝ := max Λ₁ 0 with hB
  have hsupp : ∀ u, k u ≠ 0 → |u| ≤ B := fun u hu => (hΛ₁ u hu).trans (le_max_left _ _)
  have hB0 : 0 ≤ B := le_max_right _ _
  have hki : Integrable k := hk.continuous.integrable_of_hasCompactSupport hkc
  set A : ℝ := Real.exp (3 / 2 * B) * ((∫ u, ‖k u‖) + ∫ u, ‖deriv (deriv k) u‖) with hA
  have hI1 : 0 ≤ ∫ u, ‖k u‖ := integral_nonneg fun _ => norm_nonneg _
  have hI2 : 0 ≤ ∫ u, ‖deriv (deriv k) u‖ := integral_nonneg fun _ => norm_nonneg _
  have hA0 : 0 ≤ A := by positivity
  refine ⟨2 * A, by positivity, fun σ t hσ1 hσ2 => ?_⟩
  rw [Hfn_apply]
  set z : ℂ := (t : ℂ) + ((1 / 2 - σ : ℝ) : ℂ) * I with hz
  have hzim : z.im = 1 / 2 - σ := by simp [hz]
  have hzre : z.re = t := by simp [hz]
  have him : |z.im| ≤ 3 / 2 := by rw [hzim, abs_le]; constructor <;> linarith
  have hexp : Real.exp (|z.im| * B) ≤ Real.exp (3 / 2 * B) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right him hB0)
  have hzn : |t| ≤ ‖z‖ := by rw [← hzre]; exact Complex.abs_re_le_norm z
  have ht2 : 0 < 1 + t ^ 2 := by positivity
  by_cases ht : |t| ≤ 1
  · -- small t: the L¹ bound
    have h1 := Zeta23.norm_paperFT_le hki hsupp z
    calc ‖paperFT k z‖ ≤ Real.exp (|z.im| * B) * ∫ u, ‖k u‖ := h1
      _ ≤ Real.exp (3 / 2 * B) * ∫ u, ‖k u‖ := by gcongr
      _ ≤ A := by rw [hA]; nlinarith [Real.exp_pos (3 / 2 * B)]
      _ ≤ 2 * A / (1 + t ^ 2) := by
          rw [le_div_iff₀ ht2]
          have : t ^ 2 ≤ 1 := by rw [← sq_abs]; nlinarith [abs_nonneg t]
          nlinarith
  · -- large t: the second-derivative bound
    push Not at ht
    have hz0 : z ≠ 0 := by
      intro h; rw [h] at hzn; simp at hzn; rw [hzn] at ht; simp at ht; linarith
    have h2 := Zeta23.norm_paperFT_le_div hk hsupp hz0
    have hzsq : t ^ 2 ≤ ‖z‖ ^ 2 := by rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) hzn 2
    have ht1 : 1 ≤ t ^ 2 := by rw [← sq_abs]; nlinarith
    calc ‖paperFT k z‖ ≤ Real.exp (|z.im| * B) * (∫ u, ‖deriv (deriv k) u‖) / ‖z‖ ^ 2 := h2
      _ ≤ Real.exp (3 / 2 * B) * (∫ u, ‖deriv (deriv k) u‖) / t ^ 2 := by
          gcongr
      _ ≤ A / t ^ 2 := by
          gcongr; rw [hA]; nlinarith [Real.exp_pos (3 / 2 * B)]
      _ ≤ 2 * A / (1 + t ^ 2) := by
          rw [div_le_div_iff₀ (by positivity) ht2]; nlinarith

/-- `H` is continuous along vertical lines (indeed paperFT k is entire). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddabb897516dcc6a4eb0928590a25c5e6feea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
