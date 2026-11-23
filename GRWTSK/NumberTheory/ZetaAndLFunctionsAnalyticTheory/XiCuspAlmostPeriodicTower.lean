/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Module.Submodule.Ker
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.Algebra.Module.Pi

/-! # Nilpotent compensation for almost-periodic orbit multiplicity

A truncated backward-shift chain for the pencil at a real frequency is
equivalent to a vector killed by the corresponding power. The accompanying
note constructs the orbit-mean Hilbert space analytically.
-/
namespace GRWTSK.NumberTheory.XiCuspAlmostPeriodicTower
variable {R E : Type*} [Semiring R] [AddCommMonoid E] [Module R E]

/-- The components of a backward-shift eigenvector, extended by zero. -/
def chains (N : Module.End R E) (k : ℕ) : Submodule R (ℕ → E) where
  carrier := {f | (∀ j, f (j+1) = N (f j)) ∧ (∀ j, k < j → f j = 0)}
  zero_mem' := by simp
  add_mem' := by
    rintro f g ⟨hf,hf'⟩ ⟨hg,hg'⟩
    exact ⟨fun j => by simp [hf j, hg j], fun j hj => by simp [hf' j hj,hg' j hj]⟩
  smul_mem' := by
    rintro a f ⟨hf,hf'⟩
    exact ⟨fun j => by simp [hf j],fun j hj => by simp [hf' j hj]⟩

theorem chain_iterate (N : Module.End R E) (k : ℕ) (f : chains N k) (j : ℕ) :
    f.val j = (N^j) (f.val 0) := by
  induction j with
  | zero => simp
  | succ j ih => rw [f.property.1, ih, pow_succ']; rfl

/-- Exact generalized-eigenspace multiplicity recovered at each tower level. -/
def chainEquiv (N : Module.End R E) (k : ℕ) :
    chains N k ≃ₗ[R] LinearMap.ker (N^(k+1)) where
  toFun f := ⟨f.val 0, by
    change (N ^ (k+1)) (f.val 0) = 0
    rw [← chain_iterate N k f (k+1)]
    exact f.property.2 _ (Nat.lt_succ_self _)⟩
  invFun x := ⟨fun j => (N^j) x.val, by
    constructor
    · intro j
      change (N^(j+1)) x.val = N ((N^j) x.val)
      exact congrArg (fun M : Module.End R E => M x.val) (pow_succ' N j)
    · intro j hj
      obtain ⟨d,rfl⟩ := Nat.exists_eq_add_of_le (show k+1 ≤ j by omega)
      have hm : N ^ (k+1+d) = N^d * N^(k+1) := by rw [Nat.add_comm (k+1) d,pow_add]
      exact (congrArg (fun M : Module.End R E => M x.val) hm).trans
        (show (N^d) ((N^(k+1)) x.val) = 0 by
          rw [show (N ^ (k+1)) x.val = 0 from x.property, map_zero])⟩
  left_inv f := Subtype.ext (funext fun j => (chain_iterate N k f j).symm)
  right_inv x := by apply Subtype.ext; simp
  map_add' f g := rfl
  map_smul' a f := rfl

/-- Zero extension into the next level preserves all chain components. -/
theorem chains_mono (N : Module.End R E) {k l : ℕ} (hkl : k ≤ l) :
    chains N k ≤ chains N l :=
  fun _ hf => ⟨hf.1, fun j hj => hf.2 j (lt_of_le_of_lt hkl hj)⟩

end GRWTSK.NumberTheory.XiCuspAlmostPeriodicTower
