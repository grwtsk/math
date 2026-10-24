# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694.RoundComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5503420656dd925e4eecd3d456d1bee4593f066` · SHA-256 `61a902cae18b7d0d155a030623badfdbd7b600eefbf279e066c54c15c9d2e14e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RoundComposition — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a
Organized SHA-256: c6e5919d85ba9e19bb5b9997372650b13bba53566855c457ced5a75827a9bf3d
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole four-field permutation rounds, XOR translations, all inverse equations and head-first list composition remain exact equivalences; the field named linear is only an equivalence here, with no invented linearity premise. The identity round supplies an exact zero-avalanche counterexample only under 0<n. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Correct guarantees for permutation networks

This module separates properties that are often conflated:

* totality is supplied by an ordinary Lean function;
* bijectivity is supplied structurally by `Equiv` and is preserved by
  composition;
* deterministic linear activity is measured by branch number;
* SAC balance and differential concentration are the aggregate invariants from
  `BitMatrix.Dynamics.Avalanche` and do not follow from bijectivity.

The counterexamples below make the boundary explicit.  A cyclic coordinate
rotation is bijective and preserves Hamming weight, but merely relocates a
one-bit difference and has zero SAC positivity scores.  A state-dependent XOR
correction can collapse even the identity permutation.  Trivial first
cohomology in the elementary complex used here means only that every closed
degree-one element is exact; it says nothing about injectivity of an unrelated
state transformation.

The square-zero theorem is likewise deliberately elementary.  Connes' `B`
operator is degree-changing in the cyclic complex.  If such an operator is
totalized as a square-zero endomorphism, square-zero obstructs invertibility on
a nontrivial state space.  The theorem here does not formalize the full cyclic
module or bicomplex construction.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694

universe u

namespace BitMatrix.Network.Permutation

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open scoped BigOperators

/-! ## Generic permutation rounds -/

/-- XOR by a constant is a self-inverse equivalence. -/
def xorTranslation {n : Nat} (c : Bits n) : Bits n ≃ Bits n where
  toFun x := xorBits x c
  invFun x := xorBits x c
  left_inv x := xorBits_cancel_self_right x c
  right_inv x := xorBits_cancel_self_right x c

@[simp]
theorem xorTranslation_apply {n : Nat} (c x : Bits n) :
    xorTranslation c x = xorBits x c :=
  rfl

@[simp]
theorem xorTranslation_symm_apply {n : Nat} (c x : Bits n) :
    (xorTranslation c).symm x = xorBits x c :=
  rfl

/-- One key–substitution–linear–key permutation round. -/
structure Round (n : Nat) where
  preKey : Bits n
  substitution : Bits n ≃ Bits n
  linear : Bits n ≃ Bits n
  postKey : Bits n

/-- The structural equivalence `x ↦ L(S(x ⊕ a)) ⊕ b`. -/
def Round.toEquiv {n : Nat} (R : Round n) : Bits n ≃ Bits n :=
  (((xorTranslation R.preKey).trans R.substitution).trans R.linear).trans
    (xorTranslation R.postKey)

/-- Execute one permutation round. -/
def Round.run {n : Nat} (R : Round n) (x : Bits n) : Bits n :=
  R.toEquiv x

@[simp]
theorem Round.run_apply {n : Nat} (R : Round n) (x : Bits n) :
    R.run x =
      xorBits (R.linear (R.substitution (xorBits x R.preKey))) R.postKey :=
  rfl

/-- A round is bijective because it is a composition of explicit equivalences. -/
theorem Round.run_bijective {n : Nat} (R : Round n) :
    Function.Bijective R.run :=
  R.toEquiv.bijective

/-- The exact inverse map exposed by the composed equivalence. -/
def Round.inverse {n : Nat} (R : Round n) : Bits n → Bits n :=
  R.toEquiv.symm

@[simp]
theorem Round.inverse_run {n : Nat} (R : Round n) (x : Bits n) :
    R.inverse (R.run x) = x :=
  R.toEquiv.symm_apply_apply x

@[simp]
theorem Round.run_inverse {n : Nat} (R : Round n) (x : Bits n) :
    R.run (R.inverse x) = x :=
  R.toEquiv.apply_symm_apply x

/--
Compose `[R₁, …, Rₛ]` as `Rₛ ∘ … ∘ R₁`: the head executes first.
-/
def composeRounds {n : Nat} : List (Round n) → Bits n ≃ Bits n
  | [] => Equiv.refl _
  | R :: rounds => R.toEquiv.trans (composeRounds rounds)

/-- Execute a list of rounds from head to tail. -/
def runRounds {n : Nat} (rounds : List (Round n)) (x : Bits n) : Bits n :=
  composeRounds rounds x

@[simp]
theorem composeRounds_nil {n : Nat} :
    composeRounds ([] : List (Round n)) = Equiv.refl _ :=
  rfl

@[simp]
theorem composeRounds_cons {n : Nat} (R : Round n) (rounds : List (Round n)) :
    composeRounds (R :: rounds) = R.toEquiv.trans (composeRounds rounds) :=
  rfl

@[simp]
theorem runRounds_nil {n : Nat} (x : Bits n) :
    runRounds ([] : List (Round n)) x = x :=
  rfl

@[simp]
theorem runRounds_cons {n : Nat} (R : Round n)
    (rounds : List (Round n)) (x : Bits n) :
    runRounds (R :: rounds) x = runRounds rounds (R.run x) :=
  rfl

/-- Any list of explicit permutation rounds remains bijective. -/
theorem runRounds_bijective {n : Nat} (rounds : List (Round n)) :
    Function.Bijective (runRounds rounds) :=
  (composeRounds rounds).bijective

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
```
