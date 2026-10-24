# actualExteriorPrimeDensity_fullLine_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f2da8f-2091-fc75-9941-c54403b73ec3",
  "kind": "theorem",
  "lexical_name": "actualExteriorPrimeDensity_fullLine_zero",
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
  "slug": "actualexteriorprimedensity-fullline-zero--0b0b25f9376d9a653c718d34",
  "source": {
    "blob": "f5296ceb68e69efbf54b7c12a81c9ae577fad347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b0b25f9376d9a653c718d34a172b0c00d552f69c5226f83fb7a856cb7eca0b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f2da8f-2091-fc75-9941-c54403b73ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualExteriorPrimeDensity_fullLine_zero (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)) = 0 := by
  have hs (t : ℝ) : actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) +
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I) := by
    rw [actualInitialPrimeDensity_eq_series A c t hc,
      actualPrimeSeries_eq_closed_add_exterior A _ (by simpa using hc)]
    ring
  have hi := actualInitialPrimeContour_eq_strict A c hA hc
  change (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) = _ at hi
  simp_rw [hs] at hi
  rw [integral_add (closed_density_integrable A c hA)
    (actualExteriorPrimeDensity_integrable A c hA hc), mul_add,
    actualClosedPrimePolynomial_fullLine A c hA] at hi
  exact add_left_cancel (a := (primePowerContribution explicitSecondDerivative A:ℂ))
    (by simpa using hi)

/-- The actual exterior series has an exponential support-distance payment on c>d>1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant35d80739b06269fdaa920d8816e6011c06483b90e861d321f69ef5cad7a0e6f6.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5296ceb68e69efbf54b7c12a81c9ae577fad347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
