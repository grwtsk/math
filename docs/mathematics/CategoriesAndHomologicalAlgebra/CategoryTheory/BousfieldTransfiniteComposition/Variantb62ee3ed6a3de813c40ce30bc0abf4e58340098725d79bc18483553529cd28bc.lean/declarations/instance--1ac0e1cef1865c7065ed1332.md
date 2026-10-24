# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b93c2f3fa0236b0b0e3264c42ee15d6e1b9bf63fcc08bc97a80e8f9a8370481",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1ac0e1cef1865c7065ed1332",
  "source": {
    "blob": "a0ab484955e7eae3be7af36ea689a77902ecf14f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BousfieldTransfiniteComposition/Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ac0e1cef1865c7065ed133262467971b0377e1fb0c872672f2926b5ed171588",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BousfieldTransfiniteComposition/Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b93c2f3fa0236b0b0e3264c42ee15d6e1b9bf63fcc08bc97a80e8f9a8370481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (J : Type w) [LinearOrder J] [SuccOrder J] [OrderBot J] [WellFoundedLT J] :
    P.isLocal.IsStableUnderTransfiniteCompositionOfShape J where
  le := fun X Y f ⟨hf⟩ Z hZ ↦ by
    refine ⟨fun g₁ g₂ h ↦ hf.isColimit.hom_ext (fun j ↦ ?_), fun g ↦ ?_⟩
    · dsimp at h ⊢
      induction j using SuccOrder.limitRecOn with
      | isMin j hj =>
        obtain rfl := hj.eq_bot
        simpa [← cancel_epi hf.isoBot.inv]
      | succ j hj hj' => exact (hf.map_mem j hj _ hZ).1 (by simpa)
      | isSuccLimit j hj hj' =>
        exact (hf.F.isColimitOfIsWellOrderContinuous j hj).hom_ext
          (fun ⟨k, hk⟩ ↦ by simpa using! hj' _ hk)
    · let d : (hf.F.op ⋙ yoneda.obj Z).WellOrderInductionData :=
        .ofExists (fun j hj ↦ (hf.map_mem j hj _ hZ).2) (fun j hj s ↦ by
          let c : Cocone ((Set.principalSegIio j).monotone.functor ⋙ hf.F) :=
            { pt := Z
              ι.app k := s.1 (op k)
              ι.naturality _ _ g := by
                dsimp
                simpa only [Category.comp_id] using! s.2 g.op }
          exact ⟨(hf.F.isColimitOfIsWellOrderContinuous j hj).desc c, fun k hk ↦
            by simpa using! (hf.F.isColimitOfIsWellOrderContinuous j hj).fac c ⟨k, hk⟩⟩)
      let σ := d.sectionsMk (hf.isoBot.hom ≫ g)
      let c : Cocone hf.F :=
        { pt := Z
          ι.app j := σ.1 (op j)
          ι.naturality _ _ f := by
            dsimp
            simpa only [Category.comp_id] using! σ.2 f.op }
      exact ⟨hf.isColimit.desc c, by
        simp only [← hf.fac, Category.assoc, hf.isColimit.fac c ⊥, c, σ,
          d.sectionsMk_val_op_bot, Iso.inv_hom_id_assoc]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BousfieldTransfiniteComposition/Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BousfieldTransfiniteComposition/Variantb62ee3ed6a3de813c40ce30bc0abf4e58340098725d79bc18483553529cd28bc.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ab484955e7eae3be7af36ea689a77902ecf14f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
