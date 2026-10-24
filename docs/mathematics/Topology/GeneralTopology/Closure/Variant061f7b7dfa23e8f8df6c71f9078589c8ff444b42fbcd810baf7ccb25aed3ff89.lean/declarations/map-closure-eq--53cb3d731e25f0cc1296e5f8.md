# map_closure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a61b5f1-4dff-bfb5-a5e5-0f20653f57be",
  "kind": "lemma",
  "lexical_name": "map_closure_eq",
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
  "slug": "map-closure-eq--53cb3d731e25f0cc1296e5f8",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1006,
    "line": 983,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53cb3d731e25f0cc1296e5f8e6137e368166a0a06d43bab047cc33dd8d6fcf69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a61b5f1-4dff-bfb5-a5e5-0f20653f57be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 983–1006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_closure_eq {β : Type*} (M : Matroid α) (f : α → β) (hf) (X : Set β) :
    (M.map f hf).closure X = f '' M.closure (f ⁻¹' X) := by
  -- It is enough to prove that `map` and `closure` commute for `M`-independent sets.
  suffices aux : ∀ ⦃I⦄, M.Indep I → (M.map f hf).closure (f '' I) = f '' (M.closure I) by
    obtain ⟨I, hI⟩ := M.exists_isBasis (f ⁻¹' X ∩ M.E)
    rw [← closure_inter_ground, map_ground, ← M.closure_inter_ground, ← hI.closure_eq_closure,
      ← aux hI.indep, ← image_preimage_inter, ← (hI.map hf).closure_eq_closure]
  -- Let `I` be independent, and transform the goal using closure/independence lemmas
  refine fun I hI ↦ Set.ext fun e ↦ ?_
  simp only [(hI.map f hf).mem_closure_iff', map_ground, mem_image, map_indep_iff,
    forall_exists_index, and_imp, hI.mem_closure_iff']
  -- The goal now easily follows from the invariance of independence under maps.
  constructor
  · rintro ⟨⟨x, hxE, rfl⟩, h2⟩
    refine ⟨x, ⟨hxE, fun hI' ↦ ?_⟩, rfl⟩
    obtain ⟨y, hyI, hfy⟩ := h2 _ hI' image_insert_eq.symm
    rw [hf.eq_iff (hI.subset_ground hyI) hxE] at hfy
    rwa [← hfy]
  rintro ⟨x, ⟨hxE, hxi⟩, rfl⟩
  refine ⟨⟨x, hxE, rfl⟩, fun J hJ hJI ↦ ⟨x, hxi ?_, rfl⟩⟩
  replace hJ := hJ.map f hf
  have hrw := image_insert_eq ▸ hJI
  rwa [← hrw, map_image_indep_iff (insert_subset hxE hI.subset_ground)] at hJ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
