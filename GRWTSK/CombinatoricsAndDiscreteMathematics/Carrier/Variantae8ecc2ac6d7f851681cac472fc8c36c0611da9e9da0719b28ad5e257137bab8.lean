-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeVertex.Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrototypeVertex.Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/WorldModelPrototype/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.WorldModelPrototype.Models
import Surface.ContinuousAssurance.WorldModel.Carrier
import Mathlib.Data.Fintype.Sum
import Mathlib.Tactic.DeriveFintype

/-!
# The exact finite communication carrier

The prototype carrier has five vertices, six directed translation edges, and
two declared two-cells.  Incidence is only finite combinatorial metadata: it
does not manufacture a semantic translation or make adjacent models
compatible.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeVertex.Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-- Vertices of the exact five-model prototype. -/
inductive PrototypeVertex
  | P | B | G | S | H
  deriving DecidableEq, Repr, Fintype

/-- Six typed translation-edge names. -/
inductive PrototypeEdge
  | τPB | τGP | τGB | τBS | τSH | τPH
  deriving DecidableEq, Repr, Fintype

/-- The two declared finite coherence faces. -/
inductive PrototypeFace
  | ΔGPB | ΔPBSH
  deriving DecidableEq, Repr, Fintype

/-- Graded cells of the two-dimensional semi-simplicial carrier. -/
inductive PrototypeCell
  | vertex (value : PrototypeVertex)
  | edge (value : PrototypeEdge)
  | face (value : PrototypeFace)
  deriving DecidableEq, Repr, Fintype

/-- Source and target of each directed translation edge. -/
def prototypeEdgeEndpoints : PrototypeEdge → PrototypeVertex × PrototypeVertex
  | .τPB => (.P, .B)
  | .τGP => (.G, .P)
  | .τGB => (.G, .B)
  | .τBS => (.B, .S)
  | .τSH => (.S, .H)
  | .τPH => (.P, .H)

/-- Edge boundary of each declared two-cell. -/
def prototypeFaceEdges : PrototypeFace → Finset PrototypeEdge
  | .ΔGPB => {.τGP, .τPB, .τGB}
  | .ΔPBSH => {.τPB, .τBS, .τSH, .τPH}

/-- Exact vertex support of any carrier cell. -/
def prototypeCellVertices : PrototypeCell → Finset PrototypeVertex
  | .vertex vertex => {vertex}
  | .edge edge =>
      {prototypeEdgeEndpoints edge |>.1, prototypeEdgeEndpoints edge |>.2}
  | .face .ΔGPB => {.G, .P, .B}
  | .face .ΔPBSH => {.P, .B, .S, .H}

/-- Cell dimension. -/
def prototypeCellDimension : PrototypeCell → Nat
  | .vertex _ => 0
  | .edge _ => 1
  | .face _ => 2

/-- Incidence is exact support inclusion together with dimension order. -/
def PrototypeIncident (small large : PrototypeCell) : Prop :=
  prototypeCellVertices small ⊆ prototypeCellVertices large ∧
    prototypeCellDimension small ≤ prototypeCellDimension large

instance (small large : PrototypeCell) : Decidable (PrototypeIncident small large) := by
  unfold PrototypeIncident
  infer_instance

/-- The exact finite carrier used by the integrated prototype. -/
def prototypeCarrier : CommunicationCarrier where
  Cell := PrototypeCell
  cellFintype := inferInstance
  cellDecEq := inferInstance
  dimension := prototypeCellDimension
  incident := PrototypeIncident
  incidentDecidable := inferInstance
  incidenceFinite := fun _ => Set.toFinite _
  identity := ⟨"world-model-carrier:five-model-prototype-v1"⟩

/-- Three selected opens in the finite cover. -/
inductive PrototypeOpen
  | U0 | U1 | U2
  deriving DecidableEq, Repr, Fintype

/-- Vertex content of each selected open. -/
def prototypeOpenVertices : PrototypeOpen → Finset PrototypeVertex
  | .U0 => {.G, .P, .B}
  | .U1 => {.P, .B, .S}
  | .U2 => {.B, .S, .H}

/-- The chosen cover consists of exactly `U0`, `U1`, and `U2`. -/
def prototypeCover : Finset PrototypeOpen := Finset.univ

@[simp] theorem prototypeCover_card : prototypeCover.card = 3 := by decide

/-- Every prototype vertex is attended by at least one selected open. -/
theorem prototypeCover_covers_vertices (vertex : PrototypeVertex) :
    ∃ openRegion ∈ prototypeCover,
      vertex ∈ prototypeOpenVertices openRegion := by
  cases vertex
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U1, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U2, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩

/-- The carrier has exactly thirteen cells: five vertices, six edges, two faces. -/
theorem prototypeCarrier_card : Fintype.card prototypeCarrier.Cell = 13 := by
  decide

/-- Declared adjacency remains distinct from semantic compatibility. -/
theorem prototype_incidence_does_not_supply_translation :
    prototypeCarrier.incident (.vertex .P) (.edge .τPB) ∧
      composeRelation .illustrativeProjection .theoremTransport = none := by
  constructor
  · decide
  · rfl

end DAF.Integration.WorldModelPrototype
