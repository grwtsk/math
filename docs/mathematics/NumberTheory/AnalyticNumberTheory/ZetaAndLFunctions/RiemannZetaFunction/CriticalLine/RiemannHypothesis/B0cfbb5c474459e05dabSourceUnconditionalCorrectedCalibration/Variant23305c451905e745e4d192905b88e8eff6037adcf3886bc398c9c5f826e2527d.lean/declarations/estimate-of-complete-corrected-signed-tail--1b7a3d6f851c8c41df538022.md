# estimate_of_complete_corrected_signed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b097cf9-b720-38ea-6d2c-30aabc038ec4",
  "kind": "theorem",
  "lexical_name": "estimate_of_complete_corrected_signed_tail",
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
  "slug": "estimate-of-complete-corrected-signed-tail--1b7a3d6f851c8c41df538022",
  "source": {
    "blob": "81a7872cfb980e06f0271a00a89897b8799369a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variant23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7a3d6f851c8c41df538022db8f2dde7023d9a116e32d8041df1acbe7993215",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variant23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b097cf9-b720-38ea-6d2c-30aabc038ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_complete_corrected_signed_tail {K R : ℝ} (hR : 117 ≤ R)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_Abel_tail_at_radius (K := K) hR
  · intro A hRA d _
    exact actualPeanoCubicRemainder_abs_le A (Real.log (d : ℝ)) (by linarith)
  · exact hpair

end
end FormalResearch.RiemannHypothesis.SourceUnconditionalCorrectedCalibration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variant23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B0cfbb5c474459e05dabSourceUnconditionalCorrectedCalibration/Variant23305c451905e745e4d192905b88e8eff6037adcf3886bc398c9c5f826e2527d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a7872cfb980e06f0271a00a89897b8799369a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
