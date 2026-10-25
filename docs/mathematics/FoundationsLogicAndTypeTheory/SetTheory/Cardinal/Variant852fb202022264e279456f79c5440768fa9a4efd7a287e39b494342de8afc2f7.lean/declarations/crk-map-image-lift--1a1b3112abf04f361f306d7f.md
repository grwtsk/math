# cRk_map_image_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03f5723c-8c27-129f-5c71-42fb2d769c97",
  "kind": "theorem",
  "lexical_name": "cRk_map_image_lift",
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
  "slug": "crk-map-image-lift--1a1b3112abf04f361f306d7f",
  "source": {
    "blob": "a04736db6d95382d1f7821cde07f570306d2c8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a1b3112abf04f361f306d7fb2f4fc1e5d617c9f3c8d125be9fff58496b0dbc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03f5723c-8c27-129f-5c71-42fb2d769c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem cRk_map_image_lift (M : Matroid α) (hf : InjOn f M.E) (X : Set α)
    (hX : X ⊆ M.E := by aesop_mat) : lift.{u,v} ((M.map f hf).cRk (f '' X)) = lift (M.cRk X) := by
  nth_rw 1 [cRk, cRank, le_antisymm_iff, lift_iSup (bddAbove_range _), cRk, cRank, cRk, cRank]
  nth_rw 2 [lift_iSup (bddAbove_range _)]
  simp only [ciSup_le_iff (bddAbove_range _), ge_iff_le, Subtype.forall, isBase_restrict_iff',
    isBasis'_iff_isBasis hX, isBasis'_iff_isBasis (show f '' X ⊆ (M.map f hf).E from image_mono hX)]
  refine ⟨fun I hI ↦ ?_, fun I hI ↦ ?_⟩
  · obtain ⟨I, X', hIX, rfl, hXX'⟩ := map_isBasis_iff'.1 hI
    rw [mk_image_eq_of_injOn_lift _ _ (hf.mono hIX.indep.subset_ground), lift_le]
    obtain rfl : X = X' := by rwa [hf.image_eq_image_iff hX hIX.subset_ground] at hXX'
    exact hIX.cardinalMk_le_cRk
  rw [← mk_image_eq_of_injOn_lift _ _ (hf.mono hI.indep.subset_ground), lift_le]
  exact (hI.map hf).cardinalMk_le_cRk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04736db6d95382d1f7821cde07f570306d2c8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
