# exact_actual_dilation_laplace_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e09ff777-8b7c-e6c2-75e3-b77087ca2ca4",
  "kind": "theorem",
  "lexical_name": "exact_actual_dilation_laplace_multiplier",
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
  "slug": "exact-actual-dilation-laplace-multiplier--6fc7a24cdb867366902a48fa",
  "source": {
    "blob": "aa685ef70be873e951761d0912e09df96be4eab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceMoment/Variantec93bb1ad92afdcf33a235cb95ceb92944bdc673d5a07ca6c1a1c4b29f347cf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc7a24cdb867366902a48fa4c9c5aac2e69de838b6cdf6249fa80b2fb607406",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceMoment/Variantec93bb1ad92afdcf33a235cb95ceb92944bdc673d5a07ca6c1a1c4b29f347cf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e09ff777-8b7c-e6c2-75e3-b77087ca2ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_actual_dilation_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (∫ x, Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (σ ^ 2 - 1 / 4) * bumpMoment A σ := by
  have hpos : 0 < A := by linarith
  have hd : Continuous (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - σ ^ 2 * bumpInterior A x)) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).const_mul _))
  have hb : Continuous (fun x ↦ Real.exp (σ * x) * bumpInterior A x) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)
  have heq : (fun x ↦ Real.exp (σ * x) * (secondInterior A x - bumpInterior A x / 4)) =
      fun x ↦ Real.exp (σ * x) * (secondInterior A x - σ ^ 2 * bumpInterior A x) +
        (σ ^ 2 - 1 / 4) * (Real.exp (σ * x) * bumpInterior A x) := by
    funext x
    ring
  rw [weighted_dilationTest_eq_indicator A σ hA,
    zeroExtension_integral _ (-A) A (by linarith), heq,
    intervalIntegral.integral_add (hd.intervalIntegrable _ _)
      ((hb.const_mul _).intervalIntegrable _ _),
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ general_source_primitive_derivative A σ x) (hd.intervalIntegrable _ _),
    (polePrimitive_endpoints A σ hpos.ne').1,
    (polePrimitive_endpoints A σ hpos.ne').2, sub_self, zero_add,
    intervalIntegral.integral_const_mul, ← exact_weighted_bump_interval hA]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceMoment/Variantec93bb1ad92afdcf33a235cb95ceb92944bdc673d5a07ca6c1a1c4b29f347cf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceLaplaceMoment/Variantec93bb1ad92afdcf33a235cb95ceb92944bdc673d5a07ca6c1a1c4b29f347cf2.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa685ef70be873e951761d0912e09df96be4eab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
