# normalized_derivative_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95046923-8be1-3a71-d4bb-8c45b3a5ede9",
  "kind": "theorem",
  "lexical_name": "normalized_derivative_lipschitz",
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
  "slug": "normalized-derivative-lipschitz--97f12490546d7d253d771a9b",
  "source": {
    "blob": "5bf2fbde2adca038dd50292cf84b0dee6744292f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97f12490546d7d253d771a9b55249123f585cb08b8a097321d44ca9aca0ec722",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95046923-8be1-3a71-d4bb-8c45b3a5ede9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_derivative_lipschitz (A : ℝ) (hA : 1 ≤ A) :
    ∃ L : ℝ≥0, LipschitzWith L (deriv (normalizedTest explicitSecondDerivative A)) := by
  obtain ⟨B, hB⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    (normalizedSecondInterior_continuous A).continuousOn
  have hB0 : 0 ≤ B := (norm_nonneg (normalizedSecondInterior A 0)).trans
    (hB 0 (by constructor <;> linarith))
  let L : ℝ≥0 := ⟨B, hB0⟩
  have hLip : LipschitzOnWith L (normalizedInteriorDerivative A) (Icc (-A) A) := by
    apply (convex_Icc (-A) A).lipschitzOnWith_of_nnnorm_hasDerivWithin_le
      (fun x _ ↦ (normalizedInteriorDerivative_hasDerivAt A x).hasDerivWithinAt)
    intro x hx
    change ‖normalizedSecondInterior A x‖ ≤ B
    exact hB x hx
  have hp : LipschitzWith 1 (Set.projIcc (-A) A (by linarith : -A ≤ A)) :=
    LipschitzWith.projIcc (by linarith)
  refine ⟨L, ?_⟩
  rw [normalized_derivative_eq_projected A hA]
  simpa only [mul_one] using hLip.to_restrict.comp hp

end
end SecondDerivativeEnergyScratch

#print axioms SecondDerivativeEnergyScratch.fourthInterior
#print axioms SecondDerivativeEnergyScratch.normalizedSecondInterior
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest
#print axioms SecondDerivativeEnergyScratch.thirdInterior_hasDerivAt
#print axioms SecondDerivativeEnergyScratch.normalizedInteriorDerivative_hasDerivAt
#print axioms SecondDerivativeEnergyScratch.normalizedSecondInterior_continuous
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_integrable
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_hasDerivAt_ae
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_ae
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integral
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integral_le
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integral
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integral_le
#print axioms SecondDerivativeEnergyScratch.normalizedInteriorDerivative_endpoints
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_pairing_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_pairing_integrable
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_weakDerivative
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_eq_projected
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_lipschitz
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf2fbde2adca038dd50292cf84b0dee6744292f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
