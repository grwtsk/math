# cRk_comap_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:710f7f3c-5a0a-86a2-724c-bcda2c088d05",
  "kind": "theorem",
  "lexical_name": "cRk_comap_lift",
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
  "slug": "crk-comap-lift--042b4d4ee50725a5fdea5be7",
  "source": {
    "blob": "a04736db6d95382d1f7821cde07f570306d2c8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042b4d4ee50725a5fdea5be73c57ca9087f5efaa3442fb15ed43d328a2b782fa",
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

Occurrence: `result:710f7f3c-5a0a-86a2-724c-bcda2c088d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem cRk_comap_lift (M : Matroid β) (f : α → β) (X : Set α) :
    lift.{v,u} ((M.comap f).cRk X) = lift (M.cRk (f '' X)) := by
  nth_rw 1 [cRk, cRank, le_antisymm_iff, lift_iSup (bddAbove_range _), cRk, cRank, cRk, cRank]
  nth_rw 2 [lift_iSup (bddAbove_range _)]
  simp only [ciSup_le_iff (bddAbove_range _), ge_iff_le, Subtype.forall, isBase_restrict_iff',
    comap_isBasis'_iff, and_imp]
  refine ⟨fun I hI hfI hIX ↦ ?_, fun I hIX ↦ ?_⟩
  · rw [← mk_image_eq_of_injOn_lift _ _ hfI, lift_le]
    exact hI.cardinalMk_le_cRk
  obtain ⟨I₀, hI₀X, rfl, hfI₀⟩ := show ∃ I₀ ⊆ X, f '' I₀ = I ∧ InjOn f I₀ by
    obtain ⟨I₀, hI₀ss, hbij⟩ := exists_subset_bijOn (f ⁻¹' I ∩ X) f
    refine ⟨I₀, hI₀ss.trans inter_subset_right, ?_, hbij.injOn⟩
    rw [hbij.image_eq, image_preimage_inter, inter_eq_self_of_subset_left hIX.subset]
  rw [mk_image_eq_of_injOn_lift _ _ hfI₀, lift_le]
  exact IsBasis'.cardinalMk_le_cRk <| comap_isBasis'_iff.2 ⟨hIX, hfI₀, hI₀X⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant852fb202022264e279456f79c5440768fa9a4efd7a287e39b494342de8afc2f7.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04736db6d95382d1f7821cde07f570306d2c8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
