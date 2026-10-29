-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCutAccessObjective.Variant518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrimeCutAccessObjective.Variant518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e","mathematical_subject":"Foundations.Unclassified","original_sha256":"518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Access/PrimeCutAccess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PrimeCutGraph
import Mathematics.GraphAccess.Mode

/-!
# Domain-specific prime-cut access plans

Release-driven traversal is represented here as proposal scheduling.  It does
not acquire shortest-path authority by changing the closed foundational
`Supports` relation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCutAccessObjective.Variant518d014a6513e3dcea163ca754deaa064e4c5f643a63729a02e893572039626e

namespace Mathematics.SemiLocalDefect.Access

open Mathematics.GraphAccess

inductive PrimeCutAccessObjective
  | cardinalityShell
  | minimumProofCost
  | fairPrimeSectors
  | primitivePassivityObstruction
  | cofinalCylinder
  | maximumCertifiedRelease
deriving DecidableEq, Repr

inductive PrimeCutTraversalMode
  | bfsShell
  | dijkstra
  | rotor
  | obstruction
  | cylinder
  | releaseBestFirst
deriving DecidableEq, Repr

inductive CompilationAuthority
  | authoritative
  | advisoryProposal
deriving DecidableEq, Repr

structure PrimeCutAccessPlan where
  objective : PrimeCutAccessObjective
  mode : PrimeCutTraversalMode
  graphObjective : AccessObjective
  graphMode : TraversalMode
  authority : CompilationAuthority
  foundationalSupport :
    authority = .authoritative →
      Supports graphMode graphObjective

def PrimeCutAccessObjective.canonicalPlan :
    PrimeCutAccessObjective →
      PrimeCutAccessPlan
  | .cardinalityShell =>
      {
        objective := .cardinalityShell
        mode := .bfsShell
        graphObjective := .universalCoverage
        graphMode := .bfs
        authority := .advisoryProposal
        foundationalSupport := by
          intro impossible
          cases impossible
      }
  | .minimumProofCost =>
      {
        objective := .minimumProofCost
        mode := .dijkstra
        graphObjective := .minimumCost
        graphMode := .dijkstra
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.dijkstra
      }
  | .fairPrimeSectors =>
      {
        objective := .fairPrimeSectors
        mode := .rotor
        graphObjective := .fairExploration
        graphMode := .rotor
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.rotor
      }
  | .primitivePassivityObstruction =>
      {
        objective := .primitivePassivityObstruction
        mode := .obstruction
        graphObjective := .primitiveObstruction
        graphMode := .obstruction
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.obstruction
      }
  | .cofinalCylinder =>
      {
        objective := .cofinalCylinder
        mode := .cylinder
        graphObjective := .limitCylinderAccess
        graphMode := .cylinder
        authority := .authoritative
        foundationalSupport := by
          intro _
          exact Supports.cylinder
      }
  | .maximumCertifiedRelease =>
      {
        objective := .maximumCertifiedRelease
        mode := .releaseBestFirst
        graphObjective := .multiscaleDiversification
        graphMode := .recaman
        authority := .advisoryProposal
        foundationalSupport := by
          intro impossible
          cases impossible
      }

end Mathematics.SemiLocalDefect.Access
