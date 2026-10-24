# isCompact_setOfPred_finiteMeasure_le_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f186501-1463-4baf-5d0b-ddcb483324f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c863b11a-cd17-db60-814e-9e604cea7ee4",
  "kind": "lemma",
  "lexical_name": "isCompact_setOfPred_finiteMeasure_le_of_isCompact",
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
  "slug": "iscompact-setofpred-finitemeasure-le-of-iscompact--e21be4928c5d71bed26ef93b",
  "source": {
    "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21be4928c5d71bed26ef93bd4c738eb116590db946d8d32fe47669d41afaa13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c863b11a-cd17-db60-814e-9e604cea7ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_setOfPred_finiteMeasure_le_of_isCompact
    (C : ℝ≥0) {K : Set E} (hK : IsCompact K) :
    IsCompact {μ : FiniteMeasure E | μ.mass ≤ C ∧ μ Kᶜ = 0} := by
  let f : K → E := Subtype.val
  have hf : IsClosedEmbedding f := IsClosedEmbedding.subtypeVal hK.isClosed
  have rf : range f = K := Subtype.range_val
  let F : FiniteMeasure K → FiniteMeasure E := fun μ ↦ μ.map f
  let T : Set (FiniteMeasure K) := {μ | μ.mass ≤ C}
  have : {μ : FiniteMeasure E | μ.mass ≤ C ∧ μ Kᶜ = 0} = F '' T := by
    apply Subset.antisymm
    · intro μ hμ
      simp only [mem_image]
      refine ⟨μ.comap f, (FiniteMeasure.mass_comap_le _ _).trans hμ.1, ?_⟩
      ext s hs
      simp only [toMeasure_map, F]
      rw [Measure.map_apply measurable_subtype_coe hs]
      simp only [toMeasure_comap]
      rw [Measure.comap_apply _ (Subtype.val_injective), image_preimage_eq_inter_range]
      · rw [← Measure.restrict_apply hs, Measure.restrict_eq_self_of_ae_mem]
        apply (null_iff_toMeasure_null (↑μ) (range f)ᶜ).mp
        rw [rf]
        exact hμ.2
      · exact fun t ht ↦ hf.measurableEmbedding.measurableSet_image' ht
      · exact hf.continuous.measurable hs
    · simp only [null_iff_toMeasure_null, image_subset_iff, preimage_ofPred_eq, toMeasure_map,
        ofPred_subset_ofPred, F, T]
      intro μ hμ
      rw [Measure.map_apply hf.continuous.measurable hK.measurableSet.compl]
      refine ⟨(mass_map_le hf.measurable.aemeasurable).trans hμ, by simp [f]⟩
  rw [this]
  apply IsCompact.image _ (by fun_prop)
  have : CompactSpace K := isCompact_iff_compactSpace.mp hK
  exact isCompact_setOfPred_finiteMeasure_le_of_compactSpace _ _

@[deprecated (since := "2026-07-09")]
alias isCompact_setOf_finiteMeasure_le_of_isCompact :=
  isCompact_setOfPred_finiteMeasure_le_of_isCompact

/-- **Prokhorov theorem**: Given a sequence of compact sets `Kₙ` and a sequence `uₙ` tending
to zero, the finite measures of mass at most `C` giving mass at most `uₙ` to the complement of `Kₙ`
form a compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a83535342af0ca8700ecacf175bec691206f6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
