/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.LocalAdditiveFusion
import GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress

set_option autoImplicit false
noncomputable section

/-!
# Prime-typed cellular additive fusion

Unlike the set-level mixed-radix equivalence to Fin n, this
construction uses the ACTUAL AddCommGroup instances of
OrderedPrimeGroupAddress.AtomicAddress word. Each prime occurrence
and each ordered coordinate remains a distinct source axis.

Two DIFFERENT ordered prime words can be glued only after explicit
additive maps from a shared seam are given. If both seam maps are
injective, the original prime-address groups embed faithfully in
the fused quotient. Any additive source observation must agree on
the seam to descend, and an arbitrary signed Möbius or zeta
observation has no automatically supplied additive homomorphism.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeCellularAdditiveFusion

open GRWTSK.Algebra.AdditiveLocalFusion
open GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress

universe u v

variable {C : Type u} [AddCommGroup C]

/-- Explicit chosen overlap for two actual ordered prime words.
Nothing here confuses equality of cardinality with additive equivalence. -/
def primeSeam (leftWord rightWord : List PrimeIndex)
    (toLeft : C →+ AtomicAddress leftWord)
    (toRight : C →+ AtomicAddress rightWord) :
    Seam C (AtomicAddress leftWord) (AtomicAddress rightWord) where
  left := toLeft
  right := toRight

/-- Genuine lossless embeddings of BOTH original prime groups into
the common fused group require BOTH seam maps to be injective. -/
theorem primeSeam_retains_both_sources
    (leftWord rightWord : List PrimeIndex)
    (toLeft : C →+ AtomicAddress leftWord)
    (toRight : C →+ AtomicAddress rightWord)
    (hLeft : Function.Injective toLeft)
    (hRight : Function.Injective toRight) :
    Function.Injective (primeSeam leftWord rightWord toLeft toRight).inLeft ∧
      Function.Injective (primeSeam leftWord rightWord toLeft toRight).inRight :=
  ⟨(primeSeam leftWord rightWord toLeft toRight).inLeft_injective_of_right_injective
      hRight,
   (primeSeam leftWord rightWord toLeft toRight).inRight_injective_of_left_injective
      hLeft⟩

/-- Exact additive observation return from the amalgamated prime-cell
group to BOTH original prime-address sources. -/
theorem primeSeam_additive_source_return
    (leftWord rightWord : List PrimeIndex)
    (toLeft : C →+ AtomicAddress leftWord)
    (toRight : C →+ AtomicAddress rightWord)
    {D : Type v} [AddCommGroup D]
    (fromLeft : AtomicAddress leftWord →+ D)
    (fromRight : AtomicAddress rightWord →+ D)
    (hfit : ∀ c, fromLeft (toLeft c) = fromRight (toRight c)) :
    (∀ a, (primeSeam leftWord rightWord toLeft toRight).descend
        fromLeft fromRight hfit
        ((primeSeam leftWord rightWord toLeft toRight).inLeft a) =
          fromLeft a) ∧
      (∀ b, (primeSeam leftWord rightWord toLeft toRight).descend
        fromLeft fromRight hfit
        ((primeSeam leftWord rightWord toLeft toRight).inRight b) =
          fromRight b) := by
  constructor
  · intro a
    exact (primeSeam leftWord rightWord toLeft toRight).descend_inLeft
      fromLeft fromRight hfit a
  · intro b
    exact (primeSeam leftWord rightWord toLeft toRight).descend_inRight
      fromLeft fromRight hfit b

/-- Prime-addressed SIGNED or nonlinear source observations are not
automatically additive. If the chosen seam glues two original
prime-address states that the observation distinguishes, there is
NO exact descended observation on the fused group. -/
theorem primeSeam_no_source_descent_of_collision
    (leftWord rightWord : List PrimeIndex)
    (toLeft : C →+ AtomicAddress leftWord)
    (toRight : C →+ AtomicAddress rightWord)
    {D : Type v}
    (observe : AtomicAddress leftWord × AtomicAddress rightWord → D)
    (x y : AtomicAddress leftWord × AtomicAddress rightWord)
    (hglued :
      (QuotientAddGroup.mk'
        (primeSeam leftWord rightWord toLeft toRight).relation) x =
      (QuotientAddGroup.mk'
        (primeSeam leftWord rightWord toLeft toRight).relation) y)
    (hdifferent : observe x ≠ observe y) :
    ¬ (primeSeam leftWord rightWord toLeft toRight).FactorsObservation
        observe :=
  Seam.no_observation_descent_of_collision
    (primeSeam leftWord rightWord toLeft toRight)
    observe x y hglued hdifferent

end GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeCellularAdditiveFusion
