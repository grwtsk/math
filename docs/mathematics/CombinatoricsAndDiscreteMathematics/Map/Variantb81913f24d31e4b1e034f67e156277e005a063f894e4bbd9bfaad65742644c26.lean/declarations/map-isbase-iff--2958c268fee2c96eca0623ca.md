# map_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:384ee4db-ef59-7382-7586-6aad1db693c1",
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
  "slug": "map-isbase-iff--2958c268fee2c96eca0623ca",
  "source": {
    "blob": "17aa9b0836ec3f947e34646ad00f10cc2ea144f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2958c268fee2c96eca0623ca42f4fc0800ed0e0ededdac359201b47b343098da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:384ee4db-ef59-7382-7586-6aad1db693c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–384.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17aa9b0836ec3f947e34646ad00f10cc2ea144f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
