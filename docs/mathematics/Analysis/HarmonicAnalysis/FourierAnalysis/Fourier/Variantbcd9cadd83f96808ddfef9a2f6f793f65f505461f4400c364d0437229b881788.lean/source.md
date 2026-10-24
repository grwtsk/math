# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb37c337cd0ab989c54a6f5d5027d922b1df3702` · SHA-256 `bcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.TruthTable

namespace Boolean.Cube

/-- An integer-valued function on the Boolean hypercube. -/
abbrev Fourier.IntFunction (n : Nat) :=
  Hypercube.Point n → Int

/-- Alias for functions usually interpreted on signed coordinates. -/
abbrev Fourier.SignedFunction (n : Nat) :=
  Fourier.IntFunction n

/-- A dyadic rational `numerator / 2^exponent`. -/
structure Fourier.Dyadic where
  numerator : Int
  exponent : Nat
deriving Repr, DecidableEq

/-- Denominator of a dyadic rational. -/
def Fourier.Dyadic.denominator (q : Fourier.Dyadic) : Nat :=
  2 ^ q.exponent

/-- Convert a Boolean-valued function into a signed output function. -/
def Fourier.signedOutput {n : Nat} (f : TruthTable n) :
    Fourier.IntFunction n :=
  fun x => Hypercube.spinOfBool (f x)

/-- Convert a Boolean-valued function into a `0,1` output function. -/
def Fourier.zeroOneOutput {n : Nat} (f : TruthTable n) :
    Fourier.IntFunction n :=
  fun x => Hypercube.intOfBool (f x)

/--
Fourier character `χ_S(x) = ∏_{i ∈ S} x_i`.

The subset `S` is represented as a Boolean point: `S i = true` means `i ∈ S`.
The input coordinate `x_i` is interpreted as `-1` or `+1`.
-/
def Fourier.character {n : Nat}
    (S : Hypercube.Point n)
    (x : Hypercube.Point n) :
    Int :=
  match n with
  | 0 => 1
  | _ + 1 =>
      Fourier.character (Hypercube.dropLast S) (Hypercube.dropLast x) *
        match Hypercube.last S with
        | true => Hypercube.spinOfBool (Hypercube.last x)
        | false => 1

/--
Numerator of the Fourier coefficient:

`∑ₓ f(x) χ_S(x)`.

The full coefficient is this numerator divided by `2^n`.
-/
def Fourier.coefficientNumerator {n : Nat}
    (f : Fourier.IntFunction n)
    (S : Hypercube.Point n) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x => f x * Fourier.character S x))

/-- Fourier coefficient represented as `numerator / 2^n`. -/
def Fourier.coefficient {n : Nat}
    (f : Fourier.IntFunction n)
    (S : Hypercube.Point n) :
    Fourier.Dyadic where
  numerator := Fourier.coefficientNumerator f S
  exponent := n

/-- All subset characters of the n-dimensional signed cube. -/
def Fourier.subsets (n : Nat) :
    List (Hypercube.Point n) :=
  Hypercube.vertices n

/-- Numerator of the Fourier synthesis value at `x`. -/
def Fourier.synthesisNumeratorAt {n : Nat}
    (f : Fourier.IntFunction n)
    (x : Hypercube.Point n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => Fourier.coefficientNumerator f S * Fourier.character S x))

/-- Fourier synthesis value represented as a dyadic rational. -/
def Fourier.synthesisAt {n : Nat}
    (f : Fourier.IntFunction n)
    (x : Hypercube.Point n) :
    Fourier.Dyadic where
  numerator := Fourier.synthesisNumeratorAt f x
  exponent := n

/-- Fourier-analysis workflow for Boolean functions. -/
def Fourier.workflow : List String :=
  [ "encode input bits as signed coordinates -1/+1"
  , "choose output encoding: 0/1 or -1/+1"
  , "build one parity character for every variable subset"
  , "average f(x) times each character over all cube vertices"
  , "interpret large coefficients as spectral structure"
  , "use high-degree mass as a proxy for sensitivity to noise"
  ]

end Boolean.Cube
```
