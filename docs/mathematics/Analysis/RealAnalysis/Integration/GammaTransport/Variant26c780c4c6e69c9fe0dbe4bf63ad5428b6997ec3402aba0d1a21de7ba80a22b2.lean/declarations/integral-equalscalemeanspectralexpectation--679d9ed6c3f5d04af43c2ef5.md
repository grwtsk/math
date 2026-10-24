# integral_equalScaleMeanSpectralExpectation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee2a8328f9c4c5854500b51bf6a9a2b26f29a137",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af5f966d-1bfc-7370-d94e-00a8a2fc59dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0424d90-902a-6aaa-3741-43b59217da8e",
  "kind": "theorem",
  "lexical_name": "integral_equalScaleMeanSpectralExpectation",
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
  "slug": "integral-equalscalemeanspectralexpectation--679d9ed6c3f5d04af43c2ef5",
  "source": {
    "blob": "ee2a8328f9c4c5854500b51bf6a9a2b26f29a137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:679d9ed6c3f5d04af43c2ef5d71b0c133fcbac9cfde815646805b12bf06bd7fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0424d90-902a-6aaa-3741-43b59217da8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_equalScaleMeanSpectralExpectation
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    (law : EqualScaleMeanLaw parameters scale scalePositive)
    (coordinateIntegrable : ∀ i,
      Integrable (fun point : InteriorSimplexPoint I => point i) law.measure)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (observable : ℝ → ℝ) :
    (∫ point, randomSpectralExpectation point packets observable ∂law.measure) =
      ∑ i, (parameters.shape i / parameters.total) *
        (packets i).spectralExpectation observable := by
  rw [integral_randomSpectralExpectation_eq_mean law.toMeanLaw
    coordinateIntegrable packets observable]
  unfold meanMixture
  rw [FinitePacket.spectralExpectation_mix]
  apply Finset.sum_congr rfl
  intro i _
  rw [law.expectedWeight_eq]
  rfl

/-- A supplied Radon--Nikodym bridge transports finite spectral evaluations.
No density normalization or bridge is inferred from the pointwise kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GammaTransport/Variant26c780c4c6e69c9fe0dbe4bf63ad5428b6997ec3402aba0d1a21de7ba80a22b2.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2a8328f9c4c5854500b51bf6a9a2b26f29a137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
