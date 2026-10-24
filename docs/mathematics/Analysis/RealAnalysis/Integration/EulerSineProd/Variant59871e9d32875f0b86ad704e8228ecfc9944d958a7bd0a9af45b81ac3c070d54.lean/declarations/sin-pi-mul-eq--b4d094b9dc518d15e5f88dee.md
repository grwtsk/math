# sin_pi_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "743f6583cf95ab20850d0dc2d9c0208f4857814e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bd75ec9-2099-c6bb-317f-22dc453e768a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:475d724c-29ab-c4e3-942d-9407f1ec31bb",
  "kind": "theorem",
  "lexical_name": "sin_pi_mul_eq",
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
  "slug": "sin-pi-mul-eq--b4d094b9dc518d15e5f88dee",
  "source": {
    "blob": "743f6583cf95ab20850d0dc2d9c0208f4857814e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d094b9dc518d15e5f88dee1b1f8c75f4393fc7b7d7ea2d4081413ffeb121d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:475d724c-29ab-c4e3-942d-9407f1ec31bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_pi_mul_eq (z : ℂ) (n : ℕ) :
    Complex.sin (π * z) =
      ((π * z * ∏ j in Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2)) *
          ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n)) /
        (∫ x in (0 : ℝ)..π / 2, cos x ^ (2 * n) : ℝ) := by
  rcases eq_or_ne z 0 with (rfl | hz)
  · simp
  induction' n with n hn
  · simp_rw [Nat.zero_eq, mul_zero, pow_zero, mul_one, Finset.prod_range_zero, mul_one,
      integral_one, sub_zero]
    rw [integral_cos_mul_complex (mul_ne_zero two_ne_zero hz), Complex.ofReal_zero,
      mul_zero, Complex.sin_zero, zero_div, sub_zero,
      (by push_cast; field_simp; ring : 2 * z * ↑(π / 2) = π * z)]
    field_simp [Complex.ofReal_ne_zero.mpr pi_pos.ne']
    ring
  · rw [hn, Finset.prod_range_succ]
    set A := ∏ j in Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2)
    set B := ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n)
    set C := ∫ x in (0 : ℝ)..π / 2, cos x ^ (2 * n)
    have aux' : 2 * n.succ = 2 * n + 2 := by rw [Nat.succ_eq_add_one, mul_add, mul_one]
    have : (∫ x in (0 : ℝ)..π / 2, cos x ^ (2 * n.succ)) = (2 * (n : ℝ) + 1) / (2 * n + 2) * C := by
      rw [integral_cos_pow_eq]
      dsimp only
      rw [integral_cos_pow_eq, aux', integral_sin_pow, sin_zero, sin_pi, pow_succ,
        zero_mul, zero_mul, zero_mul, sub_zero, zero_div,
        zero_add, ← mul_assoc, ← mul_assoc, mul_comm (1 / 2 : ℝ) _, Nat.cast_mul, Nat.cast_eq_ofNat]
    rw [this]
    change
      π * z * A * B / C =
        (π * z * (A * ((1 : ℂ) - z ^ 2 / ((n : ℂ) + 1) ^ 2)) *
            ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n.succ)) /
          ((2 * n + 1) / (2 * n + 2) * C : ℝ)
    have :
      (π * z * (A * ((1 : ℂ) - z ^ 2 / ((n : ℂ) + 1) ^ 2)) *
          ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n.succ)) =
        π * z * A *
          (((1 : ℂ) - z ^ 2 / (n.succ : ℂ) ^ 2) *
            ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n.succ)) := by
      nth_rw 2 [Nat.succ_eq_add_one]
      rw [Nat.cast_add_one]
      ring
    rw [this]
    suffices
      (((1 : ℂ) - z ^ 2 / (n.succ : ℂ) ^ 2) *
          ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n.succ)) =
        (2 * n + 1) / (2 * n + 2) * B by
      rw [this, Complex.ofReal_mul, Complex.ofReal_div]
      have : (C : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (integral_cos_pow_pos _).ne'
      have : 2 * (n : ℂ) + 1 ≠ 0 := by
        convert (Nat.cast_add_one_ne_zero (2 * n) : (↑(2 * n) + 1 : ℂ) ≠ 0)
        simp
      have : 2 * (n : ℂ) + 2 ≠ 0 := by
        convert (Nat.cast_add_one_ne_zero (2 * n + 1) : (↑(2 * n + 1) + 1 : ℂ) ≠ 0) using 1
        push_cast; ring
      field_simp; ring
    convert integral_cos_mul_cos_pow_even n hz
    rw [Nat.cast_succ]
#align euler_sine.sin_pi_mul_eq EulerSine.sin_pi_mul_eq

end IntegralRecursion

/-! ## Conclusion of the proof

The main theorem `Complex.tendsto_euler_sin_prod`, and its real variant
`Real.tendsto_euler_sin_prod`, now follow by combining `sin_pi_mul_eq` with a lemma
stating that the sequence of measures on `[0, π/2]` given by integration against `cos x ^ n`
(suitably normalised) tends to the Dirac measure at 0, as a special case of the general result
`tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn`. -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743f6583cf95ab20850d0dc2d9c0208f4857814e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
