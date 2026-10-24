# map_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad85788f-c984-4671-d073-325c186b54d1",
  "kind": "lemma",
  "lexical_name": "map_comap",
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
  "slug": "map-comap--c1cc26e11c1c845b6366b3e8",
  "source": {
    "blob": "be555aebbb28a5d4a816cc1128a100b2bce8614f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 470,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1cc26e11c1c845b6366b3e8cf66c5fc28e4b0def12a1d17683bf33727a9da33",
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

Occurrence: `result:ad85788f-c984-4671-d073-325c186b54d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comap {f : α → β} (h_range : N.E ⊆ range f) (hf : InjOn f (f ⁻¹' N.E)) :
    (N.comap f).map f hf = N := by
  refine ext_indep (by simpa [image_preimage_eq_iff]) ?_
  simp only [map_ground, comap_ground_eq, map_indep_iff, comap_indep_iff, forall_subset_image_iff]
  exact fun I hI ↦ ⟨by grind, fun h ↦ ⟨_, ⟨h, hf.mono hI⟩, rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be555aebbb28a5d4a816cc1128a100b2bce8614f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
