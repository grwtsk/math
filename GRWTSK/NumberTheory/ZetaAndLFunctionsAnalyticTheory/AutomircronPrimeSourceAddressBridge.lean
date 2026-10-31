/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronCanonicalPrimeTyping
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeFiberOrderedAddress
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import Mathlib

/-!
# Ordered prime-address automorphisms and source-bound Liouville return

Local attribution: grwtsk contributors.

This consumes the existing TypedPrimeOrder (ordered lists of Sigma Fiber)
using the *canonical* prime-tagged natural source. Each ordered occurrence
retains its full numerical integer label. The local prime is used as a
mixed-radix group order only; the product of those prime radices is NOT
assumed to be the product of the represented composite integers.

The negative-coordinate frame is a true automorphism of this prime-ordered
abelian address. Its image retains the same source labels because source
labels belong to the independent ordered prime-fiber states.

The second consumer reindexes the original Liouville causal waveform with
the same complete positive-integer typing as the Mobius source. Neither the
Liouville-to-Mobius square-divisor transfer nor its arithmetic all-rate bound
is changed or inferred. All signed Liouville terms and response births stay
at their original integer indices.

SOURCE_CANDIDATE; LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No RH claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AutomircronPrimeSourceAddressBridge

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberOrderedAddress

/-- Keep each whole integer in the *state*, with its canonical prime tag. -/
def sourceOrder (items : List PrimeAtom) : TypedPrimeOrder CanonicalPrimeFiber :=
  TypedPrimeOrder.ofList items

/-- Recover the literal selected prime at each fixed ordered position. -/
theorem sourceOrder_primeAt (items : List PrimeAtom)
    (i : Fin items.length) :
    (sourceOrder items).axes.primeAt i = (items[i]).1 := rfl

/-- Recover the WHOLE original integer at the same position. -/
theorem sourceOrder_indexAt (items : List PrimeAtom)
    (i : Fin items.length) :
    ((sourceOrder items).stateAt i).2.val = (items[i]).2.val := rfl

/-- The prime-order address code retains all its local group coordinates. -/
theorem sourceOrder_serialize_injective (items : List PrimeAtom) :
    Function.Injective (sourceOrder items).serialize :=
  TypedPrimeOrder.serialize_injective (sourceOrder items)

/-- Mixed-radix address count uses PRIME radices, not composite source n. -/
theorem sourceOrder_address_card (items : List PrimeAtom) :
    Fintype.card (sourceOrder items).Address =
      ∏ i : Fin items.length, ((items[i]).1 : ℕ) := by
  simpa [sourceOrder] using
    (TypedPrimeOrder.ofList_card_address items)

/-- Reversible coordinate reflection on the ordered prime address group. -/
def flicAddress (items : List PrimeAtom) :
    (sourceOrder items).Address ≃ (sourceOrder items).Address where
  toFun address := -address
  invFun address := -address
  left_inv := by intro address; simp
  right_inv := by intro address; simp

/-- Prime-address reflection is additive (the address group is abelian). -/
theorem flicAddress_add (items : List PrimeAtom)
    (a b : (sourceOrder items).Address) :
    flicAddress items (a + b) =
      flicAddress items a + flicAddress items b := by
  change -(a + b) = -a + -b
  abel

/-- Original complete Liouville waveform transported into the exact same
canonical positive-index typing, including n=1 and nonunit classes. -/
def typedLiouvilleWave (u : ℝ) : ℝ :=
  ∑ a ∈ typedInventory ⌊Real.exp u⌋₊,
    GRWTSK.NumberTheory.LiouvilleCausalEnergy.coefficient (sourceIndex a) *
      pickupResponse (sourceIndex a) u

/-- Typed Liouville readout is the ACTUAL untouched causal waveform. -/
theorem typedLiouvilleWave_eq_waveform (u : ℝ) :
    typedLiouvilleWave u =
      GRWTSK.NumberTheory.LiouvilleCausalEnergy.waveform u := by
  exact typed_sum_eq_source ⌊Real.exp u⌋₊
    (fun n => GRWTSK.NumberTheory.LiouvilleCausalEnergy.coefficient n *
      pickupResponse n u)

/-- Its physical-time energy is unchanged by prime tagging; no smallness
or Liouville-to-Mobius comparison is asserted. -/
theorem typedLiouvilleEnergy_eq_source (T : ℝ) :
    (∫ u in (0 : ℝ)..T, |typedLiouvilleWave u| ^ 2) =
      GRWTSK.NumberTheory.LiouvilleCausalEnergy.energy T := by
  unfold GRWTSK.NumberTheory.LiouvilleCausalEnergy.energy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [typedLiouvilleWave_eq_waveform]

end GRWTSK.NumberTheory.AutomircronPrimeSourceAddressBridge
