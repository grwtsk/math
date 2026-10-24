# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RadoUniversalGraph.Variant93bea0833d785592e278a5f70494c4a8bfb7ada413e91ad6979a2947c3523a10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1704a8bae67955df4e6ff0226538672079997b27` · SHA-256 `c6f6f60c10023be49315026d9abff40ac75a478d4b770b7a8c33c168da946821`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e","mathematical_subject":"Computation.DataStructures","original_sha256":"f41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ResearchSurvey/Sources/RadoUniversalGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e

set_option autoImplicit false

namespace Think.ResearchSurvey.Sources.RadoUniversalGraph

/-
Survey target: Rado1964, R. Rado, "Universal graphs and universal functions",
Acta Arithmetica 9 (1964), 331-340, DOI 10.4064/aa-9-4-331-340.

This file records the countable universal/Rado graph extension property as a
finite formalization target. It does not prove the extension property, induced
universality, homogeneity, or any witness-insertion bridge for the heatflow
algorithm. Those obligations remain explicit residues.
-/

universe u

structure Context where
  Vertex : Type u
  ExternalGraph : Type u
  ExternalVertex : ExternalGraph -> Type u
  Adj : Vertex -> Vertex -> Prop
  ExternalAdj : ∀ G : ExternalGraph, ExternalVertex G -> ExternalVertex G -> Prop
  CountableAmbient : Prop
  CountableExternal : ExternalGraph -> Prop
  GraphSymmetric : Prop
  GraphIrreflexive : Prop
  ExternalGraphSymmetric : ExternalGraph -> Prop
  ExternalGraphIrreflexive : ExternalGraph -> Prop

def ListDisjoint {α : Type u} (xs ys : List α) : Prop :=
  ∀ a : α, a ∈ xs -> a ∈ ys -> False

def FreshFrom {α : Type u} (a : α) (xs : List α) : Prop :=
  ¬ a ∈ xs

def AdjacentToAll (ctx : Context) (w : ctx.Vertex) (xs : List ctx.Vertex) : Prop :=
  ∀ u : ctx.Vertex, u ∈ xs -> ctx.Adj w u

def AvoidsAll (ctx : Context) (w : ctx.Vertex) (xs : List ctx.Vertex) : Prop :=
  ∀ v : ctx.Vertex, v ∈ xs -> ¬ ctx.Adj w v

def ExtensionProperty (ctx : Context) : Prop :=
  ∀ U V : List ctx.Vertex,
    ListDisjoint U V ->
      ∃ w : ctx.Vertex,
        FreshFrom w (U ++ V) ∧
        AdjacentToAll ctx w U ∧
        AvoidsAll ctx w V

def IsInducedEmbedding
    (ctx : Context)
    (G : ctx.ExternalGraph)
    (embed : ctx.ExternalVertex G -> ctx.Vertex) : Prop :=
  Function.Injective embed ∧
    ∀ a b : ctx.ExternalVertex G,
      (ctx.Adj (embed a) (embed b) ↔ ctx.ExternalAdj G a b)

def InducedUniversal (ctx : Context) : Prop :=
  ∀ G : ctx.ExternalGraph,
    ctx.CountableExternal G ->
      ∃ embed : ctx.ExternalVertex G -> ctx.Vertex,
        IsInducedEmbedding ctx G embed

def ExtensionSupportsWitnessInsertion (ctx : Context) : Prop :=
  ∀ U V : List ctx.Vertex,
    ListDisjoint U V ->
      ∃ w : ctx.Vertex,
        FreshFrom w (U ++ V) ∧
        AdjacentToAll ctx w U ∧
        AvoidsAll ctx w V

inductive Atom where
  | ambientRadoGraph
  | countableVertexCarrier
  | adjacencyRelation
  | graphSimplicityLaws
  | finiteConstraintSets
  | disjointConstraintSets
  | connectAvoidSpecification
  | freshWitnessOutsideSubset
  | radoExtensionProperty
  | subsetAndInducedGraph
  | finiteInducedUniversality
  | countableInducedUniversality
  | witnessInsertion
  | countableExhaustionLimit
  | totalObjectiveAndConvergence
  | sourceAuthorityBoundary
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .ambientRadoGraph => "ambient_rado_graph"
  | .countableVertexCarrier => "countable_vertex_carrier"
  | .adjacencyRelation => "adjacency_relation"
  | .graphSimplicityLaws => "graph_simplicity_laws"
  | .finiteConstraintSets => "finite_constraint_sets"
  | .disjointConstraintSets => "disjoint_constraint_sets"
  | .connectAvoidSpecification => "connect_avoid_specification"
  | .freshWitnessOutsideSubset => "fresh_witness_outside_subset"
  | .radoExtensionProperty => "rado_extension_property"
  | .subsetAndInducedGraph => "subset_and_induced_graph"
  | .finiteInducedUniversality => "finite_induced_universality"
  | .countableInducedUniversality => "countable_induced_universality"
  | .witnessInsertion => "witness_insertion"
  | .countableExhaustionLimit => "countable_exhaustion_limit"
  | .totalObjectiveAndConvergence => "total_objective_and_convergence"
  | .sourceAuthorityBoundary => "source_authority_boundary"

def Atom.kind : Atom -> FWR.ResidueKind
  | .ambientRadoGraph => FWR.ResidueKind.missingDefinition
  | .countableVertexCarrier => FWR.ResidueKind.missingDefinition
  | .adjacencyRelation => FWR.ResidueKind.missingDefinition
  | .graphSimplicityLaws => FWR.ResidueKind.missingDefinition
  | .finiteConstraintSets => FWR.ResidueKind.missingFiniteWitness
  | .disjointConstraintSets => FWR.ResidueKind.missingFiniteWitness
  | .connectAvoidSpecification => FWR.ResidueKind.missingFiniteWitness
  | .freshWitnessOutsideSubset => FWR.ResidueKind.missingFiniteWitness
  | .radoExtensionProperty => FWR.ResidueKind.externalTheoremNotImported
  | .subsetAndInducedGraph => FWR.ResidueKind.missingDecode
  | .finiteInducedUniversality => FWR.ResidueKind.externalTheoremNotImported
  | .countableInducedUniversality => FWR.ResidueKind.externalTheoremNotImported
  | .witnessInsertion => FWR.ResidueKind.missingLowering
  | .countableExhaustionLimit => FWR.ResidueKind.missingContinuumLimit
  | .totalObjectiveAndConvergence => FWR.ResidueKind.missingAsymptoticTransfer
  | .sourceAuthorityBoundary => FWR.ResidueKind.authorityOverclaim

def Atom.blocks : Atom -> String
  | .ambientRadoGraph =>
      "ambient Rado graph object for the source theorem"
  | .countableVertexCarrier =>
      "countability semantics for the ambient vertex carrier"
  | .adjacencyRelation =>
      "graph adjacency relation used by extension and embedding statements"
  | .graphSimplicityLaws =>
      "symmetry and irreflexivity laws needed for simple graph semantics"
  | .finiteConstraintSets =>
      "finite connect and avoid sets in the extension property"
  | .disjointConstraintSets =>
      "disjointness of connect and avoid constraints"
  | .connectAvoidSpecification =>
      "connect-to-all and avoid-all behavior of an extension witness"
  | .freshWitnessOutsideSubset =>
      "new witness vertex outside the finite constraint set"
  | .radoExtensionProperty =>
      "Rado finite connect/avoid extension property"
  | .subsetAndInducedGraph =>
      "induced-subgraph interpretation of embedded external graphs"
  | .finiteInducedUniversality =>
      "finite graph induced-universality derived from extension"
  | .countableInducedUniversality =>
      "countable graph induced-universality of the Rado graph"
  | .witnessInsertion =>
      "use of the extension property inside the heatflow witness-insertion step"
  | .countableExhaustionLimit =>
      "passage from finite witnesses to countable exhaustions"
  | .totalObjectiveAndConvergence =>
      "algorithmic convergence or objective decrease after witness insertion"
  | .sourceAuthorityBoundary =>
      "promotion of the external Rado source theorem into local proof authority"

def Atom.clearsBy : Atom -> String
  | .ambientRadoGraph =>
      "local simple-graph carrier or certified import matching the Rado source"
  | .countableVertexCarrier =>
      "countability object and enumeration/encoding policy"
  | .adjacencyRelation =>
      "Lean adjacency predicate with source-compatible notation"
  | .graphSimplicityLaws =>
      "kernel-checked symmetry and irreflexivity proofs"
  | .finiteConstraintSets =>
      "finite-set representation for constraint lists"
  | .disjointConstraintSets =>
      "proof that connect and avoid sets are disjoint"
  | .connectAvoidSpecification =>
      "typed witness predicate for connecting and avoiding constraints"
  | .freshWitnessOutsideSubset =>
      "freshness condition for the inserted vertex"
  | .radoExtensionProperty =>
      "kernel-checked proof or certified theorem import of Rado extension"
  | .subsetAndInducedGraph =>
      "induced embedding structure preserving and reflecting adjacency"
  | .finiteInducedUniversality =>
      "formal finite-universality theorem from extension"
  | .countableInducedUniversality =>
      "formal countable-universality theorem from extension or certified import"
  | .witnessInsertion =>
      "bridge theorem from Rado extension to the algorithm's finite witness step"
  | .countableExhaustionLimit =>
      "explicit exhaustion construction and stability theorem"
  | .totalObjectiveAndConvergence =>
      "finite termination or convergence theorem for the algorithmic objective"
  | .sourceAuthorityBoundary =>
      "local proof object; otherwise the theorem remains external residue"

def allAtoms : List Atom :=
  [ Atom.ambientRadoGraph
  , Atom.countableVertexCarrier
  , Atom.adjacencyRelation
  , Atom.graphSimplicityLaws
  , Atom.finiteConstraintSets
  , Atom.disjointConstraintSets
  , Atom.connectAvoidSpecification
  , Atom.freshWitnessOutsideSubset
  , Atom.radoExtensionProperty
  , Atom.subsetAndInducedGraph
  , Atom.finiteInducedUniversality
  , Atom.countableInducedUniversality
  , Atom.witnessInsertion
  , Atom.countableExhaustionLimit
  , Atom.totalObjectiveAndConvergence
  , Atom.sourceAuthorityBoundary
  ]

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.RadoUniversalGraph
    atomId := "Rado1964:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def finalClaim (ctx : Context) : Prop :=
  ctx.CountableAmbient ∧
    ctx.GraphSymmetric ∧
    ctx.GraphIrreflexive ∧
    ExtensionProperty ctx ∧
    InducedUniversal ctx ∧
    ExtensionSupportsWitnessInsertion ctx

def finalResidues (_ctx : Context) : List Think.Residue :=
  allAtoms.map atomResidue

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem allAtoms_count :
    allAtoms.length = 16 := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 16 := by
  rfl

theorem finalResidues_match_atoms (ctx : Context) :
    finalResidues ctx = allAtoms.map atomResidue := by
  rfl

theorem atomResidue_target (a : Atom) :
    (atomResidue a).target = FWR.Target.RadoUniversalGraph := by
  rfl

def surveyTarget : SurveyTarget :=
  { targetId := "Rado1964:extension-and-universality"
    paperId := "Rado1964"
    kind := TargetKind.thm
    leanFile := "ResearchSurvey/RadoUniversalGraph.lean"
    suggestedLeanName := "RadoUniversalGraph.extension_and_universality" }

theorem surveyTarget_checked_hasResidue :
    (targetChecked surveyTarget).hasResidue = true := by
  rfl

end Think.ResearchSurvey.Sources.RadoUniversalGraph
```
