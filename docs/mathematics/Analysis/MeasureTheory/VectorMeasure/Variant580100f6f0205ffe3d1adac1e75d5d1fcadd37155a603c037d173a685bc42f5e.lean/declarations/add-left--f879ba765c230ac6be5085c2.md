# add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694b67575ca73381e86004737d448404da573ca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:560855f3-c7f0-35b5-50de-d928075cb02b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:183479ea-1921-9957-e6db-0e7ffc0be87e",
  "kind": "theorem",
  "lexical_name": "add_left",
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
  "slug": "add-left--f879ba765c230ac6be5085c2",
  "source": {
    "blob": "694b67575ca73381e86004737d448404da573ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1219,
    "line": 1200,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f879ba765c230ac6be5085c23e0d6a4d2e60b3f039403d71acdb7e08ac85d26d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:183479ea-1921-9957-e6db-0e7ffc0be87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_left [T2Space N] [ContinuousAdd M] (h₁ : v₁ ⟂ᵥ w) (h₂ : v₂ ⟂ᵥ w) : v₁ + v₂ ⟂ᵥ w := by
  obtain ⟨u, hmu, hu₁, hu₂⟩ := h₁
  obtain ⟨v, hmv, hv₁, hv₂⟩ := h₂
  refine' mk (u ∩ v) (hmu.inter hmv) (fun t ht _ => _) fun t ht hmt => _
  · rw [add_apply, hu₁ _ (Set.subset_inter_iff.1 ht).1, hv₁ _ (Set.subset_inter_iff.1 ht).2,
      zero_add]
  · rw [Set.compl_inter] at ht
    rw [(_ : t = uᶜ ∩ t ∪ vᶜ \ uᶜ ∩ t),
      of_union _ (hmu.compl.inter hmt) ((hmv.compl.diff hmu.compl).inter hmt), hu₂, hv₂, add_zero]
    · exact Set.Subset.trans (Set.inter_subset_left _ _) (Set.diff_subset _ _)
    · exact Set.inter_subset_left _ _
    · exact disjoint_sdiff_self_right.mono (Set.inter_subset_left _ _) (Set.inter_subset_left _ _)
    · apply Set.Subset.antisymm <;> intro x hx
      · by_cases hxu' : x ∈ uᶜ
        · exact Or.inl ⟨hxu', hx⟩
        rcases ht hx with (hxu | hxv)
        exacts [False.elim (hxu' hxu), Or.inr ⟨⟨hxv, hxu'⟩, hx⟩]
      · cases' hx with hx hx <;> exact hx.2
#align measure_theory.vector_measure.mutually_singular.add_left MeasureTheory.VectorMeasure.MutuallySingular.add_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694b67575ca73381e86004737d448404da573ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
