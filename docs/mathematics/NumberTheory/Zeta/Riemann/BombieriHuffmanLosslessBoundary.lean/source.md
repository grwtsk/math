# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d20b7c1af47bfeb31b1b2dbb11ac96957e6d1f3d` · SHA-256 `6f2e6ab82d7aa05e568bd617696810c031c5cfc21383ee3cdd939d5a364c402f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This source is an isolated paper-context comparison; do not import from
GRWTSK.lean until a pinned warning-clean build, fresh kernel replay and
full transitive axiom audit have accepted it.
-/
import GRWTSK.InformationTheory.Huffman.RoundTrip
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

set_option autoImplicit false

/-!
# Lossless byte packets versus loss of a canonical two-moment profile

Huffman (1952) supplies the finite-alphabet coding-method context.
Bombieri (2000, section V) supplies the two displayed zero-moment
conditions. The *exact* formal source objects below are different.

The already defined byte packet encoder has a concrete decoder, proved
by the source Huffman development from its stored frequencies and bits.
Conversely, the actual stage-2/3/4 Bombieri ordinary/reciprocal moment
profile identifies a nonzero cofactor vector and zero. No decoder for
the original three-dimensional coefficient vector exists after those
two measurements -- even after arbitrary further postprocessing.

This obstruction does NOT say that Huffman compression is heat flow,
that the missing coefficient is a zeta zero, that the source arithmetic
Gram equals the classical Weil form, or that RH is true or false.
The byte-packet theorem does NOT establish minimum expected code length.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- A literal, total lossless encoder comes equipped with a total left
inverse on every possible source. This is a mathematical existence
property, not a compression-rate, computability or runtime guarantee. -/
def HasTotalLosslessDecoder {X Y : Type*} (encoding : X → Y) : Prop :=
  ∃ decoder : Y → X, Function.LeftInverse decoder encoding

/-- Any encoding admitting a left inverse is injective. -/
theorem injective_of_hasTotalLosslessDecoder
    {X Y : Type*} {encoding : X → Y}
    (h : HasTotalLosslessDecoder encoding) :
    Function.Injective encoding := by
  obtain ⟨decoder, hleft⟩ := h
  intro x y hxy
  calc
    x = decoder (encoding x) := (hleft x).symm
    _ = decoder (encoding y) := by rw [hxy]
    _ = y := hleft y

/-- The actual self-describing Huffman packet encodes every finite
List UInt8 and decodes it exactly. Its packet stores weight metadata,
byte/bit lengths and packed bits, not a copy of the source or tree.
The result consumes the existing source proof of decode_encode; it
does NOT prove Huffman's external optimality statement. -/
theorem huffman_bytes_have_total_lossless_decoder :
    HasTotalLosslessDecoder
      (GRWTSK.InformationTheory.Huffman.encode : List UInt8 →
        GRWTSK.InformationTheory.Huffman.Packet) := by
  refine ⟨fun packet =>
    (GRWTSK.InformationTheory.Huffman.decode packet).getD [], ?_⟩
  intro source
  simp [GRWTSK.InformationTheory.Huffman.decode_encode]

/-- The two actual canonical Bombieri moments alone are not a
lossless encoding of all three source coefficients. The witness is
the *same* nonzero corrected cofactor vector and the zero vector. -/
theorem two_bombieri_moments_have_no_total_lossless_decoder :
    ¬ HasTotalLosslessDecoder bombieriMomentProfile := by
  intro h
  exact bombieriMomentProfile_not_injective
    (injective_of_hasTotalLosslessDecoder h)

/-- No arbitrary transformation (including a variable-length
bit-packet/codec) of only the two moments can restore the missing
source coefficient. The postprocessor is NOT assumed computable,
injective, linear, continuous or of any particular type.

This obstruction applies to the fixed finite source Combination 2
space and retains both positive-half-line ordinary/reciprocal moments;
it asserts nothing about the full classical Weil test space. -/
theorem no_total_lossless_decoder_from_moment_only_postprocessing
    {Y : Type*} (postprocess : (ℂ × ℂ) → Y) :
    ¬ HasTotalLosslessDecoder
      (fun u : Combination 2 => postprocess (bombieriMomentProfile u)) := by
  intro h
  obtain ⟨decoder, hleft⟩ := h
  have hcollision :
      bombieriMomentProfile correctedCoordinates =
        bombieriMomentProfile (0 : Combination 2) := by
    rw [bombieriMomentProfile_correctedCoordinates,
      bombieriMomentProfile_zero]
  apply correctedCoordinates_ne_zero
  calc
    correctedCoordinates =
        decoder (postprocess (bombieriMomentProfile correctedCoordinates)) :=
      (hleft correctedCoordinates).symm
    _ = decoder (postprocess (bombieriMomentProfile (0 : Combination 2))) := by
      rw [hcollision]
    _ = (0 : Combination 2) := hleft 0

end GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary
```
