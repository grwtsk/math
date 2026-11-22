/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal
import Mathlib.Algebra.FiniteSupport.Basic
import Mathlib.Tactic

/-!
# Homogeneous relations on a dehomogenized slice

A homogeneous relation killed by imposing `f = 1`, where `f` has nonzero
integer degree, is killed modulo the original homogeneous ideal by a
power of `f`. The proof first isolates a finite-support recurrence in a
ring, then applies it to actual homogeneous components in the quotient.
-/

namespace GRWTSK.CommutativeAlgebra.GradedDehomogenization

private theorem exists_zero_nat_ray {R : Type*} [Zero R]
    (c : ℤ → R) (hc : c.HasFiniteSupport) (w d : ℤ) (hd : d ≠ 0) :
    ∃ n : ℕ, c (w + (n : ℤ) * d) = 0 := by
  by_contra! h
  have hinj : Function.Injective (fun n : ℕ => w + (n : ℤ) * d) := by
    intro n m hnm
    exact_mod_cast mul_right_cancel₀ hd (add_left_cancel hnm)
  exact Set.infinite_of_injective_forall_mem hinj h hc

private theorem zero_of_backward_recurrence {R : Type*} [MonoidWithZero R]
    (v : ℕ → R) (a : R) (hv : ∀ n, v n = a * v (n + 1))
    (hz : ∃ n, v n = 0) : v 0 = 0 := by
  have hit (n : ℕ) : v 0 = a ^ n * v n := by
    induction n with
    | zero => simp
    | succ n ih =>
      rw [ih, hv n, pow_succ, mul_assoc]
  obtain ⟨n, hn⟩ := hz
  rw [hit n, hn, mul_zero]

/-- A finitely supported recurrence with a single defect forces a power
of its multiplier to annihilate that defect. No cancellation in the
coefficient ring is assumed. -/
theorem exists_pow_mul_eq_zero_of_recurrence {R : Type*} [CommRing R]
    (c : ℤ → R) (hc : c.HasFiniteSupport) (a b : R)
    (hstep : ∀ k : ℤ, k ≠ 0 → c k = a * c (k - 1))
    (hcenter : c 0 = a * c (-1) - b) :
    ∃ n : ℕ, a ^ n * b = 0 := by
  have hback : c (-1) = 0 := by
    apply zero_of_backward_recurrence (fun n => c (-1 - (n : ℤ))) a
    · intro n
      have heq : -1 - (n : ℤ) - 1 = -1 - ((n + 1 : ℕ) : ℤ) := by omega
      simpa only [heq] using hstep (-1 - (n : ℤ)) (by omega)
    · simpa only [mul_neg_one, sub_eq_add_neg] using
        exists_zero_nat_ray c hc (-1) (-1) (by decide)
  have hstart : c 0 = -b := by simpa only [hback, mul_zero, zero_sub] using hcenter
  have hforward (n : ℕ) : c (n : ℤ) = a ^ n * (-b) := by
    induction n with
    | zero => simpa only [Nat.cast_zero, pow_zero, one_mul] using hstart
    | succ n ih =>
      have hnext := hstep ((n + 1 : ℕ) : ℤ) (by omega)
      have heq : ((n + 1 : ℕ) : ℤ) - 1 = (n : ℤ) := by omega
      rw [heq, ih] at hnext
      rw [hnext, pow_succ]
      ring
  obtain ⟨n, hn⟩ := exists_zero_nat_ray c hc 0 1 (by decide)
  refine ⟨n, ?_⟩
  simpa only [zero_add, mul_one, hforward, mul_neg, neg_eq_zero] using hn

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- Exact homogeneous dehomogenization return: slice membership produces
an actual power multiplier modulo the original homogeneous ideal. -/
theorem exists_pow_mul_mem_of_mem_sup_span_sub_one
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d)
    (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hmem : h ∈ J ⊔ Ideal.span {f - 1}) :
    ∃ n : ℕ, f ^ n * h ∈ J := by
  obtain ⟨j, hj, z, hz, hsum⟩ := Submodule.mem_sup.mp hmem
  obtain ⟨u, rfl⟩ := Ideal.mem_span_singleton'.mp hz
  have hrel : h - f * u + u ∈ J := by
    have heq : h - f * u + u = j := by rw [← hsum]; ring
    rw [heq]
    exact hj
  let q : A →+* A ⧸ J := Ideal.Quotient.mk J
  let c : ℤ → A ⧸ J := fun k => q (DirectSum.decompose 𝒜 u (w + k * d) : A)
  have hinj : Function.Injective (fun k : ℤ => w + k * d) := by
    intro k l hkl
    exact mul_right_cancel₀ hd (add_left_cancel hkl)
  have hc : c.HasFiniteSupport := by
    have hc' := (DirectSum.hasFiniteSupport 𝒜 (DirectSum.decompose 𝒜 u)).fun_comp q.map_zero
    exact Function.HasFiniteSupport.fun_comp_of_injective
      (f := fun i : ℤ => q (DirectSum.decompose 𝒜 u i : A))
      (g := fun k : ℤ => w + k * d) hinj hc'
  have hproject (k : ℤ) :
      q (GradedRing.proj 𝒜 (w + k * d) h) - q f * c (k - 1) + c k = 0 := by
    have hp := hJ (w + k * d) hrel
    change GradedRing.proj 𝒜 (w + k * d) (h - f * u + u) ∈ J at hp
    rw [map_add, map_sub] at hp
    have hmul : GradedRing.proj 𝒜 (w + k * d) (f * u) =
        f * (DirectSum.decompose 𝒜 u (w + (k - 1) * d) : A) := by
      change (DirectSum.decompose 𝒜 (f * u) (w + k * d) : A) = _
      have heq : w + k * d = d + (w + (k - 1) * d) := by ring
      exact (congrArg
        (fun i : ℤ => (DirectSum.decompose 𝒜 (f * u) i : A)) heq).trans
          (DirectSum.coe_decompose_mul_add_of_left_mem 𝒜 hf)
    rw [hmul] at hp
    have hzero := Ideal.Quotient.eq_zero_iff_mem.mpr hp
    simpa only [q, map_add, map_sub, map_mul, c, GradedRing.proj_apply] using hzero
  have hstep : ∀ k : ℤ, k ≠ 0 → c k = q f * c (k - 1) := by
    intro k hk
    have hdegree : w ≠ w + k * d := by
      intro heq
      have : k * d = 0 := by linear_combination -heq
      exact mul_ne_zero hk hd this
    have hp := hproject k
    rw [GradedRing.proj_apply, DirectSum.decompose_of_mem_ne 𝒜 hh hdegree] at hp
    simp only [map_zero, zero_sub] at hp
    linear_combination hp
  have hcenter : c 0 = q f * c (-1) - q h := by
    have hp := hproject 0
    simp only [zero_mul, add_zero, zero_sub, GradedRing.proj_apply,
      DirectSum.decompose_of_mem_same 𝒜 hh] at hp
    linear_combination hp
  obtain ⟨n, hn⟩ := exists_pow_mul_eq_zero_of_recurrence c hc (q f) (q h) hstep hcenter
  refine ⟨n, Ideal.Quotient.eq_zero_iff_mem.mp ?_⟩
  simpa only [map_mul, map_pow] using hn

end GRWTSK.CommutativeAlgebra.GradedDehomogenization
