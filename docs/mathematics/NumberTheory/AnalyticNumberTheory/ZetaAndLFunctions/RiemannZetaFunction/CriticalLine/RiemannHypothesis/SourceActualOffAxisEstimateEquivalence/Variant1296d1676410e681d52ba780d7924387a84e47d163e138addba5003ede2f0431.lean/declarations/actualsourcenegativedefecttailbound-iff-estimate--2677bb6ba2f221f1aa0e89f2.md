# actualSourceNegativeDefectTailBound_iff_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4406d45a-52f6-5025-ee54-559b8dab5b72",
  "kind": "theorem",
  "lexical_name": "actualSourceNegativeDefectTailBound_iff_estimate",
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
  "slug": "actualsourcenegativedefecttailbound-iff-estimate--2677bb6ba2f221f1aa0e89f2",
  "source": {
    "blob": "0ad5777de3991533cd8f499519cdfdb8234184cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2677bb6ba2f221f1aa0e89f20c03f210b5ef56671c0e0f9173ef69e8d676a5ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4406d45a-52f6-5025-ee54-559b8dab5b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceNegativeDefectTailBound_iff_estimate :
    ActualSourceNegativeDefectTailBound ↔ CorrelationAssembly.EstimateObligation := by
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    apply estimate_of_mertens_residual_tail
    refine ⟨max 0 ((archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) + K) / 2),
      le_max_left _ _,R,hR,?_⟩
    intro A hA
    have hA1 : 1 ≤ A := hR.trans hA
    have harch := actual_archimedean_uniform_upper hA1
    have hneg : -sourceQuadraticValue explicitSecondDerivative A ≤ K :=
      (le_max_right _ _).trans (hcap A hA)
    have heq : sourceQuadraticValue explicitSecondDerivative A =
        archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
      rw [sourceQuadraticValue,
        EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA1,
        ← mertensResidual_eq_closedPrimeMoment A hA1]
    apply (show mertensResidual A ≤
      (archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) + K) / 2 by
        linarith).trans
    exact le_max_right _ _
  · rintro ⟨lower,hlower⟩
    refine ⟨max 0 (-lower),le_max_left _ _,1,le_rfl,?_⟩
    intro A hA
    exact max_le_max le_rfl (neg_le_neg (hlower A hA))

/-- The proved o(1) error transfers either constant cap with an eventual cost of one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad5777de3991533cd8f499519cdfdb8234184cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
