/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Combinatorics.Lossless
import GRWTSK.ComputerScience.TheoryOfSoftware.FunctionalProgrammingAndLambdaCalculus.OutcomeComposition
import GRWTSK.NumericalAnalysis.AlgebraicDecoderDyad
import GRWTSK.NumericalAnalysis.AlgebraicDecoderTwoByte
import Mathlib.RingTheory.Ideal.Quotient.Operations

/-!
# An exact decoding root over a finite branched circuit

A decoding root fixes the profile and packet. Phases evaluate typed operations,
and the reconstruction branches share a full-precision inverse and both packet
residues. The dyad is their pair of sections with exact overlap agreement.

The two-byte consumer uses the left inverse in Lossless. Every section with
the specified boundary has the same gate outputs by substitution through the
quadratic, quintic and coefficient equations. The exact section is inhabited
by the forward evaluation. Byte admission then gives the original source on
the encoder image, and rejects the packet reconstructing coefficient 256.

Work units count the four circuit phase calls and two byte admission tests.
Slots count retained arithmetic wires in the declared circuit model. These
bounds do not price the implementation of scalar arithmetic or heap use.
The serialized profile adds two canonical residue admission tests and four
byte slots. It composes the four-byte wire format with the two-byte recovery
theorem. The four-byte payload illustrates correctness; a Huffman container
and a size selector would be separate consumers. AI-assisted formalization.
Novelty and independent review are unassessed.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.AlgebraicDecoder

open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory (Lossless)
open GRWTSK.NumericalAnalysis.PolynomialCircuit (Circuit Open Section InverseOrder)

universe u v

structure Budget where
  work : Nat
  slots : Nat
  deriving DecidableEq, Repr

def Budget.Covers (available cost : Budget) : Prop :=
  cost.work ≤ available.work ∧ cost.slots ≤ available.slots

instance (available cost : Budget) : Decidable (available.Covers cost) :=
  inferInstanceAs (Decidable (_ ∧ _))

def Budget.dyadic (workExponent slots : Nat) : Budget :=
  ⟨2 ^ workExponent, slots⟩

inductive Refusal
  | unsupported
  | exhausted
  deriving DecidableEq, Repr

inductive Failure
  | invalidInput
  | inconclusive
  deriving DecidableEq, Repr

abbrev Outcome (A : Type*) := GRWTSK.Processing.Outcome Refusal Failure A

/-- A phase is a total certified operation at its declared cost in the gate model. -/
structure Phase (I : Type u) (O : Type v) (relation : I → O → Prop) where
  cost : Budget
  evaluate : (input : I) → { output : O // relation input output }

def Phase.run {I : Type u} {O : Type v} {relation : I → O → Prop}
    (phase : Phase I O relation) (limit : Budget) (input : I) :
    Outcome { output : O // relation input output } :=
  if limit.Covers phase.cost then .success (phase.evaluate input) else .refused .exhausted

structure EncodingProfile (Source : Type u) (Packet : Type v) where
  version : Nat
  code : Lossless Source Packet
  cost : Budget

/-- Top-level recovery obligation for one encoded packet and its supplied limits. -/
structure Root {Source : Type u} {Packet : Type v}
    (profile : EncodingProfile Source Packet) (packet : Packet) where
  limits : Budget

/-- An algebraic zero is a witness for evaluation in its polynomial's coefficient ring. -/
abbrev ZeroWitness {R : Type u} [Semiring R] (f : Polynomial R) :=
  { point : R // f.eval point = 0 }

def Root.run {Source : Type u} {Packet : Type v} {profile : EncodingProfile Source Packet}
    {packet : Packet} (root : Root profile packet) : Outcome Source :=
  if root.limits.Covers profile.cost then
    match profile.code.decode packet with
    | some source => .success source
    | none => .failed .invalidInput
  else .refused .exhausted

theorem Root.run_roundtrip {Source : Type u} {Packet : Type v}
    (profile : EncodingProfile Source Packet) (source : Source) (limits : Budget)
    (enough : limits.Covers profile.cost) :
    (Root.mk limits : Root profile (profile.code.encode source)).run = .success source := by
  simp [run, enough, profile.code.roundtrip]

/-- The comaximal polynomial factors supply an exact reversible CRT decomposition.
See Stacks Project, Lemma 10.15.4 (tag 00DT). -/
noncomputable def factorEquiv {R : Type u} [CommRing R]
    (g h : Polynomial R) (coprime : IsCoprime g h) :
    (Polynomial R ⧸ Ideal.span {g * h}) ≃+*
      (Polynomial R ⧸ Ideal.span {g}) × (Polynomial R ⧸ Ideal.span {h}) := by
  rw [← Ideal.span_singleton_mul_span_singleton g h]
  exact Ideal.quotientMulEquivQuotientProd _ _ ((Ideal.isCoprime_span_singleton_iff g h).2 coprime)

namespace TwoByte

theorem evaluationFactors_coprime :
    IsCoprime (Polynomial.X - 1 : Polynomial Residue) (Polynomial.X + 1) := by
  refine ⟨-Polynomial.C inverseTwo.value, Polynomial.C inverseTwo.value, ?_⟩
  calc
    _ = Polynomial.C (2 * inverseTwo.value) := by
      rw [map_mul, Polynomial.C_ofNat]
      ring
    _ = 1 := by rw [inverseTwo.right_inverse, map_one]

/-- The data wires of the circuit. The inverse wires have distinct precision types. -/
inductive Wire
  | positive | negative | seed | quadratic | inverse | low | high
  deriving DecidableEq

inductive Gate
  | quadratic | quintic | low | high
  deriving DecidableEq

instance : Fintype Wire := Fintype.ofList
  [.positive, .negative, .seed, .quadratic, .inverse, .low, .high] (by intro w; cases w <;> simp)

instance : Fintype Gate := Fintype.ofList
  [.quadratic, .quintic, .low, .high] (by intro g; cases g <;> simp)

abbrev Jet (n : Nat) := InvJet 7 5 n (2 : Residue)

def Carrier : Wire → Type
  | .seed => Jet 1
  | .quadratic => Jet 2
  | .inverse => Jet 5
  | _ => Residue

def quadraticPhase : Phase (Jet 1) (Jet 2) (fun u v => v = u.refine .quadratic) :=
  ⟨⟨1, 2⟩, fun u => ⟨u.refine .quadratic, rfl⟩⟩

def quinticPhase : Phase (Jet 2) (Jet 5) (fun u v => v = u.refine .quintic) :=
  ⟨⟨1, 2⟩, fun u => ⟨u.refine .quintic, rfl⟩⟩

def coefficient (low : Bool) (p : Packet) (u : Jet 5) : Residue :=
  (if low then p.positive + p.negative else p.positive - p.negative) * u.value

def coefficientPhase (low : Bool) :
    Phase (Packet × Jet 5) Residue (fun x v => v = coefficient low x.1 x.2) :=
  ⟨⟨1, 4⟩, fun x => ⟨coefficient low x.1 x.2, rfl⟩⟩

def touches : Gate → Wire → Prop
  | .quadratic, w => w = .seed ∨ w = .quadratic
  | .quintic, w => w = .quadratic ∨ w = .inverse
  | .low, w => w = .positive ∨ w = .negative ∨ w = .inverse ∨ w = .low
  | .high, w => w = .positive ∨ w = .negative ∨ w = .inverse ∨ w = .high

def circuit : Circuit Wire Gate where
  Carrier := Carrier
  Incidence := touches
  admissible
    | .quadratic, v =>
      v .quadratic (by simp [touches]) =
        (quadraticPhase.evaluate (v .seed (by simp [touches]))).val
    | .quintic, v =>
      v .inverse (by simp [touches]) =
        (quinticPhase.evaluate (v .quadratic (by simp [touches]))).val
    | .low, v =>
      v .low (by simp [touches]) = ((coefficientPhase true).evaluate
        (⟨v .positive (by simp [touches]), v .negative (by simp [touches])⟩,
          v .inverse (by simp [touches]))).val
    | .high, v =>
      v .high (by simp [touches]) = ((coefficientPhase false).evaluate
        (⟨v .positive (by simp [touches]), v .negative (by simp [touches])⟩,
          v .inverse (by simp [touches]))).val

def wireValue (packet : Packet) : (w : Wire) → Carrier w
  | .positive => packet.positive
  | .negative => packet.negative
  | .seed => seedTwo
  | .quadratic => quadraticTwo
  | .inverse => inverseTwo
  | .low => (reconstruct packet).1
  | .high => (reconstruct packet).2

def wholeSection (packet : Packet) : Section (Open.whole circuit) where
  value w _ := wireValue packet w
  obeys := by intro g _; cases g <;> rfl

def lowRegion : Open circuit where
  wires := fun w => w ≠ .high
  gates := fun g => g ≠ .high
  incident := by
    intro g w gLow hw
    cases g <;> cases w <;> simp_all [circuit, touches]

def highRegion : Open circuit := Open.star circuit .high

abbrev branchRegion : Open circuit := unionOpen lowRegion highRegion

private theorem branchToWhole : Open.Included branchRegion (Open.whole circuit) :=
  ⟨fun _ _ => trivial, fun _ _ => trivial⟩

private theorem wholeToBranch : Open.Included (Open.whole circuit) branchRegion := by
  constructor
  · intro w _
    cases w <;> simp [branchRegion, unionOpen, lowRegion, highRegion, Open.star, circuit, touches]
  · intro g _
    cases g <;> simp [branchRegion, unionOpen, lowRegion, highRegion, Open.star]

def branches (packet : Packet) : SectionDyad lowRegion highRegion :=
  SectionDyad.split ((wholeSection packet).restrict branchToWhole)

instance : DecidablePred lowRegion.wires :=
  fun w => inferInstanceAs (Decidable (w ≠ Wire.high))

/-- All wire choices in the low region are decidable, so this join is executable. -/
def join (children : SectionDyad lowRegion highRegion) : Section (Open.whole circuit) :=
  children.merge.restrict wholeToBranch

theorem join_branches (packet : Packet) : join (branches packet) = wholeSection packet := by
  unfold join branches
  rw [SectionDyad.merge_split (U := lowRegion) (V := highRegion), Section.restrict_trans]
  exact Section.ext (fun _ _ => rfl)

def Boundary (s : Section (Open.whole circuit)) (p : Packet) : Prop :=
  s.value .positive trivial = p.positive ∧ s.value .negative trivial = p.negative ∧
  s.value .seed trivial = seedTwo

theorem section_unique (s : Section (Open.whole circuit)) (p : Packet)
    (boundary : Boundary s p) : s = wholeSection p := by
  obtain ⟨hpos, hneg, hseed⟩ := boundary
  have hq := s.obeys .quadratic trivial
  change s.value .quadratic trivial = (s.value .seed trivial).refine .quadratic at hq
  rw [hseed] at hq
  have hv := s.obeys .quintic trivial
  change s.value .inverse trivial = (s.value .quadratic trivial).refine .quintic at hv
  rw [hq] at hv
  let observed : Packet := ⟨s.value .positive trivial, s.value .negative trivial⟩
  have same : observed = p := by
    cases p
    exact congrArg₂ Packet.mk hpos hneg
  have hl : s.value .low trivial = coefficient true observed (s.value .inverse trivial) :=
    s.obeys .low trivial
  have hh : s.value .high trivial = coefficient false observed (s.value .inverse trivial) :=
    s.obeys .high trivial
  rw [same, hv] at hl hh
  apply Section.ext
  intro w _
  cases w
  · exact hpos
  · exact hneg
  · exact hseed
  · exact hq
  · exact hv
  · exact hl
  · exact hh

def readBytes (s : Section (Open.whole circuit)) : Option Source :=
  checkCoefficients (s.value .low trivial, s.value .high trivial)

theorem section_read (s : Section (Open.whole circuit)) (p : Packet)
    (boundary : Boundary s p) : readBytes s = decode p := by
  rw [section_unique s p boundary]
  rfl

/-- The encoded packet admits a section, and every such section recovers the same bytes. -/
theorem reconstruction_contract (source : Source) :
    (∃ s, Boundary s (encode source)) ∧
    ∀ s, Boundary s (encode source) → readBytes s = some source := by
  refine ⟨⟨wholeSection (encode source), rfl, rfl, rfl⟩, ?_⟩
  intro s h
  rw [section_read s (encode source) h, decode_encode]

def profile : EncodingProfile Source Packet :=
  ⟨1, ⟨encode, decode, decode_encode⟩, ⟨Fintype.card Gate + 2, Fintype.card Wire⟩⟩

theorem profile_cost : profile.cost = ⟨6, 7⟩ := by decide

theorem read_joined (p : Packet) : readBytes (join (branches p)) = decode p := by
  rw [join_branches]
  rfl

def packetWireCode : Lossless Packet WirePacket := ⟨pack, parse, parse_pack⟩

/-- Four little-endian bytes represent two canonical residues in the wire profile. -/
def wireProfile : EncodingProfile Source WirePacket :=
  ⟨1, packetWireCode.comp profile.code, ⟨profile.cost.work + 2, profile.cost.slots + 4⟩⟩

theorem wireProfile_cost : wireProfile.cost = ⟨8, 11⟩ := by decide

/-- Parsing and local consistency are separate premises for reading a wire packet. -/
theorem wire_section_read (wire : WirePacket) (packet : Packet)
    (parsed : parse wire = some packet) (s : Section (Open.whole circuit))
    (boundary : Boundary s packet) : readBytes s = wireProfile.code.decode wire := by
  rw [section_read s packet boundary]
  simp [wireProfile, packetWireCode, profile, Lossless.comp, parsed]

theorem wire_reconstruction_contract (source : Source) :
    ∃ packet, parse (wireProfile.code.encode source) = some packet ∧
      (∃ s, Boundary s packet) ∧ ∀ s, Boundary s packet → readBytes s = some source := by
  exact ⟨encode source, parse_pack _, reconstruction_contract source⟩

example : (Root.mk (Budget.dyadic 3 7) : Root profile ⟨5, 16806⟩).run =
    .success ⟨2, 3⟩ := by
  have h : encode ⟨2, 3⟩ = ⟨5, 16806⟩ := by decide
  rw [← h]
  exact Root.run_roundtrip profile ⟨2, 3⟩ _ (by decide)

example : (Root.mk (Budget.dyadic 2 7) : Root profile ⟨5, 16806⟩).run =
    .refused .exhausted := rfl

example : readBytes (join (branches ⟨5, 16806⟩)) = some ⟨2, 3⟩ := by
  rw [read_joined]
  exact (decode_eq_some_iff _ _).2 (by decide)

example : (Root.mk (Budget.dyadic 3 11) : Root wireProfile ⟨5, 0, 166, 65⟩).run =
    .success ⟨2, 3⟩ := by
  have h : wireProfile.code.encode ⟨2, 3⟩ = ⟨5, 0, 166, 65⟩ := by decide
  rw [← h]
  exact Root.run_roundtrip wireProfile ⟨2, 3⟩ _ (by decide)

example : (Root.mk (Budget.dyadic 3 11) : Root wireProfile ⟨167, 65, 0, 0⟩).run =
    .failed .invalidInput := rfl

end TwoByte

end GRWTSK.NumericalAnalysis.AlgebraicDecoder
