# mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:769a9769-6032-e712-1e39-7c469fde1dbb",
  "kind": "theorem",
  "lexical_name": "mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub",
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
  "slug": "mongepointvsubfacecentroidweightswithcircumcenter-eq-sub--5383ba87139360a93c21f884",
  "source": {
    "blob": "f8a75383f74bce4a0176f0d5a0d927c00b5f87ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5383ba87139360a93c21f8840fae8c113db8e1146f4fe8f824ae0a05bb60ccb6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769a9769-6032-e712-1e39-7c469fde1dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub {n : ℕ} {i₁ i₂ : Fin (n + 3)}
    (h : i₁ ≠ i₂) :
    mongePointVSubFaceCentroidWeightsWithCircumcenter i₁ i₂ =
      mongePointWeightsWithCircumcenter n - centroidWeightsWithCircumcenter {i₁, i₂}ᶜ := by
  ext i
  obtain i | i := i
  · rw [Pi.sub_apply, mongePointWeightsWithCircumcenter, centroidWeightsWithCircumcenter,
      mongePointVSubFaceCentroidWeightsWithCircumcenter]
    have hu : #{i₁, i₂}ᶜ = n + 1 := by
      simp [card_compl, Fintype.card_fin, h]
    rw [hu]
    by_cases hi : i = i₁ ∨ i = i₂ <;> simp [compl_eq_univ_sdiff, hi]
  · simp [mongePointWeightsWithCircumcenter, centroidWeightsWithCircumcenter,
      mongePointVSubFaceCentroidWeightsWithCircumcenter]

/-- `mongePointVSubFaceCentroidWeightsWithCircumcenter` sums to 0. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a75383f74bce4a0176f0d5a0d927c00b5f87ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
