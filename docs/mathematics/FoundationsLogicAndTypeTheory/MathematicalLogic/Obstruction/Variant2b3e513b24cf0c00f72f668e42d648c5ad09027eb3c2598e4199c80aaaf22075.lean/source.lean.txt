import DAF.Integration.WorldModelPrototype.Translations
import Surface.ContinuousAssurance.WorldModel.Cech

/-!
# Prototype descent and the noncommuting translation obstruction

The finite cover admits an explicit positive constant-family descent example.
A separately indexed raw family fails overlap compatibility.  The lossy
`P → B → S → H` route is compared with the direct `P → H` route by a nonzero
degree-two `ZMod 2` cochain; it is not silently declared commutative.
-/

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-- Equality order makes the three selected opens a finite discrete site. -/
instance : PartialOrder PrototypeOpen where
  le := Eq
  le_refl := fun _ => rfl
  le_trans := fun _ _ _ first second => first.trans second
  le_antisymm := fun _ _ first _ => first

/-- Discrete finite site on the three selected opens. -/
def prototypeSite : FiniteCommunicationSite where
  Object := PrototypeOpen
  objectFintype := inferInstance
  objectDecEq := inferInstance
  partialOrder := inferInstance
  orderDecidable := fun left right => by
    change Decidable (left = right)
    infer_instance
  cover := fun openRegion => {openRegion}
  cover_below := by
    intro base member h
    simp only [Finset.mem_singleton] at h
    subst member
    exact le_refl base
  identity := ⟨"world-model-site:five-model-cover-v1"⟩

/-- Constant Boolean presheaf on the selected finite cover. -/
def prototypePresheaf : FiniteWorldModelPresheaf prototypeSite where
  Section := fun _ => Bool
  restrict := fun _ value => value
  restrict_id := by intros; rfl
  restrict_comp := by intros; rfl

/-- A global Boolean section localizes to the same value on every open. -/
def prototypeLocalize (global : Bool) : PrototypeOpen → Bool :=
  fun _ => global

/-- Exact compatibility predicate for raw finite local families. -/
def PrototypeFamilyCompatible (family : PrototypeOpen → Bool) : Prop :=
  ∃ global, prototypeLocalize global = family

/-- Compatible families carry the global witness they actually descend from. -/
def PrototypeCompatibleFamily :=
  {family : PrototypeOpen → Bool // PrototypeFamilyCompatible family}

/-- Choose the unique global Boolean behind a compatible family. -/
noncomputable def gluePrototypeFamily
    (family : PrototypeCompatibleFamily) : Bool :=
  Classical.choose family.property

theorem prototype_family_eq_localize_glue
    (family : PrototypeCompatibleFamily) :
    prototypeLocalize (gluePrototypeFamily family) = family.1 :=
  Classical.choose_spec family.property

/-- Positive descent capability for exactly the compatible local families. -/
noncomputable def prototypeDescent : FiniteDescentCapability prototypePresheaf where
  CompatibleFamily := PrototypeCompatibleFamily
  GlobalSection := Bool
  localize := fun global => ⟨prototypeLocalize global, ⟨global, rfl⟩⟩
  glue := gluePrototypeFamily
  restrict_glue := by
    intro family
    apply Subtype.ext
    exact prototype_family_eq_localize_glue family
  glue_unique := by
    intro family global localized
    have pointwise := congrFun (congrArg Subtype.val localized) .U0
    have chosen := congrFun (prototype_family_eq_localize_glue family) .U0
    simpa [prototypeLocalize] using pointwise.trans chosen.symm

/-- The all-false family is an actual compatible local family. -/
def goodPrototypeFamily : PrototypeCompatibleFamily :=
  ⟨prototypeLocalize false, ⟨false, rfl⟩⟩

theorem goodPrototypeFamily_glues :
    prototypeDescent.localize
        (prototypeDescent.glue goodPrototypeFamily) =
      goodPrototypeFamily :=
  prototypeDescent.compatible_family_glues goodPrototypeFamily

/-- Raw family that disagrees between `U0` and `U1`. -/
def badPrototypeFamily : PrototypeOpen → Bool
  | .U0 => false
  | .U1 => true
  | .U2 => false

/-- The bad local family cannot arise from one global section. -/
theorem badPrototypeFamily_fails_gluing :
    ¬ PrototypeFamilyCompatible badPrototypeFamily := by
  rintro ⟨global, equal⟩
  have atU0 := congrFun equal .U0
  have atU1 := congrFun equal .U1
  cases global <;> simp [prototypeLocalize, badPrototypeFamily] at atU0 atU1

/-- Direct route from permutation orbit data to homological cycle data. -/
def directPHPath : TranslationPath where
  source := prototypeModelIdentity .permutationDynamics
  target := prototypeModelIdentity .finiteEditHomology
  steps :=
    [{ identity := prototypeTranslationId .τPH
       source := prototypeModelIdentity .permutationDynamics
       target := prototypeModelIdentity .finiteEditHomology
       relation := .soundAbstraction
       obligations := [⟨"obligation:orbit-chain-completeness"⟩] }]
  endpointsValid := by simp
  adjacentValid := by intros; simp_all

/-- Composite route through matrix support and simplicial boundary data. -/
def compositePBSHPath : TranslationPath where
  source := prototypeModelIdentity .permutationDynamics
  target := prototypeModelIdentity .finiteEditHomology
  steps :=
    [ { identity := prototypeTranslationId .τPB
        source := prototypeModelIdentity .permutationDynamics
        target := prototypeModelIdentity .booleanQuantizedMatrices
        relation := .exactEquivalence
        obligations := [] }
    , { identity := prototypeTranslationId .τBS
        source := prototypeModelIdentity .booleanQuantizedMatrices
        target := prototypeModelIdentity .strictSimplicialFabric
        relation := .soundAbstraction
        obligations := [⟨"obligation:support-abstraction-loss"⟩] }
    , { identity := prototypeTranslationId .τSH
        source := prototypeModelIdentity .strictSimplicialFabric
        target := prototypeModelIdentity .finiteEditHomology
        relation := .theoremTransport
        obligations := [] } ]
  endpointsValid := by simp
  adjacentValid := by
    intro first second suffix equality
    simp only [List.cons.injEq] at equality
    rcases equality with ⟨rfl, rfl, _⟩
    rfl

/-- Stable typed record of the orientation-losing route comparison. -/
def orientationLossTriangle : TranslationTriangleDefect where
  source := prototypeModelIdentity .permutationDynamics
  target := prototypeModelIdentity .finiteEditHomology
  directRoute := directPHPath
  compositeRoute := compositePBSHPath
  directEndpoints := ⟨rfl, rfl⟩
  compositeEndpoints := ⟨rfl, rfl⟩
  comparison := .missingComparison
  exactZeroMeaning := False
  affectedObjects := [⟨"object:directed-matrix-orientation"⟩]
  obligations := [⟨"obligation:orientation-losing-triangle"⟩]

/-- Degree-two detector for the noncommuting `P-B-S` face. -/
def orientationLossCochain : Cech.C2 PrototypeVertex :=
  fun first second third =>
    if first = .P ∧ second = .B ∧ third = .S then 1 else 0

/-- The obstruction is explicitly typed over `ZMod 2` in degree two. -/
def orientationLossObstruction : CechObstruction PrototypeVertex where
  cochain := orientationLossCochain
  meaning := .translationNoncommutativity
  affectedObjects := orientationLossTriangle.affectedObjects
  obligations := orientationLossTriangle.obligations

/-- The declared translation triangle defect is machine-computably nonzero. -/
theorem orientationLossCochain_nonzero :
    orientationLossObstruction.cochain .P .B .S = 1 := by
  simp [orientationLossObstruction, orientationLossCochain]

theorem orientationLossCochain_ne_zero :
    orientationLossObstruction.cochain ≠ 0 := by
  intro equal
  have point := congrFun (congrFun (congrFun equal .P) .B) .S
  simp [orientationLossObstruction, orientationLossCochain] at point

end DAF.Integration.WorldModelPrototype
