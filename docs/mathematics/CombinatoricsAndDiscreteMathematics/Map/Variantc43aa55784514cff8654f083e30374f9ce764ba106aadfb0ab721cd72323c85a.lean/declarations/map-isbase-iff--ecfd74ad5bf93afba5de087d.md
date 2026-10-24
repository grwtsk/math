# map_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b052f9ba-4b02-9639-9444-2c9ff5bf30c0",
  "kind": "lemma",
  "lexical_name": "map_isBase_iff",
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
  "slug": "map-isbase-iff--ecfd74ad5bf93afba5de087d",
  "source": {
    "blob": "be555aebbb28a5d4a816cc1128a100b2bce8614f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 378,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecfd74ad5bf93afba5de087dee6cceec07b467c161a318a27b11ce1f37c9ba4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b052f9ba-4b02-9639-9444-2c9ff5bf30c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_isBase_iff (M : Matroid α) (f : α → β) (hf) {B : Set β} :
    (M.map f hf).IsBase B ↔ ∃ B₀, M.IsBase B₀ ∧ B = f '' B₀ := by
  rw [isBase_iff_maximal_indep]
  refine ⟨fun h ↦ ?_, ?_⟩
  · obtain ⟨B₀, hB₀, hbij⟩ := h.prop.exists_bijOn_of_map
    refine ⟨B₀, hB₀.isBase_of_maximal fun J hJ hB₀J ↦ ?_, hbij.image_eq.symm⟩
    rw [← hf.image_eq_image_iff hB₀.subset_ground hJ.subset_ground, hbij.image_eq]
    exact h.eq_of_subset (hJ.map f hf) (hbij.image_eq ▸ image_mono hB₀J)
  rintro ⟨B, hB, rfl⟩
  rw [maximal_subset_iff]
  refine ⟨hB.indep.map f hf, fun I hI hBI ↦ ?_⟩
  obtain ⟨I₀, hI₀, hbij⟩ := hI.exists_bijOn_of_map
  rw [← hbij.image_eq, hf.image_subset_image_iff hB.subset_ground hI₀.subset_ground] at hBI
  rw [hB.eq_of_subset_indep hI₀ hBI, hbij.image_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be555aebbb28a5d4a816cc1128a100b2bce8614f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
