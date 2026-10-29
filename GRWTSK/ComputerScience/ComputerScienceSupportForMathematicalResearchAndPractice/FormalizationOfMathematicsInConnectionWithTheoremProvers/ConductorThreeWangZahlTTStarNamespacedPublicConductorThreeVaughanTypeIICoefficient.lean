-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedMomentEngine.Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PolarizedMomentEngine.Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeWangZahlTTStar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMomentPackets
public import Surface.Core.ConductorThreeTwistedVaughan
public import Surface.Core.ConductorThreeVaughanTubeScaffold
import Mathlib.Tactic

/-!
# Coefficient-sensitive conductor-three Type II boundary

Scalar signs only conjugate the full packet Gram operator by a diagonal
unitary, so the full Gram norm cannot be the missing cancellation theorem.
This module therefore fixes the arithmetic vector first: the unresolved
estimate is the maximal Type II Vaughan prefix for `chi_3 * Lambda`, not a
bound quantified over arbitrary packet coefficients.

Wang--Zahl geometry remains useful unsigned information about a fixed packet
scaffold.  It is stored separately from the signed estimate, and no theorem
in this module claims that convex non-clustering alone proves arithmetic
cancellation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedMomentEngine.Variant1c76723b9c215aa8fd2b0fa51d6118f08f3507d6dedb052c7b466f35493fb6cc

public section

namespace Surface.Core.ConductorThreeWangZahlTTStar

noncomputable section

open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanTubeScaffold
open Surface.Core.PrimeLattice.PolarizedGram

/-- The fixed fourth-root Type II coefficient at arithmetic index `n`. -/
@[expose]
def conductorThreeVaughanTypeIICoefficient (N n : ℕ) : ℝ :=
  let U := vaughanFourthRootCutoff N
  (conductorThreeIntegerValue n : ℝ) * vaughanTypeIIScalar U U n

/-- The specific Type II Vaughan prefix.  This is a fixed arithmetic vector;
it is not an operator norm over arbitrary coefficient inputs. -/
@[expose]
def conductorThreeVaughanTypeIIPrefix (N x : ℕ) : ℝ :=
  let U := vaughanFourthRootCutoff N
  vaughanPrefix
    (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
      vaughanTypeIIScalar U U n) x

/-- The other three fixed Vaughan prefixes.  Their estimates use only the
period-three character and elementary finite summation. -/
@[expose]
def conductorThreeVaughanTypeIPrefix (N x : ℕ) : ℝ :=
  let U := vaughanFourthRootCutoff N
  vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeZeroScalar U n) x +
    vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeI1Scalar U U n) x +
    vaughanPrefix
      (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
        vaughanTypeI2Scalar U n) x

/-- Exact checked separation of the conductor-three prefix into its
elementary Type I part and its coefficient-sensitive Type II part. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix (N x : ℕ) :
    Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x =
      conductorThreeVaughanTypeIPrefix N x +
        conductorThreeVaughanTypeIIPrefix N x := by
  let U := vaughanFourthRootCutoff N
  have h := conductorThreePsi_eq_vaughan_prefixes U U x
  simpa [conductorThreeVaughanTypeIPrefix,
    conductorThreeVaughanTypeIIPrefix,
    conductorThreeVaughanTypeIICoefficient, U, add_assoc] using h

/-- Local packet-interaction evidence for a fixed moment route.  It carries
only overlap information; no full-Gram or arithmetic estimate is a field. -/
structure PolarizedMomentEngine
    (route : ConductorThreePrimeMomentRoute) where
  interaction : ∀ N, PolarizedInteractionControl (route.frame N)

/-- A fixed packet scaffold for the exact Vaughan Type II prefix.

The frame, geometry, and interaction data are selected before `epsilon`.
`typeIISignedPairing_eq` is an exact readout identity, not an inequality and
not theorem authority for cancellation. -/
structure ConductorThreeVaughanPacketRoute where
  frame : (N : ℕ) →
    Surface.Core.PrimeLattice.MomentPath.ConductorThreeCoefficientPacketFrame N
  typeIITube : {N : ℕ} → VaughanTypeIIFactorAtom N →
    Surface.Core.PrimeWalkSpatialEncoding.UnitTube3
  typeIITube_eq_scaffold : ∀ {N : ℕ} (a : VaughanTypeIIFactorAtom N),
    typeIITube a = vaughanTypeIITube a
  typeIISignedPairing : (N x : ℕ) → ℂ
  typeIISignedPairing_eq : ∀ (N x : ℕ), x ≤ 2 * N →
    typeIISignedPairing N x =
      (conductorThreeVaughanTypeIIPrefix N x : ℂ)
  geometry : ∀ N, 2 ≤ N →
    Nonempty (WangZahlGeometryForFrame (frame N))
  interaction : ∀ N, PolarizedInteractionControl (frame N)

/-- The actual unresolved arithmetic theorem.  It is restricted to the
specific fourth-root Vaughan vectors recovered by the route. -/
@[expose]
def UniformConductorThreeTypeIIMaximal
    (route : ConductorThreeVaughanPacketRoute) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ∀ x : ℕ, x ≤ 2 * N →
          ‖route.typeIISignedPairing N x‖ ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- Corrected Wang--Zahl program: one fixed coefficient-level scaffold plus
the specific Type II maximal theorem.  The program contains no generic
phase-conjugated Gram bound. -/
@[expose]
def ConductorThreePolarizedWangZahlProgram : Prop :=
  ∃ route : ConductorThreeVaughanPacketRoute,
    UniformConductorThreeTypeIIMaximal route

/-- Route-level control transfers to the literal Vaughan Type II prefix via
the exact pairing identity. -/
@[surface_novel, surface_published]
theorem uniformTypeIIMaximal_implies_arithmetic
    (route : ConductorThreeVaughanPacketRoute)
    (hII : UniformConductorThreeTypeIIMaximal route) :
    ∀ epsilon : ℝ, 0 < epsilon →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          ∀ x : ℕ, x ≤ 2 * N →
            |conductorThreeVaughanTypeIIPrefix N x| ≤
              C * (N : ℝ) ^ (1 / 2 + epsilon) := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hII epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  have h := hbound N hN x hx
  rw [route.typeIISignedPairing_eq N x hx] at h
  simpa [Complex.norm_real, Real.norm_eq_abs] using h

end

end Surface.Core.ConductorThreeWangZahlTTStar
