# actualInitialPrimeContour_eq_head_add_twoTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f39b7b0-17bb-0251-f1e2-8ed968a1dec2",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeContour_eq_head_add_twoTail",
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
  "slug": "actualinitialprimecontour-eq-head-add-twotail--181e5371cd7583ab83228584",
  "source": {
    "blob": "19632c4d8f4b37892b5d012b29666f91665ccf71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181e5371cd7583ab832285847324e8eacae89a46cf3d7f6db2f7c6ec1aeaa3d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f39b7b0-17bb-0251-f1e2-8ed968a1dec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeContour_eq_head_add_twoTail (A c T : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (primePowerContribution
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.
        explicitSecondDerivative A : ℂ) =
      actualInitialPrimeHead A c T + actualInitialPrimeTwoTail A c T := by
  have hi := actualInitialPrimeDensity_integrable A c hA hc
  have hs := intervalIntegral.integral_Iic_sub_Iic
    (hi.integrableOn (s := Iic (-T))) (hi.integrableOn (s := Iic T))
  have ht := intervalIntegral.integral_Iic_add_Ioi
    (hi.integrableOn (s := Iic T)) (hi.integrableOn (s := Ioi T))
  have hn : (∫ t in Ioi T, actualInitialPrimeDensity A c (-t)) =
      ∫ t in Iic (-T), actualInitialPrimeDensity A c t := integral_comp_neg_Ioi _ _
  rw [← actualInitialPrimeContour_eq_strict A c hA hc]
  change (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) = _
  unfold actualInitialPrimeHead actualInitialPrimeTwoTail
  rw [hn, ← ht, ← hs]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualInitialPrimeLineL1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native1/Variantb8a1c860b2ba6eafc800b331ca0915dec93e8b7707d4ba761ff5333b85ac9f29.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19632c4d8f4b37892b5d012b29666f91665ccf71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
