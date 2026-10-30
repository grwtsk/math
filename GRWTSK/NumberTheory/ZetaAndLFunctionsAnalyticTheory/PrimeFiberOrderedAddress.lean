/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeFiberFiniteTestTransport

set_option autoImplicit false

/-!
# Ordered group addresses for dependent prime fibers

This module joins the existing genuinely dependent prime-fiber carrier with the
ordered prime-group address system.  An occurrence retains its complete
`Sigma Fiber` state; its prime index supplies the local cyclic address group.
Ordering is explicit and repeated prime occurrences remain distinct positions.

The construction is an exact type-level bridge for search and serialization.  It
does not identify a fiber state with a residue, construct the square-tent selector,
prove arithmetic cancellation, or imply RH.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberOrderedAddress

open scoped BigOperators

/-- The existing prime-fiber index, retained definitionally rather than copied
into an unrelated label type. -/
abbrev PrimeIndex :=
  GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport.PrimeIndex

/-- The general ordered prime-group axes used by this consumer. -/
abbrev OrderedPrimeAxes :=
  GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes

/-- An explicit finite order on complete dependent prime-fiber states. -/
structure TypedPrimeOrder (Fiber : PrimeIndex → Type*) where
  length : ℕ
  stateAt : Fin length → Sigma Fiber

namespace TypedPrimeOrder

/-- Forget only the fiber payload when selecting the local address group; the
full ordered state remains in `TypedPrimeOrder.stateAt`. -/
def axes {Fiber : PrimeIndex → Type*} (order : TypedPrimeOrder Fiber) :
    OrderedPrimeAxes where
  length := order.length
  primeAt := fun i => (order.stateAt i).1

/-- The dependent cyclic address group attached to an ordered typed sample. -/
abbrev Address {Fiber : PrimeIndex → Type*} (order : TypedPrimeOrder Fiber) :=
  order.axes.Address

/-- Exact radix-and-residue serialization for an ordered typed sample. -/
def serialize {Fiber : PrimeIndex → Type*} (order : TypedPrimeOrder Fiber)
    (address : order.Address) : List (ℕ × ℕ) :=
  GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes.serialize
    order.axes address

/-- The ordered typed sample and its address have the same atomic length. -/
@[simp]
theorem axes_length {Fiber : PrimeIndex → Type*}
    (order : TypedPrimeOrder Fiber) : order.axes.length = order.length :=
  rfl

/-- The complete state order determines the prime-radix order. -/
@[simp]
theorem axes_primeAt {Fiber : PrimeIndex → Type*}
    (order : TypedPrimeOrder Fiber) (i : Fin order.length) :
    order.axes.primeAt i = (order.stateAt i).1 :=
  rfl

/-- No address information is lost when the ordered typed sample is fixed. -/
theorem serialize_injective {Fiber : PrimeIndex → Type*}
    (order : TypedPrimeOrder Fiber) :
    Function.Injective order.serialize :=
  GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes.serialize_injective
    order.axes

/-- The number of addresses is the product of the prime orders attached to the
ordered dependent states. -/
theorem card_address {Fiber : PrimeIndex → Type*}
    (order : TypedPrimeOrder Fiber) :
    Fintype.card order.Address =
      ∏ i : Fin order.length, ((order.stateAt i).1 : ℕ) := by
  simpa [axes,
      GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes.radixProduct] using
    GRWTSK.NumberTheory.OrderedPrimeGroupAddress.OrderedPrimeAxes.card_address
      order.axes

/-- Build an order directly from a finite list of dependent prime-fiber states. -/
def ofList {Fiber : PrimeIndex → Type*} (states : List (Sigma Fiber)) :
    TypedPrimeOrder Fiber where
  length := states.length
  stateAt := fun i => states[i]

@[simp]
theorem ofList_length {Fiber : PrimeIndex → Type*}
    (states : List (Sigma Fiber)) :
    (ofList states).length = states.length :=
  rfl

@[simp]
theorem ofList_stateAt {Fiber : PrimeIndex → Type*}
    (states : List (Sigma Fiber)) (i : Fin states.length) :
    (ofList states).stateAt i = states[i] :=
  rfl

/-- Repeated states or repeated prime indices remain repeated address axes; only
the supplied list order determines their positions. -/
theorem ofList_card_address {Fiber : PrimeIndex → Type*}
    (states : List (Sigma Fiber)) :
    Fintype.card (ofList states).Address =
      ∏ i : Fin states.length, ((states[i]).1 : ℕ) := by
  simpa using card_address (ofList states)

end TypedPrimeOrder

end GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberOrderedAddress
