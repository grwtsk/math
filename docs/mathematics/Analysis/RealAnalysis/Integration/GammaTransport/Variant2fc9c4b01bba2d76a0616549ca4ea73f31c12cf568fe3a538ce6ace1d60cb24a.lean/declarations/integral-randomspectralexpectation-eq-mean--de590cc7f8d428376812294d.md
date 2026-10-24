# integral_randomSpectralExpectation_eq_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16da1829-b51b-e71d-2f37-cd3263733a13",
  "kind": "theorem",
  "lexical_name": "integral_randomSpectralExpectation_eq_mean",
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
  "slug": "integral-randomspectralexpectation-eq-mean--de590cc7f8d428376812294d",
  "source": {
    "blob": "ae6c0426d29c6a76894196ea02aa6d092498230a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de590cc7f8d428376812294d540693ba251d9ab11eed1cc563ee1cfa44b6db82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16da1829-b51b-e71d-2f37-cd3263733a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_randomSpectralExpectation_eq_mean
    {parameters : Parameters I}
    (law : MeanLaw parameters)
    (coordinateIntegrable : ∀ i,
      Integrable (fun point : InteriorSimplexPoint I => point i) law.measure)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
      (meanMixture law packets).spectralExpectation observable := by
  calc
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
        ∫ point, ∑ i, point i * (packets i).spectralExpectation observable
          ∂law.measure := by
      apply integral_congr_ae
      filter_upwards [] with point
      exact randomSpectralExpectation_eq_sum point packets observable
    _ = ∑ i, ∫ point,
        point i * (packets i).spectralExpectation observable ∂law.measure := by
      apply integral_finsetSum
      intro i _
      exact (coordinateIntegrable i).mul_const _
    _ = ∑ i, (∫ point, point i ∂law.measure) *
        (packets i).spectralExpectation observable := by
      apply Finset.sum_congr rfl
      intro i _
      exact integral_mul_const _ _
    _ = ∑ i, law.expectedWeight i *
        (packets i).spectralExpectation observable := by
      apply Finset.sum_congr rfl
      intro i _
      rw [law.mean_identity]
    _ = (meanMixture law packets).spectralExpectation observable := by
      symm
      exact FinitePacket.spectralExpectation_mix
        law.expectedWeight packets observable

/-- The equal-scale law specializes the exact analytic average to
`αᵢ / α₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant2fc9c4b01bba2d76a0616549ca4ea73f31c12cf568fe3a538ce6ace1d60cb24a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6c0426d29c6a76894196ea02aa6d092498230a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
