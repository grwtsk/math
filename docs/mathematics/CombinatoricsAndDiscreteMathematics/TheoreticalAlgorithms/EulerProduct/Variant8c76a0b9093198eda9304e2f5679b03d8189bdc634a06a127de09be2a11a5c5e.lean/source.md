# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerProduct.Variant8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e443851c5b3c022ce9476cf31efe9281e106bec7` · SHA-256 `8c76a0b9093198eda9304e2f5679b03d8189bdc634a06a127de09be2a11a5c5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.ArithmeticFunction

/-!
# Finite Euler products

Finite Euler windows belong to `Number`.

An infinite Euler product identity is not a finite arithmetic object.  It enters
later through `AnalyticNumber.EulerProduct` with convergence and product
identity authority.
-/

namespace Number

/-- Finite list of primes with a certificate-gated primality/soundness claim. -/
structure PrimeWindow where
  primes : List Nat
  primeSound : Prop
  primeSoundProof : primeSound

/-- One finite local Euler factor. -/
structure LocalEulerFactor where
  prime : Nat
  coeffs : List Int
  factorSound : Prop
  factorSoundProof : factorSound

/-- A finite Euler product window. -/
structure FiniteEulerProduct where
  window : PrimeWindow
  factors : List LocalEulerFactor
  expandedCoeffs : List Int
  expansionSound : Prop
  expansionProof : expansionSound

theorem prime_window_sound
    (W : PrimeWindow) :
    W.primeSound :=
  W.primeSoundProof

theorem local_euler_factor_sound
    (F : LocalEulerFactor) :
    F.factorSound :=
  F.factorSoundProof

theorem finite_euler_product_expansion_sound
    (P : FiniteEulerProduct) :
    P.expansionSound :=
  P.expansionProof

/-- A finite Euler product does not prove an infinite Euler product identity. -/
def FiniteEulerProductProvesInfiniteEulerProduct
    (_P : FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_product_not_infinite_identity
    (P : FiniteEulerProduct) :
    ¬ FiniteEulerProductProvesInfiniteEulerProduct P := by
  intro h
  exact h

end Number
```
