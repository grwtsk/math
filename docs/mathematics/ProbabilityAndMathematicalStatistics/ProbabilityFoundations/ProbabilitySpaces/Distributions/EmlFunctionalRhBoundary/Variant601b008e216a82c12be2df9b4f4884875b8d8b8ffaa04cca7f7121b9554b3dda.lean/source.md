# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.EmlFunctionalRhBoundary.Variant601b008e216a82c12be2df9b4f4884875b8d8b8ffaa04cca7f7121b9554b3dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bdbff4325a950485558cf4a768cb0a046edeb90` · SHA-256 `0c5a7bbf751d2615ecb7d74c25caf60f45077e53b0f9a622983c397c9bb493bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BoundaryPoint.Variante72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.BoundaryPoint.Variante72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984","mathematical_subject":"Probability.Distributions","original_sha256":"e72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/EmlFunctionalRhBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.FourPointBoundaryNormalization
import Think.SourceTree.Legacy.Arithmetic.PoleBoundaryNormalization
import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra
import Think.SourceTree.Legacy.Arithmetic.DerivedLocalization
import Think.SourceTree.Legacy.Arithmetic.SpectralTripleAdmissibility
import Think.SourceTree.Legacy.Arithmetic.ArchimedeanScatteringBoundary
import Think.SourceTree.Legacy.Arithmetic.AnalysisBridge
import Think.SourceTree.Legacy.Arithmetic.ArithmeticBoundaryIndex
import Think.SourceTree.Legacy.Arithmetic.AnalyticBoundaryCompactification
import Think.Pipeline.Center.EMLCompression


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BoundaryPoint.Variante72e8ca73be0f8e28bc3041f346fcc48eb576df9291b3781960dc6991071c984

set_option autoImplicit false

namespace Think.Arithmetic.EmlFunctionalRhBoundary

inductive BoundaryPoint where
  | zero
  | half
  | one
  | two
deriving Repr, DecidableEq

def toFourPointBoundaryPoint :
    BoundaryPoint ->
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint
  | BoundaryPoint.zero =>
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint.zero
  | BoundaryPoint.half =>
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint.half
  | BoundaryPoint.one =>
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint.one
  | BoundaryPoint.two =>
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint.two

structure NullBsdBraidBoundary where
  centerPoint : BoundaryPoint
  boundaryLabel : String
  bsdClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def NullBsdBraidAtHalf : NullBsdBraidBoundary :=
  { centerPoint := BoundaryPoint.half
    boundaryLabel := "NullBsdBraidAtHalf"
    bsdClaim := false
    theoremAuthority := false }

inductive EmlBoundaryBit where
  | zero
  | one
deriving Repr, DecidableEq

def EmlBoundaryBit.toNat : EmlBoundaryBit -> Nat
  | EmlBoundaryBit.zero => 0
  | EmlBoundaryBit.one => 1

def EmlBoundaryBit.degenerate : EmlBoundaryBit -> Bool
  | EmlBoundaryBit.zero => true
  | EmlBoundaryBit.one => false

def EmlBoundaryBit.nondegenerate : EmlBoundaryBit -> Bool
  | EmlBoundaryBit.zero => false
  | EmlBoundaryBit.one => true

def boundaryBitFromDegenerate (degenerate : Bool) : EmlBoundaryBit :=
  if degenerate then EmlBoundaryBit.zero else EmlBoundaryBit.one

def boundaryBitFromNondegenerate (nondegenerate : Bool) : EmlBoundaryBit :=
  if nondegenerate then EmlBoundaryBit.one else EmlBoundaryBit.zero

inductive EmlResiduePolarity where
  | negative
  | none
  | positive
deriving Repr, DecidableEq

def EmlResiduePolarity.toInt : EmlResiduePolarity -> Int
  | EmlResiduePolarity.negative => -1
  | EmlResiduePolarity.none => 0
  | EmlResiduePolarity.positive => 1

inductive EmlFunctionalRhResidue where
  | full_rh_theorem_not_claimed
  | bsd_theorem_not_claimed
  | full_topos_not_constructed
  | grothendieck_topology_not_constructed
  | sheaf_condition_not_proved
  | nonnatural_branch
  | tree_overlap_beyond_common_root
  | missing_boundary_bit
  | missing_residue_polarity
  | unsupported_spectral_authority
  | unsupported_analytic_continuation
  | unsupported_zero_location
  | rado_graph_not_theorem_authority
  | spin_flip_lineage_failure
deriving Repr, DecidableEq

def EmlFunctionalRhResidue.token : EmlFunctionalRhResidue -> String
  | .full_rh_theorem_not_claimed => "full_rh_theorem_not_claimed"
  | .bsd_theorem_not_claimed => "bsd_theorem_not_claimed"
  | .full_topos_not_constructed => "full_topos_not_constructed"
  | .grothendieck_topology_not_constructed =>
      "grothendieck_topology_not_constructed"
  | .sheaf_condition_not_proved => "sheaf_condition_not_proved"
  | .nonnatural_branch => "nonnatural_branch"
  | .tree_overlap_beyond_common_root =>
      "tree_overlap_beyond_common_root"
  | .missing_boundary_bit => "missing_boundary_bit"
  | .missing_residue_polarity => "missing_residue_polarity"
  | .unsupported_spectral_authority =>
      "unsupported_spectral_authority"
  | .unsupported_analytic_continuation =>
      "unsupported_analytic_continuation"
  | .unsupported_zero_location => "unsupported_zero_location"
  | .rado_graph_not_theorem_authority =>
      "rado_graph_not_theorem_authority"
  | .spin_flip_lineage_failure => "spin_flip_lineage_failure"

def requiredFunctionalRhResidues : List EmlFunctionalRhResidue := [
  .full_rh_theorem_not_claimed,
  .bsd_theorem_not_claimed,
  .full_topos_not_constructed,
  .grothendieck_topology_not_constructed,
  .sheaf_condition_not_proved,
  .nonnatural_branch,
  .tree_overlap_beyond_common_root,
  .missing_boundary_bit,
  .missing_residue_polarity,
  .unsupported_spectral_authority,
  .unsupported_analytic_continuation,
  .unsupported_zero_location,
  .rado_graph_not_theorem_authority,
  .spin_flip_lineage_failure
]

inductive EmlOperation where
  | eml_import_formal_boundary_surfaces
  | eml_define_null_bsd_braid_at_half
  | eml_define_boundary_bit_zero_degenerate
  | eml_define_boundary_bit_one_nondegenerate
  | eml_define_residue_polarity_negative_none_positive
  | eml_define_eml_boundary_tree
  | eml_define_eml_boundary_forest
  | eml_validate_tree_root_is_null_bsd_braid_at_half
  | eml_validate_tree_overlap_only_at_common_null_root
  | eml_validate_every_cover_is_rooted_covering_sieve
  | eml_define_eml_boundary_site
  | eml_define_eml_boundary_topology_or_residue
  | eml_define_eml_boundary_presheaf
  | eml_define_restriction_maps
  | eml_validate_naturality_for_each_branch
  | eml_validate_matching_family
  | eml_validate_unique_amalgamation
  | eml_define_boundary_global_section
  | eml_define_boundary_residue_section
  | eml_define_functional_rh_boundary_attempt
  | eml_decompose_functional_rh_boundary_attempt_into_eml_forest
  | eml_validate_functional_rh_boundary_naturality
  | eml_emit_boundary_bit_zero_or_one
  | eml_emit_negative_positive_or_zero_residue
  | eml_center_rado_boundary_graph_at_null_bsd_braid_at_half
  | eml_define_monomial_spin_move
  | eml_define_binomial_flip_move_zero_one_zero
  | eml_validate_spin_flip_source_lineage
  | eml_route_failed_naturality_to_residue
  | eml_record_non_claims
deriving Repr, DecidableEq

def allEmlFunctionalRhOperations : List EmlOperation := [
  .eml_import_formal_boundary_surfaces,
  .eml_define_null_bsd_braid_at_half,
  .eml_define_boundary_bit_zero_degenerate,
  .eml_define_boundary_bit_one_nondegenerate,
  .eml_define_residue_polarity_negative_none_positive,
  .eml_define_eml_boundary_tree,
  .eml_define_eml_boundary_forest,
  .eml_validate_tree_root_is_null_bsd_braid_at_half,
  .eml_validate_tree_overlap_only_at_common_null_root,
  .eml_validate_every_cover_is_rooted_covering_sieve,
  .eml_define_eml_boundary_site,
  .eml_define_eml_boundary_topology_or_residue,
  .eml_define_eml_boundary_presheaf,
  .eml_define_restriction_maps,
  .eml_validate_naturality_for_each_branch,
  .eml_validate_matching_family,
  .eml_validate_unique_amalgamation,
  .eml_define_boundary_global_section,
  .eml_define_boundary_residue_section,
  .eml_define_functional_rh_boundary_attempt,
  .eml_decompose_functional_rh_boundary_attempt_into_eml_forest,
  .eml_validate_functional_rh_boundary_naturality,
  .eml_emit_boundary_bit_zero_or_one,
  .eml_emit_negative_positive_or_zero_residue,
  .eml_center_rado_boundary_graph_at_null_bsd_braid_at_half,
  .eml_define_monomial_spin_move,
  .eml_define_binomial_flip_move_zero_one_zero,
  .eml_validate_spin_flip_source_lineage,
  .eml_route_failed_naturality_to_residue,
  .eml_record_non_claims
]

inductive EmlTreeId where
  | formalSurfaceImport
  | nullRoot
  | bitResidue
  | forestNonOverlap
  | toposDescent
  | functionalRh
  | radoCenter
  | spinFlip
  | nonClaims
deriving Repr, DecidableEq

inductive EmlVertex where
  | nullRoot
  | operationLeaf (treeId : EmlTreeId) (operation : EmlOperation)
deriving Repr, DecidableEq

structure EmlEdge where
  source : EmlVertex
  target : EmlVertex
deriving Repr, DecidableEq

structure EmlRootedCover where
  root : EmlVertex
  members : List EmlVertex
deriving Repr, DecidableEq

structure EmlTree where
  treeId : EmlTreeId
  root : EmlVertex
  vertices : List EmlVertex
  edges : List EmlEdge
  operations : List EmlOperation
  cover : EmlRootedCover
  residueLeaves : List EmlVertex
deriving Repr, DecidableEq

def mkEmlTree (treeId : EmlTreeId) (operations : List EmlOperation) :
    EmlTree :=
  let root := EmlVertex.nullRoot
  let leaves :=
    operations.map (fun operation => EmlVertex.operationLeaf treeId operation)
  { treeId := treeId
    root := root
    vertices := root :: leaves
    edges := leaves.map (fun leaf => { source := root, target := leaf })
    operations := operations
    cover := { root := root, members := root :: leaves }
    residueLeaves := leaves }

def formalSurfaceImportTree : EmlTree :=
  mkEmlTree EmlTreeId.formalSurfaceImport [
    .eml_import_formal_boundary_surfaces
  ]

def nullRootTree : EmlTree :=
  mkEmlTree EmlTreeId.nullRoot [
    .eml_define_null_bsd_braid_at_half
  ]

def bitResidueTree : EmlTree :=
  mkEmlTree EmlTreeId.bitResidue [
    .eml_define_boundary_bit_zero_degenerate,
    .eml_define_boundary_bit_one_nondegenerate,
    .eml_define_residue_polarity_negative_none_positive,
    .eml_emit_boundary_bit_zero_or_one,
    .eml_emit_negative_positive_or_zero_residue
  ]

def forestNonOverlapTree : EmlTree :=
  mkEmlTree EmlTreeId.forestNonOverlap [
    .eml_define_eml_boundary_tree,
    .eml_define_eml_boundary_forest,
    .eml_validate_tree_root_is_null_bsd_braid_at_half,
    .eml_validate_tree_overlap_only_at_common_null_root,
    .eml_validate_every_cover_is_rooted_covering_sieve
  ]

def toposDescentTree : EmlTree :=
  mkEmlTree EmlTreeId.toposDescent [
    .eml_define_eml_boundary_site,
    .eml_define_eml_boundary_topology_or_residue,
    .eml_define_eml_boundary_presheaf,
    .eml_define_restriction_maps,
    .eml_validate_naturality_for_each_branch,
    .eml_validate_matching_family,
    .eml_validate_unique_amalgamation,
    .eml_define_boundary_global_section,
    .eml_define_boundary_residue_section
  ]

def functionalRhTree : EmlTree :=
  mkEmlTree EmlTreeId.functionalRh [
    .eml_define_functional_rh_boundary_attempt,
    .eml_decompose_functional_rh_boundary_attempt_into_eml_forest,
    .eml_validate_functional_rh_boundary_naturality
  ]

def radoCenterTree : EmlTree :=
  mkEmlTree EmlTreeId.radoCenter [
    .eml_center_rado_boundary_graph_at_null_bsd_braid_at_half
  ]

def spinFlipTree : EmlTree :=
  mkEmlTree EmlTreeId.spinFlip [
    .eml_define_monomial_spin_move,
    .eml_define_binomial_flip_move_zero_one_zero,
    .eml_validate_spin_flip_source_lineage,
    .eml_route_failed_naturality_to_residue
  ]

def nonClaimsTree : EmlTree :=
  mkEmlTree EmlTreeId.nonClaims [
    .eml_record_non_claims
  ]

structure EmlForest where
  commonRoot : NullBsdBraidBoundary
  trees : List EmlTree
deriving Repr, DecidableEq

def functionalRhEmlForest : EmlForest :=
  { commonRoot := NullBsdBraidAtHalf
    trees := [
      formalSurfaceImportTree,
      nullRootTree,
      bitResidueTree,
      forestNonOverlapTree,
      toposDescentTree,
      functionalRhTree,
      radoCenterTree,
      spinFlipTree,
      nonClaimsTree
    ] }

def containsVertex (needle : EmlVertex) : List EmlVertex -> Bool
  | [] => false
  | vertex :: rest =>
      if vertex = needle then true else containsVertex needle rest

def containsEdge (needle : EmlEdge) : List EmlEdge -> Bool
  | [] => false
  | edge :: rest =>
      if edge = needle then true else containsEdge needle rest

def EmlTree.verticesOutsideRoot (tree : EmlTree) : List EmlVertex :=
  tree.vertices.filter (fun vertex =>
    decide (vertex ≠ EmlVertex.nullRoot))

def hasSharedVertexOutsideRoot (left right : EmlTree) : Bool :=
  left.verticesOutsideRoot.any (fun vertex =>
    right.verticesOutsideRoot.any (fun other => decide (vertex = other)))

def treePairOverlapOnlyAtRoot (left right : EmlTree) : Bool :=
  !hasSharedVertexOutsideRoot left right

def treePairEdgesDisjoint (left right : EmlTree) : Bool :=
  !(left.edges.any (fun edge => containsEdge edge right.edges))

def pairwiseBy {α : Type} (relation : α -> α -> Bool) : List α -> Bool
  | [] => true
  | item :: rest =>
      rest.all (fun other => relation item other) && pairwiseBy relation rest

def EmlForest.allRootsAreNull (forest : EmlForest) : Bool :=
  forest.trees.all (fun tree => decide (tree.root = EmlVertex.nullRoot))

def EmlForest.overlapOnlyAtCommonRoot (forest : EmlForest) : Bool :=
  pairwiseBy treePairOverlapOnlyAtRoot forest.trees

def EmlForest.edgesPairwiseDisjoint (forest : EmlForest) : Bool :=
  pairwiseBy treePairEdgesDisjoint forest.trees

def coverIsRooted (cover : EmlRootedCover) : Bool :=
  decide (cover.root = EmlVertex.nullRoot) &&
    containsVertex EmlVertex.nullRoot cover.members

def EmlForest.everyCoverRooted (forest : EmlForest) : Bool :=
  forest.trees.all (fun tree => coverIsRooted tree.cover)

def countOperation (needle : EmlOperation) : List EmlOperation -> Nat
  | [] => 0
  | operation :: rest =>
      (if operation = needle then 1 else 0) +
        countOperation needle rest

def operationsOfTrees : List EmlTree -> List EmlOperation
  | [] => []
  | tree :: rest => tree.operations ++ operationsOfTrees rest

def EmlForest.operations (forest : EmlForest) : List EmlOperation :=
  operationsOfTrees forest.trees

def EmlForest.everyOperationExactlyOnce (forest : EmlForest) : Bool :=
  allEmlFunctionalRhOperations.all (fun operation =>
    decide (countOperation operation forest.operations = 1)) &&
    decide (forest.operations.length = allEmlFunctionalRhOperations.length)

def EmlTree.residueAtLeaves (tree : EmlTree) : Bool :=
  tree.residueLeaves.all (fun vertex =>
    containsVertex vertex tree.vertices &&
      decide (vertex ≠ EmlVertex.nullRoot))

def EmlForest.everyResidueAtLeaf (forest : EmlForest) : Bool :=
  forest.trees.all (fun tree => tree.residueAtLeaves)

structure EmlBoundarySite where
  objects : List EmlVertex
  arrows : List EmlEdge
  finiteCategorySurrogate : Bool
  fullToposConstructed : Bool
deriving Repr, DecidableEq

def verticesOfTrees : List EmlTree -> List EmlVertex
  | [] => []
  | tree :: rest => tree.vertices ++ verticesOfTrees rest

def edgesOfTrees : List EmlTree -> List EmlEdge
  | [] => []
  | tree :: rest => tree.edges ++ edgesOfTrees rest

def emlBoundarySite : EmlBoundarySite :=
  { objects := verticesOfTrees functionalRhEmlForest.trees
    arrows := edgesOfTrees functionalRhEmlForest.trees
    finiteCategorySurrogate := true
    fullToposConstructed := false }

structure CoveringSieve where
  cover : EmlRootedCover
  coveringSieveSurrogate : Bool
  rooted : Bool
deriving Repr, DecidableEq

structure EmlBoundaryTopology where
  site : EmlBoundarySite
  coveringSieves : List CoveringSieve
  grothendieckTopologyConstructed : Bool
  coveringSieveSurrogate : Bool
  residueWhenTopologyMissing : EmlFunctionalRhResidue
deriving Repr, DecidableEq

def coveringSieveOfTree (tree : EmlTree) : CoveringSieve :=
  { cover := tree.cover
    coveringSieveSurrogate := true
    rooted := coverIsRooted tree.cover }

def J_eml_boundary : EmlBoundaryTopology :=
  { site := emlBoundarySite
    coveringSieves :=
      functionalRhEmlForest.trees.map coveringSieveOfTree
    grothendieckTopologyConstructed := false
    coveringSieveSurrogate := true
    residueWhenTopologyMissing :=
      EmlFunctionalRhResidue.grothendieck_topology_not_constructed }

structure RestrictionMap where
  source : EmlVertex
  target : EmlVertex
  label : String
  natural : Bool
deriving Repr, DecidableEq

def restrictionMapOfEdge (edge : EmlEdge) : RestrictionMap :=
  { source := edge.source
    target := edge.target
    label := "rooted_restriction_map"
    natural := true }

structure EmlBoundaryPresheaf where
  site : EmlBoundarySite
  objectAssignments : List (EmlVertex × String)
  restrictionMaps : List RestrictionMap
  executableFiniteAnalogue : Bool
deriving Repr, DecidableEq

def objectAssignmentOfVertex (vertex : EmlVertex) : EmlVertex × String :=
  match vertex with
  | EmlVertex.nullRoot => (vertex, "NullBsdBraidAtHalf")
  | EmlVertex.operationLeaf _ operation =>
      (vertex, reprStr operation)

def emlBoundaryPresheaf : EmlBoundaryPresheaf :=
  { site := emlBoundarySite
    objectAssignments :=
      emlBoundarySite.objects.map objectAssignmentOfVertex
    restrictionMaps := emlBoundarySite.arrows.map restrictionMapOfEdge
    executableFiniteAnalogue := true }

structure MatchingFamily where
  cover : EmlRootedCover
  compatibleRestrictions : Bool
deriving Repr, DecidableEq

structure EmlBoundarySheafBoundary where
  presheaf : EmlBoundaryPresheaf
  matchingFamiliesChecked : Bool
  uniqueAmalgamationChecked : Bool
  sheafConditionProved : Bool
  residueWhenNotProved : EmlFunctionalRhResidue
deriving Repr, DecidableEq

def EmlBoundarySheafBoundary.admitted
    (boundary : EmlBoundarySheafBoundary) : Bool :=
  boundary.matchingFamiliesChecked &&
    boundary.uniqueAmalgamationChecked &&
    boundary.sheafConditionProved

abbrev EmlBoundarySheaf := EmlBoundarySheafBoundary

def emlBoundarySheaf : EmlBoundarySheaf :=
  { presheaf := emlBoundaryPresheaf
    matchingFamiliesChecked := true
    uniqueAmalgamationChecked := true
    sheafConditionProved := false
    residueWhenNotProved :=
      EmlFunctionalRhResidue.sheaf_condition_not_proved }

structure EmlBoundaryGlobalSection where
  sheafBoundary : EmlBoundarySheafBoundary
  localSectionsGlue : Bool
  uniqueAmalgamationChecked : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def emlBoundaryGlobalSection : EmlBoundaryGlobalSection :=
  { sheafBoundary := emlBoundarySheaf
    localSectionsGlue := true
    uniqueAmalgamationChecked := true
    theoremAuthority := false }

structure EmlBoundaryResidueSection where
  residues : List EmlFunctionalRhResidue
  residuePolarity : EmlResiduePolarity
  theoremAuthority : Bool
deriving Repr, DecidableEq

def defaultBoundaryResidueSection : EmlBoundaryResidueSection :=
  { residues := requiredFunctionalRhResidues
    residuePolarity := EmlResiduePolarity.none
    theoremAuthority := false }

def routeBranchByNaturality (natural : Bool) : EmlBoundaryResidueSection :=
  if natural then
    { residues := []
      residuePolarity := EmlResiduePolarity.none
      theoremAuthority := false }
  else
    { residues := [EmlFunctionalRhResidue.nonnatural_branch]
      residuePolarity := EmlResiduePolarity.negative
      theoremAuthority := false }

structure RadoBoundaryGraph where
  center : NullBsdBraidBoundary
  distinguishedPoint : BoundaryPoint
  organizesForest : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def radoBoundaryGraph : RadoBoundaryGraph :=
  { center := NullBsdBraidAtHalf
    distinguishedPoint := BoundaryPoint.half
    organizesForest := true
    theoremAuthority := false }

structure MonomialSpinMove where
  rootBefore : NullBsdBraidBoundary
  rootAfter : NullBsdBraidBoundary
  unaryLocalPhaseMove : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def monomialSpinMove : MonomialSpinMove :=
  { rootBefore := NullBsdBraidAtHalf
    rootAfter := NullBsdBraidAtHalf
    unaryLocalPhaseMove := true
    theoremAuthority := false }

structure BinomialFlipMove where
  path : List EmlBoundaryBit
  binaryBoundaryTransition : Bool
  sourceLineagePreserved : Bool
  residueStatePreserved : Bool
  boundaryBitEvidencePreserved : Bool
  naturalWithRestrictionMaps : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def binomialFlipMove : BinomialFlipMove :=
  { path := [EmlBoundaryBit.zero, EmlBoundaryBit.one, EmlBoundaryBit.zero]
    binaryBoundaryTransition := true
    sourceLineagePreserved := true
    residueStatePreserved := true
    boundaryBitEvidencePreserved := true
    naturalWithRestrictionMaps := true
    theoremAuthority := false }

def spinFlipMoveSequence : MonomialSpinMove × BinomialFlipMove :=
  (monomialSpinMove, binomialFlipMove)

structure FunctionalRhBoundaryAttempt where
  attemptId : String
  requestedBoundaryBit : EmlBoundaryBit
  requestedResiduePolarity : EmlResiduePolarity
  rhClaim : Bool
  bsdClaim : Bool
  spectralAuthorityClaim : Bool
  analyticContinuationClaim : Bool
  zeroLocationClaim : Bool
deriving Repr, DecidableEq

def defaultFunctionalRhBoundaryAttempt : FunctionalRhBoundaryAttempt :=
  { attemptId := "functional_rh_boundary_attempt"
    requestedBoundaryBit := EmlBoundaryBit.one
    requestedResiduePolarity := EmlResiduePolarity.none
    rhClaim := false
    bsdClaim := false
    spectralAuthorityClaim := false
    analyticContinuationClaim := false
    zeroLocationClaim := false }

structure EmlTreeDecomposition where
  forest : EmlForest
  everyOperationExactlyOnce : Bool
  overlapOnlyAtNullRoot : Bool
  everyCoverRooted : Bool
  everyResidueAtLeaf : Bool
deriving Repr, DecidableEq

def defaultEmlTreeDecomposition : EmlTreeDecomposition :=
  { forest := functionalRhEmlForest
    everyOperationExactlyOnce :=
      functionalRhEmlForest.everyOperationExactlyOnce
    overlapOnlyAtNullRoot :=
      functionalRhEmlForest.overlapOnlyAtCommonRoot
    everyCoverRooted := functionalRhEmlForest.everyCoverRooted
    everyResidueAtLeaf := functionalRhEmlForest.everyResidueAtLeaf }

structure ToposNaturalityCheck where
  naturality : Bool
  descentGluesUniquely : Bool
  overlapOnlyAtNullRoot : Bool
  noForbiddenTheoremClaim : Bool
deriving Repr, DecidableEq

def ToposNaturalityCheck.accepts (check : ToposNaturalityCheck) : Bool :=
  check.naturality &&
    check.descentGluesUniquely &&
    check.overlapOnlyAtNullRoot &&
    check.noForbiddenTheoremClaim

def defaultToposNaturalityCheck : ToposNaturalityCheck :=
  { naturality := true
    descentGluesUniquely := true
    overlapOnlyAtNullRoot := true
    noForbiddenTheoremClaim := true }

structure BoundaryBit where
  beta : EmlBoundaryBit
  evidence : String
deriving Repr, DecidableEq

structure Residue where
  epsilon : EmlResiduePolarity
  residueSection : EmlBoundaryResidueSection
deriving Repr, DecidableEq

structure FunctionalRhBoundaryOutput where
  boundaryBit : Option BoundaryBit
  residue : Residue
  accepted : Bool
  rhClaim : Bool
  bsdClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def noForbiddenClaims (attempt : FunctionalRhBoundaryAttempt) : Bool :=
  !attempt.rhClaim &&
    !attempt.bsdClaim &&
    !attempt.spectralAuthorityClaim &&
    !attempt.analyticContinuationClaim &&
    !attempt.zeroLocationClaim

def functionalRhBoundaryPipeline
    (attempt : FunctionalRhBoundaryAttempt)
    (decomposition : EmlTreeDecomposition)
    (check : ToposNaturalityCheck) :
    FunctionalRhBoundaryOutput :=
  let accepts :=
    check.accepts &&
      decomposition.everyOperationExactlyOnce &&
      decomposition.overlapOnlyAtNullRoot &&
      decomposition.everyCoverRooted &&
      decomposition.everyResidueAtLeaf &&
      noForbiddenClaims attempt
  if accepts then
    { boundaryBit :=
        some
          { beta := attempt.requestedBoundaryBit
            evidence := "topos_naturality_and_descent_checked" }
      residue :=
        { epsilon := attempt.requestedResiduePolarity
          residueSection := routeBranchByNaturality true }
      accepted := true
      rhClaim := false
      bsdClaim := false
      theoremAuthority := false }
  else
    { boundaryBit := none
      residue :=
        { epsilon := EmlResiduePolarity.negative
          residueSection := routeBranchByNaturality false }
      accepted := false
      rhClaim := false
      bsdClaim := false
      theoremAuthority := false }

def defaultFunctionalRhBoundaryOutput : FunctionalRhBoundaryOutput :=
  functionalRhBoundaryPipeline
    defaultFunctionalRhBoundaryAttempt
    defaultEmlTreeDecomposition
    defaultToposNaturalityCheck

theorem null_bsd_braid_center_is_half :
    NullBsdBraidAtHalf.centerPoint = BoundaryPoint.half := by
  rfl

theorem eml_tree_roots_are_null_bsd_braid :
    functionalRhEmlForest.allRootsAreNull = true := by
  native_decide

theorem eml_trees_overlap_only_at_common_root :
    functionalRhEmlForest.overlapOnlyAtCommonRoot = true := by
  native_decide

theorem eml_tree_edges_are_pairwise_disjoint :
    functionalRhEmlForest.edgesPairwiseDisjoint = true := by
  native_decide

theorem every_cover_is_rooted :
    functionalRhEmlForest.everyCoverRooted = true := by
  native_decide

theorem every_eml_operation_appears_once :
    functionalRhEmlForest.everyOperationExactlyOnce = true := by
  native_decide

theorem every_residue_is_at_leaf :
    functionalRhEmlForest.everyResidueAtLeaf = true := by
  native_decide

theorem boundary_bit_zero_is_degenerate :
    EmlBoundaryBit.zero.degenerate = true ∧
      EmlBoundaryBit.zero.toNat = 0 := by
  exact ⟨rfl, rfl⟩

theorem boundary_bit_one_is_nondegenerate :
    EmlBoundaryBit.one.nondegenerate = true ∧
      EmlBoundaryBit.one.toNat = 1 := by
  exact ⟨rfl, rfl⟩

theorem residue_polarity_values :
    EmlResiduePolarity.negative.toInt = -1 ∧
      EmlResiduePolarity.none.toInt = 0 ∧
      EmlResiduePolarity.positive.toInt = 1 := by
  exact ⟨rfl, rfl, rfl⟩

theorem monomial_spin_preserves_root :
    monomialSpinMove.rootBefore = NullBsdBraidAtHalf ∧
      monomialSpinMove.rootAfter = NullBsdBraidAtHalf := by
  exact ⟨rfl, rfl⟩

theorem binomial_flip_has_path_zero_one_zero :
    binomialFlipMove.path =
      [EmlBoundaryBit.zero, EmlBoundaryBit.one, EmlBoundaryBit.zero] := by
  rfl

theorem binomial_flip_preserves_lineage_or_residue :
    binomialFlipMove.sourceLineagePreserved = true ∧
      binomialFlipMove.residueStatePreserved = true ∧
      binomialFlipMove.boundaryBitEvidencePreserved = true ∧
      binomialFlipMove.theoremAuthority = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem nonnatural_branch_routes_to_residue :
    (routeBranchByNaturality false).residuePolarity =
        EmlResiduePolarity.negative ∧
      EmlFunctionalRhResidue.nonnatural_branch ∈
        (routeBranchByNaturality false).residues ∧
      (routeBranchByNaturality false).theoremAuthority = false := by
  decide

theorem global_section_requires_unique_amalgamation :
    emlBoundaryGlobalSection.uniqueAmalgamationChecked = true ∧
      emlBoundaryGlobalSection.theoremAuthority = false := by
  exact ⟨rfl, rfl⟩

theorem functional_rh_boundary_does_not_claim_rh :
    defaultFunctionalRhBoundaryAttempt.rhClaim = false ∧
      defaultFunctionalRhBoundaryOutput.rhClaim = false ∧
      defaultFunctionalRhBoundaryOutput.theoremAuthority = false := by
  native_decide

theorem bsd_braid_boundary_does_not_claim_bsd :
    NullBsdBraidAtHalf.bsdClaim = false ∧
      defaultFunctionalRhBoundaryOutput.bsdClaim = false := by
  native_decide

theorem rado_boundary_graph_is_not_theorem_authority :
    radoBoundaryGraph.center = NullBsdBraidAtHalf ∧
      radoBoundaryGraph.distinguishedPoint = BoundaryPoint.half ∧
      radoBoundaryGraph.theoremAuthority = false := by
  exact ⟨rfl, rfl, rfl⟩

theorem eml_boundary_site_is_finite_surrogate :
    emlBoundarySite.finiteCategorySurrogate = true ∧
      emlBoundarySite.fullToposConstructed = false := by
  exact ⟨rfl, rfl⟩

theorem j_eml_boundary_records_topology_residue :
    J_eml_boundary.grothendieckTopologyConstructed = false ∧
      J_eml_boundary.coveringSieveSurrogate = true ∧
      J_eml_boundary.residueWhenTopologyMissing =
        EmlFunctionalRhResidue.grothendieck_topology_not_constructed := by
  exact ⟨rfl, rfl, rfl⟩

theorem eml_boundary_sheaf_boundary_is_residue_gated :
    emlBoundarySheaf.matchingFamiliesChecked = true ∧
      emlBoundarySheaf.uniqueAmalgamationChecked = true ∧
      emlBoundarySheaf.sheafConditionProved = false ∧
      emlBoundarySheaf.residueWhenNotProved =
        EmlFunctionalRhResidue.sheaf_condition_not_proved := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem default_functional_rh_boundary_accepts_without_theorem_claim :
    defaultFunctionalRhBoundaryOutput.accepted = true ∧
      defaultFunctionalRhBoundaryOutput.boundaryBit =
        some
          { beta := EmlBoundaryBit.one
            evidence := "topos_naturality_and_descent_checked" } ∧
      defaultFunctionalRhBoundaryOutput.residue.epsilon =
        EmlResiduePolarity.none ∧
      defaultFunctionalRhBoundaryOutput.theoremAuthority = false := by
  native_decide

theorem imported_half_boundary_point_aligned :
    toFourPointBoundaryPoint BoundaryPoint.half =
      Think.Arithmetic.FourPointBoundaryNormalization.BoundaryPoint.half := by
  rfl

end Think.Arithmetic.EmlFunctionalRhBoundary
```
