/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusResidueFibreArithmetic
import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Finset.Card
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sharp positive-index residue fiber capacity: ceil(N / q)

This source imports no physics, zeta, GRH, L-family or
Hermitian energy module. For positive q, n ranges over
the ORIGINAL closed interval of POSITIVE source indices
1<=n<=N; the shifted quotient (n-1)/q lies in
0..floor((N-1)/q) and is injective on each residue class.

The key step uses the actual pinned Nat.ModEq.sub lemma,
valid since 1<=m,n, to transport m%q=n%q to
(m-1)%q=(n-1)%q. Then Nat.mod_add_div reconstructs the
original shifted integers from quotient and remainder.

Hence #fiber <= floor((N-1)/q)+1 = ceil(N/q)
for EVERY N, with an even sharper empty bound when N=0.
When q>=N and N>=1 the bound is at most one, including
q=N (the previous large-modulus statement used only q>N).

This is a finite arithmetic candidate, not any characterwise
signed Möbius cancellation or GRH theorem.
Full Lean compilation/kernel/axiom verification NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.ResidueFibreSharpArithmetic

open GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic

variable (q : ℕ) [NeZero q]
classical

/-- Same residue modulo q, for positive integers m and n,
remains the same residue after subtracting 1. -/
theorem shifted_remainders_eq
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    (h : (m : ZMod q) = (n : ZMod q)) :
    (m - 1) % q = (n - 1) % q := by
  have hr : m ≡ n [MOD q] :=
    (ZMod.natCast_eq_natCast_iff' m n q).mp h
  have hshift : m - 1 ≡ n - 1 [MOD q] :=
    Nat.ModEq.sub hm hn hr (Nat.ModEq.refl : 1 ≡ 1 [MOD q])
  exact hshift

/-- Injectivity of the SHIFTED quotient n |-> (n-1)/q
on the original positive integer source fiber. -/
theorem residueFibre_shifted_quotient_injective
    (a : ZMod q) (N m n : ℕ)
    (hm : m ∈ residueFibre q a N)
    (hn : n ∈ residueFibre q a N)
    (hquot : (m-1)/q = (n-1)/q) : m = n := by
  have hms := (Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1).1
  have hns := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
  have hres :
      (m : ZMod q) = (n : ZMod q) :=
    (Finset.mem_filter.mp hm).2.trans
      (Finset.mem_filter.mp hn).2.symm
  have hr := shifted_remainders_eq q hms hns hres
  calc
    m = (m-1)+1 := (Nat.sub_add_cancel hms).symm
    _ = ((m-1)%q+q*((m-1)/q))+1 := by
      rw [Nat.mod_add_div]
    _ = ((n-1)%q+q*((n-1)/q))+1 := by
      rw [hr,hquot]
    _ = (n-1)+1 := by
      rw [Nat.mod_add_div]
    _ = n := Nat.sub_add_cancel hns

/-- The TRUE closed inventory {1,...,N} admits at most
floor((N-1)/q)+1 members in any residue class, q>=1.
For N=0 this is true but deliberately not optimal: the
fiber is empty and we prove that separately below. -/
theorem residueFibre_card_le_sharp_quotient
    (a : ZMod q) (N : ℕ) :
    (residueFibre q a N).card ≤ (N-1)/q+1 := by
  have hc :
      (residueFibre q a N).card ≤
        (Finset.range ((N-1)/q+1)).card := by
    apply Finset.card_le_card_of_injOn
      (fun n : ℕ => (n-1)/q)
    · intro n hn
      have hnN : n ≤ N :=
        (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).2
      have hquot :
          (n-1)/q ≤ (N-1)/q :=
        Nat.div_le_div_right (by omega : n-1 ≤ N-1)
      exact Finset.mem_range.mpr (by omega)
    · intro m hm n hn heq
      exact residueFibre_shifted_quotient_injective
        q a N m n hm hn heq
  simpa only [Finset.card_range] using hc

/-- Exact sharp capacity including the empty inventory N=0.
For N>0 the displayed bound equals the arithmetic ceil N/q. -/
def sharpResidueCapacity (N : ℕ) : ℕ :=
  if N = 0 then 0 else (N-1)/q+1

theorem residueFibre_card_le_sharpCapacity
    (a : ZMod q) (N : ℕ) :
    (residueFibre q a N).card ≤
      sharpResidueCapacity q N := by
  by_cases hN : N = 0
  · subst N
    simp [sharpResidueCapacity, residueFibre]
  · simpa [sharpResidueCapacity,hN] using
      residueFibre_card_le_sharp_quotient q a N

/-- q>=N suffices for at-most-one occupancy, with equality
permitted. The earlier source assumed the strict q>N. -/
theorem residueFibre_card_le_one_of_modulus_ge
    (a : ZMod q) (N : ℕ) (hq : N ≤ q) :
    (residueFibre q a N).card ≤ 1 := by
  have hcap := residueFibre_card_le_sharp_quotient q a N
  have hsmall : N-1 < q := by
    have hqpos : 0 < q := NeZero.pos q
    omega
  have hdiv : (N-1)/q = 0 := Nat.div_eq_of_lt hsmall
  simpa [hdiv] using hcap

/-- A direct source-level no-collision result for q>=N:
distinct positive source indices in [1,N] cannot have the
same residue class, even at the boundary q=N. -/
theorem residueFibre_injective_of_modulus_ge
    (N : ℕ) (hq : N ≤ q)
    {m n : ℕ} (hm : m ∈ Finset.Icc 1 N)
    (hn : n ∈ Finset.Icc 1 N)
    (hres : (m : ZMod q) = (n : ZMod q)) :
    m = n := by
  let a : ZMod q := (m : ZMod q)
  have hmm : m ∈ residueFibre q a N :=
    Finset.mem_filter.mpr ⟨hm,rfl⟩
  have hnn : n ∈ residueFibre q a N :=
    Finset.mem_filter.mpr ⟨hn,hres.symm⟩
  have hcard := residueFibre_card_le_one_of_modulus_ge q a N hq
  exact (Finset.card_le_one_iff.mp hcard) hmm hnn

end GRWTSK.NumberTheory.Moebius.ResidueFibreSharpArithmetic
