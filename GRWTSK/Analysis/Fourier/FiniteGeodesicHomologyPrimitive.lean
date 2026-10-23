/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib finite sums, integers and group homomorphisms retain attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#704; parent PR #700 exact head
2949a153ebb8553284757687ac83d45d64aac01e.
-/
import GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive
import GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate

/-!
# Source-bound signed homology as a sufficient primitive-word certificate

An actual group homomorphism h : G →* Multiplicative ℤ witnesses
non-proper-power status when its value on the word is a unit ±1.

To connect that algebraic fact to the PREEXISTING finite trace source,
the caller MUST prove the character value equals a finite signed
integer-linear combination of the packet's actual homology coordinates
for every successfully decoded source ID.

The resulting finite word-decoder gate constructs the former #694
ConjugacySoundWordGate and discharges its primitive-acceptance field
from this independently checked arithmetic data, rather than
requiring a bare unstructured primitive proof for every code.

A primitive separating geodesic can have zero homology: this witness is
SUFFICIENT but emphatically NOT NECESSARY or exhaustive. Actual surface
abelianization, marked coordinate authenticity, group/conjugacy
algorithms and real geodesic source completeness remain external.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteGeodesicHomologyPrimitive

open scoped BigOperators
open GRWTSK.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive
open GRWTSK.Analysis.Fourier.FiniteGeodesicWordCover
open GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate
open GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket
open GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport
open GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage
open GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

variable {Alphabet γ G : Type*} {m L : ℕ}

/-- A signed integral linear pairing with the ORIGINAL packet homology,
not a freely substituted integer or a modular reduction. The weights
need not be coordinate projections: Bezout combinations detect primitive
homology vectors whose individual coordinates are all nonunits. -/
def signedHomologyPairing
    (coeff : Fin m → ℤ) (homology : Fin m → ℤ) : ℤ :=
  ∑ i : Fin m, coeff i * homology i

/-- Zero homology cannot provide an integer-unit primitive certificate,
regardless of the selected coefficients. This is a limitation of the
method, NOT a theorem that zero-homology elements are nonprimitive. -/
theorem zero_homology_pairing_zero (coeff : Fin m → ℤ) :
    signedHomologyPairing coeff (fun _ => 0) = 0 := by
  simp [signedHomologyPairing]

/-- The actual bound-word decoder from #687, group conjugacy source map
from #694, and TRUE group-to-integer homomorphism are separate data.

source_pairing prevents an unrelated integer observation from being
called the homology of the group word: every accepted word must map to
the precise signed pairing of the exact source packet t.homology a.

accepted_unit_pairing is an arithmetic/certificate proposition on the
actual finite signed combination. It is NOT automatic for all primitive
conjugacy classes, and supplies no computational decision procedure by
itself. -/
structure SignedHomologyWordGate
    (t : TraceShapedInput γ m)
    (Alphabet : Type*) [Fintype Alphabet]
    (L : ℕ) (B : ℝ) (G : Type*) [Group G] where
  finiteGate : BoundedWordGeometricGate t Alphabet L B
  letterValue : Alphabet → G
  sourceOfClass : ConjClasses G → Option γ
  decode_from_class : ∀ w : BoundedWord Alphabet L,
    finiteGate.decode w =
      sourceOfClass (conjugacyClassOfWord letterValue (letters w))
  functional : IntegerCharacter G
  coeff : Fin m → ℤ
  source_pairing : ∀ (w : BoundedWord Alphabet L) (a : γ),
    finiteGate.decode w = some a →
      (functional (evalWord letterValue (letters w))).toAdd =
        signedHomologyPairing coeff (t.homology a)
  accepted_unit_pairing : ∀ (w : BoundedWord Alphabet L) (a : γ),
    finiteGate.decode w = some a →
      IsUnit (signedHomologyPairing coeff (t.homology a))

/-- The arithmetic source matching and unit hypothesis yield a genuine
group-level primitive certificate for each accepted code. This is the
one missing field of the older #694 source-facing gate. -/
theorem accepted_isPrimitive_of_signedHomology
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) (a : γ)
    (ha : g.finiteGate.decode w = some a) :
    IsPrimitiveConjugacy (evalWord g.letterValue (letters w)) := by
  have hu : IsUnit
      (g.functional (evalWord g.letterValue (letters w))).toAdd := by
    rw [g.source_pairing w a ha]
    exact g.accepted_unit_pairing w a ha
  exact isPrimitiveConjugacy_of_unit_integerValue g.functional hu

/-- Reuse the existing group-conjugacy decoder **without** demanding a
separate opaque primitive-status proof from the caller. -/
def toConjugacySoundWordGate
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G) :
    ConjugacySoundWordGate t Alphabet L B G where
  finiteGate := g.finiteGate
  letterValue := g.letterValue
  sourceOfClass := g.sourceOfClass
  decode_from_class := g.decode_from_class
  accepted_primitive := by
    intro w a ha
    exact accepted_isPrimitive_of_signedHomology t g w a ha

/-- Unit homology source certificates inherit the logically mandatory
rejection of the empty word, regardless of arbitrary finite decoding. -/
theorem empty_word_rejected_of_signedHomology
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L)
    (hw : letters w = []) :
    g.finiteGate.decode w = none := by
  exact decode_none_of_empty_letters t
    (toConjugacySoundWordGate t g) w hw

/-- A repeated word w++w is a group square and cannot receive a
primitive source ID under a genuine signed homology witness. -/
theorem repeated_word_rejected_of_signedHomology
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) (u : List Alphabet)
    (hw : letters w = u ++ u) :
    g.finiteGate.decode w = none := by
  exact decode_none_of_repeated_word t
    (toConjugacySoundWordGate t g) w u hw

/-- Actual conjugacy-class factorization still identifies cyclically
split word codes as the same optional SOURCE ID. -/
theorem cyclic_split_decoder_agreement_of_signedHomology
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G)
    (w₁ w₂ : BoundedWord Alphabet L) (u v : List Alphabet)
    (hw₁ : letters w₁ = u ++ v)
    (hw₂ : letters w₂ = v ++ u) :
    g.finiteGate.decode w₁ = g.finiteGate.decode w₂ := by
  exact decode_cyclicSplit_eq t
    (toConjugacySoundWordGate t g) w₁ w₂ u v hw₁ hw₂

/-- The old finite trace error bound remains available with *all*
its actual Fourier-support, finite universe, cutoff and q-alias data.
A homological primitive witness does not erase any analytic error. -/
theorem signed_homology_trace_error_le_alias
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : SignedHomologyWordGate t Alphabet L B G)
    (c : FiniteFourierSupportCertificate (selectedInput t g.finiteGate))
    (hB : c.radius = B)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff (selectedInput t g.finiteGate) c K) :
    ‖torsionProjection q (tracePacket (selectedInput t g.finiteGate) K) -
      integralProjection (tracePacket
        (fullInput (selectedInput t g.finiteGate)
          (originalUniverse t g.finiteGate)) M)‖ ≤
      aliasMass q (tracePacket (selectedInput t g.finiteGate) K) :=
  conjugacy_sound_trace_error_le_alias
    t (toConjugacySoundWordGate t g) c hB q hKM hK

/-!
## A bounded arithmetic (not geometric) Bezout fixture

The vector (2,3) has no coordinate ±1, yet
  (-1)*2 + 1*3 = 1.
The signed pairing can therefore certify a primitive integral
homology vector through a linear functional where a single-coordinate
test would fail. This does NOT instantiate a genuine surface group.
-/

/-- Signed integer coefficients (-1,1). -/
def toyBezoutCoefficients : Fin 2 → ℤ :=
  fun i => if i = 0 then -1 else 1

/-- An integral vector (2,3) with no unit individual coordinate. -/
def toyBezoutHomology : Fin 2 → ℤ :=
  fun i => if i = 0 then 2 else 3

/-- The actual finite signed pairing is exactly +1. -/
theorem toyBezout_pairing_one :
    signedHomologyPairing toyBezoutCoefficients toyBezoutHomology = 1 := by
  norm_num [signedHomologyPairing, Fin.sum_univ_two,
    toyBezoutCoefficients, toyBezoutHomology]

/-- Arithmetic positive fixture: the vector's signed pairing is a unit. -/
theorem toyBezout_pairing_unit :
    IsUnit (signedHomologyPairing toyBezoutCoefficients toyBezoutHomology) := by
  rw [toyBezout_pairing_one]
  exact isUnit_one

/-- Both raw coordinates are NONUNITS, so merely looking for an
individual ±1 coordinate would miss this arithmetic certificate. -/
theorem toyBezout_coordinates_nonunit :
    ¬ IsUnit (toyBezoutHomology 0) ∧
      ¬ IsUnit (toyBezoutHomology 1) := by
  constructor <;> norm_num [toyBezoutHomology, Int.isUnit_iff]

end GRWTSK.Analysis.Fourier.FiniteGeodesicHomologyPrimitive
