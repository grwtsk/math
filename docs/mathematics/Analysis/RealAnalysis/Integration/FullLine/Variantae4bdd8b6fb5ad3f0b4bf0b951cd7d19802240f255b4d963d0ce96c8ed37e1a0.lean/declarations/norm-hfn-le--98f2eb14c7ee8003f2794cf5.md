# norm_Hfn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c1765bb-3932-0e31-389b-aa3c5d68c933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8bf74c6-f03f-5fcd-9e7d-3f2963c9396a",
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
  "slug": "norm-hfn-le--98f2eb14c7ee8003f2794cf5",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f2eb14c7ee8003f2794cf5fe6f3f3db7d4a49c9ee7d6380bcac4c21bef0d1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bf74c6-f03f-5fcd-9e7d-3f2963c9396a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–83.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
