import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Positive packet functionals

The packet functional abstracts `Tr(W* A W)`.  Its algebraic and positivity
laws are proof-bearing and digests remain metadata only.
-/

namespace Mathematics.SemiLocalDefect.Trace

open scoped BigOperators

universe uTest

structure DefectPacket
    (model : OperatorModel)
    (Test : Type uTest) where
  energy :
    Test → model.Operator → ℝ
  packetNormSq : Test → ℝ
  packetNormSq_nonnegative :
    ∀ test, 0 ≤ packetNormSq test
  map_zero :
    ∀ test, energy test 0 = 0
  map_add :
    ∀ test left right,
      energy test (left + right) =
        energy test left + energy test right
  map_sub :
    ∀ test left right,
      energy test (left - right) =
        energy test left - energy test right
  map_sum :
    ∀ {Index : Type} [DecidableEq Index]
      (test : Test)
      (indices : Finset Index)
      (operator : Index → model.Operator),
      energy test (∑ index ∈ indices, operator index) =
        ∑ index ∈ indices,
          energy test (operator index)
  nonnegative :
    ∀ test operator,
      model.Nonnegative operator →
      0 ≤ energy test operator
  identity_energy :
    ∀ test,
      energy test model.identity =
        packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
