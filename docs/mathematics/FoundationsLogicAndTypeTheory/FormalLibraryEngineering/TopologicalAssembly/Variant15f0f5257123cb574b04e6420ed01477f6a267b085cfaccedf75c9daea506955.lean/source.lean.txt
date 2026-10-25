-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologicalAdmittedGraphHierarchyResult.Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TopologicalAdmittedGraphHierarchyResult.Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab","mathematical_subject":"Foundations.Unclassified","original_sha256":"c46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalAssembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalTheorems.TG01_AdmittedEdgeGraph
import FCRS.ControlledSpherical.TopologicalTheorems.TG02_GraphQuotientRealization
import FCRS.ControlledSpherical.TopologicalTheorems.TG03_VertexEndpointEquations
import FCRS.ControlledSpherical.TopologicalTheorems.TG04_EdgeInteriorInjectivity
import FCRS.ControlledSpherical.TopologicalTheorems.TG05_EdgeInteriorDisjointness
import FCRS.ControlledSpherical.TopologicalTheorems.TG06_GraphRealizationTopology
import FCRS.ControlledSpherical.TopologicalTheorems.TG07_TopologicalPlanarWitness
import FCRS.ControlledSpherical.TopologicalTheorems.TG08_TopologicalSpatialWitness
import FCRS.ControlledSpherical.TopologicalTheorems.TG09_BoundaryCompatibleEmbedding
import FCRS.ControlledSpherical.TopologicalTheorems.TG10_GeometricRefinementContinuity
import FCRS.ControlledSpherical.TopologicalTheorems.TG11_GeometricRefinementCoherence
import FCRS.ControlledSpherical.TopologicalTheorems.TG12_TopologicalCompatibleFamily

/-
The scoped assembly starts with a factoring sieve, forms its admitted-edge
graph, realizes that graph as the endpoint quotient, and then retains one
coherent research package for a selected topological S² or S³ branch.  It is
deliberately independent of the controlled-product decoder assembly.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologicalAdmittedGraphHierarchyResult.Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab

universe uVertex uEdge uMorph uFactor uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology
open FCRS.ControlledSpherical.TopologicalTheorems

/--
All derived quotient facts and all scoped research projections for one exact
admitted graph and one exact topological witness package.
-/
structure TopologicalAdmittedGraphHierarchyResult
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage)
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      (AdmittedGraph G sieve occurs) I S1 S2 S3 Stage) : Prop where
  admittedEdgeGraph : TG01Claim G sieve occurs
  quotientRealization : TG02Claim (AdmittedGraph G sieve occurs) I
  endpointEquations : TG03Claim (AdmittedGraph G sieve occurs) I
  sameEdgeInteriorInjective : TG04Claim (AdmittedGraph G sieve occurs) I
  distinctInteriorsAndVertices : TG05Claim (AdmittedGraph G sieve occurs) I
  quotientTopology : TG06Claim (AdmittedGraph G sieve occurs) I

  planarWhenSphere2Selected : TG07Claim W
  spatialWhenSphere3Selected : TG08Claim W
  boundaryWhenSphere2Selected : TG09Claim W
  refinementContinuity : TG10Claim W
  refinementCoherence : TG11Claim W
  compatibleFamilyTopology : TG12Claim W.refinement

  sphere1Compact : Compact S1.topology
  selectedSphereCompact :
    SelectedTopologicalSphereCompact W.selectedEmbedding

/-- Assemble the hierarchy from one explicit, coherent research package. -/
theorem assembleTopologicalAdmittedGraphHierarchy
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage)
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      (AdmittedGraph G sieve occurs) I S1 S2 S3 Stage) :
    TopologicalAdmittedGraphHierarchyResult
      G sieve occurs I S1 S2 S3 Stage W where
  admittedEdgeGraph := tg01_admittedEdgeGraph G sieve occurs
  quotientRealization :=
    tg02_graphQuotientRealization (AdmittedGraph G sieve occurs) I
  endpointEquations :=
    tg03_vertexEndpointEquations (AdmittedGraph G sieve occurs) I
  sameEdgeInteriorInjective :=
    tg04_edgeInteriorInjectivity (AdmittedGraph G sieve occurs) I
  distinctInteriorsAndVertices :=
    tg05_edgeInteriorDisjointness (AdmittedGraph G sieve occurs) I
  quotientTopology :=
    tg06_graphRealizationTopology (AdmittedGraph G sieve occurs) I
  planarWhenSphere2Selected := tg07_topologicalPlanarWitness W
  spatialWhenSphere3Selected := tg08_topologicalSpatialWitness W
  boundaryWhenSphere2Selected := tg09_boundaryCompatibleEmbedding W
  refinementContinuity := tg10_geometricRefinementContinuity W
  refinementCoherence := tg11_geometricRefinementCoherence W
  compatibleFamilyTopology := tg12_topologicalCompatibleFamily W.refinement
  sphere1Compact := W.sphere1Compact
  selectedSphereCompact := W.selectedSphereCompact

/--
Registry-driven proposition-valued assembly.  The existential package is
eliminated only into `Nonempty`; no data is extracted across the research
registry's proposition boundary.
-/
theorem topological_admitted_graph_scoped_hierarchy
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage)
    (registry : TopologicalGraphResearchRegistry.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      (AdmittedGraph G sieve occurs) I S1 S2 S3 Stage) :
    Nonempty
      {W : TopologicalGraphWitnessPackage.{
          uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
          (AdmittedGraph G sieve occurs) I S1 S2 S3 Stage //
        TopologicalAdmittedGraphHierarchyResult
          G sieve occurs I S1 S2 S3 Stage W} := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨⟨W, assembleTopologicalAdmittedGraphHierarchy
    G sieve occurs I S1 S2 S3 Stage W⟩⟩

end FCRS.ControlledSpherical
