# EuclideanGeometry.euclideanHausdorffMeasure_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a43ad3c-f0ad-7088-a5ad-f05277bab34b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f73c6648-b26d-8e4b-d63d-62d25b76fc9f",
  "kind": "theorem",
  "lexical_name": "EuclideanGeometry.euclideanHausdorffMeasure_eq_lintegral",
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
  "slug": "euclideangeometry-euclideanhausdorffmeasure-eq-lintegral--36074240f7a69ad8f08c80cb",
  "source": {
    "blob": "3c01e468cbfdfa507caec45ee2ac2006321c4b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 316,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36074240f7a69ad8f08c80cb1c3c3df0f387010bbb02bc3ddd1dc4582de0ac1b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f73c6648-b26d-8e4b-d63d-62d25b76fc9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EuclideanGeometry.euclideanHausdorffMeasure_eq_lintegral (p : P) {v : V} (hv : v ≠ 0)
    {t : Set P} (ht : MeasurableSet t) :
    μHE[finrank ℝ V] t =
      ‖v‖ₑ * ∫⁻ (x : ℝ), μHE[finrank ℝ V - 1] (t ∩ AffineSubspace.mk' (x • v +ᵥ p) (ℝ ∙ v)ᗮ) := by
  have hrank : finrank ℝ (AffineSubspace.mk' p (ℝ ∙ v)).direction = 1 := by
    rw [AffineSubspace.direction_mk']
    apply finrank_span_singleton hv
  have hrank' : finrank ℝ (AffineSubspace.mk' p (ℝ ∙ v)).directionᗮ = finrank ℝ V - 1 := by
    rw [← (AffineSubspace.mk' p (ℝ ∙ v)).direction.finrank_add_finrank_orthogonal, hrank,
      Nat.add_sub_cancel_left]
  let f : ℝ ≃L[ℝ] (AffineSubspace.mk' p (ℝ ∙ v)).direction :=
    (ContinuousLinearEquiv.toSpanNonzeroSingleton ℝ v hv).trans
    (ContinuousLinearEquiv.ofEq (ℝ ∙ v) ((AffineSubspace.mk' p (ℝ ∙ v)).direction) (by simp))
  have hf : MeasurableEmbedding f := f.toHomeomorph.measurableEmbedding
  let p' : AffineSubspace.mk' p (ℝ ∙ v) := ⟨p, by simp⟩
  let g : ℝ → AffineSubspace.mk' p (ℝ ∙ v) := IsometryEquiv.vaddConst p' ∘ f
  have hadd : MeasurableEmbedding (IsometryEquiv.vaddConst p') :=
    (IsometryEquiv.vaddConst p').toHomeomorph.measurableEmbedding
  have hg : MeasurableEmbedding g := hadd.comp hf
  have hm : μHE[finrank ℝ (AffineSubspace.mk' p (ℝ ∙ v)).direction] =
      ‖v‖ₑ • (volume : Measure ℝ).map g := by
    unfold g
    rw [euclideanHausdorffMeasure_eq p', ← map_map hadd.measurable hf.measurable,
      ← Measure.map_smul _ (by fun_prop)]
    congr
    let v' : (AffineSubspace.mk' p (ℝ ∙ v)).direction := ⟨v, by simp⟩
    suffices volume = ‖v'‖ₑ • volume.map f by simpa [v']
    exact volume_eq_of_finrank_eq_one hrank (by simpa [v'] using hv)
  have hx (x : ℝ) : x • v +ᵥ p = g x := by rfl
  simp_rw [(AffineSubspace.mk' p (ℝ ∙ v)).euclideanHausdorffMeasure_eq_lintegral ht, hx,
    hm, lintegral_smul_measure, hg.lintegral_map, smul_eq_mul, hrank', AffineSubspace.direction_mk']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variant686adf5f55adb966ee6efbbfd6b6c097488fbb05e0007706a0b8c6a3d84a4892.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01e468cbfdfa507caec45ee2ac2006321c4b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
