/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Finite Sigma/Pi combinatorics and Finset/Option operations: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#687. Parent draft PR #677, exact head
f508f376bad1558440c755003ff65e19c5648612.
-/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteTracePrimitiveCoverage
import Mathlib.Data.Finset.Option
import Mathlib.Data.Fintype.Sigma

/-!
# Exhaustive bounded finite words and a conditional geometric source gate

All words over a finite alphabet of length at most L are represented by
a dependent pair (n, letters), with n <= L. The entire space is finite.

An external geometric supplier must separately give:
1. a decoder from word codes to optional source IDs, with source soundness;
2. a word-encoding witness for every source in the finite universe whose
   length is <= B, with a decoder/encoder round-trip theorem.

An actual decoded source Finset is derived from all codes. Successful
outputs are deduplicated while none outputs are discarded.

No group presentation, conjugacy, primitive geodesic, surface marking,
hyperbolic length-to-word bound, or Selberg trace formula is proved here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteGeodesicWordCover

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteTraceIteratePacket
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteTraceFourierSupport
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteTracePrimitiveCoverage
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteHolonomyAliasing

variable {Alphabet γ : Type*} {m L : ℕ}

/-- All finite words with 0 <= length <= L, including the empty word.
There is no free-group cancellation or cyclic conjugacy quotient. -/
abbrev BoundedWord (Alphabet : Type*) (L : ℕ) : Type _ :=
  Σ n : Fin (L + 1), (Fin n.val → Alphabet)

/-- Exact letter count of the word code. -/
def wordLength (w : BoundedWord Alphabet L) : ℕ := w.1.val

/-- Every encoded word stays within its declared finite length bound. -/
theorem wordLength_le_bound (w : BoundedWord Alphabet L) :
    wordLength w ≤ L := by
  dsimp [wordLength]
  exact Nat.lt_succ_iff.mp w.1.isLt

/-- The empty word is always in the search space. It must not be
identified with a primitive hyperbolic geodesic. -/
def emptyWord (Alphabet : Type*) (L : ℕ) : BoundedWord Alphabet L :=
  ⟨⟨0, Nat.zero_lt_succ L⟩, fun i => Fin.elim0 i⟩

@[simp] theorem emptyWord_length (Alphabet : Type*) (L : ℕ) :
    wordLength (emptyWord Alphabet L) = 0 := rfl

/-- Concrete list of letters, with no reduction/normal form claim. -/
def letters (w : BoundedWord Alphabet L) : List Alphabet :=
  List.ofFn w.2

@[simp] theorem letters_length (w : BoundedWord Alphabet L) :
    (letters w).length = wordLength w := by
  simp [letters, wordLength]

/-- The finite word-space cardinality is a geometric sum of alphabet
powers. It is NOT a count of primitive or conjugacy classes. -/
theorem card_boundedWord (Alphabet : Type*) [Fintype Alphabet] (L : ℕ) :
    Fintype.card (BoundedWord Alphabet L) =
      ∑ n : Fin (L + 1), (Fintype.card Alphabet) ^ n.val := by
  classical
  simp [BoundedWord, Fintype.card_sigma, Fintype.card_fun]

/-- The independent source and decoding obligations. The base
primitiveCandidates field is only a FINITE SUPPLIED UNIVERSE.
No source in it is certified geometrically by this structure alone.

short_has_code is the missing geometric word-length theorem, not
an already-proved result. The round trip protects the exact source ID,
not merely a similar trace or an arbitrary conjugate. -/
structure BoundedWordGeometricGate
    (t : TraceShapedInput γ m) (Alphabet : Type*) [Fintype Alphabet]
    (L : ℕ) (B : ℝ) where
  decode : BoundedWord Alphabet L → Option γ
  encode : γ → Option (BoundedWord Alphabet L)
  decode_sound : ∀ w a, decode w = some a → a ∈ t.primitiveCandidates
  short_has_code : ∀ a ∈ t.primitiveCandidates,
    t.length a ≤ B → ∃ w, encode a = some w
  decode_encode : ∀ a w, encode a = some w → decode w = some a

/-- Construct the finite set of ALL successfully decoded word codes.
Finset.filterMap would incorrectly require decoder injectivity.
Image into Option followed by eraseNone permits many words per source. -/
def decodedCandidates
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) : Finset γ := by
  classical
  exact ((Finset.univ : Finset (BoundedWord Alphabet L)).image g.decode).eraseNone

/-- Membership is precisely existence of one successful bounded word. -/
theorem mem_decodedCandidates_iff
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) (a : γ) :
    a ∈ decodedCandidates t g ↔
      ∃ w : BoundedWord Alphabet L, g.decode w = some a := by
  classical
  simp [decodedCandidates]

/-- Successful decoded words stay within the already named source
universe. This is not yet primitive/geometric soundness. -/
theorem decodedCandidates_subset
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    decodedCandidates t g ⊆ t.primitiveCandidates := by
  intro a ha
  rcases (mem_decodedCandidates_iff t g a).mp ha with ⟨w, hw⟩
  exact g.decode_sound w a hw

/-- Deduplicated decoded source count is at most the finite code count,
even with multiple words for the same candidate ID. -/
theorem decodedCandidates_card_le_codes
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    (decodedCandidates t g).card ≤ Fintype.card (BoundedWord Alphabet L) := by
  classical
  unfold decodedCandidates
  calc
    (((Finset.univ : Finset (BoundedWord Alphabet L)).image g.decode).eraseNone).card
        ≤ ((Finset.univ : Finset (BoundedWord Alphabet L)).image g.decode).card :=
      Finset.card_eraseNone_le _
    _ ≤ (Finset.univ : Finset (BoundedWord Alphabet L)).card :=
      Finset.card_image_le
    _ = Fintype.card (BoundedWord Alphabet L) := Finset.card_univ

/-- A finite explicit search-size bound; no geometric completeness is
deduced from this combinatorial count. -/
theorem decodedCandidates_card_le_word_sum
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    (decodedCandidates t g).card ≤
      ∑ n : Fin (L + 1), (Fintype.card Alphabet) ^ n.val := by
  exact (decodedCandidates_card_le_codes t g).trans_eq
    (card_boundedWord Alphabet L)

/-- Select exactly the successful decoded candidate IDs while retaining
the source universe's original homology, length, Fourier test and target. -/
def selectedInput
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    TraceShapedInput γ m where
  primitiveCandidates := decodedCandidates t g
  homology := t.homology
  length := t.length
  length_pos := by
    intro a ha
    exact t.length_pos a (decodedCandidates_subset t g ha)
  fourierTest := t.fourierTest
  target := t.target

/-- The original finite universe remains a proved extension of the
enumerated selected family, changing no homology/length/test data. -/
def originalUniverse
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    FinitePrimitiveUniverse (selectedInput t g) where
  allCandidates := t.primitiveCandidates
  selected_subset := decodedCandidates_subset t g
  length_pos := by
    intro a ha
    exact t.length_pos a ha

/-- Complete coverage of all short IDs IN THE SUPPLIED FINITE UNIVERSE,
derived from the external encoder's length theorem and exact round trip. -/
theorem decodedCandidates_cover_short_sources
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    CoversContributingCandidates (selectedInput t g)
      (originalUniverse t g) B := by
  intro a ha hlen
  change a ∈ decodedCandidates t g
  obtain ⟨w, hw⟩ := g.short_has_code a ha hlen
  exact (mem_decodedCandidates_iff t g a).mpr
    ⟨w, g.decode_encode a w hw⟩

/-- The precise existing #674 consumer: separately certified uniform
Fourier support and finite word coverage eliminate BOTH finite omission
budgets. NoAlias is NOT assumed, so the modular alias mass remains. -/
theorem bounded_word_trace_error_le_alias
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B)
    (c : FiniteFourierSupportCertificate (selectedInput t g))
    (hB : c.radius = B)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff (selectedInput t g) c K) :
    ‖torsionProjection q (tracePacket (selectedInput t g) K) -
      integralProjection (tracePacket
        (fullInput (selectedInput t g) (originalUniverse t g)) M)‖ ≤
      aliasMass q (tracePacket (selectedInput t g) K) := by
  have hcover : CoversContributingCandidates (selectedInput t g)
      (originalUniverse t g) c.radius := by
    rw [hB]
    exact decodedCandidates_cover_short_sources t g
  exact finite_full_universe_error_le_alias_of_support
    (selectedInput t g) (originalUniverse t g) c q hKM hK hcover

/-- A total rejection decoder is incompatible with the promised
source-encoding/round-trip condition whenever even one short source
exists in the supplied universe. Vacuous empty-short-range cases are
still allowed and must not be called an accepted geometric enumeration. -/
theorem always_reject_incompatible_with_short_source
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B)
    (a : γ) (ha : a ∈ t.primitiveCandidates)
    (hlen : t.length a ≤ B)
    (hall : ∀ w : BoundedWord Alphabet L, g.decode w = none) : False := by
  obtain ⟨w, hw⟩ := g.short_has_code a ha hlen
  have hdecode := g.decode_encode a w hw
  rw [hall w] at hdecode
  cases hdecode

/-!
## Explicit finite positive and hostile examples

These deliberately use an abstract PUnit source and the nonsmooth
toyTraceInput from #665. They do not describe a primitive geodesic.
They demonstrate that many different finite codes may decode to the
SAME source ID, and that the decoder's derived Finset deduplicates it.
-/

/-- A nonvacuous finite decoder that maps every word to the same
one-element abstract source. It is intentionally NOT injective. -/
def toyWordGate : BoundedWordGeometricGate toyTraceInput Bool 1 2 where
  decode := fun _ => some PUnit.unit
  encode := fun _ => some (emptyWord Bool 1)
  decode_sound := by
    intro w a hw
    simp [toyTraceInput]
  short_has_code := by
    intro a ha hlen
    exact ⟨emptyWord Bool 1, rfl⟩
  decode_encode := by
    intro a w hw
    cases a
    rfl

/-- The single Boolean letter code at length one. -/
def toyOneLetter : BoundedWord Bool 1 :=
  ⟨⟨1, by decide⟩, fun _ => true⟩

/-- Two distinct word codes give the same output. This prevents
incorrect reliance on injective Finset.filterMap decoding. -/
theorem toy_distinct_codes_same_output :
    toyWordGate.decode (emptyWord Bool 1) = toyWordGate.decode toyOneLetter ∧
      emptyWord Bool 1 ≠ toyOneLetter := by
  constructor
  · rfl
  · intro h
    have hlen := congrArg (fun w : BoundedWord Bool 1 => wordLength w) h
    norm_num [wordLength, emptyWord, toyOneLetter] at hlen

/-- The decoded candidate family is a singleton, despite multiple
distinct successful word encodings. -/
theorem toy_decodedCandidates_eq_univ :
    decodedCandidates toyTraceInput toyWordGate =
      (Finset.univ : Finset PUnit) := by
  classical
  ext a
  constructor
  · intro ha
    exact Finset.mem_univ a
  · intro ha
    cases a
    exact (mem_decodedCandidates_iff toyTraceInput toyWordGate PUnit.unit).mpr
      ⟨emptyWord Bool 1, rfl⟩


end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteGeodesicWordCover
