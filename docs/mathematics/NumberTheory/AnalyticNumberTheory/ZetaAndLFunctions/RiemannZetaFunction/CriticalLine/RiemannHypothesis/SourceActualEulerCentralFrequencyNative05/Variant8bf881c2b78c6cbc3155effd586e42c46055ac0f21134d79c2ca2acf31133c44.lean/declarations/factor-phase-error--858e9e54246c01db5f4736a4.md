# factor_phase_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fed58644-bbdf-af81-e243-5ca6c58d7329",
  "kind": "theorem",
  "lexical_name": "factor_phase_error",
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
  "slug": "factor-phase-error--858e9e54246c01db5f4736a4",
  "source": {
    "blob": "aab85b8f75d397a8b2ef7784dc2f78bfc43a8ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative05/Variant8bf881c2b78c6cbc3155effd586e42c46055ac0f21134d79c2ca2acf31133c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858e9e54246c01db5f4736a4aa9ca26152d044012febf878da649edb1b090852",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative05/Variant8bf881c2b78c6cbc3155effd586e42c46055ac0f21134d79c2ca2acf31133c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fed58644-bbdf-af81-e243-5ca6c58d7329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factor_phase_error {t : ℝ} (ht : |t| ≤ 1 / 100) :
    ‖((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 - 9 / 16‖ ≤ 1 / 16 := by
  have he : ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 - 9 / 16 =
      ((( - (11 / 2) * t ^ 2 + t ^ 4 : ℝ) : ℂ)) + I * (3 * t - 4 * t ^ 3 : ℝ) := by
    apply Complex.ext <;> norm_num [pow_two, pow_succ] <;> ring
  rw [he]
  have h2 : |t|^2 ≤ (1 / 100 : ℝ) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) ht 2
  have h3 : |t|^3 ≤ (1 / 100 : ℝ) ^ 3 := pow_le_pow_left₀ (abs_nonneg _) ht 3
  have h4 : |t|^4 ≤ (1 / 100 : ℝ) ^ 4 := pow_le_pow_left₀ (abs_nonneg _) ht 4
  calc
    _ ≤ |-(11 / 2) * t ^ 2 + t ^ 4| + |3 * t - 4 * t ^ 3| := by
      simpa only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
        Complex.I_im, Complex.ofReal_im, zero_mul, mul_zero, sub_zero, zero_add,
        Complex.add_im, Complex.mul_im, one_mul, add_zero] using Complex.norm_le_abs_re_add_abs_im
        (((( -(11 / 2) * t ^ 2 + t ^ 4 : ℝ) : ℂ)) + I * (3 * t - 4 * t ^ 3 : ℝ))
    _ ≤ (11 / 2)*|t|^2+|t|^4 + 3*|t|+4*|t|^3 := by
      have h := add_le_add (abs_add_le ( - (11 / 2) * t ^ 2) (t ^ 4))
        (abs_sub (3 * t) (4 * t ^ 3))
      simp only [abs_mul, abs_neg, abs_pow] at h
      norm_num at h
      rw [sq_abs]
      linarith
    _ ≤ _ := by nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative05/Variant8bf881c2b78c6cbc3155effd586e42c46055ac0f21134d79c2ca2acf31133c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative05/Variant8bf881c2b78c6cbc3155effd586e42c46055ac0f21134d79c2ca2acf31133c44.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab85b8f75d397a8b2ef7784dc2f78bfc43a8ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
