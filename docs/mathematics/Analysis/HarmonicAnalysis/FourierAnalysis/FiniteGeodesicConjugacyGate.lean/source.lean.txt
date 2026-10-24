/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib conjugacy quotients and group-theory declarations retain attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#694; parent PR #692 pinned at
4ac69d197da1874cfa5275a78145289c5115f6e2.
-/
import GRWTSK.GroupTheory.Words.PrimitiveConjugacy
import GRWTSK.Analysis.Fourier.FiniteGeodesicWordCover

/-!
# Conjugacy-sound bounded word decoder: a conditional source gate

The parent #687 enumerates ALL finite word codes but only supplies an
arbitrary finite-source Option decoder. This module adds the exact missing
group-theoretic obligations, NOT a conjugacy decision algorithm:

* A group G and letter evaluation into G.
* Every successful source ID factors through Mathlib's ConjClasses G,
  not equality of raw word codes, traces, lengths, or homology.
* Every successful word evaluates to a nonidentity element that is not
  a proper power IN G (not a free-basis primitive element).

These conditions force cyclically split codes to have the same decoder
output, reject the empty word, and reject repeated words. The parent
finite alias-only bound can still be consumed with its other explicit
premises. No group presentation, actual surface or geodesic source is
constructed, and no computational decidability is inferred.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate

open scoped BigOperators
open GRWTSK.GroupTheory.Words.PrimitiveConjugacy
open GRWTSK.Analysis.Fourier.FiniteGeodesicWordCover
open GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket
open GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport
open GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage
open GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

variable {Alphabet γ G : Type*} {m L : ℕ}

/-- A group-theoretically verified layer on an existing finite decoder.
The group and its conjugacy classes are ACTUAL typed mathematical data,
but no field claims that the group is a surface fundamental group.

A sourceOfClass map is given, not computed. ConjClasses G has no
algorithmic decidable equality by default. Decoder factorization through
sourceOfClass does NOT by itself certify hyperbolic length or homology.

The primitive hypothesis is in G, the ACTUAL selected group, not in
an unrelated free monoid. No effective proper-power test is built here. -/
structure ConjugacySoundWordGate
    (t : TraceShapedInput γ m) (Alphabet : Type*) [Fintype Alphabet]
    (L : ℕ) (B : ℝ) (G : Type*) [Group G] where
  finiteGate : BoundedWordGeometricGate t Alphabet L B
  letterValue : Alphabet → G
  sourceOfClass : ConjClasses G → Option γ
  decode_from_class : ∀ w : BoundedWord Alphabet L,
    finiteGate.decode w =
      sourceOfClass (conjugacyClassOfWord letterValue (letters w))
  accepted_primitive : ∀ (w : BoundedWord Alphabet L) (a : γ),
    finiteGate.decode w = some a →
      IsPrimitiveConjugacy (evalWord letterValue (letters w))

/-- The actual evaluation of a bounded word depends only on its
letter list, not the dependent presentation of the length. -/
def evaluatedCode
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) : G :=
  evalWord g.letterValue (letters w)

/-- An accepted source code cannot evaluate to the group identity.
This is a derived hostile guard, not a user-supplied boolean. -/
theorem accepted_code_ne_one
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) (a : γ)
    (ha : g.finiteGate.decode w = some a) :
    evaluatedCode t g w ≠ 1 :=
  (g.accepted_primitive w a ha).1

/-- The empty word cannot be accepted when group evaluation is
required to produce a genuine nonidentity primitive group element. -/
theorem decode_none_of_empty_letters
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) (hw : letters w = []) :
    g.finiteGate.decode w = none := by
  cases hd : g.finiteGate.decode w with
  | none => rfl
  | some a =>
      have hne := accepted_code_ne_one t g w a hd
      have hone : evaluatedCode t g w = 1 := by
        simp [evaluatedCode, hw]
      exact (hne hone).elim

/-- A proper-power word made from a repeated segment cannot be
decoded as primitive under this group-theoretic gate. -/
theorem decode_none_of_repeated_word
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w : BoundedWord Alphabet L) (u : List Alphabet)
    (hw : letters w = u ++ u) :
    g.finiteGate.decode w = none := by
  cases hd : g.finiteGate.decode w with
  | none => rfl
  | some a =>
      have hprim : IsPrimitiveConjugacy
          (evalWord g.letterValue (u ++ u)) := by
        simpa only [hw] using g.accepted_primitive w a hd
      exact ((repeated_word_not_primitive g.letterValue u) hprim).elim

/-- Two codes which differ by cyclically splitting the same letter
sequence must decode to THE SAME optional source ID. This is a
mathematically proved requirement, not a claim that cyclic splitting
decides all conjugacies. Inverse-word orientation is separate. -/
theorem decode_cyclicSplit_eq
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (w₁ w₂ : BoundedWord Alphabet L) (u v : List Alphabet)
    (hw₁ : letters w₁ = u ++ v)
    (hw₂ : letters w₂ = v ++ u) :
    g.finiteGate.decode w₁ = g.finiteGate.decode w₂ := by
  have hclass :
      conjugacyClassOfWord g.letterValue (letters w₁) =
        conjugacyClassOfWord g.letterValue (letters w₂) := by
    rw [hw₁, hw₂]
    exact conjugacyClassOfWord_cyclicSplit g.letterValue u v
  calc
    g.finiteGate.decode w₁ =
        g.sourceOfClass (conjugacyClassOfWord g.letterValue (letters w₁)) :=
      g.decode_from_class w₁
    _ = g.sourceOfClass (conjugacyClassOfWord g.letterValue (letters w₂)) :=
      congrArg g.sourceOfClass hclass
    _ = g.finiteGate.decode w₂ := (g.decode_from_class w₂).symm

/-- The original #687 concrete finite coverage theorem remains
available under this strengthened group-theoretic source profile:
the group data alone do not provide a new Fourier support certificate
or discharge q-modular aliases. -/
theorem conjugacy_sound_trace_error_le_alias
    [Fintype Alphabet] [Group G]
    (t : TraceShapedInput γ m)
    {B : ℝ} (g : ConjugacySoundWordGate t Alphabet L B G)
    (c : FiniteFourierSupportCertificate (selectedInput t g.finiteGate))
    (hB : c.radius = B)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff (selectedInput t g.finiteGate) c K) :
    ‖torsionProjection q (tracePacket (selectedInput t g.finiteGate) K) -
      integralProjection (tracePacket
        (fullInput (selectedInput t g.finiteGate)
          (originalUniverse t g.finiteGate)) M)‖ ≤
      aliasMass q (tracePacket (selectedInput t g.finiteGate) K) :=
  bounded_word_trace_error_le_alias t g.finiteGate c hB q hKM hK

/-- The positive #687 word-code toy decodes the empty word to a
PUnit source. Therefore it CANNOT be promoted to any sound gate whose
accepted elements must be nonidentity primitive group elements.
The toy remains valid only for its earlier finite-algebra purpose. -/
theorem toy_always_accept_word_gate_not_geometrically_sound
    (G : Type*) [Group G]
    (g : ConjugacySoundWordGate toyTraceInput Bool 1 2 G)
    (hbase : g.finiteGate = toyWordGate) : False := by
  have hEmpty : letters (emptyWord Bool 1) = [] := by
    simp [letters, emptyWord]
  have hreject := decode_none_of_empty_letters
    toyTraceInput g (emptyWord Bool 1) hEmpty
  have haccept : g.finiteGate.decode (emptyWord Bool 1) = some PUnit.unit := by
    rw [hbase]
    rfl
  rw [haccept] at hreject
  cases hreject

end GRWTSK.Analysis.Fourier.FiniteGeodesicConjugacyGate
