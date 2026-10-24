# actualBilateralCorrelationTransform_eq_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2449ba76-4ef3-22d6-b0a0-a67a0ac553fd",
  "kind": "theorem",
  "lexical_name": "actualBilateralCorrelationTransform_eq_halves",
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
  "slug": "actualbilateralcorrelationtransform-eq-halves--516bb937b8641c87a7d72671",
  "source": {
    "blob": "3fabd85c940539d9c3c8d69d128caebe0dce58cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variantf935d25512d9001759e24dc7d997e4f3df09343decc9e11415d2503178f9c6c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516bb937b8641c87a7d726712dc3b969c9cf5c574494246a91a290765b70c993",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variantf935d25512d9001759e24dc7d997e4f3df09343decc9e11415d2503178f9c6c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2449ba76-4ef3-22d6-b0a0-a67a0ac553fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBilateralCorrelationTransform_eq_halves {A : ℝ} (hA : 0 < A) (z : ℂ) :
    actualBilateralCorrelationTransform A z =
      actualHalfCorrelationTransform A z + actualHalfCorrelationTransform A (-z) := by
  let f : ℝ → ℂ := fun t => Complex.exp (z * (t : ℂ)) *
    (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have hc : Continuous f :=
    (by fun_prop : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ)))).mul
      (Complex.continuous_ofReal.comp (sourceCorrelation_contDiff A hA).continuous)
  have href : (∫ t in -(2 * A)..0, f t) = actualHalfCorrelationTransform A (-z) := by
    calc
      _ = ∫ t in 0..2 * A, f (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg f (a := 0) (b := 2 * A)).symm
      _ = _ := by
        unfold actualHalfCorrelationTransform
        apply intervalIntegral.integral_congr
        intro t _
        dsimp [f]
        rw [sourceCorrelation_even A t, Complex.ofReal_neg]
        congr 2
        ring
  have hi1 : IntervalIntegrable f volume (-(2 * A)) 0 := hc.intervalIntegrable _ _
  have hi2 : IntervalIntegrable f volume 0 (2 * A) := hc.intervalIntegrable _ _
  have hs := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [href] at hs
  change actualHalfCorrelationTransform A (-z) + actualHalfCorrelationTransform A z =
    actualBilateralCorrelationTransform A z at hs
  simpa only [add_comm] using hs.symm

/-- Norm-one actual correlation bounds its opposite half uniformly in every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variantf935d25512d9001759e24dc7d997e4f3df09343decc9e11415d2503178f9c6c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variantf935d25512d9001759e24dc7d997e4f3df09343decc9e11415d2503178f9c6c0.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fabd85c940539d9c3c8d69d128caebe0dce58cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
