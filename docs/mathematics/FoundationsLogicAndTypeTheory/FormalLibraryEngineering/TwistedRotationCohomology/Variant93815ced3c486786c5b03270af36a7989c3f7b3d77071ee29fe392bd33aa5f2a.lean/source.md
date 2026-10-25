# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwistedRotationCohomology.Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `515f39b1862dfff8dd828ed7b8be3b00690a9fac` · SHA-256 `6780756f5b165a8e54f976f194e507af269ad2c0a4e8189e6b4e455928480ac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CyclicRotationAction.Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CyclicRotationAction.Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Naming/TwistedRotationCohomology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.CyclicCubical

/-!
# Rotation-local coefficients on naming-event squares

An edge carries both a cyclic turn label and an additive equivalence between
its endpoint fibers.  Flat squares require equality of the two turn
holonomies and equality of the two composed transports.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CyclicRotationAction.Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8

namespace Mathematics.Oracle.Naming

variable {n : Nat} [NeZero n]
variable {A : Type*} [AddCommGroup A]

/-- An additive representation of the cyclic turn group on one coefficient fiber. -/
structure CyclicRotationAction (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] where
  transport : ZMod n → A ≃+ A
  transport_zero : transport 0 = AddEquiv.refl A
  transport_add :
    ∀ r s, transport (r + s) = (transport r).trans (transport s)

/-- A naming-event edge with cyclic label and local-system transport. -/
structure RotationLabelledNamingEdge (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] where
  source : NamingVertex
  target : NamingVertex
  turn : ZMod n
  transport : A ≃+ A

/--
An oriented event square.  The fields identify its four corners and certify
flat turn and transport holonomy.
-/
structure FlatRotationSquare (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] where
  rotationAction : CyclicRotationAction n A
  e0 : RotationLabelledNamingEdge n A
  e1 : RotationLabelledNamingEdge n A
  e2 : RotationLabelledNamingEdge n A
  e3 : RotationLabelledNamingEdge n A
  e1Source : e1.source = e0.target
  e3Source : e3.source = e2.target
  commonSource : e2.source = e0.source
  commonTarget : e3.target = e1.target
  flatTurn : e0.turn + e1.turn = e2.turn + e3.turn
  e0Transport : e0.transport = rotationAction.transport e0.turn
  e1Transport : e1.transport = rotationAction.transport e1.turn
  e2Transport : e2.transport = rotationAction.transport e2.turn
  e3Transport : e3.transport = rotationAction.transport e3.turn

/-- Flat turn holonomy in one representation forces flat transport holonomy. -/
theorem FlatRotationSquare.flatTransport
    (square : FlatRotationSquare n A) :
    square.e0.transport.trans square.e1.transport =
      square.e2.transport.trans square.e3.transport := by
  rw [square.e0Transport, square.e1Transport, square.e2Transport,
    square.e3Transport, ← square.rotationAction.transport_add,
    ← square.rotationAction.transport_add, square.flatTurn]

abbrev TwistedZeroCochain (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] :=
  NamingVertex → A

abbrev TwistedOneCochain (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] :=
  RotationLabelledNamingEdge n A → A

abbrev TwistedTwoCochain (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] :=
  FlatRotationSquare n A → A

/-- Twisted degree-zero coboundary: `φ(v) - T_e φ(u)`. -/
def twistedD0 (potential : TwistedZeroCochain n A) :
    TwistedOneCochain n A :=
  fun edge ↦ potential edge.target - edge.transport (potential edge.source)

/--
Twisted square coboundary
`ω(e₁)+T₁ω(e₀)-ω(e₃)-T₃ω(e₂)`.
-/
def twistedD1 (cochain : TwistedOneCochain n A) :
    TwistedTwoCochain n A :=
  fun square ↦
    cochain square.e1 +
      square.e1.transport (cochain square.e0) -
      cochain square.e3 -
      square.e3.transport (cochain square.e2)

/-- Flat local transport makes the twisted cochain sequence a complex. -/
theorem twistedD1_comp_twistedD0_eq_zero
    (potential : TwistedZeroCochain n A)
    (square : FlatRotationSquare n A) :
    twistedD1 (twistedD0 potential) square = 0 := by
  have htransport :
      square.e1.transport (square.e0.transport (potential square.e0.source)) =
        square.e3.transport (square.e2.transport (potential square.e0.source)) := by
    simpa only [AddEquiv.trans_apply] using
      congrArg
        (fun transport : A ≃+ A ↦ transport (potential square.e0.source))
        square.flatTransport
  unfold twistedD1 twistedD0
  simp only [map_sub]
  rw [square.e1Source, square.e3Source, square.commonSource,
    square.commonTarget, htransport]
  abel

/-- Closed twisted one-cochains. -/
def TwistedOneCocycle (cochain : TwistedOneCochain n A) : Prop :=
  ∀ square, twistedD1 cochain square = 0

/-- Exact twisted one-cochains. -/
def TwistedOneCoboundary (cochain : TwistedOneCochain n A) : Prop :=
  ∃ potential : TwistedZeroCochain n A, cochain = twistedD0 potential

private theorem twistedD0_zero :
    twistedD0 (0 : TwistedZeroCochain n A) =
      (0 : TwistedOneCochain n A) := by
  funext edge
  simp [twistedD0]

private theorem twistedD0_neg (potential : TwistedZeroCochain n A) :
    twistedD0 (-potential) = -(twistedD0 potential) := by
  funext edge
  simp [twistedD0]
  abel

private theorem twistedD0_add
    (left right : TwistedZeroCochain n A) :
    twistedD0 (left + right) = twistedD0 left + twistedD0 right := by
  funext edge
  simp [twistedD0]
  abel

private abbrev TwistedCocycle (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] :=
  {cochain : TwistedOneCochain n A // TwistedOneCocycle cochain}

private def twistedCohomologous
    (left right : TwistedCocycle n A) : Prop :=
  TwistedOneCoboundary (right.1 - left.1)

private theorem twistedCohomologous_equivalence :
    Equivalence (@twistedCohomologous n _ A _) := by
  refine ⟨?_, ?_, ?_⟩
  · intro cochain
    refine ⟨0, ?_⟩
    rw [sub_self]
    exact twistedD0_zero.symm
  · intro left right h
    rcases h with ⟨potential, hpotential⟩
    refine ⟨-potential, ?_⟩
    calc
      left.1 - right.1 = -(right.1 - left.1) := by abel
      _ = -(twistedD0 potential) := congrArg Neg.neg hpotential
      _ = twistedD0 (-potential) := (twistedD0_neg potential).symm
  · intro left middle right hlm hmr
    rcases hlm with ⟨leftPotential, hleft⟩
    rcases hmr with ⟨rightPotential, hright⟩
    refine ⟨leftPotential + rightPotential, ?_⟩
    calc
      right.1 - left.1 =
          (middle.1 - left.1) + (right.1 - middle.1) := by abel
      _ = twistedD0 leftPotential + twistedD0 rightPotential := by
        rw [hleft, hright]
      _ = twistedD0 (leftPotential + rightPotential) :=
        (twistedD0_add leftPotential rightPotential).symm

private def twistedCohomologySetoid :
    Setoid (TwistedCocycle n A) where
  r := twistedCohomologous
  iseqv := twistedCohomologous_equivalence

/-- The first twisted cohomology group `ker d₁ / im d₀`. -/
def TwistedH1 (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] :=
  Quotient (@twistedCohomologySetoid n _ A _)

private def twistedZeroCocycle : TwistedCocycle n A :=
  ⟨0, by
    intro square
    simp [twistedD1]⟩

namespace TwistedH1

/-- The zero twisted cohomology class. -/
def zero : TwistedH1 n A :=
  Quotient.mk _ (@twistedZeroCocycle n _ A _)

/-- The `H¹_T` class represented by a closed twisted one-cochain. -/
def classOf
    (cochain : TwistedOneCochain n A)
    (closed : TwistedOneCocycle cochain) :
    TwistedH1 n A :=
  Quotient.mk _ ⟨cochain, closed⟩

/-- A closed representative is zero in `H¹_T` exactly when it is exact. -/
theorem mk_eq_zero_iff (cochain : TwistedCocycle n A) :
    Quotient.mk (@twistedCohomologySetoid n _ A _) cochain = zero ↔
      TwistedOneCoboundary cochain.1 := by
  constructor
  · intro h
    have hrel := Quotient.exact h
    rcases hrel with ⟨potential, hpotential⟩
    refine ⟨-potential, ?_⟩
    have hzero :
        (0 : TwistedOneCochain n A) - cochain.1 =
          twistedD0 potential := hpotential
    calc
      cochain.1 = -((0 : TwistedOneCochain n A) - cochain.1) := by abel
      _ = -(twistedD0 potential) := congrArg Neg.neg hzero
      _ = twistedD0 (-potential) := (twistedD0_neg potential).symm
  · rintro ⟨potential, hpotential⟩
    apply Quotient.sound
    refine ⟨-potential, ?_⟩
    calc
      (0 : TwistedOneCochain n A) - cochain.1 = -cochain.1 := by abel
      _ = -(twistedD0 potential) := congrArg Neg.neg hpotential
      _ = twistedD0 (-potential) := (twistedD0_neg potential).symm

/-- Public zero-class criterion for a closed twisted cochain. -/
theorem classOf_eq_zero_iff
    (cochain : TwistedOneCochain n A)
    (closed : TwistedOneCocycle cochain) :
    classOf cochain closed = zero ↔ TwistedOneCoboundary cochain := by
  unfold classOf
  apply mk_eq_zero_iff

end TwistedH1

end Mathematics.Oracle.Naming
```
