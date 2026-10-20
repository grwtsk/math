/-
Bounded finite Euler exponent data
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d
Organized SHA-256: 8d17dbad43e6fb33f3d0f00bbb7326191c7219c4bfa3efa54fd9c4222b0e332a
PMD: 510.1.030.010.050.020 fixed point counting (editorial navigation only).
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

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ConjugacyAndFiniteBounds

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

/-! ## Finite Euler-factor exponent data -/

/--
The finitely supported function of primitive cycle counts.  Its bounded,
computable support is the exact finite dynamical-zeta datum.
-/
def cycleEulerFactorData {n : Nat} (H : BitPerm n) : Nat →₀ Nat where
  support := (Finset.range (2 ^ n + 1)).filter fun r => cycleCount H r ≠ 0
  toFun := cycleCount H
  mem_support_toFun := by
    intro r
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact And.right
    · intro hrne
      refine ⟨?_, hrne⟩
      by_contra hrange
      have hr : 2 ^ n < r := by omega
      exact hrne (cycleCount_eq_zero_of_card_lt H hr)

@[simp]
theorem cycleEulerFactorData_apply {n : Nat}
    (H : BitPerm n)
    (r : Nat) :
    cycleEulerFactorData H r = cycleCount H r :=
  rfl

/-- Euler-factor support is bounded by the number of Boolean states. -/
theorem cycleEulerFactorData_support_subset {n : Nat}
    (H : BitPerm n) :
    (cycleEulerFactorData H).support ⊆ Finset.range (2 ^ n + 1) := by
  exact Finset.filter_subset _ _

/-- The complete finite Euler-factor datum is a conjugacy invariant. -/
theorem cycleEulerFactorData_conjugate {n : Nat}
    (g H : BitPerm n) :
    cycleEulerFactorData (conjugate g H) = cycleEulerFactorData H := by
  ext r
  simp [cycleCount_conjugate]

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
