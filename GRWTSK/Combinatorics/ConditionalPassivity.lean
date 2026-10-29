import Mathematics.SemiLocalDefect.Hardy.HardyDefect

/-!
# Conditional place passivity

Quasi-inner compactness and monotone Hardy defect growth are independent
certificates.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

def hardyInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (hardy : HardyDefectFamily model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  hardy.defect (insert prime cut) -
    hardy.defect cut

structure ConditionalPlacePassivity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (hardy : HardyDefectFamily model Prime) where
  passive :
    ∀ cut prime,
      model.Nonnegative
        (hardyInteraction hardy cut prime)
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (hardy.defect source)
        (hardy.defect target)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (hardy.defect cut) model.identity

def ConditionalPlacePassivity.toCapacity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {hardy : HardyDefectFamily model Prime}
    (passivity :
      ConditionalPlacePassivity hardy) :
    PrimeCutDefectCapacity model Prime where
  defect := hardy.defect
  selfAdjoint := hardy.selfAdjoint
  nonnegative := hardy.nonnegative
  boundedByIdentity :=
    passivity.boundedByIdentity
  monotone := passivity.monotone
  digest := ⟨hardy.digest.value⟩

end Mathematics.SemiLocalDefect.Hardy
