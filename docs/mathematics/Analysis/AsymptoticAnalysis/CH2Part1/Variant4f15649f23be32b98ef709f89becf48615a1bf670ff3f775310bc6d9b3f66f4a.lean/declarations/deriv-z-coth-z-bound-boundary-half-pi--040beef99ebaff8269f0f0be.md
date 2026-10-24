# deriv_z_coth_z_bound_boundary_half_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a26a48f-341e-f5d4-4644-42c144c39770",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_bound_boundary_half_pi",
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
  "slug": "deriv-z-coth-z-bound-boundary-half-pi--040beef99ebaff8269f0f0be",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6010,
    "line": 5975,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040beef99ebaff8269f0f0be5dc0e5df318b1dc09841780f597d7c65cf07aff6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a26a48f-341e-f5d4-4644-42c144c39770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5975–6010.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_z_coth_z_bound_boundary_half_pi (x : ℝ) :
    ‖deriv (fun z : ℂ ↦ z * coth z) (↑x + ↑(π / 2) * Complex.I)‖ ≤ ‖(↑x + ↑(π / 2) * Complex.I : ℂ)‖ := by
  set z₀ := (↑x + ↑(π / 2) * Complex.I)
  have h_snz : Complex.sinh z₀ ≠ 0 := by
    apply sinh_ne_zero_of_im; intro k h_pi
    have : π / 2 = (k : ℝ) * π := by simpa [z₀] using h_pi
    have : (1 : ℝ) = 2 * k := by
      field_simp [Real.pi_pos.ne.symm] at this
      linarith
    norm_cast at this; omega
  have h_deriv_eq : deriv (fun z ↦ z * coth z) z₀ = (Complex.sinh (2 * z₀) / 2 - z₀) / Complex.sinh z₀ ^ 2 :=
    deriv_z_coth_z_eq_alt z₀ h_snz
  rw [h_deriv_eq, norm_div, norm_pow]
  have h_snz_norm_pos : 0 < ‖Complex.sinh z₀‖ := norm_pos_iff.mpr h_snz
  rw [div_le_iff₀ (pow_pos h_snz_norm_pos 2)]
  apply (pow_le_pow_iff_left₀ (norm_nonneg _) (by positivity) (by norm_num : 2 ≠ 0)).mp
  rw [mul_pow, ← pow_mul]
  have h_normSq_lhs : Complex.normSq (Complex.sinh (2 * z₀) / 2 - z₀) = (x + Real.sinh x * Real.cosh x) ^ 2 + (π / 2) ^ 2 := by
    rw [sinh_two_mul_div_two_sub_z, Complex.normSq_add_mul_I]
    simp only [ofReal_div, ofReal_ofNat, add_re, ofReal_re, mul_re, div_ofNat_re, I_re, mul_zero,
      div_ofNat_im, ofReal_im, zero_div, I_im, mul_one, sub_self, add_zero, add_im, mul_im,
      zero_add, z₀]
    rw [show 2 * (π / 2) = π by ring, Real.cos_pi, Real.sin_pi, Real.sinh_two_mul]
    ring
  have h_normSq_rhs : normSq z₀ * ‖Complex.sinh z₀‖ ^ (2 * 2) = (x ^ 2 + (π / 2) ^ 2) * Real.cosh x ^ 4 := by
    rw [pow_mul, normSq_sinh z₀]
    rw [show z₀ = ↑x + ↑(π / 2) * I from by simp [z₀], Complex.normSq_add_mul_I]
    simp only [Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im,
      Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im,
      add_zero, sub_zero, mul_zero, mul_one, zero_add]
    rw [Real.sin_pi_div_two]
    norm_num; rw [← Real.cosh_sq]
    ring_nf; simp
  simp only [Complex.sq_norm, h_normSq_lhs, h_normSq_rhs]
  exact deriv_z_coth_z_bound_boundary_half_pi_real_ineq x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
