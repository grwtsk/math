# sampling_integral_sub_firstMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6da88192-1f01-fa1d-e640-ea958167f727",
  "kind": "theorem",
  "lexical_name": "sampling_integral_sub_firstMoment",
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
  "slug": "sampling-integral-sub-firstmoment--969c6cc72ca198d2c66ab941",
  "source": {
    "blob": "d28aab45d8b84a653f8fcbe6931a774076cd5e24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variantad68d71991234cba0b32a1e9614d2a31b0a180a8ca2ec29ec6dd7f0b47eb3cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:969c6cc72ca198d2c66ab941bdc739366ea8901574e849bd600fdda013225b4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variantad68d71991234cba0b32a1e9614d2a31b0a180a8ca2ec29ec6dd7f0b47eb3cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da88192-1f01-fa1d-e640-ea958167f727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampling_integral_sub_firstMoment (F : ℝ → ℝ) (x B : ℝ) (hx : 0 < x)
    (hF : Continuous F) (hcompact : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B) :
    (∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x =
      (1 / Real.sqrt x) * ∫ r in Ioi (0 : ℝ),
        r * Real.exp (-r / 2) * F (Real.log x - r) := by
  have hchange := integral_comp_exp_Ioi (samplingIntegrand F x) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [sampling_exp_substitution F x _ hx]
  rw [integral_const_mul,
    half_moment_transport_with_firstMoment F (Real.log x) B hF hcompact hz0 hB]
  have he : Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx, one_div]
  have hmain : (1 / Real.sqrt x) * (Real.exp (-Real.log x / 2) * B) = B / x := by
    rw [he]
    calc
      _ = B / (Real.sqrt x) ^ 2 := by ring
      _ = B / x := by rw [Real.sq_sqrt hx.le]
  rw [mul_add, hmain]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variantad68d71991234cba0b32a1e9614d2a31b0a180a8ca2ec29ec6dd7f0b47eb3cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variantad68d71991234cba0b32a1e9614d2a31b0a180a8ca2ec29ec6dd7f0b47eb3cd6.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28aab45d8b84a653f8fcbe6931a774076cd5e24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
