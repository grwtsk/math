# exists_isIso_of_functor_from_monoOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fba7573-9ed1-e0a2-bca7-7963478f4417",
  "kind": "lemma",
  "lexical_name": "exists_isIso_of_functor_from_monoOver",
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
  "slug": "exists-isiso-of-functor-from-monoover--d43ec840dd08bb3f2b145d9f",
  "source": {
    "blob": "f70905aa64171ed67a59254181de3bd7d508ca23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43ec840dd08bb3f2b145d9fd6c6f489f5aa4f4298e9236660940b5a0dfc5659",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fba7573-9ed1-e0a2-bca7-7963478f4417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isIso_of_functor_from_monoOver
    {κ : Cardinal.{w}} [hκ : Fact κ.IsRegular] [IsCardinalFiltered J κ]
    (hXκ : HasCardinalLT (Subobject X) κ)
    (c : Cocone (F ⋙ MonoOver.forget _ ⋙ Over.forget _)) (hc : IsColimit c)
    (f : c.pt ⟶ X) (hf : ∀ (j : J), c.ι.app j ≫ f = (F.obj j).obj.hom) (h : Epi f) :
    ∃ (j : J), IsIso (F.obj j).obj.hom := by
  have := isFiltered_of_isCardinalDirected J κ
  have := mono_of_isColimit_monoOver F hc f hf
  rw [Subobject.epi_iff_mk_eq_top f,
    subobjectMk_of_isColimit_eq_iSup F hc f hf] at h
  let s (j : J) : Subobject X := Subobject.mk (F.obj j).obj.hom
  have h' : Function.Surjective (fun (j : J) ↦ (⟨s j, _, rfl⟩ : Set.range s)) := by
    rintro ⟨_, j, rfl⟩
    exact ⟨j, rfl⟩
  obtain ⟨σ, hσ⟩ := h'.hasRightInverse
  have hs : HasCardinalLT (Set.range s) κ :=
    hXκ.of_injective (f := Subtype.val) Subtype.val_injective
  refine ⟨IsCardinalFiltered.max σ hs, ?_⟩
  rw [Subobject.isIso_iff_mk_eq_top, ← top_le_iff, ← h, iSup_le_iff]
  intro j
  let t : Set.range s := ⟨_, j, rfl⟩
  trans Subobject.mk (F.obj (σ t)).obj.hom
  · exact (hσ t).symm.le
  · exact MonoOver.subobjectMk_le_mk_of_hom
      (F.map (IsCardinalFiltered.toMax σ hs t))

end IsGrothendieckAbelian

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70905aa64171ed67a59254181de3bd7d508ca23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
