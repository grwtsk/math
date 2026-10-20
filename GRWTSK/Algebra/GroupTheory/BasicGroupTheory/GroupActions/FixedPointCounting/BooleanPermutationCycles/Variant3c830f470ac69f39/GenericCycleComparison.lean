/-
Exact original-provider finite permutation specialization
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


/- Five exact comparisons retain original FinitePermutationDynamics provider and old BitPerm/Bits/fixedPointCount dependencies; no new neighboring generic theory or Symmetry candidate substituted. Every copied hypothesis/private modifier and proof body is unchanged; only a shared variant containing namespace and explicit same-source imports differ. -/

import BitMatrix.Algebra.Symmetry
import DAF.FiniteDynamics.Permutation
import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.ZMod.QuotientGroup
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finsupp.Defs

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ExactPeriodsAndCompleteCycles
import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.FiniteEulerExponentData

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

/-! ## Connection to arbitrary finite permutation dynamics

The generic module uses the same finite predicates and counts, but replaces
the Boolean cardinal bound `2^n` by `Fintype.card α`.  These lemmas make the
existing Boolean API an explicit specialization of the generic cycle theory.
-/

theorem fixedPointCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    fixedPointCount H r =
      FinitePermutationDynamics.fixedPointCount H r :=
  rfl

theorem hasExactPeriod_iff_generic {n : Nat}
    (H : BitPerm n) (r : Nat) (x : Bits n) :
    HasExactPeriod H r x ↔
      FinitePermutationDynamics.HasExactPeriod H r x :=
  Iff.rfl

theorem exactPeriodCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    exactPeriodCount H r =
      FinitePermutationDynamics.exactPeriodCount H r :=
  rfl

theorem cycleCount_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    cycleCount H r = FinitePermutationDynamics.cycleCount H r := by
  simp [cycleCount, FinitePermutationDynamics.cycleCount,
    exactPeriodCount_eq_generic]

theorem cycleEulerFactorData_apply_eq_generic {n : Nat}
    (H : BitPerm n) (r : Nat) :
    cycleEulerFactorData H r =
      FinitePermutationDynamics.cycleEulerFactorData H r := by
  simp [cycleCount_eq_generic]

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
