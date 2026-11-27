/- Copyright (c) 2026 grwtsk contributors. MIT. -/

/-!
# Signed dyadic Fourier coefficients

The data and denominator are preserved from `FourierEdition1` so coefficient
consumers can import them independently of the Boolean truth-table libraries.
-/

namespace Boolean.Cube

/-- A dyadic rational `numerator / 2^exponent`. -/
structure Fourier.Dyadic where
  numerator : Int
  exponent : Nat
deriving Repr, DecidableEq

/-- Denominator of a dyadic rational. -/
def Fourier.Dyadic.denominator (q : Fourier.Dyadic) : Nat :=
  2 ^ q.exponent

end Boolean.Cube
