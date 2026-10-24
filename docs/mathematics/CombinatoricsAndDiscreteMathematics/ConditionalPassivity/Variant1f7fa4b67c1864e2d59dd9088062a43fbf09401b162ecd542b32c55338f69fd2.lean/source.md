# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConditionalPassivity.Variant1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41af80d1ca775594c71d43e3cb949e8f7a330f37` · SHA-256 `1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
