# sub_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8689b2bc-440c-8c2d-d337-64980757e2ba",
  "kind": "theorem",
  "lexical_name": "sub_apply",
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
  "slug": "sub-apply--ad65fc8f9b9c36304d22b27b",
  "source": {
    "blob": "089e69441f17fb8c8a435b7153994c847c4e15a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 69,
    "path": "GRWTSK/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad65fc8f9b9c36304d22b27bc33a11b06d38c92e0d40bfddc2852468d9a4e9a5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8689b2bc-440c-8c2d-d337-64980757e2ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_apply [IsFiniteMeasure ν] (h₁ : MeasurableSet s) (h₂ : ν ≤ μ) :
    (μ - ν) s = μ s - ν s := by
  -- We begin by defining `measure_sub`, which will be equal to `(μ - ν)`.
  let measure_sub : Measure α := MeasureTheory.Measure.ofMeasurable
    (fun (t : Set α) (_ : MeasurableSet t) => μ t - ν t) (by simp)
    (fun g h_meas h_disj ↦ by
      simp only [measure_iUnion h_disj h_meas]
      rw [ENNReal.tsum_sub _ (h₂ <| g ·)]
      rw [← measure_iUnion h_disj h_meas]
      apply measure_ne_top)
  -- Now, we demonstrate `μ - ν = measure_sub`, and apply it.
  have h_measure_sub_add : ν + measure_sub = μ := by
    ext1 t h_t_measurable_set
    simp only [Pi.add_apply, coe_add]
    rw [MeasureTheory.Measure.ofMeasurable_apply _ h_t_measurable_set, add_comm,
      tsub_add_cancel_of_le (h₂ t)]
  have h_measure_sub_eq : μ - ν = measure_sub := by
    rw [MeasureTheory.Measure.sub_def]
    apply le_antisymm
    · apply sInf_le
      simp [le_refl, add_comm, h_measure_sub_add]
    apply le_sInf
    intro d h_d
    rw [← h_measure_sub_add, mem_setOf_eq, add_comm d] at h_d
    apply Measure.le_of_add_le_add_left h_d
  rw [h_measure_sub_eq]
  apply Measure.ofMeasurable_apply _ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089e69441f17fb8c8a435b7153994c847c4e15a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
