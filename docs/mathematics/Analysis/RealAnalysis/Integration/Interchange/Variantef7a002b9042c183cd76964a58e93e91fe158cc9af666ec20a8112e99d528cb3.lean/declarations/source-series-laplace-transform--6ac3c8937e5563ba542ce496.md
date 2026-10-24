# source_series_laplace_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6c07003-8032-c0f5-3a8a-a1f0773baca0",
  "kind": "lemma",
  "lexical_name": "source_series_laplace_transform",
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
  "slug": "source-series-laplace-transform--6ac3c8937e5563ba542ce496",
  "source": {
    "blob": "b9c7ca8005a13569810f8fc7ed1c9b3fe5372054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac3c8937e5563ba542ce49675069be3933860b5e837ba59f2266b55081c7dd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6c07003-8032-c0f5-3a8a-a1f0773baca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma source_series_laplace_transform (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * ((A : ℂ) ^ 17 *
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) (Ioi 1) ∧
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * ((A : ℂ) ^ 17 *
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) =
        ∑' o : ZeroOccurrence, sourceKernel (shiftedValue o) s := by
  have hpoint (A : ℝ) (hA : A ∈ Ioi 1) := summedIntegrand_eq s A hA.le
  exact ⟨(summedIntegrand_integrable s hs).congr_fun hpoint measurableSet_Ioi,
    (setIntegral_congr_fun measurableSet_Ioi hpoint).symm.trans (integral_tsum_occurrences s hs)⟩

end
end SourceLaplaceInterchange
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9c7ca8005a13569810f8fc7ed1c9b3fe5372054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
