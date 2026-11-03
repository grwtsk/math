/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Finset.Card
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Pure finite arithmetic: cardinality of a residue fiber

This minimal source DOES NOT IMPORT any GRWTSK analytic or
Riemann-hypothesis declarations. It captures the literal index
fiber {n : 1<=n<=N, (n : ZMod q)=a} and the elementary
injective map n |-> n/q.

Two positive integers in the same q-residue class with the same
quotient n/q are equal, by Nat.mod_add_div. Every such quotient
is <= N/q. Therefore the cardinality of each residue fiber
is <= floor(N/q)+1. This holds for all N>=0 and q>=1,
including q=1 and composite q; no primality assumption.

All proof bodies are SOURCE PROOF CANDIDATES until pinned
Lean parsing/compilation, expected-type check, fresh kernel and
transitive axiom audit (NOT_RUN).
-/

namespace GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic

variable (q : ℕ) [NeZero q]
classical

/-- Literal interval of original integer source indices
in the residue class a modulo a strictly positive q. -/
def residueFibre (a : ZMod q) (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter (fun n => (n : ZMod q) = a)

/-- The source quotient n/q is injective ON ONE residue fiber.
No analytic or character source is involved. -/
theorem residueFibre_quotient_injective
    (a : ZMod q) (N : ℕ)
    (m : ℕ) (hm : m ∈ residueFibre q a N)
    (n : ℕ) (hn : n ∈ residueFibre q a N)
    (hquot : m / q = n / q) : m = n := by
  have hmres : (m : ZMod q) = a :=
    (Finset.mem_filter.mp hm).2
  have hnres : (n : ZMod q) = a :=
    (Finset.mem_filter.mp hn).2
  have hrem : m % q = n % q :=
    (ZMod.natCast_eq_natCast_iff' m n q).mp
      (hmres.trans hnres.symm)
  calc
    m = m % q + q * (m / q) :=
      (Nat.mod_add_div m q).symm
    _ = n % q + q * (n / q) := by rw [hrem, hquot]
    _ = n := Nat.mod_add_div n q

/-- The number of distinct integers in a fixed residue class
of the closed source inventory 1..N is at most N/q+1. -/
theorem residueFibre_card_le_quotient_succ
    (a : ZMod q) (N : ℕ) :
    (residueFibre q a N).card ≤ N / q + 1 := by
  have hc :
      (residueFibre q a N).card ≤
        (Finset.range (N / q + 1)).card := by
    apply Finset.card_le_card_of_injOn (fun n : ℕ => n / q)
    · intro n hn
      have hnN : n ≤ N :=
        (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).2
      have hquot : n / q ≤ N / q :=
        Nat.div_le_div_right hnN
      exact Finset.mem_range.mpr (by omega)
    · intro m hm n hn hquot
      exact residueFibre_quotient_injective q a N m hm n hn hquot
  simpa only [Finset.card_range] using hc

/-- Under q>N there is at most one source index in every
residue fiber, preserving the existing large-modulus case. -/
theorem residueFibre_card_le_one_of_large_modulus
    (a : ZMod q) (N : ℕ) (hq : N < q) :
    (residueFibre q a N).card ≤ 1 := by
  have hqpos : 0 < q := NeZero.pos q
  have hzero : N / q = 0 := Nat.div_eq_of_lt hq
  simpa [hzero] using residueFibre_card_le_quotient_succ q a N

end GRWTSK.NumberTheory.Moebius.ResidueFibreArithmetic
