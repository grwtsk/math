# MeasureTheory.NullMeasurable.aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a94b1bf-3300-a265-ad8b-43e89fd7d39c",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.NullMeasurable.aemeasurable",
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
  "slug": "measuretheory-nullmeasurable-aemeasurable--d0f3d40738addd0a1ae2e7c4",
  "source": {
    "blob": "8624fba6d487c59f92c430cfa68bfd7c3bd1be2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 383,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f3d40738addd0a1ae2e7c497600cc2a602802f693ee3ddd5a1415dd9da5c7c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a94b1bf-3300-a265-ad8b-43e89fd7d39c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.NullMeasurable.aemeasurable {f : α → β}
    [hc : MeasurableSpace.CountablyGenerated β] (h : NullMeasurable f μ) : AEMeasurable f μ := by
  classical
  nontriviality β; inhabit β
  rcases hc.1 with ⟨S, hSc, rfl⟩
  choose! T hTf hTm hTeq using fun s hs ↦ (h <| .basic s hs).exists_measurable_subset_ae_eq
  choose! U hUf hUm hUeq using fun s hs ↦ (h <| .basic s hs).exists_measurable_superset_ae_eq
  set v := ⋃ s ∈ S, U s \ T s
  have hvm : MeasurableSet v := .biUnion hSc fun s hs ↦ (hUm s hs).diff (hTm s hs)
  have hvμ : μ v = 0 := (measure_biUnion_null_iff hSc).2 fun s hs ↦ ae_le_set.1 <|
    ((hUeq s hs).trans (hTeq s hs).symm).le
  refine ⟨v.piecewise (fun _ ↦ default) f, ?_, measure_mono_null (fun x ↦
    not_imp_comm.2 fun hxv ↦ (piecewise_eq_of_notMem _ _ _ hxv).symm) hvμ⟩
  refine measurable_of_restrict_of_restrict_compl hvm ?_ ?_
  · rw [restrict_piecewise]
    apply measurable_const
  · rw [restrict_piecewise_compl, restrict_eq]
    refine measurable_generateFrom fun s hs ↦ .of_subtype_image ?_
    rw [preimage_comp, Subtype.image_preimage_coe]
    convert (hTm s hs).diff hvm using 1
    rw [inter_comm]
    refine Set.ext fun x ↦ and_congr_left fun hxv ↦ ⟨fun hx ↦ ?_, fun hx ↦ hTf s hs hx⟩
    exact by_contra fun hx' ↦ hxv <| mem_biUnion hs ⟨hUf s hs hx, hx'⟩

/-- Let `f : α → β` be a null measurable function
such that a.e. all values of `f` belong to a set `t`
such that the restriction of the `σ`-algebra in the codomain to `t` is countably generated,
then `f` is a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624fba6d487c59f92c430cfa68bfd7c3bd1be2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
