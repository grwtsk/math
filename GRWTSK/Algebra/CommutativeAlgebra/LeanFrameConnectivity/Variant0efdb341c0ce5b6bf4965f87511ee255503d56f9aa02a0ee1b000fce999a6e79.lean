import Folder.GrandChallenge.Complexity.DegaussSurgery

/-!
# Folder.GrandChallenge.Complexity.LeanFrameConnectivity

Radiation role: research-boundary
BinaryMatrix spine: This module tracks Lean theorem dependency connectivity through BinaryMatrixStream compression.
Ontology: complexity_lean_frame_connectivity
Pivot role: complexity
Zero typology: traversal-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/-- A named theorem, definition, or proof-state node in a finite Lean frame. -/
structure TheoremNode where
  name : String

/-- A dependency edge between two theorem graph nodes. -/
structure DependencyEdge where
  source : TheoremNode
  target : TheoremNode
  edgeLabel : String

/--
The finite theorem traversal graph associated to one encoded Lean frame.

The `pathExists` relation is supplied by the graph extractor/verifier. This
module does not construct proof search.
-/
structure TheoremTraversalGraph where
  nodes : List TheoremNode
  edges : List DependencyEdge
  pathExists : TheoremNode → TheoremNode → Prop
  graphLabel : String

/-- A supplied certificate that a dependency traversal exists. -/
structure DependencyTraversalCertificate
    (G : TheoremTraversalGraph)
    (source target : TheoremNode) where
  path : G.pathExists source target
  certificateLabel : String

/-- The compressed matrix-side payload of a finite Lean frame. -/
structure CompressedBinaryMatrix where
  frame : LeanProjectFiniteFrame
  compressedLabel : String

/--
Verifier for replaying decompression back into theorem connectivity.

This is the proof-relevant end of compression: decompression must recover the
original theorem graph, not merely a bitstring with the right shape.
-/
structure DecompressionVerifier
    (G : TheoremTraversalGraph) where
  reconstructsOriginalGraph : Prop
  reconstructsOriginalGraph_certified : reconstructsOriginalGraph
  verifierLabel : String

/--
Compression package for a finite Lean frame.

The package records the binary stream, theorem graph, halo normal form, move
log, modular class, and verifier. The preservation field is supplied data,
not a complexity-theoretic theorem.
-/
structure BinaryMatrixCompression where
  frame : LeanProjectFiniteFrame
  compressed : CompressedBinaryMatrix
  graph : TheoremTraversalGraph
  normalForm : HaloNormalForm
  moveLog : SurgeryMoveLog
  moveClass : ModularMoveClass
  verifier : DecompressionVerifier graph
  preservesTraversal : Prop
  preservesTraversal_certified : preservesTraversal
  sourceLabel : String

/--
A compressed adjacency with no verified theorem path.

This is the precise "glitched frame" notion: compression suggests adjacency,
but decompression cannot replay a dependency traversal.
-/
structure GlitchedTraversal where
  graph : TheoremTraversalGraph
  source : TheoremNode
  target : TheoremNode
  suggestedByCompression : Prop
  suggestedByCompression_certified : suggestedByCompression
  noPath : ¬ graph.pathExists source target
  obstructionLabel : String

/-- A chart of missing theorem bridges exposed by decompression. -/
structure ObstructionChart where
  glitches : List GlitchedTraversal
  missingLemmasLabel : String
  missingImportsLabel : String
  missingBridgeContractsLabel : String
  nonPolynomialDisambiguatorLabel : String

/-- Polynomial internal repair of a glitched traversal. -/
structure SmoothTraversalRepair where
  glitch : GlitchedTraversal
  addedBridgeLabel : String
  repairedPath : Prop
  repairedPath_certified : repairedPath
  polynomialRepair : Prop
  polynomialRepair_certified : polynomialRepair

/-- Sticky obstruction: no polynomial internal repair is supplied for the glitch. -/
structure StickyBoundaryObstruction
    (G : GlitchedTraversal) : Prop where
  noPolynomialInternalRepair :
    ¬ ∃ R : SmoothTraversalRepair, R.glitch = G ∧ R.polynomialRepair

/--
Connectivity target for finite Lean-frame compression.

Every theorem pair is either connected in the decompressed graph or recorded as
a glitched traversal. Every glitch is either polynomially repaired by an
internal bridge or remains a sticky boundary obstruction.
-/
structure BinaryMatrixStreamConnectivityTarget where
  compression : BinaryMatrixCompression
  obstructionChart : ObstructionChart
  allTheoremPairsClassified :
    ∀ a b : TheoremNode,
      compression.graph.pathExists a b ∨
        ∃ G : GlitchedTraversal,
          G.graph = compression.graph ∧ G.source = a ∧ G.target = b
  smoothRepairOrStickyBoundary :
    ∀ G : GlitchedTraversal,
      (∃ R : SmoothTraversalRepair, R.glitch = G ∧ R.polynomialRepair) ∨
        StickyBoundaryObstruction G
  sourceLabel : String

theorem dependency_path_if_supplied
    {G : TheoremTraversalGraph}
    {source target : TheoremNode}
    (C : DependencyTraversalCertificate G source target) :
    G.pathExists source target :=
  C.path

theorem decompression_reconstructs_graph_if_supplied
    {G : TheoremTraversalGraph}
    (V : DecompressionVerifier G) :
    V.reconstructsOriginalGraph :=
  V.reconstructsOriginalGraph_certified

theorem compression_preserves_traversal_if_supplied
    (C : BinaryMatrixCompression) :
    C.preservesTraversal :=
  C.preservesTraversal_certified

theorem glitched_traversal_suggested_by_compression_if_supplied
    (G : GlitchedTraversal) :
    G.suggestedByCompression :=
  G.suggestedByCompression_certified

theorem glitched_traversal_has_no_path
    (G : GlitchedTraversal) :
    ¬ G.graph.pathExists G.source G.target :=
  G.noPath

theorem smooth_repair_repaired_path_if_supplied
    (R : SmoothTraversalRepair) :
    R.repairedPath :=
  R.repairedPath_certified

theorem smooth_repair_polynomial_if_supplied
    (R : SmoothTraversalRepair) :
    R.polynomialRepair :=
  R.polynomialRepair_certified

theorem sticky_boundary_no_polynomial_repair_if_supplied
    {G : GlitchedTraversal}
    (S : StickyBoundaryObstruction G) :
    ¬ ∃ R : SmoothTraversalRepair, R.glitch = G ∧ R.polynomialRepair :=
  S.noPolynomialInternalRepair

theorem connectivity_classifies_pairs_if_supplied
    (T : BinaryMatrixStreamConnectivityTarget)
    (a b : TheoremNode) :
    T.compression.graph.pathExists a b ∨
      ∃ G : GlitchedTraversal,
        G.graph = T.compression.graph ∧ G.source = a ∧ G.target = b :=
  T.allTheoremPairsClassified a b

theorem connectivity_repair_or_sticky_if_supplied
    (T : BinaryMatrixStreamConnectivityTarget)
    (G : GlitchedTraversal) :
    (∃ R : SmoothTraversalRepair, R.glitch = G ∧ R.polynomialRepair) ∨
      StickyBoundaryObstruction G :=
  T.smoothRepairOrStickyBoundary G

end Complexity
end GrandChallenge
end Folder
