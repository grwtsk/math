# hausdorffMeasure_smul_right_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1034,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:848dc9b1-165d-bf60-b18d-da302746bd53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07e8927a-1e5c-7780-570d-8e1bbd598bfb",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_smul_right_image",
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
  "slug": "hausdorffmeasure-smul-right-image--eb2cfec705ae346275df6768",
  "source": {
    "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1059,
    "line": 1034,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb2cfec705ae346275df6768bb0c53e1043211d5cbf0683c36f1ad9bbf085547",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e8927a-1e5c-7780-570d-8e1bbd598bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1034–1059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_smul_right_image [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E] (v : E) (s : Set ℝ) :
    μH[1] ((fun r => r • v) '' s) = ‖v‖₊ • μH[1] s := by
  obtain rfl | hv := eq_or_ne v 0
  · have := nullSingletonClass_hausdorff E one_pos
    obtain rfl | hs := s.eq_empty_or_nonempty
    · simp
    simp [hs]
  have hn : ‖v‖ ≠ 0 := norm_ne_zero_iff.mpr hv
  -- break lineMap into pieces
  suffices
      μH[1] ((‖v‖ • ·) '' LinearMap.toSpanSingleton ℝ E (‖v‖⁻¹ • v) '' s) = ‖v‖₊ • μH[1] s by
    simpa only [Set.image_image, smul_comm (norm _), inv_smul_smul₀ hn,
      LinearMap.toSpanSingleton_apply] using this
  have iso_smul : Isometry (LinearMap.toSpanSingleton ℝ E (‖v‖⁻¹ • v)) := by
    refine AddMonoidHomClass.isometry_of_norm _ fun x => (norm_smul _ _).trans ?_
    rw [norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hn, mul_one, LinearMap.id_apply]
  rw [Set.image_smul, Measure.hausdorffMeasure_smul₀ zero_le_one hn, nnnorm_norm,
      NNReal.rpow_one, iso_smul.hausdorffMeasure_image (Or.inl <| zero_le_one' ℝ)]

section NormedFieldAffine

variable [NormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E] [MeasurableSpace P]
variable [MetricSpace P] [NormedAddTorsor E P] [BorelSpace P]

/-- Scaling by `c` around `x` scales the measure by `‖c‖₊ ^ d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean#L1034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79bc8875aa7428d749bfc0e3cf2684bcee37b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
