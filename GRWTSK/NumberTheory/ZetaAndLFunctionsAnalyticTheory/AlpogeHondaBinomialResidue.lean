/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.Wilson
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

/-!
# The one remaining denominator in the lemniscatic elliptic logarithm

For p = 4m+3 and d = (p²−1)/4, the central binomial coefficient
(2d choose d) divided by p is −1 modulo p. This gives the sign of the
second contribution to the first Honda collision without theta integrality.
-/

namespace GRWTSK.NumberTheory.AlpogeHondaBinomialResidue
open Nat

private theorem tail_mod (p a b : ℕ) :
    (((a*p+1).ascFactorial b : ℕ) : ZMod p) = b.factorial := by
  induction b with
  | zero => simp
  | succ b ih =>
    rw [Nat.ascFactorial_succ, Nat.factorial_succ]
    push_cast
    simp only [ZMod.natCast_self, mul_zero, zero_add, ih]
    ring

/-- Exact removal of a factor p for every complete factorial block. -/
theorem factorial_blocks (p : ℕ) [Fact p.Prime] (a b : ℕ) :
    ∃ u : ℕ, (a*p+b).factorial = p^a*u ∧
      (u : ZMod p) = (-1)^a * a.factorial * b.factorial := by
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have base (j : ℕ) : ∃ v : ℕ, (j*p).factorial = p^j*v ∧
      (v : ZMod p) = (-1)^j*j.factorial := by
    induction j with
    | zero => exact ⟨1, by simp, by simp⟩
    | succ j ih =>
      obtain ⟨v,hv,hm⟩ := ih
      refine ⟨(j+1)*v*(j*p+1).ascFactorial (p-1), ?_, ?_⟩
      · have hj : (j+1)*p = j*p+(p-1)+1 := by rw [Nat.add_mul]; omega
        rw [hj,Nat.factorial_succ, ← Nat.factorial_mul_ascFactorial, hv, ← hj, pow_succ]
        ring
      · push_cast
        rw [hm,tail_mod,ZMod.wilsons_lemma,Nat.factorial_succ,pow_succ]
        push_cast
        ring
  obtain ⟨v,hv,hm⟩ := base a
  refine ⟨v*(a*p+1).ascFactorial b, ?_, ?_⟩
  · rw [← Nat.factorial_mul_ascFactorial, hv, mul_assoc]
  · rw [Nat.cast_mul, hm, tail_mod]

/-- The cleared exceptional coefficient in the elliptic logarithm is −1. -/
theorem exceptional_binomial (p m : ℕ) [Fact p.Prime] (hp : p = 4*m+3) :
    let d := (p^2-1)/4
    ∃ t : ℕ, (2*d).choose d = p*t ∧ (t : ZMod p) = -1 := by
  let d := (p^2-1)/4
  change ∃ t : ℕ, (2*d).choose d = p*t ∧ (t : ZMod p) = -1
  have hd : d = m*p+(3*m+2) := by
    dsimp [d]
    rw [hp]
    have eq : (4*m+3)^2 = 4*(m*(4*m+3)+(3*m+2))+1 := by ring
    rw [eq]; omega
  have h2d : 2*d = (2*m+1)*p+(2*m+1) := by rw [hd,hp]; ring
  obtain ⟨v,hv,hmv⟩ := factorial_blocks p m (3*m+2)
  obtain ⟨w,hw,hmw⟩ := factorial_blocks p (2*m+1) (2*m+1)
  rw [← hd] at hv
  rw [← h2d] at hw
  have hfac := Nat.choose_mul_factorial_mul_factorial (show d ≤ 2*d by omega)
  rw [show 2*d-d=d by omega, hv, hw] at hfac
  have hpos : 0 < p^(2*m) := pow_pos (Fact.out : p.Prime).pos _
  have hprod : (2*d).choose d * v^2 = p*w := by
    apply Nat.eq_of_mul_eq_mul_left hpos
    calc
      _ = (2*d).choose d * (p^m*v) * (p^m*v) := by ring
      _ = _ := hfac.trans (by ring)
  have hneg (n : ℕ) : ((-1 : ZMod p)^n)^2=1 := by rw [← pow_mul, Nat.mul_comm, pow_mul]; simp
  have hcomp := Nat.factorial_mul_descFactorial (show m ≤ p-1 by omega)
  have hcomp' := congrArg (fun x : ℕ => (x : ZMod p)) hcomp
  rw [Nat.cast_mul, ZMod.cast_descFactorial (by omega), ZMod.wilsons_lemma,
    show p-1-m=3*m+2 by omega] at hcomp'
  have hvneg : (v : ZMod p) = -1 := by rw [hmv]; linear_combination hcomp'
  have half := ZMod.factorial_eq_neg_one_pow_mul_half_factorial_sq
    (show Odd p from ⟨2*m+1, by omega⟩)
  rw [ZMod.wilsons_lemma, show (p-1)/2=2*m+1 by omega,
    pow_succ, pow_mul, neg_one_sq, one_pow] at half
  have hwneg : (w : ZMod p) = -1 := by
    rw [hmw, pow_succ, pow_mul, neg_one_sq, one_pow]
    linear_combination -half
  have hz := congrArg (fun x : ℕ => (x : ZMod p)) hprod
  push_cast at hz
  have hc : ((2*d).choose d : ZMod p) = 0 := by simpa [hvneg] using hz
  obtain ⟨t,ht⟩ := (ZMod.natCast_eq_zero_iff _ _).mp hc
  refine ⟨t,ht,?_⟩
  rw [ht, mul_assoc] at hprod
  have he := Nat.eq_of_mul_eq_mul_left (Fact.out : p.Prime).pos hprod
  have he' := congrArg (fun x : ℕ => (x : ZMod p)) he
  simpa [hvneg,hwneg] using he'

end GRWTSK.NumberTheory.AlpogeHondaBinomialResidue
