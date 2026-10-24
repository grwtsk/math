# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WalshFourier.Varianta786736df140110f1cd367ff8f21093bf5e3ae0012c81d372edb7aa298e94e74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dc4faeffff25eda125430009897146a4f526473` · SHA-256 `a786736df140110f1cd367ff8f21093bf5e3ae0012c81d372edb7aa298e94e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Cube.Fourier

namespace Surface.Boolean.Cube

/-- A Walsh frequency is a subset of Boolean coordinates. -/
abbrev WalshFourier.Frequency (n : Nat) :=
  Hypercube.Point n

/-- A sample is a Boolean hypercube vertex. -/
abbrev WalshFourier.Sample (n : Nat) :=
  Hypercube.Point n

/-- Integer-valued functions on the Boolean hypercube. -/
abbrev WalshFourier.Function (n : Nat) :=
  Fourier.SignedFunction n

/-- The dyadic value of a Walsh-Fourier coordinate. -/
abbrev WalshFourier.CoordinateValue :=
  Fourier.Dyadic

/-- The zero Walsh frequency, i.e. the empty subset of coordinates. -/
def WalshFourier.zeroFrequency (n : Nat) : WalshFourier.Frequency n :=
  fun _ => false

/-- The full Walsh frequency, i.e. the subset containing every coordinate. -/
def WalshFourier.fullFrequency (n : Nat) : WalshFourier.Frequency n :=
  fun _ => true

/-- The list of active coordinates in a frequency subset. -/
def WalshFourier.support {n : Nat} (S : WalshFourier.Frequency n) :
    List (Fin n) :=
  (List.finRange n).filter (fun i => S i)

/-- The degree of a Walsh frequency, equal to the size of its support. -/
def WalshFourier.degree {n : Nat} (S : WalshFourier.Frequency n) : Nat :=
  (WalshFourier.support S).length

/--
The Walsh character axis determined by frequency `S`.

This is the basis vector/function `χ_S`.
-/
def WalshFourier.character {n : Nat}
    (S : WalshFourier.Frequency n)
    (x : WalshFourier.Sample n) :
    Int :=
  Fourier.character S x

/-- The Walsh character as a function on the hypercube. -/
def WalshFourier.characterFunction {n : Nat}
    (S : WalshFourier.Frequency n) :
    WalshFourier.Sample n → Int :=
  fun x => WalshFourier.character S x

/--
Inner product on the finite Boolean hypercube, without normalization.

`innerProduct f g = ∑ₓ f(x)g(x)`.
-/
def WalshFourier.innerProduct {n : Nat}
    (f g : WalshFourier.Sample n → Int) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x => f x * g x))

/--
The unnormalized Walsh projection numerator:

`∑ₓ f(x)χ_S(x)`.
-/
def WalshFourier.projectionNumerator {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    Int :=
  WalshFourier.innerProduct f (WalshFourier.characterFunction S)

/--
The normalized Walsh-Fourier spectral coordinate:

`f̂(S) = 2^{-n} ∑ₓ f(x)χ_S(x)`.
-/
def WalshFourier.projection {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.CoordinateValue where
  numerator := WalshFourier.projectionNumerator f S
  exponent := n

/--
The spectral coordinate agrees with the existing Fourier coefficient
representation.
-/
theorem WalshFourier.projection_eq_coefficient {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projection f S = Fourier.coefficient f S := by
  rfl

@[simp] theorem WalshFourier.projection_numerator {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.projection f S).numerator =
      WalshFourier.projectionNumerator f S := rfl

@[simp] theorem WalshFourier.projection_exponent {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.projection f S).exponent = n := rfl

@[simp] theorem WalshFourier.projection_denominator {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.projection f S).denominator = 2 ^ n := rfl

/--
A Walsh-Fourier coordinate indexed directly by its frequency subset.

The `value` field is `f̂(frequency)`.
-/
structure WalshFourier.SpectralCoordinate (n : Nat) where
  frequency : WalshFourier.Frequency n
  value : WalshFourier.CoordinateValue

/-- Degree of the coordinate, inherited from its frequency. -/
def WalshFourier.SpectralCoordinate.degree {n : Nat}
    (c : WalshFourier.SpectralCoordinate n) : Nat :=
  WalshFourier.degree c.frequency

/-- Character axis of the coordinate. -/
def WalshFourier.SpectralCoordinate.axis {n : Nat}
    (c : WalshFourier.SpectralCoordinate n) :
    WalshFourier.Sample n → Int :=
  WalshFourier.characterFunction c.frequency

/-- Build the Walsh-Fourier coordinate of `f` at frequency `S`. -/
def WalshFourier.coordinate {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.SpectralCoordinate n where
  frequency := S
  value := WalshFourier.projection f S

@[simp] theorem WalshFourier.coordinate_frequency {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.coordinate f S).frequency = S := rfl

@[simp] theorem WalshFourier.coordinate_value {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    (WalshFourier.coordinate f S).value =
      WalshFourier.projection f S := rfl

@[simp] theorem WalshFourier.coordinate_degree {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.SpectralCoordinate.degree (WalshFourier.coordinate f S) =
      WalshFourier.degree S := rfl

/--
The full Walsh-Fourier spectrum of a function, one coordinate for each frequency.

The frequency domain is itself a Boolean hypercube: every Boolean point
`S : Fin n → Bool` selects a parity character.
-/
def WalshFourier.spectrum {n : Nat}
    (f : WalshFourier.Function n) :
    List (WalshFourier.SpectralCoordinate n) :=
  (Fourier.subsets n).map
    (fun S => WalshFourier.coordinate f S)

/--
A spectral coordinate addressed by a finite index rather than a function-valued
frequency. This is convenient for matrices and finite tables.
-/
structure WalshFourier.IndexedSpectralCoordinate (n : Nat) where
  index : Fin (2 ^ n)
  value : WalshFourier.CoordinateValue
deriving Repr, DecidableEq

/-- Convert a spectral index into its Walsh frequency. -/
def WalshFourier.frequencyOfIndex (n : Nat)
    (i : Fin (2 ^ n)) :
    WalshFourier.Frequency n :=
  Hypercube.pointOfIndex n i.val

/-- Build an indexed Walsh-Fourier coordinate. -/
def WalshFourier.indexedCoordinate {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin (2 ^ n)) :
    WalshFourier.IndexedSpectralCoordinate n where
  index := i
  value := WalshFourier.projection f (WalshFourier.frequencyOfIndex n i)

@[simp] theorem WalshFourier.indexedCoordinate_index {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin (2 ^ n)) :
    (WalshFourier.indexedCoordinate f i).index = i := rfl

@[simp] theorem WalshFourier.indexedCoordinate_value {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin (2 ^ n)) :
    (WalshFourier.indexedCoordinate f i).value =
      WalshFourier.projection f (WalshFourier.frequencyOfIndex n i) := rfl

/-- The indexed Walsh-Fourier spectrum. -/
def WalshFourier.indexedSpectrum {n : Nat}
    (f : WalshFourier.Function n) :
    List (WalshFourier.IndexedSpectralCoordinate n) :=
  (List.finRange (2 ^ n)).map
    (fun i => WalshFourier.indexedCoordinate f i)

/-- A finite evaluation vector of `f`, indexed by hypercube vertex number. -/
def WalshFourier.evaluationVector {n : Nat}
    (f : WalshFourier.Function n) :
    Fin (2 ^ n) → Int :=
  fun i => f (Hypercube.pointOfIndex n i.val)

/-- A finite Walsh character vector, indexed by hypercube vertex number. -/
def WalshFourier.characterVector {n : Nat}
    (S : WalshFourier.Frequency n) :
    Fin (2 ^ n) → Int :=
  fun i => WalshFourier.character S (Hypercube.pointOfIndex n i.val)

/--
A Walsh matrix has rows indexed by frequencies and columns indexed by samples.

Entry `(S, x)` is `χ_S(x)`.
-/
def WalshFourier.walshMatrix (n : Nat) :
    Fin (2 ^ n) → Fin (2 ^ n) → Int :=
  fun S x =>
    WalshFourier.character
      (WalshFourier.frequencyOfIndex n S)
      (Hypercube.pointOfIndex n x.val)

/-- Row `S` of the Walsh matrix is the Walsh character vector at frequency `S`. -/
theorem WalshFourier.walshMatrix_row_eq_characterVector
    (n : Nat)
    (S : Fin (2 ^ n)) :
    (fun x => WalshFourier.walshMatrix n S x) =
      WalshFourier.characterVector (WalshFourier.frequencyOfIndex n S) := by
  rfl

/--
The spectral coordinate is the normalized projection of the evaluation vector
onto the Walsh character axis.
-/
theorem WalshFourier.projection_is_normalized_innerProduct {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projection f S =
      { numerator := WalshFourier.innerProduct f (WalshFourier.characterFunction S)
        exponent := n } := by
  rfl

/--
The zero-frequency coordinate is the normalized sum of the function values.

Since `χ_∅(x) = 1`, this is the average component of the spectrum.
-/
def WalshFourier.averageCoordinate {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.CoordinateValue :=
  WalshFourier.projection f (WalshFourier.zeroFrequency n)

/--
The top-degree coordinate is the projection onto the full parity character
`χ_[n](x) = x₀x₁...xₙ₋₁`.
-/
def WalshFourier.fullParityCoordinate {n : Nat}
    (f : WalshFourier.Function n) :
    WalshFourier.CoordinateValue :=
  WalshFourier.projection f (WalshFourier.fullFrequency n)

/--
Spectral support predicate: a frequency is active when its Walsh coordinate has
nonzero numerator.
-/
def WalshFourier.IsActive {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    Prop :=
  (WalshFourier.projection f S).numerator ≠ 0

/-- Indexed spectral support predicate. -/
def WalshFourier.IsActiveIndex {n : Nat}
    (f : WalshFourier.Function n)
    (i : Fin (2 ^ n)) :
    Prop :=
  (WalshFourier.indexedCoordinate f i).value.numerator ≠ 0

/--
A compact algebraic description of one Walsh-Fourier term:

`value · χ_frequency`.
-/
structure WalshFourier.WalshTerm (n : Nat) where
  frequency : WalshFourier.Frequency n
  value : WalshFourier.CoordinateValue

/-- Convert a coordinate into its corresponding Walsh polynomial term. -/
def WalshFourier.termOfCoordinate {n : Nat}
    (c : WalshFourier.SpectralCoordinate n) :
    WalshFourier.WalshTerm n where
  frequency := c.frequency
  value := c.value

/-- Walsh-Fourier polynomial as the list of all spectral terms. -/
def WalshFourier.polynomial {n : Nat}
    (f : WalshFourier.Function n) :
    List (WalshFourier.WalshTerm n) :=
  (WalshFourier.spectrum f).map WalshFourier.termOfCoordinate

end Surface.Boolean.Cube
```
