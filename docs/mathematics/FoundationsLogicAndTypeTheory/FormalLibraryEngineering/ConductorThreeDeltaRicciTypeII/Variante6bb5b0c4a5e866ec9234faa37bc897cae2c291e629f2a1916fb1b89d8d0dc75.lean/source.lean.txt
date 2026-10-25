-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinarySurgeryControl.Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BinarySurgeryControl.Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeDeltaRicciTypeII.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanDelta
public import Surface.Core.ConductorThreeWangZahlTTStar
public import Surface.Core.TypeII.Surgery
import Mathlib.Tactic

/-!
# Conditional delta--incidence-surgery assembly for conductor three

This module proves only an assembly theorem.  It does not construct the
missing Type II estimate.

The finite tree below can be inhabited only by supplying, at every node,
one of the canonical `Surface.Core.TypeII` mechanisms:

* a coefficient-sensitive transverse terminal certificate;
* an unsigned Wang--Zahl diffuse certificate *and* a separate signed local
  readout certificate;
* an explicit combinatorial incidence-flow equation with backward
  correlation control; or
* an exact universal surgery decomposition, strict complexity decrease,
  and backward potential control.

The tree telescope is checked here.  The field `decisive_totalCost_bound` is the
decisive unproved quantitative input: it must be derived from the local
trichotomy, terminal estimates, flow dissipation, surgery errors, and move
count.  It is not a delta-ring consequence and it is not supplied by the
unsigned Wang--Zahl theorem.  Neither the final Type II predicate nor a root
potential bound is stored in the assembly surface.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinarySurgeryControl.Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3

public section

namespace Surface.Core.ConductorThreeDeltaRicciTypeII

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanDelta
open Surface.Core.ConductorThreeWangZahlTTStar
open Surface.Core.TypeII

/-! ## A geometry-certified binary surgery tree -/

section Tree

universe u

variable {N : ℕ} {A : Type u} [CommRing A]
variable {base : CubicFrobeniusRewriteBase N A}

local notation "State" => TypeIISurgeryState N A base

/-- The two children of one binary surgery node. -/
@[expose]
def binaryChildren (left right : State) : Fin 2 → State
  | ⟨0, _⟩ => left
  | ⟨1, _⟩ => right

/-- A binary wrapper around the canonical one-to-many surgery control. -/
structure BinarySurgeryControl
    (parent left right : State) where
  control : SurgeryCorrelationControl parent (Fin 2)
    (binaryChildren left right)

@[surface_novel, surface_published]
theorem BinarySurgeryControl.potentialControl
    {parent left right : State}
    (control : BinarySurgeryControl parent left right) :
    parent.correlation.maxPotential ≤
      left.correlation.maxPotential + right.correlation.maxPotential +
        control.control.surgeryError := by
  have h := control.control.potentialControl
  simpa [binaryChildren, Fin.sum_univ_two] using h

/-- Continuous combinatorial Ricci evolution and coefficient-correlation
transport for the same flow edge.  The endpoint identities prevent an
unrelated ODE path from being paired with an arbitrary correlation step. -/
structure RicciFlowNodeControl (before after : State) where
  flow : CombinatorialRicciFlow before
  correlation : CombinatorialFlowCorrelationControl before after
  duration_agrees : correlation.segment.duration = flow.finalTime
  final_metric : ∀ left right,
    flow.metricPath flow.finalTime left right =
      after.interaction.edgeWeight left right
  final_activeAtoms :
    after.interaction.activeAtoms = before.interaction.activeAtoms

/-- A terminal transverse estimate must be coefficient-sensitive.  Merely
asserting direction separation or a full-Gram norm bound does not inhabit
this certificate. -/
structure TransverseTerminalCertificate (state : State) where
  geometry : TransverseAlternative state
  terminalCost : ℝ
  terminalCost_nonneg : 0 ≤ terminalCost
  coefficientSensitiveTTStarBound :
    state.correlation.maxPotential ≤ terminalCost

/-- Wang--Zahl supplies the unsigned geometric field.  The signed local
readout remains an explicitly separate theorem obligation. -/
structure DiffuseTerminalCertificate (state : State) where
  geometry : WangZahlDiffuseAlternative state
  terminalCost : ℝ
  terminalCost_nonneg : 0 ≤ terminalCost
  coefficientSensitiveDiffuseBound :
    state.correlation.maxPotential ≤ terminalCost

/-- A genuinely finite terminal case, including its direct analytic bound. -/
structure FiniteTerminalCertificate (state : State) where
  active_card_le_one : state.correlation.activeAtoms.card ≤ 1
  terminalCost : ℝ
  terminalCost_nonneg : 0 ≤ terminalCost
  directCoefficientBound : state.correlation.maxPotential ≤ terminalCost

/-- Explicit topological recognition and cut adapter for a surgical neck.

`SphericalLinkCandidate` alone is only an incidence/Euler candidate.  A
binary surgery node therefore also carries a separately proved topological
sphere-recognition proposition and a proposition identifying the algebraic
children with the recognized cut.  These are assumptions at this interface,
not consequences of the candidate fields. -/
structure SphericalNeckCutCertificate (parent : State) where
  alternative : SurgicalNeckAlternative parent
  recognizedLink : SphericalLinkCandidate N
  recognizedLink_highConcentration : ∃ scale : ℝ,
    parent.interaction.IsHighConcentrationCluster
      scale recognizedLink.cluster
  topologicalSphereRecognition : Prop
  topologicalSphereRecognition_proof : topologicalSphereRecognition
  cutAdapter : Prop
  cutAdapter_proof : cutAdapter

/-- Finite tree indexed by its root state.

The constructors make malformed moves unrepresentable, so no contradiction
field is used to reject a flow with two children or a surgery without local
potential transport. -/
inductive DeltaRicciSurgeryTree : State → Type (u + 1)
  | finiteLeaf (state : State) :
      FiniteTerminalCertificate state → DeltaRicciSurgeryTree state
  | transverseLeaf (state : State) :
      TransverseTerminalCertificate state → DeltaRicciSurgeryTree state
  | diffuseLeaf (state : State) :
      DiffuseTerminalCertificate state → DeltaRicciSurgeryTree state
  | flow {before after : State} :
      RicciFlowNodeControl before after →
      DeltaRicciSurgeryTree after → DeltaRicciSurgeryTree before
  | split {parent left right : State} :
      SphericalNeckCutCertificate parent →
      BinarySurgeryControl parent left right →
      DeltaRicciSurgeryTree left → DeltaRicciSurgeryTree right →
      DeltaRicciSurgeryTree parent

namespace DeltaRicciSurgeryTree

/-- Total terminal energy plus every explicitly recorded local flow and
surgery cost. -/
@[expose]
def totalCost {state : State} :
    DeltaRicciSurgeryTree state → ℝ
  | .finiteLeaf _ terminal => terminal.terminalCost
  | .transverseLeaf _ terminal => terminal.terminalCost
  | .diffuseLeaf _ terminal => terminal.terminalCost
  | .flow control child =>
      child.totalCost + control.correlation.integratedDissipation +
        control.correlation.deformationError
  | .split _ control left right =>
      left.totalCost + right.totalCost + control.control.surgeryError

/-- The local backward correlation inequalities telescope to the root.

This theorem uses the explicit canonical flow and surgery controls.  It does
not use a global Type II estimate, a Frobenius depth, or an unsigned union
volume as a signed bound. -/
@[surface_novel, surface_published]
theorem rootPotential_le_totalCost {state : State}
    (tree : DeltaRicciSurgeryTree state) :
    state.correlation.maxPotential ≤ tree.totalCost := by
  induction tree with
  | finiteLeaf state terminal =>
      exact terminal.directCoefficientBound
  | transverseLeaf state terminal =>
      exact terminal.coefficientSensitiveTTStarBound
  | diffuseLeaf state terminal =>
      exact terminal.coefficientSensitiveDiffuseBound
  | flow control child inductionHypothesis =>
      calc
        _ ≤ child.totalCost + control.correlation.integratedDissipation +
              control.correlation.deformationError := by
          exact control.correlation.backwardPotentialControl.trans
            (add_le_add
              (add_le_add inductionHypothesis (le_refl _)) (le_refl _))
  | split alternative control left right ihLeft ihRight =>
      exact control.potentialControl.trans (by
        exact add_le_add_left (add_le_add ihLeft ihRight)
          control.control.surgeryError)

end DeltaRicciSurgeryTree

end Tree

/-! ## Conditional global assumptions and assembly -/

/-- A zero-residual bounded readout is controlled by the concrete
coefficient-sensitive maximum potential.  This derives the initial readout
bridge from the canonical state fields rather than storing the desired
squared inequality as an assumption. -/
@[surface_novel, surface_published]
theorem coefficientPrefix_norm_sq_le_maxPotential
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (readoutConstant : ℝ)
    (hreadout : ‖state.readout‖ ≤ readoutConstant)
    (x : ℕ) (hx : x ≤ 2 * N) (hresidual : state.residual x = 0) :
    ‖coefficientPrefix state.correlation.activeAtoms x‖ ^ 2 ≤
      readoutConstant ^ 2 * state.correlation.maxPotential := by
  let packetState := coefficientPacketState state.correlation.realization
    state.correlation.activeAtoms x
  have happly : ‖state.readout packetState‖ ≤
      readoutConstant * ‖packetState‖ :=
    ContinuousLinearMap.le_of_opNorm_le state.readout hreadout packetState
  have hreadout_nonneg : 0 ≤ ‖state.readout packetState‖ := norm_nonneg _
  have hpacket_nonneg : 0 ≤ ‖packetState‖ := norm_nonneg _
  have hsquare : ‖state.readout packetState‖ ^ 2 ≤
      readoutConstant ^ 2 * ‖packetState‖ ^ 2 := by
    nlinarith
  have henergy : ‖packetState‖ ^ 2 ≤ state.correlation.maxPotential := by
    calc
      ‖packetState‖ ^ 2 =
          correlationEnergyAt state.correlation.realization
            state.correlation.activeAtoms x := by
        rfl
      _ ≤ state.correlation.potentialAt x := by
        unfold CorrelationData.potentialAt
        exact le_add_of_nonneg_right
          (state.correlation.residualBudget_nonneg x)
      _ ≤ state.correlation.maxPotential :=
        state.correlation.potentialAt_le_maxPotential hx
  have hresidual' : state.correlation.residual x = 0 := by
    simpa [TypeIISurgeryState.residual] using hresidual
  rw [state.exactReadoutDecomposition x hx, hresidual', add_zero]
  exact hsquare.trans
    (mul_le_mul_of_nonneg_left henergy (sq_nonneg readoutConstant))

/-- The half-plus-epsilon amplitude scale. -/
@[expose]
def typeIIAmplitudeScale (N : ℕ) (epsilon : ℝ) : ℝ :=
  (N : ℝ) ^ (1 / 2 + epsilon)

/-- Conditional delta/incidence/surgery assumptions for one fixed Vaughan packet
route.

The surgery tree is fixed at scale `N`, before `epsilon`.  Its terminal costs
and local errors therefore cannot be selected separately for each requested
exponent.  `decisive_totalCost_bound` is nevertheless the central unresolved
quantitative theorem; proving it requires the coefficient-sensitive
neck/transverse/diffuse trichotomy and global error accounting.

This is deliberately named `AssemblyAssumptions`, not a constructed program:
a terminal cost can always be chosen as the terminal potential, so the tree
has no quantitative force unless `decisive_totalCost_bound` is proved from
independent local estimates and move-count/error theorems. -/
structure ConductorThreeDeltaRicciAssemblyAssumptions where
  route : ConductorThreeVaughanPacketRoute
  deltaBase : ∀ N : ℕ, DeltaTypeIICoefficientBase N
  initialState : ∀ N : ℕ,
    TypeIISurgeryState N (deltaBase N).A
      (deltaTypeIICoefficientBaseAdapter (deltaBase N))
  initial_pairing_exact : ∀ N x, x ≤ 2 * N →
    coefficientPrefix (initialState N).correlation.activeAtoms x =
      route.typeIISignedPairing N x
  readoutConstant : ℝ
  readoutConstant_nonneg : 0 ≤ readoutConstant
  initial_readout_norm_le : ∀ N,
    ‖(initialState N).readout‖ ≤ readoutConstant
  initial_residual_zero : ∀ N x, x ≤ 2 * N →
    (initialState N).residual x = 0
  surgeryTree : ∀ N,
    DeltaRicciSurgeryTree (initialState N)
  /-- **Decisive unproved quantitative input.**  This is the global result
  that must be established from the local terminal bounds, incidence-flow
  dissipation, surgery errors, complexity termination, and move count. -/
  decisive_totalCost_bound : ∀ epsilon : ℝ, 0 < epsilon →
    ∃ B : ℝ, 0 ≤ B ∧ ∀ N : ℕ, 2 ≤ N →
      (surgeryTree N).totalCost ≤
        B ^ 2 * (typeIIAmplitudeScale N epsilon) ^ 2

/-- Local delta/incidence/surgery certificates imply the existing
route-specific Type II maximal predicate.

All force resides in the coefficient-sensitive terminal certificates,
canonical backward transport controls, bounded initial readout, and the
explicit `decisive_totalCost_bound`. -/
@[surface_novel, surface_published]
theorem deltaRicciAssemblyAssumptions_imply_uniformTypeIIMaximal
    (assumptions : ConductorThreeDeltaRicciAssemblyAssumptions) :
    UniformConductorThreeTypeIIMaximal assumptions.route := by
  intro epsilon hepsilon
  obtain ⟨B, hB, hcost⟩ :=
    assumptions.decisive_totalCost_bound epsilon hepsilon
  refine ⟨assumptions.readoutConstant * B,
    mul_nonneg assumptions.readoutConstant_nonneg hB, ?_⟩
  intro N hN x hx
  have hroot :=
    DeltaRicciSurgeryTree.rootPotential_le_totalCost
      (assumptions.surgeryTree N)
  have hcostN := hcost N hN
  have hpotential :
      (assumptions.initialState N).correlation.maxPotential ≤
        B ^ 2 * (typeIIAmplitudeScale N epsilon) ^ 2 :=
    hroot.trans hcostN
  have hreadout := coefficientPrefix_norm_sq_le_maxPotential
    (assumptions.initialState N) assumptions.readoutConstant
      (assumptions.initial_readout_norm_le N) x hx
      (assumptions.initial_residual_zero N x hx)
  rw [assumptions.initial_pairing_exact N x hx] at hreadout
  have hsquared :
      ‖assumptions.route.typeIISignedPairing N x‖ ^ 2 ≤
        (assumptions.readoutConstant * B *
          typeIIAmplitudeScale N epsilon) ^ 2 := by
    calc
      ‖assumptions.route.typeIISignedPairing N x‖ ^ 2 ≤
          assumptions.readoutConstant ^ 2 *
            (assumptions.initialState N).correlation.maxPotential := hreadout
      _ ≤ assumptions.readoutConstant ^ 2 *
          (B ^ 2 * (typeIIAmplitudeScale N epsilon) ^ 2) :=
        mul_le_mul_of_nonneg_left hpotential (sq_nonneg _)
      _ = (assumptions.readoutConstant * B *
          typeIIAmplitudeScale N epsilon) ^ 2 := by ring
  have hnorm : 0 ≤ ‖assumptions.route.typeIISignedPairing N x‖ := norm_nonneg _
  have hrate : 0 ≤ typeIIAmplitudeScale N epsilon :=
    Real.rpow_nonneg (Nat.cast_nonneg N) _
  have htarget : 0 ≤ assumptions.readoutConstant * B *
      typeIIAmplitudeScale N epsilon :=
    mul_nonneg (mul_nonneg assumptions.readoutConstant_nonneg hB) hrate
  have hfinal :
      ‖assumptions.route.typeIISignedPairing N x‖ ≤
        assumptions.readoutConstant * B * typeIIAmplitudeScale N epsilon :=
    (sq_le_sq₀ hnorm htarget).mp hsquared
  simpa [typeIIAmplitudeScale, mul_assoc] using hfinal

end

end Surface.Core.ConductorThreeDeltaRicciTypeII
