# isClosed_setOf_preimage_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b98c2b2b3906903327a0efb779fe3728e547a6f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0b1e9d3-7fa0-e270-c204-f85885d5b81e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c9d1e97-5c37-c8f8-0eaa-9821195fbde3",
  "kind": "theorem",
  "lexical_name": "isClosed_setOf_preimage_ae_eq",
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
  "slug": "isclosed-setof-preimage-ae-eq--46709cef4e51bd148d5b91b9",
  "source": {
    "blob": "b98c2b2b3906903327a0efb779fe3728e547a6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46709cef4e51bd148d5b91b96cde1153b3d1322b4413355bb7215097ca317047",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c9d1e97-5c37-c8f8-0eaa-9821195fbde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOf_preimage_ae_eq {f : Z → C(X, Y)} (hf : Continuous f)
    (hfm : ∀ z, MeasurePreserving (f z) μ ν) (s : Set X)
    {t : Set Y} (htm : NullMeasurableSet t ν) (ht : ν t ≠ ∞) :
    IsClosed {z | f z ⁻¹' t =ᵐ[μ] s} := by
  rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
  intro z hz
  replace hz : ∀ᶠ ε : ℝ≥0∞ in 𝓝 0, ε < μ ((f z ⁻¹' t) ∆ s) := by
    apply gt_mem_nhds
    rwa [pos_iff_ne_zero, ne_eq, measure_symmDiff_eq_zero_iff]
  filter_upwards [(tendsto_measure_symmDiff_preimage_nhds_zero (hf.tendsto z)
    (.of_forall hfm) (hfm z) htm ht).eventually hz] with w hw
  intro (hw' : f w ⁻¹' t =ᵐ[μ] s)
  rw [measure_congr (hw'.symmDiff (ae_eq_refl _)), symmDiff_comm] at hw
  exact hw.false

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant472cbdc1cea5532a22e672cd3d304036be288ede47db7454f047103a85f33d22.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b98c2b2b3906903327a0efb779fe3728e547a6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
