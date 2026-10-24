/-
Integral Möbius inversion of finite permutation cycle counts
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d
Organized SHA-256: 8d17dbad43e6fb33f3d0f00bbb7326191c7219c4bfa3efa54fd9c4222b0e332a
PMD: 510.2.010.050.030 mobius function (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Primitive cycle counts use Nat division only after the exact divisibility proof. Divisor sums require positive time; integer Möbius inversion keeps the full cast/divisor-antidiagonal argument. Euler data are only a finitely supported Nat exponent function with support bounded by2^n, not an analytic Euler product/convergence/result. Every copied hypothesis/private modifier and proof body is unchanged; only a shared variant containing namespace and explicit same-source imports differ. -/

import BitMatrix.Algebra.Symmetry
import DAF.FiniteDynamics.Permutation
import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.ZMod.QuotientGroup
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finsupp.Defs

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ExactPeriodsAndCompleteCycles

/-!
# Exact cycle data for finite Boolean dynamics

For a state permutation `H`, `fixedPointCount H r` counts states fixed by the
iterate `H ^ r`.  Those states split disjointly according to their exact
positive period.  Exact-period points occur in complete cycles of that period,
so division by the period defines the primitive cycle count.

Möbius inversion recovers primitive cycle counts from fixed-point counts.  The
finitely supported `cycleEulerFactorData` introduced below is exact finite
Euler-product exponent data; there is no analytic convergence question.

Conjugacy implies equal orbit and cycle structure.  Cycle structure does not,
however, imply SAC, independence of derivative bits, or low differential
concentration.  Those remain separate properties of the avalanche layer.
-/

namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Network.Permutation
open BitMatrix.Algebra.Symmetry
open scoped BigOperators

/-! ## Integer Möbius inversion -/

/-- Möbius inversion recovers the number of exact-period states from fixed points. -/
theorem cycleCount_mobius {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    ((r * cycleCount H r : Nat) : ℤ) =
      ∑ d ∈ r.divisors,
        (ArithmeticFunction.moebius (r / d) : ℤ) *
          (fixedPointCount H d : ℤ) := by
  let f : Nat → ℤ := fun d => ((d * cycleCount H d : Nat) : ℤ)
  let g : Nat → ℤ := fun d => (fixedPointCount H d : ℤ)
  have hsum : ∀ k > 0, ∑ d ∈ k.divisors, f d = g k := by
    intro k hk
    have h := fixedPointCount_eq_sum_mul_cycleCount H hk
    have hcast := congrArg (fun z : Nat => (z : ℤ)) h
    simpa [f, g] using hcast.symm
  have hmob :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq.mp hsum) r hr
  simp only [Int.cast_id] at hmob
  rw [Nat.sum_divisorsAntidiagonal'
    (f := fun a b => (ArithmeticFunction.moebius a : ℤ) * g b)] at hmob
  exact hmob.symm

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
