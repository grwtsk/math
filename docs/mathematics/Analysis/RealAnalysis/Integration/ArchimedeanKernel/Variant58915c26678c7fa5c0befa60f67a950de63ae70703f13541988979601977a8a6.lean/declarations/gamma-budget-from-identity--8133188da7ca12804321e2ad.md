# gamma_budget_from_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68cefb44-80db-36bb-e5d6-a8e80d0c77d9",
  "kind": "theorem",
  "lexical_name": "gamma_budget_from_identity",
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
  "slug": "gamma-budget-from-identity--8133188da7ca12804321e2ad",
  "source": {
    "blob": "2b07eb98df89b79e20bc680aa4116a572a8008a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8133188da7ca12804321e2adca17a7685317aec04012dab12ab19ae6bbfd0bb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68cefb44-80db-36bb-e5d6-a8e80d0c77d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_budget_from_identity {C : ℝ → ℝ} {k G a0 : ℝ} (hk : 0 ≤ k)
    (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2)
    (hG : G=a0+2*(∫ t : ℝ in Ioi 0, weightedDeficit C t)) :
    a0 ≤ G ∧ G ≤ a0+36*k := by
  have h := weightedDeficit_integral_budget hk hC hdef
  rw [hG]
  constructor <;> linarith

end ContinuousResearch.ArchimedeanKernel

#print axioms ContinuousResearch.ArchimedeanKernel.denominator_pos
#print axioms ContinuousResearch.ArchimedeanKernel.kernel
#print axioms ContinuousResearch.ArchimedeanKernel.secondMomentIntegrand
#print axioms ContinuousResearch.ArchimedeanKernel.majorant
#print axioms ContinuousResearch.ArchimedeanKernel.kernel_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.reciprocal_denominator_bound
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_bound
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.polynomial_exp_integral
#print axioms ContinuousResearch.ArchimedeanKernel.majorant_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.majorant_integral
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_measurable
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integral_nonneg
#print axioms ContinuousResearch.ArchimedeanKernel.secondMoment_integral_le
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_measurable
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_bound
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_integrable
#print axioms ContinuousResearch.ArchimedeanKernel.weightedDeficit_integral_budget
#print axioms ContinuousResearch.ArchimedeanKernel.gamma_budget_from_identity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variant58915c26678c7fa5c0befa60f67a950de63ae70703f13541988979601977a8a6.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b07eb98df89b79e20bc680aa4116a572a8008a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
