# actual_reflected_point_tail_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ce7979c-8cad-3b1e-2e8b-881592986bbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9255629-8dd2-9872-d1a1-674ea33e87c8",
  "kind": "theorem",
  "lexical_name": "actual_reflected_point_tail_coefficient",
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
  "slug": "actual-reflected-point-tail-coefficient--b329391051241ff37f2e824c",
  "source": {
    "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 304,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b329391051241ff37f2e824c1ff09c1ff681dacd80a4304bc1f2818c7707aabf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9255629-8dd2-9872-d1a1-674ea33e87c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_reflected_point_tail_coefficient (p : ZeroPoint) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 *
      ((multiplicity p : ℂ) * sourceTailKernel (p.val - 1 / 2) R
          (2 * (p.val - 1 / 2) + w) +
        (multiplicity p : ℂ) * sourceTailKernel (-(p.val - 1 / 2)) R
          (2 * (p.val - 1 / 2) + w)))
      (𝓝[≠] 0) (𝓝 (pointPairPrincipalCoefficient p)) ∧
        pointPairPrincipalCoefficient p ≠ 0 := by
  let o : ZeroOccurrence := ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have hz : p.val - 1 / 2 ≠ 0 := by
    simpa only [shiftedValue, o] using shifted_value_ne_zero o
  exact ⟨reflected_multiplicity_tail_coefficient (multiplicity p)
    (p.val - 1 / 2) hz R, point_pair_principal_coefficient_ne_zero p⟩

end
end FormalResearch.RiemannHypothesis.Research.RealTailKernel

#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.kernelIntegrand_scale
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.kernelIntegrand_scale
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_scaled
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_scaled
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integral
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_integral
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_formula
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_eq_formula
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_formula
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_tail_formula
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_analytic
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_analytic
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.weightedPolynomial_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.weightedPolynomial_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.integral_weightedPolynomial_tail
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.integral_weightedPolynomial_tail
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integrable
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integrable
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integral
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_occurrence_tail_integral
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_lower_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.tailKernel_lower_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_analytic
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.polynomialTailKernel_analytic
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_neg
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_neg
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_local_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.sourceTailKernel_local_cleared_tendsto
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.reflected_multiplicity_tail_coefficient
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.reflected_multiplicity_tail_coefficient
#check FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_reflected_point_tail_coefficient
#print axioms FormalResearch.RiemannHypothesis.Research.RealTailKernel.actual_reflected_point_tail_coefficient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
