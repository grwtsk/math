# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.SourceComponents.Variant94413fba6c557a4f.PositiveOrderCausalEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c1f3aeba8d25732796af4ff130cf2920e70f2d8` · SHA-256 `eae119e0a829785df3c25424778e33ea49ef643fb5db6389d31938997e42e9b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PositiveOrderCausalEquivalence — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722
Organized SHA-256: 48bfb722aa153d51cf840bfda5bd7c918b4b9c62ee58d54457406d42a4c0fd3c
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact forward/bilateral equivalence and conjugated quotient permutation under 0<N and step^N=1, with complete proofs. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.GroupTheory.OrderOfElement
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant94413fba6c557a4f.BilateralQuotientPermutation

/-!
# Reversible and bilateral causal state

For a reversible autonomous system, bilateral equivalence compares every
observation both along forward iterates and along iterates of the inverse.
This makes the descended transition an actual permutation of the quotient.

Forward and bilateral equivalence coincide when a **positive** power of the
global permutation is the identity.  Positivity is essential: the equation
`H ^ 0 = 1` is tautological and gives no finite-order information.  Finite
state spaces supply a positive exponent through `orderOf H`.  On arbitrary
infinite state spaces a forward causal quotient need not be reversible.
-/

namespace ReversibleCausal

universe uS uR uO

namespace ReversibleSystem

variable {State : Type uS} {Resolution : Type uR}

/--
A positive identity power turns every inverse iterate into a forward iterate,
so forward and bilateral observational kernels coincide.
-/
theorem forward_eq_bilateral_of_pow_eq_one
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    G.ForwardCausalEquivalent = G.BilateralCausalEquivalent := by
  funext x y
  apply propext
  constructor
  · intro hforward
    refine ⟨hforward, ?_⟩
    intro t ρ
    have hle : t ≤ N * t := by
      exact Nat.le_mul_of_pos_left t hNpos
    have hpow : G.step ^ (N * t) = 1 := by
      rw [pow_mul, hN, one_pow]
    have hmul :
        G.step ^ (N * t - t) * G.step ^ t = 1 := by
      rw [← pow_add, Nat.sub_add_cancel hle, hpow]
    have hinverse :
        G.step.symm ^ t = G.step ^ (N * t - t) := by
      change G.step⁻¹ ^ t = G.step ^ (N * t - t)
      rw [inv_pow]
      exact inv_eq_of_mul_eq_one_left hmul
    rw [hinverse]
    exact hforward (N * t - t) ρ
  · intro h
    exact h.1

/-!
## Transporting the quotient under finite order

The equality of observational kernels above induces an actual equivalence of
their quotients.  It is identity-on-representatives; no state encoding or
choice of representative is introduced.  Conjugating the bilateral quotient
permutation through this equivalence equips the forward quotient with a
permutation exactly when a positive identity power has been supplied.
-/

/--
Under a positive identity power, the forward and bilateral quotient types are
canonically equivalent by the identity map on concrete representatives.
-/
def forwardCausalStateEquivBilateralOfPowEqOne
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    G.ForwardCausalState ≃ G.BilateralCausalState where
  toFun := Quotient.map id (by
    intro x y hxy
    change G.ForwardCausalEquivalent x y at hxy
    change G.BilateralCausalEquivalent (id x) (id y)
    have heq := G.forward_eq_bilateral_of_pow_eq_one hNpos hN
    rw [heq] at hxy
    simpa using hxy)
  invFun := Quotient.map id (by
    intro x y hxy
    change G.BilateralCausalEquivalent x y at hxy
    change G.ForwardCausalEquivalent (id x) (id y)
    simpa using hxy.1)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    rfl
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    rfl

/-- The quotient equivalence sends a forward class to the same bilateral class. -/
@[simp]
theorem forwardCausalStateEquivBilateralOfPowEqOne_mk
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1)
    (x : State) :
    G.forwardCausalStateEquivBilateralOfPowEqOne hNpos hN
        (Quotient.mk G.forwardSetoid x) =
      G.toBilateral x :=
  rfl

/--
The forward causal quotient inherits a genuine permutation through the
forward/bilateral equivalence.  This construction is unavailable without the
positive finite-order witness (or a separately bilateral definition).
-/
def forwardStepPermOfPowEqOne
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1) :
    Equiv.Perm G.ForwardCausalState :=
  let e := G.forwardCausalStateEquivBilateralOfPowEqOne hNpos hN
  (e.trans G.bilateralStepPerm).trans e.symm

/-- The inherited forward permutation applies the original state transition. -/
@[simp]
theorem forwardStepPermOfPowEqOne_mk
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1)
    (x : State) :
    G.forwardStepPermOfPowEqOne hNpos hN
        (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) :=
  rfl

end ReversibleSystem
end ReversibleCausal
```
