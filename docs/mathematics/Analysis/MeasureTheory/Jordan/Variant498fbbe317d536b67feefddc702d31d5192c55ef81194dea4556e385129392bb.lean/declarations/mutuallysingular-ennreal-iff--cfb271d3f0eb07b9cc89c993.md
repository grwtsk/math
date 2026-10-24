# mutuallySingular_ennreal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4625d244f80003ca2470bf1a082946de985ff170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef3d5d39-e359-a020-3ed6-a6c6ee25c8a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:673e71a1-f0de-42b4-c9e5-3ef01700a495",
  "kind": "theorem",
  "lexical_name": "mutuallySingular_ennreal_iff",
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
  "slug": "mutuallysingular-ennreal-iff--cfb271d3f0eb07b9cc89c993",
  "source": {
    "blob": "4625d244f80003ca2470bf1a082946de985ff170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 533,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb271d3f0eb07b9cc89c9930b6d8b2736e7e1fabe3b1bcc9059855733d4ebc4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:673e71a1-f0de-42b4-c9e5-3ef01700a495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutuallySingular_ennreal_iff (s : SignedMeasure α) (μ : VectorMeasure α ℝ≥0∞) :
    s ⟂ᵥ μ ↔ s.totalVariation ⟂ₘ μ.ennrealToMeasure := by
  constructor
  · rintro ⟨u, hmeas, hu₁, hu₂⟩
    obtain ⟨i, hi₁, hi₂, hi₃, hpos, hneg⟩ := s.toJordanDecomposition_spec
    refine ⟨u, hmeas, ?_, ?_⟩
    · rw [totalVariation, Measure.add_apply, hpos, hneg, toMeasureOfZeroLE_apply _ _ _ hmeas,
        toMeasureOfLEZero_apply _ _ _ hmeas]
      simp [hu₁ _ Set.inter_subset_right]
    · rw [VectorMeasure.ennrealToMeasure_apply hmeas.compl]
      exact hu₂ _ (Set.Subset.refl _)
  · rintro ⟨u, hmeas, hu₁, hu₂⟩
    refine
      VectorMeasure.MutuallySingular.mk u hmeas
        (fun t htu _ => null_of_totalVariation_zero _ (measure_mono_null htu hu₁)) fun t htv hmt =>
        ?_
    rw [← VectorMeasure.ennrealToMeasure_apply hmt]
    exact measure_mono_null htv hu₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4625d244f80003ca2470bf1a082946de985ff170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
