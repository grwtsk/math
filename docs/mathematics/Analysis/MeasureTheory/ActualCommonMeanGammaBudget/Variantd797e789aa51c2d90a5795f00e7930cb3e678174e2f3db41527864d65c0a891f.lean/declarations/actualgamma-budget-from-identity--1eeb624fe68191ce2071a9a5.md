# actualGamma_budget_from_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86cb6bab-ccd2-ebc9-fa4f-04daf0987302",
  "kind": "theorem",
  "lexical_name": "actualGamma_budget_from_identity",
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
  "slug": "actualgamma-budget-from-identity--1eeb624fe68191ce2071a9a5",
  "source": {
    "blob": "fd6b5d02b1682e20f31fe9bcea15a37b3e7f2887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variantd797e789aa51c2d90a5795f00e7930cb3e678174e2f3db41527864d65c0a891f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eeb624fe68191ce2071a9a5d210804ad78ea497ae571f8ada5a7fd4a1204abe",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variantd797e789aa51c2d90a5795f00e7930cb3e678174e2f3db41527864d65c0a891f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86cb6bab-ccd2-ebc9-fa4f-04daf0987302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGamma_budget_from_identity {A a0 : ℝ} (hA : 1 ≤ A)
    (hG : sourceGammaValue A = a0+2*(∫ t : ℝ in Ioi 0,
      weightedDeficit (sourceCorrelation explicitSecondDerivative A) t)) :
    a0 ≤ sourceGammaValue A ∧ sourceGammaValue A ≤ a0+390/A^2 := by
  have h := actualWeightedDeficit_budget hA
  rw [hG]
  constructor <;> linarith

#print axioms actualCorrelation_measurable
#print axioms sharpConstant_le_coarse
#print axioms actualDeficit_coarse
#print axioms actualWeightedDeficit_integrable
#print axioms actualWeightedDeficit_budget
#print axioms actualGamma_budget_from_identity
end ContinuousResearch.ActualCommonMeanGammaBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variantd797e789aa51c2d90a5795f00e7930cb3e678174e2f3db41527864d65c0a891f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variantd797e789aa51c2d90a5795f00e7930cb3e678174e2f3db41527864d65c0a891f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd6b5d02b1682e20f31fe9bcea15a37b3e7f2887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
