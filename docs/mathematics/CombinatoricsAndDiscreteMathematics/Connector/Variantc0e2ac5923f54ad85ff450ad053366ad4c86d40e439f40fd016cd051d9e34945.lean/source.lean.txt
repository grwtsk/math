import Mathematics.SemiLocalDefect.Sonin.Space

/-!
# Certified Sonin connectors

Connector composition is proof-bearing.  Merely sharing source and target
digests does not make two transport maps equal.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninConnectorSystem
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (family : SoninSpaceFamily Prime) where
  connector :
    ∀ {source target : Finset Prime},
      source ⊆ target →
      family.Space source →
      family.Space target
  injective :
    ∀ {source target : Finset Prime}
      (subset : source ⊆ target),
      Function.Injective
        (connector
          (source := source)
          (target := target)
          subset)
  identity :
    ∀ (cut : Finset Prime)
      (state : family.Space cut),
      connector
          (source := cut)
          (target := cut)
          (fun _ member => member)
          state =
        state
  compose :
    ∀ {source middle target : Finset Prime}
      (sourceMiddle : source ⊆ middle)
      (middleTarget : middle ⊆ target)
      (state : family.Space source),
      connector
          (source := source)
          (target := target)
          (Finset.Subset.trans
            sourceMiddle middleTarget)
          state =
        connector
          (source := middle)
          (target := target)
          middleTarget
          (connector
            (source := source)
            (target := middle)
            sourceMiddle state)

end Mathematics.SemiLocalDefect.Sonin
