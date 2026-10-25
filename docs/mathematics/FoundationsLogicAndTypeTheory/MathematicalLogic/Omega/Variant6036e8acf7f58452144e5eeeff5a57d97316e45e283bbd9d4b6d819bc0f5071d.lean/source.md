# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Omega.Variant6036e8acf7f58452144e5eeeff5a57d97316e45e283bbd9d4b6d819bc0f5071d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc4859b0c7904434640ca6a78c88122c26aa153f` · SHA-256 `6036e8acf7f58452144e5eeeff5a57d97316e45e283bbd9d4b6d819bc0f5071d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.Heyting.Basic
import Think.Knowledge.Sheaf.MathlibGluing

namespace Think.Knowledge.Sheaf

universe u

structure OmegaBoundary (Ω : Type u) [HeytingAlgebra Ω] where
  classifierReceiptHash : String
  heytingReceiptHash : String
  derived : Bool
  booleanMode : Bool
  floatMode : Bool
  doubleNegationElimination : Bool
  classicalCaseSplit : Bool
  claimBearing : Bool

def OmegaBoundary.accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) : Prop :=
  O.derived = true ∧
  O.booleanMode = false ∧
  O.floatMode = false ∧
  O.doubleNegationElimination = false ∧
  O.classicalCaseSplit = false

theorem OmegaBoundary.derived_if_accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) :
    O.accepted → O.derived = true :=
by
  intro h
  exact h.left

theorem OmegaBoundary.not_boolean_if_accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) :
    O.accepted → O.booleanMode = false :=
by
  intro h
  exact h.right.left

theorem OmegaBoundary.not_float_if_accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) :
    O.accepted → O.floatMode = false :=
by
  intro h
  exact h.right.right.left

theorem OmegaBoundary.no_double_negation_elimination_if_accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) :
    O.accepted → O.doubleNegationElimination = false :=
by
  intro h
  exact h.right.right.right.left

theorem OmegaBoundary.no_classical_case_split_if_accepted
    {Ω : Type u} [HeytingAlgebra Ω]
    (O : OmegaBoundary Ω) :
    O.accepted → O.classicalCaseSplit = false :=
by
  intro h
  exact h.right.right.right.right

/-- Overlap verification is expressed inside the Heyting implication lattice. -/
def heytingOverlap
    {Ω : Type u} [HeytingAlgebra Ω]
    (density verified : Ω) : Ω :=
  density ⇨ verified

theorem heytingOverlap_validates
    {Ω : Type u} [HeytingAlgebra Ω]
    (density verified : Ω) :
    density ⊓ heytingOverlap density verified ≤ verified :=
by
  exact inf_himp_le

structure DenseObservationSieve (Ω : Type u) [HeytingAlgebra Ω] where
  carrier : Ω
  dense : Prop
  closed : Prop

structure ClosedVerificationSieve (Ω : Type u) [HeytingAlgebra Ω] where
  carrier : Ω
  target : Ω
  closed : Prop
  valid : carrier ⊓ heytingOverlap carrier target ≤ target

def DenseObservationSieve.intersectionVerification
    {Ω : Type u} [HeytingAlgebra Ω]
    (left right : DenseObservationSieve Ω)
    (verified : Ω) : ClosedVerificationSieve Ω where
  carrier := left.carrier ⊓ right.carrier
  target := verified
  closed := left.closed ∧ right.closed
  valid := heytingOverlap_validates (left.carrier ⊓ right.carrier) verified

/-- Intersections of dense observation sieves stay valid for Heyting verification. -/
theorem heyting_intersection_stability
    {Ω : Type u} [HeytingAlgebra Ω]
    (left right : DenseObservationSieve Ω)
    (verified : Ω) :
    (left.carrier ⊓ right.carrier) ⊓
      heytingOverlap (left.carrier ⊓ right.carrier) verified ≤ verified :=
by
  simpa [DenseObservationSieve.intersectionVerification] using
    (left.intersectionVerification right verified).valid

end Think.Knowledge.Sheaf
```
