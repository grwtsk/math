-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestGrade.Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TestGrade.Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a","mathematical_subject":"Logic.Foundations","original_sha256":"a42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/FilesystemHomology/Tests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.FiniteDynamics.FirstReturn
import DAF.FiniteDynamics.GradedFirstReturn
import DAF.FiniteDynamics.Permutation
import FilesystemHomology.Transport
import BinaryMatrix.GaloisFieldRound
import Mathlib.Algebra.Homology.SingleHomology
import Mathlib.Tactic.FinCases

/-!
# Generic tests for first-return homological transport

These tests cover the generic finite and graded layers independently of the
filesystem and homology instantiations.  Concrete bounded computations use
`native_decide`; the declarative first-return results are connected to those
computations through the proved refinement theorems.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestGrade.Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a

namespace FilesystemHomologicalTransportTests

noncomputable section

open FirstReturn
open GradedFirstReturn
open FinitePermutationDynamics
open DAF.Homology
open scoped BigOperators

/-! ## First return through invalid states -/

/-- The cyclic permutation `i ↦ i + 1 (mod 6)`. -/
def rotate6 : Equiv.Perm (Fin 6) where
  toFun i := ⟨(i.val + 1) % 6, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 5) % 6, Nat.mod_lt _ (by decide)⟩
  left_inv i := by
    fin_cases i <;> rfl
  right_inv i := by
    fin_cases i <;> rfl

/-- The selected states `{0,2,5}`; intervening states may be invalid. -/
def selected6 (i : Fin 6) : Prop :=
  i.val = 0 ∨ i.val = 2 ∨ i.val = 5

instance selected6Decidable : DecidablePred selected6 :=
  fun i => by
    unfold selected6
    infer_instance

def selected0 : ValidState selected6 :=
  ⟨0, by simp [selected6]⟩

def selected2 : ValidState selected6 :=
  ⟨2, by simp [selected6]⟩

def selected5 : ValidState selected6 :=
  ⟨5, by simp [selected6]⟩

example : firstReturnSearch rotate6 selected6 selected0 = some 2 := by
  native_decide

example : firstReturnSearch rotate6 selected6 selected2 = some 3 := by
  native_decide

example : firstReturnSearch rotate6 selected6 selected5 = some 1 := by
  native_decide

theorem selected0_firstReturnTime :
    firstReturnTime rotate6 selected6 selected0 = 2 := by
  have hrefine :=
    firstReturnSearch_eq_firstReturnTime rotate6 selected6 selected0
  have hcompute : firstReturnSearch rotate6 selected6 selected0 = some 2 := by
    native_decide
  rw [hcompute] at hrefine
  exact (Option.some.inj hrefine).symm

theorem selected2_firstReturnTime :
    firstReturnTime rotate6 selected6 selected2 = 3 := by
  have hrefine :=
    firstReturnSearch_eq_firstReturnTime rotate6 selected6 selected2
  have hcompute : firstReturnSearch rotate6 selected6 selected2 = some 3 := by
    native_decide
  rw [hcompute] at hrefine
  exact (Option.some.inj hrefine).symm

theorem selected5_firstReturnTime :
    firstReturnTime rotate6 selected6 selected5 = 1 := by
  have hrefine :=
    firstReturnSearch_eq_firstReturnTime rotate6 selected6 selected5
  have hcompute : firstReturnSearch rotate6 selected6 selected5 = some 1 := by
    native_decide
  rw [hcompute] at hrefine
  exact (Option.some.inj hrefine).symm

example : (firstReturnPerm rotate6 selected6 selected0).1 = 2 := by
  rw [firstReturnPerm_apply_val, selected0_firstReturnTime]
  native_decide

example : (firstReturnPerm rotate6 selected6 selected2).1 = 5 := by
  rw [firstReturnPerm_apply_val, selected2_firstReturnTime]
  native_decide

example : (firstReturnPerm rotate6 selected6 selected5).1 = 0 := by
  rw [firstReturnPerm_apply_val, selected5_firstReturnTime]
  native_decide

example :
    (firstReturnPerm rotate6 selected6).symm
        (firstReturnPerm rotate6 selected6 selected0) = selected0 :=
  (firstReturnPerm rotate6 selected6).symm_apply_apply selected0

example :
    firstReturnPerm rotate6 selected6
        ((firstReturnPerm rotate6 selected6).symm selected2) = selected2 :=
  (firstReturnPerm rotate6 selected6).apply_symm_apply selected2

/-! ## An invariant selected subset -/

/-- Rotation by two coordinates preserves parity. -/
def rotate6ByTwo : Equiv.Perm (Fin 6) where
  toFun i := ⟨(i.val + 2) % 6, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 4) % 6, Nat.mod_lt _ (by decide)⟩
  left_inv i := by
    fin_cases i <;> rfl
  right_inv i := by
    fin_cases i <;> rfl

def even6 (i : Fin 6) : Prop :=
  i.val % 2 = 0

instance even6Decidable : DecidablePred even6 :=
  fun i => by
    unfold even6
    infer_instance

theorem even6_invariant (i : Fin 6) :
    even6 (rotate6ByTwo i) ↔ even6 i := by
  fin_cases i <;> native_decide

example (x : ValidState even6) :
    firstReturnTime rotate6ByTwo even6 x = 1 :=
  firstReturnTime_eq_one_of_invariant
    rotate6ByTwo even6 even6_invariant x

example :
    firstReturnPerm rotate6ByTwo even6 =
      invariantRestriction rotate6ByTwo even6 even6_invariant :=
  firstReturnPerm_eq_restriction
    rotate6ByTwo even6 even6_invariant

/-! ## Empty and singleton valid fibers -/

def noState (_ : Fin 6) : Prop := False

example : Equiv.Perm (ValidState noState) :=
  firstReturnPerm rotate6 noState

def onlyThree (i : Fin 6) : Prop :=
  i = 3

example : firstReturnPerm rotate6 onlyThree = 1 := by
  ext x
  have hx : x.1 = (3 : Fin 6) := x.2
  have hy : (firstReturnPerm rotate6 onlyThree x).1 = (3 : Fin 6) :=
    (firstReturnPerm rotate6 onlyThree x).2
  exact congrArg Fin.val (hy.trans hx.symm)

/-! ## A dependent two-grade system -/

inductive TestGrade
  | three
  | four
  deriving DecidableEq

def TestAmbient : TestGrade → Type
  | .three => Fin 3
  | .four => Fin 4

instance testAmbientFintype : ∀ i, Fintype (TestAmbient i)
  | .three => inferInstanceAs (Fintype (Fin 3))
  | .four => inferInstanceAs (Fintype (Fin 4))

instance testAmbientDecidableEq : ∀ i, DecidableEq (TestAmbient i)
  | .three => inferInstanceAs (DecidableEq (Fin 3))
  | .four => inferInstanceAs (DecidableEq (Fin 4))

def allValid : ∀ i, TestAmbient i → Prop :=
  fun _ _ => True

def identityByGrade : ∀ i, Equiv.Perm (TestAmbient i) :=
  fun _ => 1

example (x : GradedValid TestAmbient allValid) :
    (gradedFirstReturnPerm TestAmbient allValid identityByGrade x).1 = x.1 :=
  gradedFirstReturnPerm_grade TestAmbient allValid identityByGrade x

def gradeThreeZero : GradedValid TestAmbient allValid :=
  ⟨.three, ⟨(0 : Fin 3), trivial⟩⟩

def gradeFourZero : GradedValid TestAmbient allValid :=
  ⟨.four, ⟨(0 : Fin 4), trivial⟩⟩

example :
    (gradedFirstReturnPerm TestAmbient allValid identityByGrade
      gradeThreeZero).1 = .three := by
  rfl

example :
    (gradedFirstReturnPerm TestAmbient allValid identityByGrade
      gradeFourZero).1 = .four := by
  rfl

/-! ## Generic finite permutation dynamics -/

example : fixedPointCount rotate6 1 = 0 := by
  native_decide

example : fixedPointCount rotate6 6 = 6 := by
  native_decide

example : exactPeriodCount rotate6 6 = 6 := by
  native_decide

example : cycleCount rotate6 1 = 0 := by
  native_decide

example : cycleCount rotate6 6 = 1 := by
  native_decide

example :
    ((6 * cycleCount rotate6 6 : Nat) : ℤ) =
      ∑ d ∈ Nat.divisors 6,
        (ArithmeticFunction.moebius (6 / d) : ℤ) *
          (fixedPointCount rotate6 d : ℤ) :=
  cycleCount_mobius rotate6 (by decide)

example : cycleEulerFactorData rotate6 1 = 0 := by
  native_decide

example : cycleEulerFactorData rotate6 6 = 1 := by
  native_decide

/-!
## Filesystem transport tests

The finite fixture below has three snapshots split across row grades one and
two.  Its grade-one ambient action toggles the sole field row, so it leaves the
valid image for one step before returning.  First return nevertheless induces
a total permutation on all declared snapshots.
-/

open FilesystemCodec
open BinMatGalois

/-- Three abstract snapshots distributed over two packet row grades. -/
inductive TinyFilesystemSnapshot
  | oneZero
  | twoZeros
  | twoOnes
  deriving DecidableEq

instance : Fintype TinyFilesystemSnapshot where
  elems := {.oneZero, .twoZeros, .twoOnes}
  complete snapshot := by cases snapshot <;> simp

instance : DecidableEq (BitPacket 1) := by
  unfold BitPacket
  infer_instance

/-- Canonical bit payloads of lengths one, two, and two. -/
def tinyFilesystemPayload : TinyFilesystemSnapshot → BitString
  | .oneZero => BitString.ofBits (fun _ : Fin 1 => false)
  | .twoZeros => BitString.ofBits (fun _ : Fin 2 => false)
  | .twoOnes => BitString.ofBits (fun _ : Fin 2 => true)

/-- Width-one canonical packet encoding for the tiny snapshot model. -/
def tinyFilesystemPacket (snapshot : TinyFilesystemSnapshot) : BitPacket 1 :=
  block (r := 1) (by decide) (tinyFilesystemPayload snapshot)

/-- Partial decoder whose valid image is exactly the three selected packets. -/
def tinyFilesystemDecode (packet : BitPacket 1) :
    Option TinyFilesystemSnapshot :=
  if packet = tinyFilesystemPacket .oneZero then
    some .oneZero
  else if packet = tinyFilesystemPacket .twoZeros then
    some .twoZeros
  else if packet = tinyFilesystemPacket .twoOnes then
    some .twoOnes
  else
    none

/-- A direct lossless filesystem matrix codec with two row grades. -/
def tinyFilesystemCodec :
    FilesystemMatrixCodec TinyFilesystemSnapshot 1 where
  encode := tinyFilesystemPacket
  decode := tinyFilesystemDecode
  decode_encode snapshot := by
    cases snapshot <;> native_decide

/-- The unique `GF2` coordinate is the unique entry of a one-bit row. -/
def tinyGF2RowCoordinates : GF2 ≃ₗ[GF2] GF2Matrix 1 1 :=
  { toFun := fun x _ _ => x
    invFun := fun A => A 0 0
    left_inv := fun _ => rfl
    right_inv := by
      intro A
      funext i j
      fin_cases i
      fin_cases j
      rfl
    map_add' := by intro x y; rfl
    map_smul' := by intro c x; rfl }

/-- Explicit one-bit row encoding used by the filesystem fixture. -/
def tinyGF2RowEncoding : RowFieldEncoding GF2 1 :=
  ⟨tinyGF2RowCoordinates⟩

/-- Translation by one toggles `GF2`; apply it independently in every grade. -/
def tinyGF2Toggle : GF2 ≃ GF2 :=
  Equiv.addRight 1

def tinyFilesystemRowPerm (k : Nat) : Equiv.Perm (Fin k → GF2) :=
  pointwiseFieldPerm tinyGF2Toggle k

example : (tinyFilesystemCodec.encode .oneZero).rows = 1 := by
  native_decide

example : (tinyFilesystemCodec.encode .twoZeros).rows = 2 := by
  native_decide

example : (tinyFilesystemCodec.encode .twoOnes).rows = 2 := by
  native_decide

example :
    Function.Bijective
      (filesystemFirstReturnPerm tinyFilesystemCodec
        tinyGF2RowEncoding tinyFilesystemRowPerm) :=
  filesystemFirstReturnPerm_bijective
    tinyFilesystemCodec tinyGF2RowEncoding tinyFilesystemRowPerm

example (snapshot : TinyFilesystemSnapshot) :
    (tinyFilesystemCodec.encode
      (filesystemFirstReturnPerm tinyFilesystemCodec
        tinyGF2RowEncoding tinyFilesystemRowPerm snapshot)).rows =
      (tinyFilesystemCodec.encode snapshot).rows :=
  filesystemFirstReturnPerm_rows
    tinyFilesystemCodec tinyGF2RowEncoding tinyFilesystemRowPerm snapshot

example (snapshot : TinyFilesystemSnapshot) :
    (tinyFilesystemCodec.encode
      (filesystemFirstReturnPerm tinyFilesystemCodec
        tinyGF2RowEncoding tinyFilesystemRowPerm snapshot)).payloadBits =
      (tinyFilesystemCodec.encode snapshot).payloadBits :=
  filesystemFirstReturnPerm_payloadBits
    tinyFilesystemCodec tinyGF2RowEncoding tinyFilesystemRowPerm snapshot

/-- Fixed-grade Euler data agree in ambient, packet, and snapshot coordinates. -/
example :
    cycleEulerFactorData
        (snapshotFiberFirstReturnPerm tinyFilesystemCodec
          tinyGF2RowEncoding tinyFilesystemRowPerm 1) =
      cycleEulerFactorData
        (ambientValidFirstReturnPerm tinyFilesystemCodec
          tinyGF2RowEncoding tinyFilesystemRowPerm 1) :=
  cycleEulerFactorData_snapshotFiber_eq_ambientValid
    tinyFilesystemCodec tinyGF2RowEncoding tinyFilesystemRowPerm 1

/-!
The explicit grade-one ambient state below is valid.  Toggling its sole row
produces the same length register with field value one, which is not in the
codec image; toggling a second time returns to the original valid state.
-/

def tinyGradeOneSnapshot : SnapshotFiber tinyFilesystemCodec 1 :=
  ⟨.oneZero, by native_decide⟩

def tinyGradeOnePacket : tinyFilesystemCodec.ValidPacketFiber 1 :=
  snapshotFiberEquivValidPacketFiber tinyFilesystemCodec 1
    tinyGradeOneSnapshot

def tinyGradeOneAmbient : AmbientPacketFiber GF2 1 1 :=
  validPacketFiberToAmbient tinyFilesystemCodec tinyGF2RowEncoding 1
    tinyGradeOnePacket

example : CodecValidAmbient tinyFilesystemCodec tinyGF2RowEncoding 1
    tinyGradeOneAmbient :=
  ⟨tinyGradeOnePacket, rfl⟩

/-- One ambient toggle leaves the codec-valid image at row grade one. -/
theorem tinyGradeOne_toggle_invalid :
    ¬ CodecValidAmbient tinyFilesystemCodec tinyGF2RowEncoding 1
      (ambientPacketPerm (tinyFilesystemRowPerm 1)
        tinyGradeOneAmbient) := by
  rintro ⟨packet, hambient⟩
  rcases packet.1.property with ⟨snapshot, hsnapshot⟩
  cases snapshot with
  | oneZero =>
      have hpacket : packet = tinyGradeOnePacket := by
        apply Subtype.ext
        apply Subtype.ext
        change packet.1.1 = tinyFilesystemCodec.encode .oneZero
        exact hsnapshot.symm
      subst packet
      have hfield := congrArg
        (fun a : AmbientPacketFiber GF2 1 1 => a.fieldRows 0)
        hambient
      change (0 : GF2) = 1 at hfield
      exact zero_ne_one hfield
  | twoZeros =>
      have hbad : (tinyFilesystemCodec.encode .twoZeros).rows = 1 :=
        (congrArg BitPacket.rows hsnapshot).trans packet.property
      change 2 = 1 at hbad
      omega
  | twoOnes =>
      have hbad : (tinyFilesystemCodec.encode .twoOnes).rows = 1 :=
        (congrArg BitPacket.rows hsnapshot).trans packet.property
      change 2 = 1 at hbad
      omega

example :
    ambientPacketPerm (tinyFilesystemRowPerm 1)
        (ambientPacketPerm (tinyFilesystemRowPerm 1) tinyGradeOneAmbient) =
      tinyGradeOneAmbient := by
  cases tinyGradeOneAmbient with
  | mk payload rows =>
      change
        AmbientPacketFiber.mk payload (fun i => (rows i + 1) + 1) =
          AmbientPacketFiber.mk payload rows
      congr
      funext i
      have htwo : (1 : GF2) + 1 = 0 := by native_decide
      rw [add_assoc, htwo, add_zero]

/-! ## Linking filesystem first return to an edit-chain action -/

open FilesystemHomology

/-- The concrete first-return permutation of the tiny snapshot model. -/
noncomputable def tinyFilesystemFirstReturn :
    Equiv.Perm TinyFilesystemSnapshot :=
  filesystemFirstReturnPerm tinyFilesystemCodec
    tinyGF2RowEncoding tinyFilesystemRowPerm

/--
A complete directed edit presentation.  Its zero relation is sufficient to
test the chain-level lift; the separate triangle fixture below exercises a
nontrivial edit relation.
-/
noncomputable def tinyFilesystemPresentation :
    FilesystemEditPresentation TinyFilesystemSnapshot where
  Edit := TinyFilesystemSnapshot × TinyFilesystemSnapshot
  src := Prod.fst
  dst := Prod.snd
  Relation := PUnit
  relationBoundary := fun _ => 0
  relation_closed := by
    intro relation
    cases relation
    simp [endpointBoundarySum]

/-- Relabel both endpoints by the actual filesystem first-return permutation. -/
noncomputable def tinyFilesystemAction :
    tinyFilesystemPresentation.Action tinyFilesystemFirstReturn where
  editPerm := Equiv.prodCongr
    tinyFilesystemFirstReturn tinyFilesystemFirstReturn
  relationPerm := Equiv.refl PUnit
  src_natural edit := rfl
  dst_natural edit := rfl
  relationBoundary_natural relation := by
    cases relation
    simp [tinyFilesystemPresentation]

/-- The headline homology theorem instantiated by the concrete filesystem action. -/
example (q : Nat) :
    tinyFilesystemPresentation.toChainComplex.homology q ≅
      tinyFilesystemPresentation.toChainComplex.homology q :=
  filesystemFirstReturn_induces_homologyIso
    tinyFilesystemCodec tinyGF2RowEncoding tinyFilesystemRowPerm
    tinyFilesystemPresentation tinyFilesystemAction q

/-!
## Homological transport tests

The following examples use a genuine edit presentation and a nonzero integral
two-torsion homology class.
-/

/-! ## A concrete reversible edit presentation -/

open FilesystemHomology
open CategoryTheory

/-- Rotation of three snapshot vertices. -/
def rotate3Vertices : Equiv.Perm (Fin 3) where
  toFun i := ⟨(i.val + 1) % 3, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 2) % 3, Nat.mod_lt _ (by decide)⟩
  left_inv i := by
    fin_cases i <;> rfl
  right_inv i := by
    fin_cases i <;> rfl

/-- Both orientations of the three edges of a triangle. -/
inductive TriangleEdit
  | e01 | e10 | e12 | e21 | e20 | e02
  deriving DecidableEq

def triangleSrc : TriangleEdit → Fin 3
  | .e01 => 0
  | .e10 => 1
  | .e12 => 1
  | .e21 => 2
  | .e20 => 2
  | .e02 => 0

def triangleDst : TriangleEdit → Fin 3
  | .e01 => 1
  | .e10 => 0
  | .e12 => 2
  | .e21 => 1
  | .e20 => 0
  | .e02 => 2

/-- A declared closed relation in the triangle edit presentation. -/
def triangleRelationBoundary (_ : PUnit) : FreeZ TriangleEdit :=
  0

/-- A small edit topology with reversible edge generators and one relation. -/
noncomputable def trianglePresentation :
    FilesystemEditPresentation (Fin 3) where
  Edit := TriangleEdit
  src := triangleSrc
  dst := triangleDst
  Relation := PUnit
  relationBoundary := triangleRelationBoundary
  relation_closed := by
    intro relation
    cases relation
    rw [triangleRelationBoundary, endpointBoundarySum,
      Finsupp.sum_zero_index]

/-- Rotate both endpoints of every oriented edge. -/
def rotateTriangleEdit : Equiv.Perm TriangleEdit where
  toFun
    | .e01 => .e12
    | .e12 => .e20
    | .e20 => .e01
    | .e10 => .e21
    | .e21 => .e02
    | .e02 => .e10
  invFun
    | .e01 => .e20
    | .e12 => .e01
    | .e20 => .e12
    | .e10 => .e02
    | .e21 => .e10
    | .e02 => .e21
  left_inv edit := by cases edit <;> rfl
  right_inv edit := by cases edit <;> rfl

/-- The vertex rotation lifts compatibly to edits and the triangle relation. -/
noncomputable def triangleAction :
    trianglePresentation.Action rotate3Vertices where
  editPerm := rotateTriangleEdit
  relationPerm := Equiv.refl PUnit
  src_natural edit := by cases edit <;> rfl
  dst_natural edit := by cases edit <;> rfl
  relationBoundary_natural relation := by
    change
      Finsupp.mapDomain rotateTriangleEdit
          (triangleRelationBoundary relation) =
        triangleRelationBoundary ((Equiv.refl PUnit) relation)
    cases relation
    simp [triangleRelationBoundary]

example :
    trianglePresentation.boundaryOne.comp
        trianglePresentation.boundaryTwo = 0 :=
  trianglePresentation.boundaryOne_comp_boundaryTwo

example :
    (triangleAction.degreeIso 1).hom ≫
        trianglePresentation.toChainComplex.d 1 0 =
      trianglePresentation.toChainComplex.d 1 0 ≫
        (triangleAction.degreeIso 0).hom :=
  triangleAction.degreeIso_comm 0

example :
    trianglePresentation.toChainComplex ≅
      trianglePresentation.toChainComplex :=
  triangleAction.toChainIso

example (q : Nat) :
    trianglePresentation.toChainComplex.homology q ≅
      trianglePresentation.toChainComplex.homology q :=
  triangleAction.toHomologicalLift.homologyIso q

/-! ## A nonzero integral two-torsion homology class -/

/-- A chain complex concentrated in degree zero at the integral module `ZMod 2`. -/
noncomputable def modTwoComplex : IntegralChainComplex :=
  (HomologicalComplex.single
    (ModuleCat ℤ) (ComplexShape.down ℕ) 0).obj
      (ModuleCat.of ℤ (ZMod 2))

/-- The canonical computation `H₀(modTwoComplex) ≅ ZMod 2`. -/
noncomputable def modTwoHomologyIso :
    modTwoComplex.homology 0 ≅ ModuleCat.of ℤ (ZMod 2) :=
  HomologicalComplex.singleObjHomologySelfIso
    (ComplexShape.down ℕ) 0 (ModuleCat.of ℤ (ZMod 2))

/-- The homology class corresponding to `1 mod 2`. -/
noncomputable def modTwoClass : modTwoComplex.homology 0 :=
  modTwoHomologyIso.inv 1

theorem modTwoClass_ne_zero : modTwoClass ≠ 0 := by
  intro h
  have h' := congrArg modTwoHomologyIso.hom h
  simp [modTwoClass] at h'

theorem modTwoClass_isOfFinAddOrder : IsOfFinAddOrder modTwoClass := by
  let e := modTwoHomologyIso.toLinearEquiv.toAddEquiv
  apply (Function.Injective.isOfFinAddOrder_iff
    (f := e.toAddMonoidHom) e.injective).1
  have he : e modTwoClass = (1 : ZMod 2) := by
    simp [e, modTwoClass]
  have he' : e.toAddMonoidHom modTwoClass = (1 : ZMod 2) := he
  rw [he']
  exact is_add_torsion_of_finite 1

/-- The identity lift is enough to exercise homology transport on this torsion class. -/
noncomputable def modTwoLift :
    HomologicalLift Unit (Equiv.refl Unit) modTwoComplex where
  vertex _ := 0
  chainIso := Iso.refl _
  degreeZero_agrees _ := rfl

example :
    IsOfFinAddOrder
      (modTwoLift.homologyAddEquiv 0 modTwoClass) :=
  (modTwoLift.homologyIso_isOfFinAddOrder_iff 0 modTwoClass).2
    modTwoClass_isOfFinAddOrder

example :
    addOrderOf (modTwoLift.homologyAddEquiv 0 modTwoClass) =
      addOrderOf modTwoClass :=
  modTwoLift.homologyIso_addOrderOf 0 modTwoClass

end

end FilesystemHomologicalTransportTests
