# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComparisonTests.Variant86e980c854a35f797ad5e59977899c73966401fc9bd86600ae78f8e2f40179ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3dab71f788fd1cf747456738a7195c9381bff50` · SHA-256 `86e980c854a35f797ad5e59977899c73966401fc9bd86600ae78f8e2f40179ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Comparison.Chain
import DAF.Comparison.Naturality
import FilesystemCodec.Codec

/-!
# Certified comparison integration tests

These examples exercise the comparison calculus without turning metadata into
proof.  In particular, the conjectural fixture stores only a claim, the
coefficient-changing composite names its scalar map, matrix operations reuse
their existing refinement theorems, and filesystem comparison targets only
the valid encoder image.
-/

namespace DAF.Integration.ComparisonTests

open DAF.Comparison

/-! ## Typed map composition -/

def includeTwoThree : Spec (Fin 2) (Fin 3) :=
  ⟨fun i ↦ ⟨i.val, Nat.lt_trans i.isLt (by decide)⟩⟩

def includeThreeFour : Spec (Fin 3) (Fin 4) :=
  ⟨fun i ↦ ⟨i.val, Nat.lt_trans i.isLt (by decide)⟩⟩

def includeFourFive : Spec (Fin 4) (Fin 5) :=
  ⟨fun i ↦ ⟨i.val, Nat.lt_trans i.isLt (by decide)⟩⟩

example (i : Fin 2) :
    (includeThreeFour.comp includeTwoThree).map i =
      includeThreeFour.map (includeTwoThree.map i) :=
  rfl

example :
    (includeFourFive.comp includeThreeFour).comp includeTwoThree =
      includeFourFive.comp (includeThreeFour.comp includeTwoThree) :=
  Spec.comp_assoc _ _ _

example : (Spec.id (Fin 3)).comp includeTwoThree = includeTwoThree :=
  Spec.id_comp _

example : includeTwoThree.comp (Spec.id (Fin 2)) = includeTwoThree :=
  Spec.comp_id _

theorem includeTwoThree_injective : IsInjective includeTwoThree := by
  intro a b h
  apply Fin.ext
  simpa [includeTwoThree] using congrArg Fin.val h

theorem includeThreeFour_injective : IsInjective includeThreeFour := by
  intro a b h
  apply Fin.ext
  simpa [includeThreeFour] using congrArg Fin.val h

example : IsInjective (includeThreeFour.comp includeTwoThree) :=
  isInjective_comp includeThreeFour_injective includeTwoThree_injective

def finTwoToUnit : Spec (Fin 2) Unit :=
  ⟨fun _ ↦ ()⟩

def unitIdentity : Spec Unit Unit :=
  Spec.id Unit

theorem finTwoToUnit_surjective : IsSurjective finTwoToUnit := by
  intro value
  cases value
  exact ⟨0, rfl⟩

example : IsSurjective (unitIdentity.comp finTwoToUnit) :=
  isSurjective_comp Function.surjective_id finTwoToUnit_surjective

def unitToBoolFalse : Spec Unit Bool :=
  ⟨fun _ ↦ false⟩

theorem unitToBoolFalse_injective : IsInjective unitToBoolFalse := by
  intro a b _
  cases a
  cases b
  rfl

/-- A surjection followed by an injection need not be bijective. -/
theorem surjection_then_injection_not_automatically_bijective :
    ¬ IsBijective (unitToBoolFalse.comp finTwoToUnit) := by
  intro h
  have impossible : (0 : Fin 2) = (1 : Fin 2) := h.1 rfl
  have : (0 : Nat) = 1 := congrArg Fin.val impossible
  omega

/-! ## Conditional proofs retain both hypotheses -/

def identityNatSpec : Spec Nat Nat :=
  Spec.id Nat

def identityNatClaim : Claim identityNatSpec :=
  ⟨IsInjective identityNatSpec⟩

def conditionalIdentity
    (P : Prop) : ConditionalCertificate identityNatSpec identityNatClaim where
  Hypothesis := P
  proof := fun _ ↦ Function.injective_id

example (P Q : Prop) :
    ((conditionalIdentity Q).comp (conditionalIdentity P)).Hypothesis =
      (P ∧ Q) :=
  rfl

example (P Q : Prop) (hP : P) (hQ : Q) :
    (identityNatClaim.comp identityNatClaim).statement := by
  exact ((conditionalIdentity Q).comp (conditionalIdentity P)).proof ⟨hP, hQ⟩

/-! ## A conjecture can be inventoried without becoming a theorem -/

def conjecturalIdentityClaim : Claim identityNatSpec :=
  ⟨IsSurjective identityNatSpec⟩

def conjecturalIdentityTarget : ConjecturalTarget identityNatSpec where
  name := `DAF.Integration.ComparisonTests.conjecturalIdentityClaim
  claim := conjecturalIdentityClaim

/-- A research manifest stores claims, not proof certificates. -/
def conjecturalManifest : List (ConjecturalTarget identityNatSpec) :=
  [conjecturalIdentityTarget]

/-- A same-typed research chain can retain several unproved targets. -/
def conjecturalResearchChain : List (ConjecturalTarget identityNatSpec) :=
  [conjecturalIdentityTarget, conjecturalIdentityTarget]

example : conjecturalManifest.head? = some conjecturalIdentityTarget :=
  rfl

/-! ## Representation dependence remains explicit -/

def boolSelectedMap : Parameterized Bool Nat Nat where
  map selected value := if selected then value + 1 else value

def boolSelectedComposite : Parameterized Bool Nat Nat :=
  boolSelectedMap.comp boolSelectedMap

def boolSelectedChain : ParameterizedChain Bool Nat Nat 2 :=
  ParameterizedChain.cons boolSelectedMap
    (ParameterizedChain.cons boolSelectedMap (ParameterizedChain.nil Nat))

example : boolSelectedComposite.map false 3 = 3 :=
  rfl

example : boolSelectedComposite.map true 3 = 5 :=
  rfl

example : boolSelectedChain.composite.map true 3 = 5 :=
  rfl

def representationIndependentMap : Parameterized Bool Nat Nat where
  map _ value := value + 1

theorem representationIndependentMap_proof :
    RepresentationIndependent representationIndependentMap := by
  intro ρ₀ ρ₁
  rfl

example :
    RepresentationIndependent
      (representationIndependentMap.comp representationIndependentMap) :=
  Parameterized.comp_independent
    representationIndependentMap_proof representationIndependentMap_proof

/-! ## Explicit coefficient changes -/

def integralIdentity : Certified Nat Nat :=
  Certified.ofProof identityNatSpec
    CoefficientContext.integral CoefficientContext.integral
    .framework True trivial

def rationalIdentity : Certified Nat Nat :=
  Certified.ofProof identityNatSpec
    CoefficientContext.rational CoefficientContext.rational
    .framework True trivial

def integerToRational :
    CoefficientChange CoefficientContext.integral
      CoefficientContext.rational :=
  ⟨Int.castRingHom ℚ⟩

/-- The mismatched pair becomes composable only through the named ring map. -/
def changedCoefficientComposite : Certified Nat Nat :=
  rationalIdentity.compWithCoefficientChange integralIdentity integerToRational

def changedCoefficientChain :
    CompatibleChain Nat Nat CoefficientContext.integral
      CoefficientContext.rational 2 :=
  CompatibleChain.changeCons integralIdentity integerToRational
    (CompatibleChain.cons rationalIdentity
      (CompatibleChain.nil Nat CoefficientContext.rational))

example : changedCoefficientComposite.spec.map 7 = 7 :=
  rfl

example : changedCoefficientComposite.Assumptions = (True ∧ True) :=
  rfl

example :
    changedCoefficientChain.certifiedComposite.coefficientTarget =
      CoefficientContext.rational :=
  CompatibleChain.certifiedComposite_coefficientTarget _

/-! ## Existing DAF system, factor, isomorphism, and causal transport -/

def bitStateSystem : DAF.System where
  Input := Unit
  State := Bool
  Resolution := Unit
  Observation := fun _ ↦ Bool
  step := fun _ state ↦ state
  observe := fun _ state ↦ state

def bitStateFactor : bitStateSystem.Factor bitStateSystem where
  toHom := DAF.System.Hom.id bitStateSystem
  state_surjective := Function.surjective_id

def bitStateIso : bitStateSystem.Iso bitStateSystem :=
  DAF.System.Iso.refl bitStateSystem

example :
    (DAF.System.Hom.id bitStateSystem).toComparisonSpec.comp
        (DAF.System.Hom.id bitStateSystem).toComparisonSpec =
      ((DAF.System.Hom.id bitStateSystem).comp
        (DAF.System.Hom.id bitStateSystem)).toComparisonSpec :=
  (DAF.System.Hom.toComparisonSpec_comp _ _).symm

example : IsSurjective bitStateFactor.toComparisonSpec :=
  bitStateFactor.toComparison_surjective

example : IsBijective bitStateIso.toComparisonSpec :=
  bitStateIso.toComparison_bijective

example :
    IsSurjective
      (bitStateFactor.causalStateComparisonSpec Function.surjective_id) :=
  bitStateFactor.causalStateComparison_surjective Function.surjective_id

example : IsBijective bitStateIso.causalStateComparisonSpec :=
  bitStateIso.causalStateComparison_bijective

/-! ## Filesystem codecs compare snapshots with their valid image only -/

noncomputable def filesystemValidPacketComparison
    (C : FilesystemCodec.FilesystemMatrixCodec Snapshot r) :
    Spec Snapshot C.ValidPacketType :=
  ⟨C.snapshotEquivValidPacket⟩

theorem filesystemValidPacketComparison_bijective
    (C : FilesystemCodec.FilesystemMatrixCodec Snapshot r) :
    IsBijective (filesystemValidPacketComparison C) :=
  C.snapshotEquivValidPacket.bijective

noncomputable def filesystemValidPacketComparison_canonical
    (C : FilesystemCodec.FilesystemMatrixCodec Snapshot r) :
    Canonical (filesystemValidPacketComparison C) where
  Characterizes := fun f ↦ f = C.snapshotEquivValidPacket
  characterized := rfl
  unique := by
    intro f hf
    exact hf

example (C : FilesystemCodec.FilesystemMatrixCodec Snapshot r) :
    IsBijective (filesystemValidPacketComparison C) :=
  filesystemValidPacketComparison_bijective C

end DAF.Integration.ComparisonTests
```
