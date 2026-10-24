# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Decomposition.Variant9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad53c8aa27a47124e01389d22ea4df6cc04c926a` · SHA-256 `9cee692045e1f82eb8a9865d5f4c7b7f6088c6906a0761ceba0a7aff3ca1a98a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.DoldKan.PInfty

#align_import algebraic_topology.dold_kan.decomposition from "leanprover-community/mathlib"@"32a7e535287f9c73f2e4d2aef306a39190f0b504"

/-!

# Decomposition of the Q endomorphisms

In this file, we obtain a lemma `decomposition_Q` which expresses
explicitly the projection `(Q q).f (n+1) : X _[n+1] ⟶ X _[n+1]`
(`X : SimplicialObject C` with `C` a preadditive category) as
a sum of terms which are postcompositions with degeneracies.

(TODO @joelriou: when `C` is abelian, define the degenerate
subcomplex of the alternating face map complex of `X` and show
that it is a complement to the normalized Moore complex.)

Then, we introduce an ad hoc structure `MorphComponents X n Z` which
can be used in order to define morphisms `X _[n+1] ⟶ Z` using the
decomposition provided by `decomposition_Q`. This shall play a critical
role in the proof that the functor
`N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ))`
reflects isomorphisms.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


open CategoryTheory CategoryTheory.Category CategoryTheory.Preadditive
  Opposite BigOperators Simplicial

noncomputable section

namespace AlgebraicTopology

namespace DoldKan

variable {C : Type*} [Category C] [Preadditive C] {X X' : SimplicialObject C}

/-- In each positive degree, this lemma decomposes the idempotent endomorphism
`Q q` as a sum of morphisms which are postcompositions with suitable degeneracies.
As `Q q` is the complement projection to `P q`, this implies that in the case of
simplicial abelian groups, any $(n+1)$-simplex $x$ can be decomposed as
$x = x' + \sum (i=0}^{q-1} σ_{n-i}(y_i)$ where $x'$ is in the image of `P q` and
the $y_i$ are in degree $n$. -/
theorem decomposition_Q (n q : ℕ) :
    ((Q q).f (n + 1) : X _[n + 1] ⟶ X _[n + 1]) =
      ∑ i : Fin (n + 1) in Finset.filter (fun i : Fin (n + 1) => (i : ℕ) < q) Finset.univ,
        (P i).f (n + 1) ≫ X.δ i.revPerm.succ ≫ X.σ (Fin.revPerm i) := by
  induction' q with q hq
  · simp only [Nat.zero_eq, Q_zero, HomologicalComplex.zero_f_apply, Nat.not_lt_zero,
      Finset.filter_False, Finset.sum_empty]
  · by_cases hqn : q + 1 ≤ n + 1
    swap
    · rw [Q_is_eventually_constant (show n + 1 ≤ q by linarith), hq]
      congr 1
      ext ⟨x, hx⟩
      simp only [Nat.succ_eq_add_one, Finset.mem_filter, Finset.mem_univ, true_and]
      constructor <;> intro <;> linarith
    · cases' Nat.le.dest (Nat.succ_le_succ_iff.mp hqn) with a ha
      rw [Q_succ, HomologicalComplex.sub_f_apply, HomologicalComplex.comp_f, hq]
      symm
      conv_rhs => rw [sub_eq_add_neg, add_comm]
      let q' : Fin (n + 1) := ⟨q, Nat.succ_le_iff.mp hqn⟩
      rw [← @Finset.add_sum_erase _ _ _ _ _ _ q' (by simp)]
      congr
      · have hnaq' : n = a + q := by linarith
        simp only [Fin.val_mk, (HigherFacesVanish.of_P q n).comp_Hσ_eq hnaq',
          q'.revPerm_eq hnaq', neg_neg]
        rfl
      · ext ⟨i, hi⟩
        simp only [Nat.succ_eq_add_one, Nat.lt_succ_iff_lt_or_eq, Finset.mem_univ,
          forall_true_left, Finset.mem_filter, lt_self_iff_false, or_true, and_self, not_true,
          Finset.mem_erase, ne_eq, Fin.mk.injEq, true_and]
        aesop
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.decomposition_Q AlgebraicTopology.DoldKan.decomposition_Q

variable (X)

-- porting note: removed @[nolint has_nonempty_instance]
/-- The structure `MorphComponents` is an ad hoc structure that is used in
the proof that `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ))`
reflects isomorphisms. The fields are the data that are needed in order to
construct a morphism `X _[n+1] ⟶ Z` (see `φ`) using the decomposition of the
identity given by `decomposition_Q n (n+1)`. -/
@[ext]
structure MorphComponents (n : ℕ) (Z : C) where
  a : X _[n + 1] ⟶ Z
  b : Fin (n + 1) → (X _[n] ⟶ Z)
#align algebraic_topology.dold_kan.morph_components AlgebraicTopology.DoldKan.MorphComponents

namespace MorphComponents

variable {X} {n : ℕ} {Z Z' : C} (f : MorphComponents X n Z) (g : X' ⟶ X) (h : Z ⟶ Z')

/-- The morphism `X _[n+1] ⟶ Z ` associated to `f : MorphComponents X n Z`. -/
def φ {Z : C} (f : MorphComponents X n Z) : X _[n + 1] ⟶ Z :=
  PInfty.f (n + 1) ≫ f.a + ∑ i : Fin (n + 1), (P i).f (n + 1) ≫ X.δ i.revPerm.succ ≫
    f.b (Fin.revPerm i)
#align algebraic_topology.dold_kan.morph_components.φ AlgebraicTopology.DoldKan.MorphComponents.φ

variable (X n)

/-- the canonical `MorphComponents` whose associated morphism is the identity
(see `F_id`) thanks to `decomposition_Q n (n+1)` -/
@[simps]
def id : MorphComponents X n (X _[n + 1]) where
  a := PInfty.f (n + 1)
  b i := X.σ i
#align algebraic_topology.dold_kan.morph_components.id AlgebraicTopology.DoldKan.MorphComponents.id

@[simp]
theorem id_φ : (id X n).φ = 𝟙 _ := by
  simp only [← P_add_Q_f (n + 1) (n + 1), φ]
  congr 1
  · simp only [id, PInfty_f, P_f_idem]
  · exact Eq.trans (by congr; simp) (decomposition_Q n (n + 1)).symm
#align algebraic_topology.dold_kan.morph_components.id_φ AlgebraicTopology.DoldKan.MorphComponents.id_φ

variable {X n}

/-- A `MorphComponents` can be postcomposed with a morphism. -/
@[simps]
def postComp : MorphComponents X n Z' where
  a := f.a ≫ h
  b i := f.b i ≫ h
#align algebraic_topology.dold_kan.morph_components.post_comp AlgebraicTopology.DoldKan.MorphComponents.postComp

@[simp]
theorem postComp_φ : (f.postComp h).φ = f.φ ≫ h := by
  unfold φ postComp
  simp only [add_comp, sum_comp, assoc]
#align algebraic_topology.dold_kan.morph_components.post_comp_φ AlgebraicTopology.DoldKan.MorphComponents.postComp_φ

/-- A `MorphComponents` can be precomposed with a morphism of simplicial objects. -/
@[simps]
def preComp : MorphComponents X' n Z where
  a := g.app (op [n + 1]) ≫ f.a
  b i := g.app (op [n]) ≫ f.b i
#align algebraic_topology.dold_kan.morph_components.pre_comp AlgebraicTopology.DoldKan.MorphComponents.preComp

@[simp]
theorem preComp_φ : (f.preComp g).φ = g.app (op [n + 1]) ≫ f.φ := by
  unfold φ preComp
  simp only [PInfty_f, comp_add]
  congr 1
  · simp only [P_f_naturality_assoc]
  · simp only [comp_sum, P_f_naturality_assoc, SimplicialObject.δ_naturality_assoc]
#align algebraic_topology.dold_kan.morph_components.pre_comp_φ AlgebraicTopology.DoldKan.MorphComponents.preComp_φ

end MorphComponents

end DoldKan

end AlgebraicTopology
```
