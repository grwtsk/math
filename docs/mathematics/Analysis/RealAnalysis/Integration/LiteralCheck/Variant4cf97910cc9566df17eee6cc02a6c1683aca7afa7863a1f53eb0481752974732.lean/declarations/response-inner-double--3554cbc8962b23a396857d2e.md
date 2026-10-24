# response_inner_double

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:702d9c94-ae40-7c6d-e4d4-1edf297bfbb7",
  "kind": "theorem",
  "lexical_name": "response_inner_double",
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
  "slug": "response-inner-double--3554cbc8962b23a396857d2e",
  "source": {
    "blob": "fb26e09ed691f93484216d36c410eeff1212d8d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant4cf97910cc9566df17eee6cc02a6c1683aca7afa7863a1f53eb0481752974732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3554cbc8962b23a396857d2e5953008fbd259a52e15ab3b6d584cb68a8155791",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LiteralCheck/Variant4cf97910cc9566df17eee6cc02a6c1683aca7afa7863a1f53eb0481752974732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:702d9c94-ae40-7c6d-e4d4-1edf297bfbb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_inner_double (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      ((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) := by
  rw [response_inner_full_double]
  congr 1
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun u hu => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos u (le_of_not_gt hu),
        zero_mul, integral_zero])]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u hu
  exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun v hv => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos v (le_of_not_gt hv),
        mul_zero, zero_mul])).symm

end
end ExponentialCovarianceScratch

namespace ExponentialCovarianceLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator HalfLineExtension FullLineConvolution
open FixedSourceKernel FixedLaplaceContinuation
open ExponentialCovarianceScratch
noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LiteralCheck/Variant4cf97910cc9566df17eee6cc02a6c1683aca7afa7863a1f53eb0481752974732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant4cf97910cc9566df17eee6cc02a6c1683aca7afa7863a1f53eb0481752974732.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb26e09ed691f93484216d36c410eeff1212d8d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
