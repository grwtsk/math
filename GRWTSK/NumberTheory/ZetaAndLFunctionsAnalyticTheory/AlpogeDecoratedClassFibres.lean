/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.GroupTheory.GroupAction.Quotient
import Mathlib.Algebra.Group.Action.Prod
import Mathlib.RingTheory.Ideal.Quotient.Operations

/-! # Decorated classes as orbits of the stabilizer of the away component

For two simultaneous actions, the stabilizer of a representative of the
first coordinate acts on the second. This retains the actual transporters
and stabilizer groups in the double-coset decomposition. -/

namespace GRWTSK.NumberTheory.AlpogeDecoratedClassFibres

variable {G A B I : Type*} [Group G] [MulAction G A] [MulAction G B]

/-- Equality of two diagonal classes over a fixed base point is measured by
its full stabilizer, acting on the second coordinate. -/
theorem orbit_over_fixed_iff (a : A) (b b' : B) :
    MulAction.orbitRel G (A × B) (a, b) (a, b') ↔
      MulAction.orbitRel (MulAction.stabilizer G a) B b b' := by
  constructor
  · rintro ⟨g, hg⟩
    exact ⟨⟨g, congrArg Prod.fst hg⟩, congrArg Prod.snd hg⟩
  · rintro ⟨g, hg⟩
    exact ⟨g.val, Prod.ext g.property hg⟩

/-- Assemble the local orbit class with its chosen base component. -/
def assemble (r : I → A)
    (x : (i : I) × Quotient (MulAction.orbitRel (MulAction.stabilizer G (r i)) B)) :
    Quotient (MulAction.orbitRel G (A × B)) :=
  Quotient.liftOn x.2 (fun b => Quotient.mk _ (r x.1, b))
    (fun _ _ h => Quotient.sound ((orbit_over_fixed_iff (r x.1) _ _).2 h))

/-- A transversal for the first action gives exactly the diagonal orbit
classes, retaining all orbits of the stabilizers on the second factor. -/
theorem assemble_bijective (r : I → A)
    (hsep : ∀ i j, MulAction.orbitRel G A (r i) (r j) → i = j)
    (hcov : ∀ a, ∃ i, MulAction.orbitRel G A a (r i)) :
    Function.Bijective (assemble (G := G) (B := B) r) := by
  constructor
  · rintro ⟨i, x⟩ ⟨j, y⟩
    induction x using Quotient.inductionOn with | _ b =>
    induction y using Quotient.inductionOn with | _ d =>
    intro h
    change Quotient.mk _ (r i, b) = Quotient.mk _ (r j, d) at h
    obtain ⟨g, hg⟩ := Quotient.exact h
    have hij : i = j := hsep i j ⟨g, congrArg Prod.fst hg⟩
    subst j
    have he : Quotient.mk (MulAction.orbitRel (MulAction.stabilizer G (r i)) B) b =
        Quotient.mk _ d := Quotient.sound ((orbit_over_fixed_iff (r i) b d).1 ⟨g, hg⟩)
    exact congrArg (Sigma.mk i) he
  · intro x
    induction x using Quotient.inductionOn with | _ x =>
    obtain ⟨a, b⟩ := x
    obtain ⟨i, g, hg⟩ := hcov a
    refine ⟨⟨i, Quotient.mk _ (g⁻¹ • b)⟩, Eq.symm (Quotient.sound ?_)⟩
    exact ⟨g, Prod.ext hg (smul_inv_smul g b)⟩

/-- The stabilizer on the residual lattice is the original diagonal
stabilizer as a group. Thus its multiplicity in a class sum is preserved. -/
def stabilizerEquiv (a : A) (b : B) :
    MulAction.stabilizer (MulAction.stabilizer G a) b ≃* MulAction.stabilizer G (a,b) where
  toFun g := ⟨g.val.val, Prod.ext g.val.property g.property⟩
  invFun g := ⟨⟨g.val, congrArg Prod.fst g.property⟩, congrArg Prod.snd g.property⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

/-- Intersect finitely many specified local cosets by CRT selectors. Each
ideal need only clear the finite list of centers into its corresponding
period submodule. The ambient module and its period modules may differ at
every place, including after clearing unequal denominators. -/
theorem exists_simultaneous_coset {R M J : Type*} [CommRing R] [AddCommGroup M]
    [Module R M] [Fintype J] (Q : J → Ideal R)
    (hQ : Pairwise (fun i j => IsCoprime (Q i) (Q j)))
    (P : J → Submodule R M) (a : J → M)
    (hclear : ∀ i j (s : R), s ∈ Q j → s • a i ∈ P j) :
    ∃ x : M, ∀ j, x - a j ∈ P j := by
  classical
  choose e he using fun i : J =>
    Ideal.exists_forall_sub_mem_ideal hQ (fun j => if i = j then 1 else 0)
  refine ⟨∑ i, e i • a i, fun j => ?_⟩
  have h : (∑ i, (e i - (if i = j then 1 else 0)) • a i) ∈ P j :=
    Submodule.sum_mem _ fun i _ => hclear i j _ (he i j)
  simpa only [sub_smul, Finset.sum_sub_distrib, ite_smul, one_smul, zero_smul,
    Finset.sum_ite_eq', Finset.mem_univ, ite_true] using h

end GRWTSK.NumberTheory.AlpogeDecoratedClassFibres
