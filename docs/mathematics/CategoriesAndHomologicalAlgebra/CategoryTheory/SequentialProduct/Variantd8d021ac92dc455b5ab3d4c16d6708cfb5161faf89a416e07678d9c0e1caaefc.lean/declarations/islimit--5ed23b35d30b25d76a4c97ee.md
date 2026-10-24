# isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42dc0e31ec89bab4269d1b649c6933d1a0846909c8df36677d0928a6a1788532",
  "kind": "def",
  "lexical_name": "isLimit",
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
  "slug": "islimit--5ed23b35d30b25d76a4c97ee",
  "source": {
    "blob": "de188f2d7bc1e11cbde59ef4c99f0171a296ca1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ed23b35d30b25d76a4c97ee4663705df901b62dd48be97ee56befa6aecf7e90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42dc0e31ec89bab4269d1b649c6933d1a0846909c8df36677d0928a6a1788532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimit : IsLimit (cone f) where
  lift s := Pi.lift fun m ↦
    s.π.app ⟨m + 1⟩ ≫ Pi.π (fun i ↦ if _ : i < m + 1 then M i else N i) m ≫
      eqToHom (dite_eq_left (by lia : m < m + 1))
  fac s := by
    intro ⟨n⟩
    apply Pi.hom_ext
    intro m
    by_cases h : m < n
    · simp only [Category.assoc, cone_π_app_comp_Pi_π_pos f _ _ h]
      simp only [dite_eq_ite, limit.lift_π_assoc,
        Discrete.functor_obj_eq_as, Fan.mk_π_app, Category.assoc, eqToHom_trans]
      have hh : m + 1 ≤ n := by lia
      rw [← s.w (homOfLE hh).op]
      simp only [homOfLE_leOfHom, Category.assoc]
      congr
      induction hh using Nat.leRec with
      | refl => simp
      | @le_succ_of_le n hh ih =>
        have : homOfLE (Nat.le_succ_of_le hh) = homOfLE hh ≫ homOfLE (Nat.le_succ n) := by simp
        rw [this, op_comp, Functor.map_comp]
        simp only [Nat.succ_eq_add_one, homOfLE_leOfHom,
          Functor.ofOpSequence_map_homOfLE_succ, Category.assoc]
        have h₁ : (if _ : m < m + 1 then M m else N m) = if _ : m < n then M m else N m := by
          rw [dite_eq_left (by lia), dite_eq_left (by lia)]
        have h₂ : (if _ : m < n then M m else N m) = if _ : m < n + 1 then M m else N m := by
          rw [dite_eq_left h, dite_eq_left (by lia)]
        rw [← eqToHom_trans h₁ h₂]
        slice_lhs 2 4 => rw [ih (by lia)]
        simp only [functorMap, dite_eq_ite, Pi.π, Pi.map_π_assoc]
        split_ifs
        rw [dite_eq_left (by lia)]
        simp
    · simp only [Category.assoc]
      rw [cone_π_app_comp_Pi_π_neg f _ _ h]
      simp only [dite_eq_ite, limit.lift_π_assoc,
        Discrete.functor_obj_eq_as, Fan.mk_π_app, Category.assoc]
      slice_lhs 2 4 => simp only [← dite_eq_ite, ← functorMap_commSq f h]
      simp
  uniq s m h := by
    apply Pi.hom_ext
    intro n
    simp only [dite_eq_ite, limit.lift_π,
      Fan.mk_π_app, ← h ⟨n + 1⟩, Category.assoc]
    slice_rhs 2 3 => simp only [← dite_eq_ite, cone_π_app_comp_Pi_π_pos f (n + 1) n (by lia)]
    simp

section

variable [HasZeroMorphisms C] [HasFiniteBiproducts C] [∀ n, Epi (f n)]

attribute [local instance] hasBinaryBiproducts_of_finite_biproducts

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de188f2d7bc1e11cbde59ef4c99f0171a296ca1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
