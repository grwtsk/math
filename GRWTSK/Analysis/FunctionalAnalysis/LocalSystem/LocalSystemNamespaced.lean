-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TerrainFacet.Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.TerrainFacet.Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/LocalSystem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Terrain
import DAF.Hilbert.Finite

/-!
# Finite local coefficient systems on active terrain

The transport attached to an active edge is proof-carrying: its source and
target support projections are exact self-adjoint idempotents and the matrix
has those initial and final projections.  This module does not infer a
transport merely from graph adjacency.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.TerrainFacet.Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a

noncomputable section

namespace DAF.Universe

open DAF.Hilbert

universe u

/-- Fixed vocabulary for the semantic facet of a local coefficient. -/
inductive TerrainFacet
  | statement
  | hypotheses
  | proof
  | definition
  | representation
  | runtime
  | boundary
  | externalAuthority
  | nonclaim
  deriving DecidableEq, Repr, Inhabited

/-- An exact finite partial isometry on a common coefficient fiber. -/
structure CertifiedPartialIsometry
    (FiberIndex : Type u) [Fintype FiberIndex] [DecidableEq FiberIndex] where
  operator : FiniteOperator FiberIndex FiberIndex
  sourceProjection : FiniteOperator FiberIndex FiberIndex
  targetProjection : FiniteOperator FiberIndex FiberIndex
  source_selfAdjoint : sourceProjection.IsHermitian
  target_selfAdjoint : targetProjection.IsHermitian
  source_idempotent : sourceProjection * sourceProjection = sourceProjection
  target_idempotent : targetProjection * targetProjection = targetProjection
  initialProjection : operator.conjTranspose * operator = sourceProjection
  finalProjection : operator * operator.conjTranspose = targetProjection

/-- Uniform finite local coefficients over one closed active terrain.  Uniform
coordinates are a runtime-friendly presentation of the cellwise finite
fibers; support projections select the actual source and target fibers. -/
structure FiniteLocalSystem
    {manifest : UniverseManifest}
    (terrain : ActiveTerrain manifest) where
  FiberIndex : Type
  instFintypeFiberIndex : Fintype FiberIndex
  instDecidableEqFiberIndex : DecidableEq FiberIndex
  edgeTransport : (edge : TerrainEdgeId) →
    CertifiedPartialIsometry FiberIndex
  edgeAuthority : ∀ edge ∈ terrain.edges, manifest.HasEdge edge

attribute [instance] FiniteLocalSystem.instFintypeFiberIndex
  FiniteLocalSystem.instDecidableEqFiberIndex

namespace FiniteLocalSystem

/-- Every selected local-system edge resolves in the pinned manifest. -/
theorem transport_edge_resolves
    {manifest : UniverseManifest}
    {terrain : ActiveTerrain manifest}
    (system : FiniteLocalSystem terrain)
    {edge : TerrainEdgeId}
    (membership : edge ∈ terrain.edges) :
    manifest.HasEdge edge :=
  system.edgeAuthority edge membership

end FiniteLocalSystem

end DAF.Universe
