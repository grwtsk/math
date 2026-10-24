# hasFiniteBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9cc0df5c3c0edf48fc8e337a28ec2d5f2ca07eb8733dd0b21ba2f9e7681e856",
  "kind": "instance",
  "lexical_name": "hasFiniteBiproducts",
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
  "slug": "hasfinitebiproducts--2ff7ce9b54b168c094520f48",
  "source": {
    "blob": "92f29de71b125674e7e041f3c706a5497a1ab592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ff7ce9b54b168c094520f482f43b3b0cd9ae16a44e9626eb472dd0f82bc2af4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9cc0df5c3c0edf48fc8e337a28ec2d5f2ca07eb8733dd0b21ba2f9e7681e856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasFiniteBiproducts : HasFiniteBiproducts (Mat_ C) where
  out n :=
    { has_biproduct := fun f =>
        hasBiproduct_of_total
          { pt := ⟨Σ j, (f j).ι, fun p => (f p.1).X p.2⟩
            π := fun j x y => by
              refine if h : x.1 = j then ?_ else 0
              refine if h' : @Eq.ndrec (Fin n) x.1 (fun j => (f j).ι) x.2 _ h = y then ?_ else 0
              apply eqToHom
              substs h h'
              rfl
            -- Notice we were careful not to use `subst` until we had a goal in `Prop`.
            ι := fun j x y => by
              refine if h : y.1 = j then ?_ else 0
              refine if h' : @Eq.ndrec _ y.1 (fun j => (f j).ι) y.2 _ h = x then ?_ else 0
              apply eqToHom
              substs h h'
              rfl
            ι_π := fun j j' => by
              ext x y
              dsimp
              simp_rw [dite_comp, comp_dite]
              simp only [ite_self, dite_eq_ite, Limits.comp_zero, Limits.zero_comp,
                eqToHom_trans, Finset.sum_congr]
              erw [Finset.sum_sigma]
              dsimp
              simp only [if_true, Finset.sum_dite_irrel, Finset.mem_univ,
                Finset.sum_const_zero, Finset.sum_congr, Finset.sum_dite_eq']
              split_ifs with h h'
              · substs h h'
                simp only [CategoryTheory.eqToHom_refl, CategoryTheory.Mat_.id_apply_self]
              · subst h
                rw [eqToHom_refl, id_apply_of_ne _ _ _ h']
              · rfl }
          (by
            dsimp
            ext1 ⟨i, j⟩
            rintro ⟨i', j'⟩
            rw [Finset.sum_apply, Finset.sum_apply]
            dsimp
            rw [Finset.sum_eq_single i]; rotate_left
            · intro b _ hb
              apply Finset.sum_eq_zero
              intro x _
              rw [dif_neg hb.symm, zero_comp]
            · intro hi
              simp at hi
            rw [Finset.sum_eq_single j]; rotate_left
            · intro b _ hb
              rw [dif_pos rfl, dif_neg, zero_comp]
              simp only
              tauto
            · intro hj
              simp at hj
            simp only [eqToHom_refl, dite_eq_ite, ite_true, Category.id_comp, ne_eq,
              Sigma.mk.inj_iff, not_and, id_def]
            by_cases h : i' = i
            · subst h
              rw [dif_pos rfl]
              simp only [heq_eq_eq, true_and]
              by_cases h : j' = j
              · subst h
                simp
              · rw [dif_neg h, dif_neg (Ne.symm h)]
            · rw [dif_neg h, dif_neg]
              tauto) }

end Mat_

namespace Functor

variable {C} {D : Type*} [Category.{v₁} D] [Preadditive D]

attribute [local simp] Mat_.id_apply eqToHom_map

/-- A functor induces a functor of matrix categories.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant368c60cf6eb179230bee1fbaa68435305e94d9e65de0ccacc5f234738cb47278.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92f29de71b125674e7e041f3c706a5497a1ab592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
