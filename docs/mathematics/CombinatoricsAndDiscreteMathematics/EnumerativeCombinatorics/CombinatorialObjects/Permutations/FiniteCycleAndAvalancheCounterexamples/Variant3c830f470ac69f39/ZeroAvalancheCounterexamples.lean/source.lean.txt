/-
Nontrivial finite cycle data with zero avalanche scores
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d
Organized SHA-256: 8d17dbad43e6fb33f3d0f00bbb7326191c7219c4bfa3efa54fd9c4222b0e332a
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Conjugacy transports exact points bijectively and preserves cycle data. The full coordinate-transposition counterexample keeps1<n, all private nonidentity/cardinality arguments and exact zero SAC/variance conclusions. No arbitrary-conjugacy SAC guarantee, derivative independence or security claim follows. Every copied hypothesis/private modifier and proof body is unchanged; only a shared variant containing namespace and explicit same-source imports differ. -/

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

/-! ## Cycle structure does not imply avalanche diffusion

The coordinate transposition below is a nonidentity state permutation with
deterministic one-bit propagation.  Its SAC scores therefore vanish even
though its cycle data differs from the identity.  This supplies the formal
nonimplication from nontrivial cycle structure to avalanche diffusion.
-/

private def firstSecondSwap {n : Nat} (hn : 1 < n) :
    Equiv.Perm (Fin n) :=
  Equiv.swap ⟨0, by omega⟩ ⟨1, hn⟩

private theorem firstSecondSwap_ne_one {n : Nat} (hn : 1 < n) :
    firstSecondSwap hn ≠ 1 := by
  intro h
  have hx :=
    congrArg (fun π : Equiv.Perm (Fin n) => π ⟨0, by omega⟩) h
  simp [firstSecondSwap, Equiv.Perm.one_def] at hx

private theorem coordinate_firstSecondSwap_ne_one {n : Nat}
    (hn : 1 < n) :
    coordinatePermutation (firstSecondSwap hn) ≠ (1 : BitPerm n) := by
  intro h
  apply firstSecondSwap_ne_one hn
  apply coordinatePermutationHom_injective
  change coordinatePermutation (firstSecondSwap hn) =
    coordinatePermutation (1 : Equiv.Perm (Fin n))
  rw [show coordinatePermutation (1 : Equiv.Perm (Fin n)) =
    (1 : BitPerm n) from map_one coordinatePermutationHom]
  exact h

/-- A nonidentity bijection can have zero SAC and variance scores. -/
theorem exists_nontrivial_bitPerm_with_zero_avalanche
    {n : Nat}
    (hn : 1 < n) :
    ∃ H : BitPerm n,
      H ≠ 1 ∧
      sacScore H = 0 ∧
      varianceScore H = 0 := by
  let π := firstSecondSwap hn
  refine ⟨coordinatePermutation π, ?_,
    coordinatePermutation_sacScore π (by omega),
    coordinatePermutation_varianceScore π (by omega)⟩
  exact coordinate_firstSecondSwap_ne_one hn

private theorem cycleEulerFactorData_ne_identity_of_ne {n : Nat}
    (H : BitPerm n)
    (hH : H ≠ 1) :
    cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) := by
  intro heuler
  have hcycle : cycleCount H 1 = cycleCount (1 : BitPerm n) 1 := by
    have h := DFunLike.congr_fun heuler 1
    simpa using h
  have hfixedH :=
    fixedPointCount_eq_sum_mul_cycleCount H (by decide : 0 < 1)
  have hfixedOne :=
    fixedPointCount_eq_sum_mul_cycleCount
      (1 : BitPerm n) (by decide : 0 < 1)
  have hfixed :
      fixedPointCount H 1 = fixedPointCount (1 : BitPerm n) 1 := by
    calc
      fixedPointCount H 1 = cycleCount H 1 := by simpa using hfixedH
      _ = cycleCount (1 : BitPerm n) 1 := hcycle
      _ = fixedPointCount (1 : BitPerm n) 1 := by
        simpa using hfixedOne.symm
  have hcard :
      (fixedPoints H 1).card = (Finset.univ : Finset (Bits n)).card := by
    calc
      (fixedPoints H 1).card = fixedPointCount H 1 := rfl
      _ = fixedPointCount (1 : BitPerm n) 1 := hfixed
      _ = 2 ^ n := fixedPointCount_identity 1
      _ = (Finset.univ : Finset (Bits n)).card := by
        rw [Finset.card_univ, BitMatrix.Dynamics.Avalanche.card_bits]
  have hset : fixedPoints H 1 = (Finset.univ : Finset (Bits n)) :=
    Finset.eq_of_subset_of_card_le (Finset.filter_subset _ _)
      (Nat.le_of_eq hcard.symm)
  apply hH
  apply Equiv.ext
  intro x
  have hx : x ∈ fixedPoints H 1 := by rw [hset]; simp
  have hfix := (mem_fixedPoints_iff H 1 x).1 hx
  simpa using hfix

/--
There is nontrivial primitive cycle data with zero avalanche scores.  Thus
cycle information alone proves neither SAC nor derivative-bit independence.
-/
theorem exists_nontrivial_cycle_data_with_zero_avalanche
    {n : Nat}
    (hn : 1 < n) :
    ∃ H : BitPerm n,
      cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) ∧
      sacScore H = 0 ∧
      varianceScore H = 0 := by
  let π := firstSecondSwap hn
  let H : BitPerm n := coordinatePermutation π
  have hH : H ≠ 1 := coordinate_firstSecondSwap_ne_one hn
  refine ⟨H, cycleEulerFactorData_ne_identity_of_ne H hH,
    coordinatePermutation_sacScore π (by omega),
    coordinatePermutation_varianceScore π (by omega)⟩

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
