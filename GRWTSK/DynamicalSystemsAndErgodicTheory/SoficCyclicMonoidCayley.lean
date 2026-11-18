/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source and verification record: https://github.com/grwtsk/math/issues/1832.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficSingletonPrefixLassoUniqueness
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# A minimum prefix lasso as a right Cayley graph of a cyclic monoid

Let μ ≥ 0 and p > 0. The cyclic monoid with index μ and period p is
represented by the normal exponents 0,...,μ+p-1. Its multiplication is
reduced addition, with exponents at least μ taken modulo p relative to μ.

We prove the actual commutative monoid laws, its generator relation
s^(μ+p) = s^μ, and that every element is a power of s. Right multiplication
by s is the lasso transition. With the ORIGINAL edge labels supplied by
a trace x, its right Cayley graph is rooted, edge-label-preserving
isomorphic to the canonical lasso defined in
SoficSingletonPrefixLassoUniqueness.

This is the cyclic **time-shift monoid**. The letter-indexed partial
transition monoid of an automaton recognizing prefixes, especially after
adding a rejecting sink, is not asserted to be cyclic. No multi-generator
group/Cannon cone-type transfer or arithmetic zero-location theorem follows.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley

open ExactSoficLanguageCover
open SoficSingletonPrefixCapacity
open SoficSingletonPrefixRigidity
open SoficSingletonPrefixLassoUniqueness

universe u v w
variable {A : Type u}

/-- Normal exponent modulo the eventually periodic relation
    s^(μ+p) = s^μ. Its input n is a natural *time exponent*. -/
def reduceExp (μ p : ℕ) (hp : 0 < p) (n : ℕ) : ℕ :=
  if n < μ then n else μ + (n - μ) % p

theorem reduceExp_lt (μ p : ℕ) (hp : 0 < p) (n : ℕ) :
    reduceExp μ p hp n < μ + p := by
  unfold reduceExp
  split_ifs with h
  · omega
  · have hmod := Nat.mod_lt (n - μ) hp
    omega

theorem reduceExp_id (μ p : ℕ) (hp : 0 < p)
    {n : ℕ} (hn : n < μ + p) :
    reduceExp μ p hp n = n := by
  by_cases h : n < μ
  · simp [reduceExp, h]
  · have hmod : n - μ < p := by omega
    simp only [reduceExp, if_neg h, Nat.mod_eq_of_lt hmod]
    omega

theorem reduceExp_zero (μ p : ℕ) (hp : 0 < p) :
    reduceExp μ p hp 0 = 0 := by
  cases μ with
  | zero => simp [reduceExp]
  | succ μ => simp [reduceExp]

theorem reduceExp_boundary (μ p : ℕ) (hp : 0 < p) :
    reduceExp μ p hp (μ + p) = μ := by
  have hnot : ¬ μ + p < μ := by omega
  have hsub : μ + p - μ = p := by omega
  simp [reduceExp, hnot, hsub]

/-- Reduction commutes with addition in its first argument. This is
the arithmetic source of associativity for the quotient monoid. -/
theorem reduceExp_add_left (μ p : ℕ) (hp : 0 < p) (n m : ℕ) :
    reduceExp μ p hp (reduceExp μ p hp n + m) =
      reduceExp μ p hp (n + m) := by
  by_cases h : n < μ
  · simp [reduceExp, h]
  · have hnot : ¬ μ + (n - μ) % p + m < μ := by omega
    have hnot' : ¬ n + m < μ := by omega
    have hsub : μ + (n - μ) % p + m - μ = (n - μ) % p + m := by omega
    have hsub' : n + m - μ = (n - μ) + m := by omega
    simp only [reduceExp, if_neg h, if_neg hnot, if_neg hnot',
      hsub, hsub', Nat.mod_add_mod]

theorem reduceExp_add_right (μ p : ℕ) (hp : 0 < p) (n m : ℕ) :
    reduceExp μ p hp (n + reduceExp μ p hp m) =
      reduceExp μ p hp (n + m) := by
  calc
    reduceExp μ p hp (n + reduceExp μ p hp m) =
        reduceExp μ p hp (reduceExp μ p hp m + n) := by rw [Nat.add_comm]
    _ = reduceExp μ p hp (m + n) := reduceExp_add_left μ p hp m n
    _ = reduceExp μ p hp (n + m) := by rw [Nat.add_comm]

private theorem equalTails_reduceExp
    {x : ℕ → A} {μ p : ℕ} (h : LeastLassoParams x μ p) (n : ℕ) :
    EqualTails x n (reduceExp μ p h.pos_p n) := by
  by_cases hn : n < μ
  · simp only [reduceExp, ite_eq_left hn]
    exact fun _ => rfl
  · let r := μ + (n - μ) % p
    let q := (n - μ) / p
    have hdecomp : r + q * p = n := by
      dsimp [r, q]
      rw [Nat.add_assoc, Nat.mul_comm ((n - μ) / p) p, Nat.mod_add_div,
        Nat.add_sub_of_le (Nat.le_of_not_gt hn)]
    have hiterate (m : ℕ) (hm : μ ≤ m) (t : ℕ) : x (m + t * p) = x m := by
      induction t with
      | zero => simp
      | succ t ih =>
          rw [Nat.succ_mul, ← Nat.add_assoc, h.periodic (m + t * p) (by omega), ih]
    simp only [reduceExp, ite_eq_right hn]
    intro k
    change x (n + k) = x (r + k)
    calc
      x (n + k) = x ((r + k) + q * p) := congrArg x (by omega)
      _ = x (r + k) := hiterate (r + k) (by dsimp [r]; omega) q

/-- The normal exponent identifies exactly the complete label tail of
a trace with certified least lasso parameters. -/
theorem equalTails_iff_reduceExp_eq
    {x : ℕ → A} {μ p : ℕ} (h : LeastLassoParams x μ p) (i j : ℕ) :
    EqualTails x i j ↔ reduceExp μ p h.pos_p i = reduceExp μ p h.pos_p j := by
  have hi := equalTails_reduceExp h i
  have hj := equalTails_reduceExp h j
  constructor
  · intro heq
    have hnormal : EqualTails x (reduceExp μ p h.pos_p i) (reduceExp μ p h.pos_p j) :=
      fun k => (hi k).symm.trans ((heq k).trans (hj k))
    rcases lt_trichotomy (reduceExp μ p h.pos_p i) (reduceExp μ p h.pos_p j) with
      hlt | heq | hgt
    · exact False.elim
        (h.distinct_cuts _ _ hlt (reduceExp_lt μ p h.pos_p j) hnormal)
    · exact heq
    · exact False.elim
        (h.distinct_cuts _ _ hgt (reduceExp_lt μ p h.pos_p i) (fun k => (hnormal k).symm))
  · intro heq k
    rw [heq] at hi
    exact (hi k).trans (hj k).symm

/-- Elements are the DISTINCT normal powers s^0,...,s^(μ+p-1).
The positive period proof is retained in the type. -/
@[ext] structure CyclicLassoMonoid (μ p : ℕ) (hp : 0 < p) where
  exp : Fin (μ + p)

namespace CyclicLassoMonoid

variable {μ p : ℕ} {hp : 0 < p}

instance : DecidableEq (CyclicLassoMonoid μ p hp) := fun a b =>
  decidable_of_iff (a.exp = b.exp)
    ⟨CyclicLassoMonoid.ext, congrArg CyclicLassoMonoid.exp⟩

instance : Fintype (CyclicLassoMonoid μ p hp) :=
  Fintype.ofEquiv (Fin (μ + p))
    { toFun := fun i => ⟨i⟩
      invFun := fun m => m.exp
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }

private def neutral (μ p : ℕ) (hp : 0 < p) :
    CyclicLassoMonoid μ p hp :=
  ⟨⟨0, lt_of_le_of_lt (Nat.zero_le μ) (Nat.lt_add_of_pos_right hp)⟩⟩

private def product (a b : CyclicLassoMonoid μ p hp) :
    CyclicLassoMonoid μ p hp :=
  ⟨⟨reduceExp μ p hp (a.exp.val + b.exp.val),
      reduceExp_lt μ p hp _⟩⟩

/-- This is an actual finite commutative monoid, rather than a
binary operation merely called multiplication. -/
instance : CommMonoid (CyclicLassoMonoid μ p hp) where
  one := neutral μ p hp
  mul := product
  one_mul a := by
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change reduceExp μ p hp (0 + a.exp.val) = a.exp.val
    simpa only [Nat.zero_add] using reduceExp_id μ p hp a.exp.isLt
  mul_one a := by
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change reduceExp μ p hp (a.exp.val + 0) = a.exp.val
    simpa only [Nat.add_zero] using reduceExp_id μ p hp a.exp.isLt
  mul_assoc a b c := by
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change reduceExp μ p hp
      (reduceExp μ p hp (a.exp.val + b.exp.val) + c.exp.val) =
      reduceExp μ p hp
        (a.exp.val + reduceExp μ p hp (b.exp.val + c.exp.val))
    calc
      reduceExp μ p hp
          (reduceExp μ p hp (a.exp.val + b.exp.val) + c.exp.val) =
          reduceExp μ p hp ((a.exp.val + b.exp.val) + c.exp.val) :=
        reduceExp_add_left μ p hp _ _
      _ = reduceExp μ p hp (a.exp.val + (b.exp.val + c.exp.val)) := by
        rw [Nat.add_assoc]
      _ = reduceExp μ p hp
          (a.exp.val + reduceExp μ p hp (b.exp.val + c.exp.val)) :=
        (reduceExp_add_right μ p hp _ _).symm
  mul_comm a b := by
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change reduceExp μ p hp (a.exp.val + b.exp.val) =
      reduceExp μ p hp (b.exp.val + a.exp.val)
    rw [Nat.add_comm]

/-- The single time-shift generator s, including the one-state case. -/
def generator (μ p : ℕ) (hp : 0 < p) :
    CyclicLassoMonoid μ p hp :=
  ⟨⟨reduceExp μ p hp 1, reduceExp_lt μ p hp 1⟩⟩

theorem mul_generator_val (a : CyclicLassoMonoid μ p hp) :
    (a * generator μ p hp).exp.val =
      if a.exp.val + 1 < μ + p then a.exp.val + 1 else μ := by
  change reduceExp μ p hp (a.exp.val + reduceExp μ p hp 1) =
    if a.exp.val + 1 < μ + p then a.exp.val + 1 else μ
  rw [reduceExp_add_right]
  by_cases h : a.exp.val + 1 < μ + p
  · rw [if_pos h]
    exact reduceExp_id μ p hp h
  · rw [if_neg h]
    have hend : a.exp.val + 1 = μ + p := by omega
    rw [hend]
    exact reduceExp_boundary μ p hp

/-- The element represented by the exponent n is exactly s^n.
This also proves that s generates the complete carrier. -/
theorem generator_pow_val (μ p : ℕ) (hp : 0 < p) (n : ℕ) :
    ((generator μ p hp) ^ n).exp.val = reduceExp μ p hp n := by
  induction n with
  | zero =>
      change 0 = reduceExp μ p hp 0
      exact (reduceExp_zero μ p hp).symm
  | succ n ih =>
      rw [pow_succ]
      change reduceExp μ p hp
          (((generator μ p hp) ^ n).exp.val + reduceExp μ p hp 1) =
        reduceExp μ p hp (n + 1)
      rw [ih]
      exact (reduceExp_add_right μ p hp (reduceExp μ p hp n) 1).trans
        (reduceExp_add_left μ p hp n 1)

theorem generator_pow_relation (μ p : ℕ) (hp : 0 < p) :
    (generator μ p hp) ^ (μ + p) = (generator μ p hp) ^ μ := by
  apply CyclicLassoMonoid.ext
  apply Fin.ext
  rw [generator_pow_val, generator_pow_val,
    reduceExp_boundary, reduceExp_id μ p hp (by omega : μ < μ + p)]

theorem eq_generator_pow (a : CyclicLassoMonoid μ p hp) :
    (generator μ p hp) ^ a.exp.val = a := by
  apply CyclicLassoMonoid.ext
  apply Fin.ext
  rw [generator_pow_val]
  exact reduceExp_id μ p hp a.exp.isLt

/-- Powers of the time-shift generator agree exactly at indices with
the same complete future label trace. -/
theorem generator_pow_eq_iff_equalTails
    {x : ℕ → A} (h : LeastLassoParams x μ p) (i j : ℕ) :
    (generator μ p h.pos_p) ^ i = (generator μ p h.pos_p) ^ j ↔ EqualTails x i j := by
  rw [equalTails_iff_reduceExp_eq h]
  constructor
  · intro heq
    simpa only [generator_pow_val] using
      congrArg (fun m : CyclicLassoMonoid μ p h.pos_p => m.exp.val) heq
  · intro heq
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    simpa only [generator_pow_val] using heq

end CyclicLassoMonoid

/-- Forget the exponent wrapper without forgetting the distinguished
root or any original trace-label information. -/
def finCyclicEquiv (μ p : ℕ) (hp : 0 < p) :
    Fin (μ + p) ≃ CyclicLassoMonoid μ p hp where
  toFun := fun i => ⟨i⟩
  invFun := fun m => m.exp
  left_inv := fun _ => rfl
  right_inv := fun _ => rfl

/-- The cyclic time-shift monoid has exactly μ+p elements, including
the transient powers and the p distinct powers in the eventual cycle. -/
theorem cyclicLassoMonoid_card (μ p : ℕ) (hp : 0 < p) :
    Fintype.card (CyclicLassoMonoid μ p hp) = μ + p := by
  simpa using (Fintype.card_congr (finCyclicEquiv μ p hp).symm)

/-- The right Cayley graph for the singleton generating set {s},
with vertex-dependent OUTPUT labels x_i retained on each edge.
The underlying Cayley arrow is multiplication by s. -/
def monoidCayleyGraph (x : ℕ → A) (μ p : ℕ) (hp : 0 < p) :
    LabeledGraph (CyclicLassoMonoid μ p hp) A where
  edge m a n :=
    a = x m.exp.val ∧
      n = m * CyclicLassoMonoid.generator μ p hp

/-- At every time index, the edge between successive generator powers
carries the original trace label at that index. -/
theorem monoidCayleyGraph_pow_edge
    {x : ℕ → A} {μ p : ℕ} (h : LeastLassoParams x μ p) (n : ℕ) :
    (monoidCayleyGraph x μ p h.pos_p).edge
      ((CyclicLassoMonoid.generator μ p h.pos_p) ^ n) (x n)
      ((CyclicLassoMonoid.generator μ p h.pos_p) ^ (n + 1)) := by
  refine ⟨?_, pow_succ _ _⟩
  rw [CyclicLassoMonoid.generator_pow_val]
  simpa only [Nat.add_zero] using equalTails_reduceExp h n 0

/-- The quotient monoid action is exactly the existing canonical
lasso successor, INCLUDING the last wrap-around edge. -/
theorem mul_generator_fin (μ p : ℕ) (hp : 0 < p)
    (s : Fin (μ + p)) :
    ((⟨s⟩ : CyclicLassoMonoid μ p hp) *
        CyclicLassoMonoid.generator μ p hp).exp =
      lassoNext μ (μ + p) (Nat.lt_add_of_pos_right hp) s := by
  apply Fin.ext
  have h := CyclicLassoMonoid.mul_generator_val
    (μ := μ) (p := p) (hp := hp) (⟨s⟩ : CyclicLassoMonoid μ p hp)
  by_cases hs : s.val + 1 < μ + p <;> simpa [lassoNext, hs] using h

/-- The existing minimum-lasso graph is literally the right Cayley
graph of the time-shift cyclic monoid, with graph root and each
vertex-dependent SOURCE label preserved. No new graph definition
or extra exactness hypothesis is introduced. -/
def canonicalLasso_iso_monoidCayleyGraph
    (x : ℕ → A) (μ p : ℕ) (hp : 0 < p) :
    RootedLabeledGraphIso
      (canonicalLasso x μ (μ + p) (Nat.lt_add_of_pos_right hp))
      (canonicalLassoRoot (Nat.lt_add_of_pos_right hp))
      (monoidCayleyGraph x μ p hp)
      (1 : CyclicLassoMonoid μ p hp) := by
  let e := finCyclicEquiv μ p hp
  refine ⟨e, ?_, ?_⟩
  · apply CyclicLassoMonoid.ext
    apply Fin.ext
    rfl
  · intro s a t
    change (a = x s.val ∧
      t = lassoNext μ (μ + p) (Nat.lt_add_of_pos_right hp) s) ↔
      (a = x s.val ∧
        (⟨t⟩ : CyclicLassoMonoid μ p hp) =
          (⟨s⟩ : CyclicLassoMonoid μ p hp) *
            CyclicLassoMonoid.generator μ p hp)
    constructor
    · rintro ⟨ha, ht⟩
      refine ⟨ha, ?_⟩
      apply CyclicLassoMonoid.ext
      exact ht.trans (mul_generator_fin μ p hp s).symm
    · rintro ⟨ha, ht⟩
      refine ⟨ha, ?_⟩
      have hv := congrArg CyclicLassoMonoid.exp ht
      exact hv.trans (mul_generator_fin μ p hp s)

/-- A minimal exact rooted graph is not merely equal in size to
the cyclic Cayley graph: its root and *all edges* are identified
through the already proved exact-prefix lasso classification. -/
noncomputable def minimumExactRoot_iso_monoidCayleyGraph
    {V : Type v} [Fintype V]
    {x : ℕ → A} {μ p : ℕ}
    (h : LeastLassoParams x μ p)
    (G : LabeledGraph V A) (root : V)
    (hExact : ExactRoot G root x)
    (hcard : Fintype.card V = μ + p) :
    RootedLabeledGraphIso G root
      (monoidCayleyGraph x μ p h.pos_p)
      (1 : CyclicLassoMonoid μ p h.pos_p) := by
  have hfirst := h.firstTailReturn
  let sourceIso := canonical_lasso_uniqueness hfirst G root hExact hcard
  let cayleyIso := canonicalLasso_iso_monoidCayleyGraph x μ p h.pos_p
  refine ⟨sourceIso.toEquiv.symm.trans cayleyIso.toEquiv, ?_, ?_⟩
  · change cayleyIso.toEquiv (sourceIso.toEquiv.symm root) =
      (1 : CyclicLassoMonoid μ p h.pos_p)
    have hroot : sourceIso.toEquiv.symm root =
        canonicalLassoRoot hfirst.1 := by
      exact (sourceIso.toEquiv.symm_apply_eq).2 sourceIso.map_root.symm
    rw [hroot]
    exact cayleyIso.map_root
  · intro s a t
    have h₁ := sourceIso.map_edge
      (sourceIso.toEquiv.symm s) a (sourceIso.toEquiv.symm t)
    have h₂ := cayleyIso.map_edge
      (sourceIso.toEquiv.symm s) a (sourceIso.toEquiv.symm t)
    simpa only [Equiv.apply_symm_apply, Equiv.trans_apply] using
      (h₁.symm.trans h₂)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidCayley
