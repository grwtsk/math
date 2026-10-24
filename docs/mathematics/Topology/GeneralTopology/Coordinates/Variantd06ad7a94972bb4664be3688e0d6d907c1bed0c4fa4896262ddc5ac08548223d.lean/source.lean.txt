-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BeaconFamily.Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BeaconFamily.Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839","mathematical_subject":"Topology.GeneralTopology","original_sha256":"14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Operational/Coordinates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Singleton
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Topology.MetricSpace.Basic

/-!
# Singleton-beacon coordinates

Externally ordered certified singleton beacons carry exact defect and lifted
phase observables.  Completeness is the theorem-bearing claim that the resulting
coordinate map is a topological embedding.
-/


namespace GRWTSK.Topology.GeneralTopology.BeaconFamily.Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839

noncomputable section

namespace Mathematics.Operational

universe u v w z

/--
A labeled singleton-beacon family with exact real defect and lifted phase
observables.  The linear order on `Label` is supplied by the accepted external
rigidifier.
-/
structure BeaconFamily
    (intrinsic : Setoid State)
    (action : Automorphism → State → State)
    (flow : Time → State → State)
    (Label : Type z) where
  labelOrder : LinearOrder Label
  beacon : Label → State
  beacon_injective : Function.Injective beacon
  certified :
    ∀ label,
      CertifiedInvariantSingleton intrinsic action flow (beacon label)
  defect : Label → State → ℝ
  defect_nonnegative :
    ∀ label state, 0 ≤ defect label state
  defect_eq_zero_iff :
    ∀ label state, defect label state = 0 ↔ state = beacon label
  phaseLift : Label → State → ℝ

namespace BeaconFamily

variable {State : Type u} [TopologicalSpace State]
variable {Time : Type v} {Automorphism : Type w} {Label : Type z}
variable {intrinsic : Setoid State}
variable {action : Automorphism → State → State}
variable {flow : Time → State → State}

/-- One beacon-relative defect/phase coordinate. -/
def relative
    (family : BeaconFamily intrinsic action flow Label)
    (label : Label)
    (state : State) :
    ℝ × ℝ :=
  (family.defect label state, family.phaseLift label state)

/-- The complete ordered beacon-coordinate realization. -/
def coordinate
    (family : BeaconFamily intrinsic action flow Label)
    (state : State) :
    Label → ℝ × ℝ :=
  fun label ↦ family.relative label state

/-- Contextual position is the beacon-coordinate tuple itself. -/
def position
    (family : BeaconFamily intrinsic action flow Label)
    (state : State) :
    Label → ℝ × ℝ :=
  family.coordinate state

/-- Completeness is exactly the topological-embedding condition. -/
def Complete
    (family : BeaconFamily intrinsic action flow Label) : Prop :=
  Topology.IsEmbedding family.coordinate

/-- A complete beacon family separates operational states. -/
theorem Complete.injective
    {family : BeaconFamily intrinsic action flow Label}
    (complete : family.Complete) :
    Function.Injective family.coordinate :=
  Topology.IsEmbedding.injective complete

/-- A complete beacon family has continuous coordinate realization. -/
theorem Complete.continuous
    {family : BeaconFamily intrinsic action flow Label}
    (complete : family.Complete) :
    Continuous family.coordinate :=
  Topology.IsEmbedding.continuous complete

/-- The original topology is recovered exactly from coordinate preimages. -/
theorem Complete.isOpen_iff_coordinate_preimage
    {family : BeaconFamily intrinsic action flow Label}
    (complete : family.Complete)
    {subset : Set State} :
    IsOpen subset ↔
      ∃ carrierOpen : Set (Label → ℝ × ℝ),
        IsOpen carrierOpen ∧
        family.coordinate ⁻¹' carrierOpen = subset :=
  complete.isInducing.isOpen_iff

/-- Beacon-relative distance pulled back from the exact coordinate carrier. -/
def beaconDistance
    [Fintype Label]
    (family : BeaconFamily intrinsic action flow Label)
    (left right : State) :
    ℝ :=
  dist (family.coordinate left) (family.coordinate right)

/-- Coordinate distance is a genuine point-separating distance when complete. -/
theorem beaconDistance_eq_zero_iff
    [Fintype Label]
    {family : BeaconFamily intrinsic action flow Label}
    (complete : family.Complete)
    (left right : State) :
    family.beaconDistance left right = 0 ↔ left = right := by
  rw [beaconDistance, dist_eq_zero]
  exact (Topology.IsEmbedding.injective complete).eq_iff

/--
The pullback of the carrier metric is a `MetricSpace`, not merely a
pseudometric, and its topology is definitionally replaced by the original
topology certified by the embedding.
-/
@[reducible] def Complete.metricSpace
    [Fintype Label]
    {family : BeaconFamily intrinsic action flow Label}
    (complete : family.Complete) :
    MetricSpace State :=
  complete.comapMetricSpace family.coordinate

omit [TopologicalSpace State] in
/-- The defect component vanishes exactly at its labeled beacon. -/
@[simp]
theorem relative_fst_eq_zero_iff
    (family : BeaconFamily intrinsic action flow Label)
    (label : Label)
    (state : State) :
    (family.relative label state).1 = 0 ↔
      state = family.beacon label :=
  family.defect_eq_zero_iff label state

/-- Translational velocity is the derivative of the coordinate trajectory. -/
def velocity
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time : ℝ) :
    Label → ℝ × ℝ :=
  deriv (fun parameter ↦ family.coordinate (trajectory parameter)) time

/-- The component of translational velocity relative to one beacon. -/
def relativeVelocity
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (label : Label)
    (time : ℝ) :
    ℝ × ℝ :=
  family.velocity trajectory time label

omit [TopologicalSpace State] in
/-- For differentiable coordinate paths, global velocity is componentwise. -/
theorem relativeVelocity_eq_deriv
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time : ℝ)
    (differentiable :
      ∀ label,
        DifferentiableAt ℝ
          (fun parameter ↦
            family.relative label (trajectory parameter))
          time)
    (label : Label) :
    family.relativeVelocity trajectory label time =
      deriv
        (fun parameter ↦
          family.relative label (trajectory parameter))
        time := by
  have componentwise :=
    deriv_pi
      (φ := fun parameter ↦
        family.coordinate (trajectory parameter))
      differentiable
  exact congrFun componentwise label

/-- Difference quotient used for beacon-metric derivatives. -/
def metricDifferenceQuotient
    [Fintype Label]
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time increment : ℝ) :
    ℝ :=
  family.beaconDistance
      (trajectory (time + increment))
      (trajectory time) /
    |increment|

/-- The metric derivative, whenever the punctured-limit certificate exists. -/
def HasBeaconMetricDerivativeAt
    [Fintype Label]
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time speed : ℝ) : Prop :=
  Filter.Tendsto
    (family.metricDifferenceQuotient trajectory time)
    (nhdsWithin 0 ({0}ᶜ))
    (nhds speed)

end BeaconFamily

end Mathematics.Operational
