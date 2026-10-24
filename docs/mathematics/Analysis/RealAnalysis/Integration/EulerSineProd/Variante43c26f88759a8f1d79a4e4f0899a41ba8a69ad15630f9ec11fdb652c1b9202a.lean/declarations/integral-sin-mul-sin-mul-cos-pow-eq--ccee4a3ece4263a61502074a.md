# integral_sin_mul_sin_mul_cos_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78f31fa1-cf1d-c5bd-e01a-02c63a808088",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:174eef4c-179f-cee9-0a67-0acf5a31486e",
  "kind": "theorem",
  "lexical_name": "integral_sin_mul_sin_mul_cos_pow_eq",
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
  "slug": "integral-sin-mul-sin-mul-cos-pow-eq--ccee4a3ece4263a61502074a",
  "source": {
    "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccee4a3ece4263a61502074a30f69cc035f129c70e5f05f36effded3178c5964",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:174eef4c-179f-cee9-0a67-0acf5a31486e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sin_mul_sin_mul_cos_pow_eq (hn : 2 ≤ n) (hz : z ≠ 0) :
    (∫ x in (0 : ℝ)..π / 2, Complex.sin (2 * z * x) * sin x * (cos x : ℂ) ^ (n - 1)) =
      (n / (2 * z) * ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ n) -
        (n - 1) / (2 * z) *
          ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (n - 2) := by
  have der1 :
    ∀ x : ℝ,
      x ∈ uIcc 0 (π / 2) →
        HasDerivAt (fun y : ℝ => sin y * (cos y : ℂ) ^ (n - 1))
          ((cos x : ℂ) ^ n - (n - 1) * (sin x : ℂ) ^ 2 * (cos x : ℂ) ^ (n - 2)) x := by
    intro x _
    have c := HasDerivAt.comp (x : ℂ) (hasDerivAt_pow (n - 1) _) (Complex.hasDerivAt_cos x)
    convert ((Complex.hasDerivAt_sin x).mul c).comp_ofReal using 1
    · ext1 y; simp only [Complex.ofReal_sin, Complex.ofReal_cos, Function.comp]
    · simp only [Complex.ofReal_cos, Complex.ofReal_sin]
      rw [mul_neg, mul_neg, ← sub_eq_add_neg, Function.comp_apply]
      congr 1
      · rw [← pow_succ', Nat.sub_add_cancel (by omega : 1 ≤ n)]
      · have : ((n - 1 : ℕ) : ℂ) = (n : ℂ) - 1 := by
          rw [Nat.cast_sub (one_le_two.trans hn), Nat.cast_one]
        rw [Nat.sub_sub, this]
        ring
  convert
    integral_mul_deriv_eq_deriv_mul der1 (fun x _ => antideriv_sin_comp_const_mul hz x) _ _ using 1
  · refine integral_congr fun x _ => ?_
    ring_nf
  · -- now a tedious rearrangement of terms
    -- gather into a single integral, and deal with continuity subgoals:
    rw [sin_zero, cos_pi_div_two, Complex.ofReal_zero, zero_pow, zero_mul,
      mul_zero, zero_mul, zero_mul, sub_zero, zero_sub, ←
      integral_neg, ← integral_const_mul, ← integral_const_mul, ← integral_sub]
    rotate_left
    · apply Continuous.intervalIntegrable
      exact
        continuous_const.mul
          ((Complex.continuous_cos.comp (continuous_const.mul Complex.continuous_ofReal)).mul
            ((Complex.continuous_ofReal.comp continuous_cos).pow n))
    · apply Continuous.intervalIntegrable
      exact
        continuous_const.mul
          ((Complex.continuous_cos.comp (continuous_const.mul Complex.continuous_ofReal)).mul
            ((Complex.continuous_ofReal.comp continuous_cos).pow (n - 2)))
    · exact Nat.sub_ne_zero_of_lt hn
    refine integral_congr fun x _ => ?_
    dsimp only
    -- get rid of real trig functions and divisions by 2 * z:
    rw [Complex.ofReal_cos, Complex.ofReal_sin, Complex.sin_sq, ← mul_div_right_comm, ←
      mul_div_right_comm, ← sub_div, mul_div, ← neg_div]
    congr 1
    have : Complex.cos x ^ n = Complex.cos x ^ (n - 2) * Complex.cos x ^ 2 := by
      conv_lhs => rw [← Nat.sub_add_cancel hn, pow_add]
    rw [this]
    ring
  · apply Continuous.intervalIntegrable
    exact
      ((Complex.continuous_ofReal.comp continuous_cos).pow n).sub
        ((continuous_const.mul ((Complex.continuous_ofReal.comp continuous_sin).pow 2)).mul
          ((Complex.continuous_ofReal.comp continuous_cos).pow (n - 2)))
  · apply Continuous.intervalIntegrable
    exact Complex.continuous_sin.comp (continuous_const.mul Complex.continuous_ofReal)

/-- Note this also holds for `z = 0`, but we do not need this case for `sin_pi_mul_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2c41e2ff40abda20a9e7750c685cadd853de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
