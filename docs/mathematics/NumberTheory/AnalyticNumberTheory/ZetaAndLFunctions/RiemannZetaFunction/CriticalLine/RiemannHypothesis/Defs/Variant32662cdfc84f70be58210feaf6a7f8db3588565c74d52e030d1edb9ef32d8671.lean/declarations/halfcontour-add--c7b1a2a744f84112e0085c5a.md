# halfContour_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb25ee7a60454f9a3da00c22994b3ee5fdb86cd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4ffe2f1-c45c-5159-3356-0fc759b1513c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49de6ee1-d862-3825-69cb-b73f98d12d65",
  "kind": "lemma",
  "lexical_name": "halfContour_add",
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
  "slug": "halfcontour-add--c7b1a2a744f84112e0085c5a",
  "source": {
    "blob": "fb25ee7a60454f9a3da00c22994b3ee5fdb86cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b1a2a744f84112e0085c5accea7f4017bb93158dd251d308833b0d64a9e4b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49de6ee1-d862-3825-69cb-b73f98d12d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma halfContour_add (F G : ℂ → ℂ) (T₁ T₂ : ℝ)
    (hb : IntervalIntegrable (fun σ : ℝ => F (σ + T₁ * I)) MeasureTheory.volume (1/2) 2)
    (hb' : IntervalIntegrable (fun σ : ℝ => G (σ + T₁ * I)) MeasureTheory.volume (1/2) 2)
    (hr : IntervalIntegrable (fun t : ℝ => F (2 + t * I)) MeasureTheory.volume T₁ T₂)
    (hr' : IntervalIntegrable (fun t : ℝ => G (2 + t * I)) MeasureTheory.volume T₁ T₂)
    (ht : IntervalIntegrable (fun σ : ℝ => F (σ + T₂ * I)) MeasureTheory.volume (1/2) 2)
    (ht' : IntervalIntegrable (fun σ : ℝ => G (σ + T₂ * I)) MeasureTheory.volume (1/2) 2) :
    halfContour (fun s => F s + G s) T₁ T₂ = halfContour F T₁ T₂ + halfContour G T₁ T₂ := by
  unfold halfContour
  rw [intervalIntegral.integral_add hb hb', intervalIntegral.integral_add hr hr',
    intervalIntegral.integral_add ht ht']
  ring

end Zeta23.RvM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant32662cdfc84f70be58210feaf6a7f8db3588565c74d52e030d1edb9ef32d8671.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb25ee7a60454f9a3da00c22994b3ee5fdb86cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
