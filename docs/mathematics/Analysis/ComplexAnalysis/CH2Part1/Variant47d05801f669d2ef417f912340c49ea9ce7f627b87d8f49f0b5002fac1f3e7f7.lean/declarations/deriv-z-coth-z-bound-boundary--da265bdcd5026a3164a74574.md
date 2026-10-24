# deriv_z_coth_z_bound_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652caf6d-8e14-e785-fcd4-d60a4c0cfa5a",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_bound_boundary",
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
  "slug": "deriv-z-coth-z-bound-boundary--da265bdcd5026a3164a74574",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5577,
    "line": 5529,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da265bdcd5026a3164a7457418d6a36411061784b4b03cbe06bf374d542d75bb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:652caf6d-8e14-e785-fcd4-d60a4c0cfa5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5529–5577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_z_coth_z_bound_boundary (x : ℝ) :
    ‖deriv (fun z : ℂ ↦ z * coth z) (↑x + ↑(π / 4) * Complex.I)‖ < 1 := by
  set z₀ := (↑x + ↑(π / 4) * Complex.I)
  set f := fun z : ℂ ↦ z * coth z
  have h_snz : Complex.sinh z₀ ≠ 0 := by
    apply sinh_ne_zero_of_im
    intro k
    show z₀.im ≠ k * π
    simp [z₀]
    have : π ≠ 0 := Real.pi_pos.ne.symm
    field_simp [this]
    norm_cast
    intro h
    have : (k * 4 : ℤ) = (1 : ℤ) := by
      norm_cast at h
      ring_nf at h
      exact_mod_cast h.symm
    omega
  have h_deriv_eq : deriv f z₀ = (Complex.sinh (2 * z₀) / 2 - z₀) / (Complex.sinh z₀ ^ 2) :=
    deriv_z_coth_z_eq_alt z₀ h_snz
  have h_normSq : ‖deriv f z₀‖^2 = 1 - (π * Real.cosh (2 * x) - π ^ 2 / 4 - 4 * x ^ 2) / (Real.cosh (2 * x) ^ 2) := by
    rw [h_deriv_eq, norm_div, div_pow, Complex.sq_norm, Complex.sq_norm]
    have h_snz_normSq : Complex.normSq (Complex.sinh z₀) = Real.cosh (2 * x) / 2 := by
      rw [← Complex.sq_norm, normSq_sinh]
      have : z₀.re = x := by simp [z₀]
      have : z₀.im = π / 4 := by simp [z₀]
      rw [this, ‹z₀.re = x›, Real.sin_pi_div_four]
      have : (√2 / 2 : ℝ) ^ 2 = 1 / 2 := by
        rw [div_pow, Real.sq_sqrt (by positivity)]
        norm_num
      rw [this, Real.sinh_sq, Real.cosh_two_mul, Real.cosh_sq' x]
      field_simp; ring
    have h_num : Complex.sinh (2 * z₀) / 2 - z₀ = -x + (Real.cosh (2 * x) / 2 - π / 4) * Complex.I := by
      rw [show 2 * z₀ = ↑(2 * x) + ↑(π / 2) * Complex.I by simp [z₀]; ring,
          Complex.sinh_add, Complex.sinh_mul_I, Complex.cosh_mul_I]
      norm_cast
      rw [Real.cos_pi_div_two, Real.sin_pi_div_two]
      simp [z₀]; ring
    rw [h_num, pow_two, Complex.normSq_mul, h_snz_normSq]
    rw [show -↑x + (↑(Real.cosh (2 * x)) / 2 - ↑π / 4) * Complex.I =
             ↑(-x) + ↑(Real.cosh (2 * x) / 2 - π / 4) * Complex.I by push_cast; simp,
        Complex.normSq_add_mul_I]
    field_simp [(Real.cosh_pos (2 * x)).ne.symm]
    ring
  have h_pos : 0 < (π * Real.cosh (2 * x) - π ^ 2 / 4 - 4 * x ^ 2) := pi_cosh_two_mul_sub_bounds x
  have h_normSq_lt : ‖deriv f z₀‖^2 < 1 := by
    rw [h_normSq]; linarith [div_pos h_pos (by positivity : 0 < Real.cosh (2 * x) ^ 2)]
  nlinarith [norm_nonneg (deriv f z₀), sq_nonneg (‖deriv f z₀‖)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
