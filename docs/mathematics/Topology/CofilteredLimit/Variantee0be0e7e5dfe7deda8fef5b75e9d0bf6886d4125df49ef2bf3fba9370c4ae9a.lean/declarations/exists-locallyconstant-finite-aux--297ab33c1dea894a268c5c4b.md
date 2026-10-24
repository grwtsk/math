# exists_locallyConstant_finite_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b38af71e33900c7d84b5a3f47d85f4b098bea850",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fac0ddd-b0d6-7f14-5f85-f646316c0642",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f077c908-116e-6a39-2d97-91d3f6016d21",
  "kind": "theorem",
  "lexical_name": "exists_locallyConstant_finite_aux",
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
  "slug": "exists-locallyconstant-finite-aux--297ab33c1dea894a268c5c4b",
  "source": {
    "blob": "b38af71e33900c7d84b5a3f47d85f4b098bea850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 131,
    "path": "GRWTSK/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297ab33c1dea894a268c5c4b82cfb9d6d10041031ee50eb6f6fda55dc3ef2f98",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f077c908-116e-6a39-2d97-91d3f6016d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant_finite_aux {α : Type*} [Finite α] (hC : IsLimit C)
    (f : LocallyConstant C.pt α) : ∃ (j : J) (g : LocallyConstant (F.obj j) (α → Fin 2)),
      (f.map fun a b => if a = b then (0 : Fin 2) else 1) = g.comap (C.π.app _) := by
  cases nonempty_fintype α
  let ι : α → α → Fin 2 := fun x y => if x = y then 0 else 1
  let ff := (f.map ι).flip
  have hff := fun a : α => exists_locallyConstant_fin_two _ hC (ff a)
  choose j g h using hff
  let G : Finset J := Finset.univ.image j
  obtain ⟨j0, hj0⟩ := IsCofiltered.inf_objs_exists G
  have hj : ∀ a, j a ∈ (Finset.univ.image j : Finset J) := by
    intro a
    simp only [Finset.mem_image, Finset.mem_univ, true_and, exists_apply_eq_apply]
  let fs : ∀ a : α, j0 ⟶ j a := fun a => (hj0 (hj a)).some
  let gg : α → LocallyConstant (F.obj j0) (Fin 2) := fun a => (g a).comap (F.map (fs _))
  let ggg := LocallyConstant.unflip gg
  refine' ⟨j0, ggg, _⟩
  have : f.map ι = LocallyConstant.unflip (f.map ι).flip := by simp
  rw [this]; clear this
  have :
    LocallyConstant.comap (C.π.app j0) ggg =
      LocallyConstant.unflip (LocallyConstant.comap (C.π.app j0) ggg).flip :=
    by simp
  rw [this]; clear this
  congr 1
  ext1 a
  change ff a = _
  rw [h]
  dsimp
  ext1 x
  rw [LocallyConstant.coe_comap _ _ (C.π.app (j a)).continuous]
  dsimp [LocallyConstant.flip, LocallyConstant.unflip]
  rw [LocallyConstant.coe_comap _ _ (C.π.app j0).continuous]
  dsimp
  rw [LocallyConstant.coe_comap _ _ _]
  -- Porting note: `repeat' rw [LocallyConstant.coe_comap]` didn't work
  -- so I did all three rewrites manually
  · dsimp
    congr! 1
    change _ = (C.π.app j0 ≫ F.map (fs a)) x
    rw [C.w]
  · exact (F.map _).continuous
set_option linter.uppercaseLean3 false in
#align Profinite.exists_locally_constant_finite_aux Profinite.exists_locallyConstant_finite_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38af71e33900c7d84b5a3f47d85f4b098bea850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
