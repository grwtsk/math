import Surface.Legacy.BinaryLogicMatrix.CoverageProofs
import Surface.Legacy.BinaryLogicMatrix.Codec
import Surface.Legacy.BinaryLogicMatrix.Representation
import Surface.Legacy.BinaryLogicMatrix.NumberSystems
import Surface.Legacy.BinaryLogicMatrix.PrimeComposite
import Surface.Legacy.BinaryLogicMatrix.Rational
import Surface.Legacy.BinaryLogicMatrix.RealCodes
import Surface.Legacy.BinaryLogicMatrix.ComplexAndOtherSystems
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.ProofAdapter
import Surface.Legacy.BinaryLogicMatrix.Morphism
import Surface.Legacy.BinaryLogicMatrix.MorphismFactorization
import Surface.Legacy.BinaryLogicMatrix.Factorization
import Surface.Legacy.BinaryLogicMatrix.Token
import Surface.Legacy.BinaryLogicMatrix.Similarity
import Surface.Legacy.BinaryLogicMatrix.FiberTensor
import Surface.Legacy.BinaryLogicMatrix.Symmetry
import Surface.Legacy.BinaryLogicMatrix.TorsionSite
import Surface.Legacy.BinaryLogicMatrix.RecursiveExpansion
import Surface.Legacy.BinaryLogicMatrixFlow.Proofs
import Surface.Legacy.BinaryLogicMatrixFlow.Factorization

/-!
Fixture-generation tooling.

This file emits historical Surface runtime fixtures and report JSON. It is not a
canonical mathematical namespace, is not part of any major proof cone, and does
not upgrade Legacy declarations or generated artifacts into theorem authority.

Imports from `Surface.Legacy.BinaryLogicMatrix` are retained only so older
fixtures can still be regenerated and audited after the BinaryLogicMatrix
quarantine.
-/

open Surface
open Surface.Legacy
open Surface.Legacy.BinaryLogicMatrix
open Surface.Legacy.BinaryLogicMatrixFlow
open Surface.Legacy.BinaryLogicMatrixAveragingModel

def emlArtifactHash : String :=
  "surface-eml-catalogue-v1-structural-0f2b8c17"

def averageArtifactHash : String :=
  "surface-blm-spectral-average-v1-rational-77d44ab2"

def coverageArtifactHash : String :=
  "surface-extended-eml-coverage-v1-gamma-9d42af31"

def measurableArtifactHash : String :=
  "surface-measurable-coverage-v1-certified-32ce05af"

def fractalArtifactHash : String :=
  "surface-fractal-coverage-v1-roughness-0a0fd118"

def zetaMobiusArtifactHash : String :=
  "surface-zeta-mobius-fractal-v1-finite-arithmetic-cd8203ee"

def bijectiveFlowArtifactHash : String :=
  "surface-blm-flow-bijective-v1-reversible-0d1c9f20"

def paperMapArtifactHash : String :=
  "surface-paper-map-v1-claim-boundaries-2b6a7c91"

def foundationArtifactHash (name : String) : String :=
  "surface-" ++ name ++ "-v1-foundation-metadata"

def stringJson (s : String) : String :=
  "\"" ++ s ++ "\""

def boolJson (b : Bool) : String :=
  if b then "true" else "false"

def natArrayJson (items : List Nat) : String :=
  "[" ++ String.intercalate "," (items.map toString) ++ "]"

def stringArrayJson (items : List String) : String :=
  "[" ++ String.intercalate "," (items.map stringJson) ++ "]"

def claimBoundaryJson : String :=
  stringArrayJson [
    "structural_coverage_is_not_analytic_equality",
    "finite_eml_is_not_measurable_closure",
    "analytic_euler_product_not_claimed",
    "analytic_mobius_inverse_not_claimed",
    "riemann_hypothesis_not_claimed",
    "nowhere_differentiability_requires_certificate",
    "rendering_has_no_mathematical_authority"
  ]

def defaultPaperReferencesJson : String :=
  stringArrayJson ["paper-map"]

def provedCoverageTheoremsJson : String :=
  stringArrayJson [
    "gamma_structural_valid",
    "gamma_decrease_valid",
    "gamma_increase_valid",
    "gamma_decrease_le",
    "gamma_le_increase",
    "gamma_preorder_refl",
    "gamma_preorder_trans",
    "classicalSmoothAnalytic_covered_by_extendedEML",
    "classicalSmoothAnalytic_covered_by_extendedEML_atGamma",
    "certifiedMeasurable_covered_by_extendedEML_atGamma",
    "certifiedNowhereDifferentiableFractal_covered_by_extendedEML_atGamma",
    "zetaMobiusFractal_covered_by_extendedEML_atGamma",
    "declaredSurfaceFunction_covered_by_extendedEML_atGamma",
    "declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma",
    "coverage_requires_sufficient_foundation",
    "insufficient_foundation_cannot_cover",
    "gamma_coverage_monotone_up",
    "gamma_coverage_monotone_down",
    "structural_coverage_does_not_imply_analytic_equality"
  ]

def gammaJson : String :=
  "{\"mode\":\"structural\",\"level\":0,\"maxDepth\":0,\"maxClosureSteps\":0," ++
  "\"maxSimpleApproxTerms\":0,\"maxSeriesTerms\":0,\"tolerance\":null," ++
  "\"logicalFoundation\":\"constructive\",\"evolutionMode\":\"none\"," ++
  "\"preserveBijectivity\":false,\"maxEvolutionSteps\":0," ++
  "\"allowInfiniteTimeLimit\":false," ++
  "\"exportMatrixChannels\":true,\"exportProofTrace\":true," ++
  "\"exportMeasurableCertificates\":false,\"exportFractalCertificates\":false," ++
  "\"exportAnalyticCertificates\":false,\"exportZetaMobiusData\":false," ++
  "\"exportFlowTrace\":false,\"exportBijectivityCertificates\":false," ++
  "\"exportFrameCommutationCertificates\":false,\"exportChainComplexData\":false," ++
  "\"exportHomologyCertificates\":false,\"exportStabilityCertificates\":false," ++
  "\"exportCurvatureCertificates\":false,\"exportSurgeryTrace\":false," ++
  "\"exportExtinctionCertificates\":false,\"exportTopologyCertificates\":false," ++
  "\"exportModularDecomposition\":false}"

def topBoundaryFields (centralTheorem artifactHash semanticStatus domainStatus branchStatus : String) :
    String :=
  "  \"gamma\": " ++ gammaJson ++ ",\n" ++
  "  \"gammaMode\": \"structural\",\n" ++
  "  \"gammaLevel\": 0,\n" ++
  "  \"precisionDirection\": \"baseline\",\n" ++
  "  \"centralTheorem\": " ++ stringJson centralTheorem ++ ",\n" ++
  "  \"provedTheorems\": " ++ provedCoverageTheoremsJson ++ ",\n" ++
  "  \"artifactHash\": " ++ stringJson artifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ defaultPaperReferencesJson ++ ",\n" ++
  "  \"logicalFoundation\": \"constructive\",\n" ++
  "  \"evolutionMode\": \"none\",\n" ++
  "  \"bijectivityStatus\": \"not_claimed\",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"semanticStatus\": " ++ stringJson semanticStatus ++ ",\n" ++
  "  \"domainStatus\": " ++ stringJson domainStatus ++ ",\n" ++
  "  \"branchStatus\": " ++ stringJson branchStatus ++ ",\n" ++
  "  \"claimBoundary\": " ++ claimBoundaryJson

def ratJson (q : Rat) : String :=
  "{\"num\":" ++ toString q.num ++ ",\"den\":" ++ toString q.den ++ "}"

def bits01 {rows cols : Nat} (M : BinaryLogicMatrix rows cols) : List Nat :=
  M.rowMajorBits.map fun b => if b then 1 else 0

def matrixJson {rows cols : Nat} (M : BinaryLogicMatrix rows cols) : String :=
  "{\"rows\":" ++ toString rows ++
  ",\"cols\":" ++ toString cols ++
  ",\"order\":\"row-major\",\"bits\":" ++ natArrayJson (bits01 M) ++ "}"

def ratMatrixJson (n : Nat) (M : Matrix (Fin n) (Fin n) Rat) : String :=
  let rows :=
    (List.finRange n).map fun i =>
      "[" ++ String.intercalate "," ((List.finRange n).map fun j => ratJson (M i j)) ++ "]"
  "{\"rows\":" ++ toString n ++ ",\"cols\":" ++ toString n ++
  ",\"values\":[" ++ String.intercalate "," rows ++ "]}"

def treeJson : EMLTree k -> String
  | .one => "{\"tag\":\"one\"}"
  | .var i => "{\"tag\":\"var\",\"index\":" ++ toString i.val ++ "}"
  | .eml a b => "{\"tag\":\"eml\",\"left\":" ++ treeJson a ++ ",\"right\":" ++ treeJson b ++ "}"

def channelJson {rows cols : Nat} (name : String) (M : BinaryLogicMatrix rows cols) : String :=
  "{\"name\":" ++ stringJson name ++ ",\"matrix\":" ++ matrixJson M ++ "}"

def circuitJson (enc : CertifiedEncoding s) : String :=
  let M := enc.matrix
  "{\"nodeCount\":" ++ toString enc.n ++
  ",\"root\":" ++ toString M.root.val ++
  ",\"channels\":[" ++
    String.intercalate ","
      [channelJson "kindOne" M.kindOne,
       channelJson "kindVar" M.kindVar,
       channelJson "kindOp" M.kindOp,
       channelJson "leftEdge" M.leftEdge,
       channelJson "rightEdge" M.rightEdge,
       channelJson "inputUse" M.inputUse] ++
  "]}"

def catalogueEntryJson (symbol : ElementarySymbol) (enc : CertifiedEncoding symbol) : String :=
  "{\"symbol\":" ++ stringJson symbol.name ++
  ",\"arity\":" ++ toString enc.arity ++
  ",\"tree\":" ++ treeJson enc.tree ++
  ",\"treeSize\":" ++ toString enc.size ++
  ",\"treeDepth\":" ++ toString enc.depth ++
  ",\"matrix\":" ++ circuitJson enc ++
  ",\"root\":" ++ toString enc.matrix.root.val ++
  ",\"wellFormed\":true" ++
  ",\"roundTrip\":true" ++
  ",\"semanticStatus\":\"structural_encoding_only\"" ++
  ",\"proofStatus\":\"checked_by_lean\"}"

def emlCatalogueJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.eml.catalogue.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.ElementaryCatalogue\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson emlArtifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["eml"] ++ ",\n" ++
  "  \"gamma\": " ++ gammaJson ++ ",\n" ++
  "  \"gammaMode\": \"structural\",\n" ++
  "  \"gammaLevel\": 0,\n" ++
  "  \"precisionDirection\": \"baseline\",\n" ++
  "  \"centralTheorem\": \"selectedCatalogue_complete\",\n" ++
  "  \"provedTheorems\": " ++ stringArrayJson [
    "matrixToTree_treeToMatrix",
    "treeToMatrix_wellFormed",
    "tree_encoding_injective",
    "selectedCatalogue_complete",
    "selected_subset_target",
    "selected_nodup",
    "target_nodup"
  ] ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"semanticStatus\": \"structural_coverage_only\",\n" ++
  "  \"domainStatus\": \"total_structural\",\n" ++
  "  \"branchStatus\": \"branch_not_claimed\",\n" ++
  "  \"claimBoundary\": " ++ claimBoundaryJson ++ ",\n" ++
  "  \"selectedBasis\": " ++ stringArrayJson (selectedElementaryBasis.map ElementarySymbol.name) ++ ",\n" ++
  "  \"entries\": [" ++
    String.intercalate ","
      [catalogueEntryJson ElementarySymbol.one certifiedOne,
       catalogueEntryJson ElementarySymbol.var certifiedVar,
       catalogueEntryJson ElementarySymbol.exp certifiedExp,
       catalogueEntryJson ElementarySymbol.log certifiedLog] ++
  "]\n" ++
  "}\n"

def coverageEntryJson (kind constructor witness witnessKind semanticStatus domainStatus branchStatus : String)
    (arity : Nat) : String :=
  let foundation :=
    if kind = "measurable" then "measurable"
    else if kind = "fractal" ∨ kind = "zeta_mobius_fractal" then "fractal"
    else "classical"
  "{\"declaredFunctionKind\":" ++ stringJson kind ++
  ",\"logicalFoundation\":" ++ stringJson foundation ++
  ",\"evolutionMode\":\"none\"" ++
  ",\"bijectivityStatus\":\"not_claimed\"" ++
  ",\"classicalConstructor\":" ++ stringJson constructor ++
  ",\"measurableCertificateRef\":" ++
    (if kind = "measurable" then stringJson "certified_measurable_atom" else "null") ++
  ",\"fractalCertificateRef\":" ++
    (if kind = "fractal" ∨ kind = "zeta_mobius_fractal" then
      stringJson "nowhere_differentiable_certificate" else "null") ++
  ",\"zetaMobiusScaleLaw\":" ++
    (if kind = "zeta_mobius_fractal" then stringJson "zeta_mobius_hybrid" else "null") ++
  ",\"arity\":" ++ toString arity ++
  ",\"gamma\":" ++ gammaJson ++
  ",\"witness\":" ++ stringJson witness ++
  ",\"witnessKind\":" ++ stringJson witnessKind ++
  ",\"finiteTree\":" ++
    (if witnessKind = "finite_eml_tree" then stringJson witness else "null") ++
  ",\"extendedWitness\":" ++ stringJson witness ++
  ",\"finiteMatrixRef\":" ++
    (if witnessKind = "finite_eml_tree" then stringJson "eml-catalogue.json" else "null") ++
  ",\"proofStatus\":\"checked_by_lean\"" ++
  ",\"semanticStatus\":" ++ stringJson semanticStatus ++
  ",\"domainStatus\":" ++ stringJson domainStatus ++
  ",\"branchStatus\":" ++ stringJson branchStatus ++
  ",\"precisionSummary\":\"Gamma.structural exports proof trace and matrix channels only\"" ++
  ",\"claimBoundary\":" ++ claimBoundaryJson ++ "}"

def extendedCoverageJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.extended_eml.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.CoverageProofs\", \"trusted\": true},\n" ++
  topBoundaryFields "declaredSurfaceFunction_covered_by_extendedEML_atGamma"
    coverageArtifactHash "structural_coverage_only" "total_structural" "branch_not_claimed" ++ ",\n" ++
  "  \"targetClass\": \"DeclaredSurfaceFunction\",\n" ++
  "  \"coverageRelation\": \"CoveredByExtendedEMLAt\",\n" ++
  "  \"entries\": [" ++
    String.intercalate "," [
      coverageEntryJson "classical" "one" "emlOneTree" "finite_eml_tree"
        "structural_coverage_only" "total_structural" "not_branch_sensitive" 0,
      coverageEntryJson "classical" "exp" "compose(emlExpTree,arg)" "extended_closure"
        "structural_coverage_only" "domain_not_claimed" "branch_not_claimed" 1,
      coverageEntryJson "measurable" "not_applicable" "measurableAtom" "measurable_atom"
        "measurable_coverage_proved" "measurable_domain_certified" "not_branch_sensitive" 0,
      coverageEntryJson "fractal" "not_applicable" "fractalWitness" "certified_fractal"
        "nowhere_differentiability_proved" "measurable_domain_certified" "not_branch_sensitive" 0,
      coverageEntryJson "zeta_mobius_fractal" "not_applicable" "zetaMobiusFractalWitness"
        "zeta_mobius_fractal" "zeta_mobius_arithmetic_proved"
        "measurable_domain_certified" "not_branch_sensitive" 0
    ] ++
  "]\n" ++
  "}\n"

def measurableCoverageJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.measurable.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.CoverageProofs\", \"trusted\": true},\n" ++
  topBoundaryFields "certifiedMeasurable_covered_by_extendedEML_atGamma"
    measurableArtifactHash "measurable_coverage_proved" "measurable_domain_certified"
    "not_branch_sensitive" ++ ",\n" ++
  "  \"targetClass\": \"CertifiedMeasurableFunction\",\n" ++
  "  \"coverageRelation\": \"CoveredByExtendedEMLAt\",\n" ++
  "  \"entries\": [" ++
    coverageEntryJson "measurable" "not_applicable" "measurableAtom" "measurable_atom"
      "measurable_coverage_proved" "measurable_domain_certified" "not_branch_sensitive" 0 ++
  "]\n" ++
  "}\n"

def fractalCoverageJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.fractal.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.FractalSpace\", \"trusted\": true},\n" ++
  topBoundaryFields "certifiedNowhereDifferentiableFractal_covered_by_extendedEML_atGamma"
    fractalArtifactHash "nowhere_differentiability_proved" "measurable_domain_certified"
    "not_branch_sensitive" ++ ",\n" ++
  "  \"targetClass\": \"CertifiedNowhereDifferentiableFractalFunction\",\n" ++
  "  \"coverageRelation\": \"CoveredByExtendedEMLAt\",\n" ++
  "  \"entries\": [" ++
    coverageEntryJson "fractal" "not_applicable" "fractalWitness" "certified_fractal"
      "nowhere_differentiability_proved" "measurable_domain_certified" "not_branch_sensitive" 0 ++
  "]\n" ++
  "}\n"

def zetaMobiusFractalJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.zeta_mobius.fractal.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal\", \"trusted\": true},\n" ++
  topBoundaryFields "zetaMobiusFractal_covered_by_extendedEML_atGamma"
    zetaMobiusArtifactHash "zeta_mobius_arithmetic_proved" "measurable_domain_certified"
    "not_branch_sensitive" ++ ",\n" ++
  "  \"arithmeticLayer\": {\"zeta\":\"RiemannZeta\",\"mobius\":\"MobiusFunction\"," ++
    "\"finiteEulerProduct\":true,\"finiteDirichletConvolution\":true," ++
    "\"infiniteEulerProductStatus\":\"not_claimed\"," ++
    "\"analyticMobiusInverseStatus\":\"not_claimed\"},\n" ++
  "  \"entries\": [" ++
    coverageEntryJson "zeta_mobius_fractal" "not_applicable" "zetaMobiusFractalWitness"
      "zeta_mobius_fractal" "zeta_mobius_arithmetic_proved"
      "measurable_domain_certified" "not_branch_sensitive" 0 ++
  "]\n" ++
  "}\n"

def paddedJson {rows cols : Nat} (id : String) (sourceRows sourceCols : Nat)
    (P : PaddedBinaryLogicMatrix rows cols) : String :=
  "{\"id\":" ++ stringJson id ++
  ",\"sourceRows\":" ++ toString sourceRows ++
  ",\"sourceCols\":" ++ toString sourceCols ++
  ",\"paddedRows\":" ++ toString rows ++
  ",\"paddedCols\":" ++ toString cols ++
  ",\"value\":" ++ matrixJson P.value ++
  ",\"active\":" ++ matrixJson P.active ++ "}"

def comparisonJson (F : BinaryLogicMatrixAveragingModel) (a b : Fin F.sourceCount) : String :=
  let C := F.pairwiseComparison a b
  let D := F.pairwiseDistance a b
  "{\"sourceA\":" ++ toString a.val ++
  ",\"sourceB\":" ++ toString b.val ++
  ",\"valueDiff\":" ++ matrixJson C.valueDiff ++
  ",\"paddingDiff\":" ++ matrixJson C.paddingDiff ++
  ",\"totalDiff\":" ++ matrixJson C.totalDiff ++
  ",\"distance\":{\"value\":" ++ toString D.valueDistance ++
    ",\"padding\":" ++ toString D.paddingDistance ++
    ",\"total\":" ++ toString D.totalDistance ++ "}}"

def boolIndexListJson {n : Nat} (f : Fin n -> Bool) : String :=
  natArrayJson ((List.finRange n).filterMap fun i => if f i then some i.val else none)

def cellListJson {rows cols : Nat} (f : Fin rows -> Fin cols -> Bool) : String :=
  "[" ++ String.intercalate ","
    ((List.finRange rows).flatMap fun i =>
      (List.finRange cols).filterMap fun j =>
        if f i j then some ("[" ++ toString i.val ++ "," ++ toString j.val ++ "]") else none) ++
  "]"

def averagedCellJson {rows cols : Nat} (i : Fin rows) (j : Fin cols) (cell : AveragedCell) : String :=
  "{\"row\":" ++ toString i.val ++
  ",\"col\":" ++ toString j.val ++
  ",\"numerator\":" ++ ratJson cell.numerator ++
  ",\"divisor\":" ++ ratJson cell.divisor ++
  ",\"mean\":" ++
    (match cell.mean? with
     | none => "null"
     | some q => ratJson q) ++
  ",\"meanAbsentReason\":" ++
    (match cell.mean? with
     | none => stringJson "zero_divisor"
     | some _ => "null") ++ "}"

def averageCellsJson {rows cols : Nat} (A : AveragedBinaryLogicMatrix rows cols) : String :=
  "[" ++ String.intercalate ","
    ((List.finRange rows).flatMap fun i =>
      (List.finRange cols).map fun j => averagedCellJson i j (A.cell i j)) ++
  "]"

def averageFixtureJson : String :=
  let F := canonicalAverageFlow
  let choice := F.spectralChoice
  let result := F.averageResult
  "{\n" ++
  "  \"schema\": \"surface.blm.spectral_average.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrixFlow.Core\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson averageArtifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["tao-averaged-navier-stokes"] ++ ",\n" ++
  "  \"operatorKind\": \"BinaryLogicMatrixSpectralAverage\",\n" ++
  "  \"logicalFoundation\": \"heatAveraging\",\n" ++
  "  \"evolutionMode\": \"heatAveraging\",\n" ++
  "  \"bijectivity\": \"not_claimed\",\n" ++
  "  \"bijectivityStatus\": \"not_claimed\",\n" ++
  "  \"gamma\": " ++ gammaJson ++ ",\n" ++
  "  \"gammaMode\": \"structural\",\n" ++
  "  \"gammaLevel\": 0,\n" ++
  "  \"precisionDirection\": \"baseline\",\n" ++
  "  \"centralTheorem\": \"spectralAverage_correct\",\n" ++
  "  \"provedTheorems\": " ++ stringArrayJson [
    "spectralAverage_correct",
    "spectralAverage_not_reversible_without_bijective_certificate",
    "average_none_iff_zero_divisor",
    "average_mean_sound",
    "spectralKernel_polynomial_defined"
  ] ++ ",\n" ++
  "  \"semanticStatus\": \"structural_coverage_only\",\n" ++
  "  \"domainStatus\": \"total_structural\",\n" ++
  "  \"branchStatus\": \"not_branch_sensitive\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    "structural_coverage_is_not_analytic_equality",
    "spectral_average_is_not_BinaryLogicMatrixFlow",
    "not_claimed: averaging is reversible",
    "not_claimed: averaging is runtime state transition",
    "rendering_has_no_mathematical_authority"
  ] ++ ",\n" ++
  "  \"paddingPolicy\": " ++ stringJson F.paddingPolicy.name ++ ",\n" ++
  "  \"comparisonWeights\": {\"value\": 1, \"padding\": 1},\n" ++
  "  \"spectralPolicy\": {\"kind\":\"polynomialKernel\",\"coeffs\":[" ++ ratJson 1 ++ "],\"anchor\":0},\n" ++
  "  \"commonDimensions\": {\"rows\":3,\"cols\":3},\n" ++
  "  \"sources\": [" ++
    paddedJson "source-a-kindOne" 2 2 paddedSourceA ++ "," ++
    paddedJson "source-b-kindOne" 3 3 paddedSourceB ++
  "],\n" ++
  "  \"comparisons\": [" ++
    String.intercalate "," ((List.finRange F.sourceCount).flatMap fun a =>
      (List.finRange F.sourceCount).map fun b => comparisonJson F a b) ++
  "],\n" ++
  "  \"spectralOperator\": {\"weightedAdjacency\":" ++ ratMatrixJson F.sourceCount F.comparisonGraph ++
    ",\"degree\":" ++ ratMatrixJson F.sourceCount F.degree ++
    ",\"laplacian\":" ++ ratMatrixJson F.sourceCount F.laplacian ++
    ",\"kernel\":" ++ ratMatrixJson F.sourceCount F.spectralKernel ++ "},\n" ++
  "  \"spectralChoice\": {\"selected\":" ++ boolIndexListJson choice.selected ++
    ",\"groupId\":" ++ toString choice.groupId ++
    ",\"group\":" ++ boolIndexListJson choice.group ++
    ",\"scope\":" ++ cellListJson choice.scope ++
    ",\"focus\":" ++ cellListJson choice.focus ++ "},\n" ++
  "  \"average\": " ++ averageCellsJson result.average ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"hashInput\": \"finite-eml-catalogue-plus-polynomial-kernel-average\"\n" ++
  "}\n"

def canonicalRuntimeInitial4 : BinaryLogicMatrix 4 4 :=
  BinaryLogicMatrix.fromBoolList 4 4
    [true, false, true, false,
     false, false, true, true,
     true, true, false, false,
     false, true, false, true]

def blmFlowBijectiveJson : String :=
  let F := BinaryLogicMatrixFlow.canonicalFlow4
  let x := canonicalRuntimeInitial4
  let y := F.forward x
  let z := F.inverse y
  "{\n" ++
  "  \"schema\": \"surface.blm.flow.bijective.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrixFlow.Core\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson bijectiveFlowArtifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["surface-core"] ++ ",\n" ++
  "  \"object\": \"BinaryLogicMatrixFlow\",\n" ++
  "  \"logicalFoundation\": \"bijectiveFiniteFlow\",\n" ++
  "  \"foundation\": \"bijectiveFiniteFlow\",\n" ++
  "  \"evolutionMode\": \"binaryLogicMatrixFlow\",\n" ++
  "  \"bijectivityStatus\": \"proved_bijective\",\n" ++
  "  \"forward\": \"declared\",\n" ++
  "  \"inverse\": \"declared\",\n" ++
  "  \"inverseForward\": \"proved\",\n" ++
  "  \"forwardInverse\": \"proved\",\n" ++
  "  \"initial\": " ++ matrixJson x ++ ",\n" ++
  "  \"forwardResult\": " ++ matrixJson y ++ ",\n" ++
  "  \"inverseAfterForward\": " ++ matrixJson z ++ ",\n" ++
  "  \"theorems\": " ++ stringArrayJson [
    "inverse_forward",
    "forward_inverse",
    "blmFlow_forward_injective",
    "blmFlow_forward_surjective",
    "blmFlow_forward_bijective",
    "blmFlow_inverse_bijective",
    "blmFlow_replay_reversible"
  ] ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    "does_not_claim: heat averaging is bijective",
    "does_not_claim: Ricci flow is a BinaryLogicMatrixFlow",
    "does_not_claim: Rust is formally verified"
  ] ++ "\n" ++
  "}\n"

def foundationFixtureJson
    (fileStem object foundation evolution bij theoremName boundary : String) : String :=
  "{\n" ++
  "  \"schema\": \"surface.foundation.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson (foundationArtifactHash fileStem) ++ ",\n" ++
  "  \"paperReferences\": " ++ defaultPaperReferencesJson ++ ",\n" ++
  "  \"object\": " ++ stringJson object ++ ",\n" ++
  "  \"logicalFoundation\": " ++ stringJson foundation ++ ",\n" ++
  "  \"foundation\": " ++ stringJson foundation ++ ",\n" ++
  "  \"evolutionMode\": " ++ stringJson evolution ++ ",\n" ++
  "  \"bijectivityStatus\": " ++ stringJson bij ++ ",\n" ++
  "  \"requiredAssumptions\": " ++ stringArrayJson [
    "explicit_foundation",
    "certificate_required_for_nonconstructive_claims"
  ] ++ ",\n" ++
  "  \"coverageTheorem\": " ++ stringJson theoremName ++ ",\n" ++
  "  \"theorem\": " ++ stringJson theoremName ++ ",\n" ++
  "  \"proofStatus\": \"checked_by_lean_or_not_claimed\",\n" ++
  "  \"constructiveStatus\": \"foundation_tracked\",\n" ++
  "  \"computabilityStatus\": \"not_executable_unless_runtime_descriptor\",\n" ++
  "  \"oracleStatus\": \"relative_only_when_oracle_foundation\",\n" ++
  "  \"choiceStatus\": \"explicit_when_choice_foundation\",\n" ++
  "  \"heatFlowStatus\": \"certificate_required\",\n" ++
  "  \"heatAveragingStatus\": \"not_bijective_unless_certified\",\n" ++
  "  \"frameCommutationStatus\": \"certificate_required\",\n" ++
  "  \"chainMapStatus\": \"certificate_required\",\n" ++
  "  \"homologyStabilityStatus\": \"quasi_isomorphism_certificate_required\",\n" ++
  "  \"quasiIsomorphismStatus\": \"certificate_required\",\n" ++
  "  \"curvatureHypothesisStatus\": \"required_for_ricci_claims\",\n" ++
  "  \"surgeryHypothesisStatus\": \"required_for_surgery_claims\",\n" ++
  "  \"extinctionHypothesisStatus\": \"required_for_extinction_claims\",\n" ++
  "  \"topologyHypothesisStatus\": \"required_for_classification_claims\",\n" ++
  "  \"ricciFlowStatus\": \"hypothesis_tracked\",\n" ++
  "  \"infiniteTimeStatus\": \"formal_model_only\",\n" ++
  "  \"stabilityStatus\": \"certificate_required\",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    boundary,
    "not_claimed: representability implies executability",
    "not_claimed: fixture metadata is a proof beyond the named Lean theorem"
  ] ++ "\n" ++
  "}\n"

def foundationsJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.foundations.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Foundation.LogicalFoundation\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson (foundationArtifactHash "foundations") ++ ",\n" ++
  "  \"paperReferences\": " ++ stringArrayJson ["foundation-boundary"] ++ ",\n" ++
  "  \"logicalFoundation\": \"constructive\",\n" ++
  "  \"evolutionMode\": \"none\",\n" ++
  "  \"bijectivityStatus\": \"not_claimed\",\n" ++
  "  \"foundations\": " ++ stringArrayJson [
    "constructive",
    "bijectiveFiniteFlow",
    "classical",
    "measurable",
    "fractal",
    "oracle",
    "heatFlow",
    "heatAveraging",
    "chainComplex",
    "homologyStability",
    "ricciFlow",
    "ricciSurgery",
    "extinctionTopology",
    "infiniteTime",
    "choice",
    "choiceOracle",
    "choiceInfiniteTime",
    "unknown"
  ] ++ ",\n" ++
  "  \"theorems\": " ++ stringArrayJson [
    "foundation_refl",
    "foundation_trans",
    "constructive_le_bijectiveFiniteFlow",
    "bijectiveFiniteFlow_le_classical",
    "classical_le_measurable",
    "measurable_le_fractal",
    "classical_le_oracle",
    "classical_le_choice",
    "heatFlow_le_homologyStability_with_certificate",
    "ricciFlow_le_ricciSurgery_with_certificate",
    "ricciSurgery_le_extinctionTopology_with_certificate"
  ] ++ ",\n" ++
  "  \"claimBoundary\": " ++ stringArrayJson [
    "foundation strength is tracked separately from truth",
    "incomparable layers require explicit bridge certificates"
  ] ++ "\n" ++
  "}\n"

def paperReferenceJson
    (id title role claimStatus trustedKind : String)
    (fixtures modules boundary : List String) : String :=
  "{\"id\":" ++ stringJson id ++
  ",\"title\":" ++ stringJson title ++
  ",\"authors\":" ++ stringArrayJson ["Surface project registry"] ++
  ",\"year\":2026" ++
  ",\"sourceFile\":\"docs/paper-map.md\"" ++
  ",\"role\":" ++ stringJson role ++
  ",\"claimStatus\":" ++ stringJson claimStatus ++
  ",\"trustedKind\":" ++ stringJson trustedKind ++
  ",\"fixtures\":" ++ stringArrayJson fixtures ++
  ",\"formalModules\":" ++ stringArrayJson modules ++
  ",\"formalizedDeclarations\":" ++ stringArrayJson modules ++
  ",\"fixtureDescriptors\":" ++ stringArrayJson fixtures ++
  ",\"visualReferences\":" ++
    (if id = "webgpu-rendering" then stringArrayJson ["apps/web/src/renderer"] else stringArrayJson []) ++
  ",\"claimBoundary\":" ++ stringArrayJson boundary ++ "}"

def paperMapJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.paper_map.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.GenerateFixtures\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson paperMapArtifactHash ++ ",\n" ++
  "  \"references\": [" ++
    String.intercalate "," [
      paperReferenceJson "surface-core" "Finite reversible BinaryLogicMatrix dynamics"
        "formal source for the executed reversible flow" "formalized" "lean_theorem"
        ["blm-flow-bijective.json"] ["Surface.Legacy.BinaryLogicMatrixFlow.Core"]
        ["Rust conformance is tested against Lean fixtures, not itself proved"],
      paperReferenceJson "eml" "Elementary matrix logic"
        "finite structural encoding and catalogue coverage" "formalized" "lean_theorem"
        ["eml-catalogue.json", "extended-eml-coverage.json"]
        ["Surface.Legacy.EMLTree", "Surface.Legacy.EMLCircuitMatrix",
         "Surface.Legacy.ElementarySymbol", "Surface.Legacy.CertifiedEncoding",
         "Surface.Legacy.ClassicalSmoothAnalyticFunction", "Surface.Legacy.ExtendedEML",
         "Surface.Legacy.CoveredByExtendedEMLAt"]
        ["structural grammar formalized",
         "analytic universality not claimed unless separately proved",
         "branch-sensitive equalities not claimed"],
      paperReferenceJson "fractal-zeta" "Zeta and Mobius finite arithmetic descriptors"
        "fixture descriptor for finite arithmetic fields" "fixture_descriptor" "lean_descriptor"
        ["zeta-mobius-fractal.json"]
        ["Surface.Legacy.BinaryLogicMatrix.ZetaMobius", "Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal"]
        ["infinite Euler products and analytic Mobius inverse are not claimed"],
      paperReferenceJson "zeta-fractal-geography" "Zeta-fractal geography"
        "research framing for finite descriptor geography" "research_note" "documentation"
        ["zeta-mobius-fractal.json"] ["Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal"]
        ["visual geography is descriptive unless backed by a named theorem"],
      paperReferenceJson "tao-averaged-navier-stokes" "Averaged Navier-Stokes inspiration"
        "algorithmic reference for averaging descriptors" "algorithmic_reference" "analysis_descriptor"
        ["blm-flow-average.json", "heat-averaging.json"]
        ["Surface.Legacy.BinaryLogicMatrixFlow.Averaging", "Surface.Flow.Heat.Averaging"]
        ["spectral averaging is not a reversible BinaryLogicMatrixFlow"],
      paperReferenceJson "graph-ricci-flow" "Graph Ricci-flow descriptors"
        "finite graph-curvature descriptor boundary" "fixture_descriptor" "lean_descriptor"
        ["ricci-flow-coverage.json"] ["Surface.Legacy.Ricci.Graph", "Surface.Legacy.Ricci.Flow"]
        ["curvature flow claims require explicit hypotheses"],
      paperReferenceJson "ricci-poincare" "Ricci flow and Poincare classification"
        "research note for surgery and extinction metadata" "research_note" "documentation"
        ["ricci-surgery.json", "ricci-extinction-topology.json"]
        ["Surface.Legacy.Ricci.Surgery", "Surface.Legacy.Ricci.Extinction", "Surface.Legacy.Ricci.Topology"]
        ["Poincare-style topology classification is not claimed without certificates"],
      paperReferenceJson "c-mncs" "C-MNCS"
        "out-of-scope comparison term preserved as a boundary" "not_claimed" "boundary"
        ["paper-map.json"] [] ["not claimed: no C-MNCS theorem is claimed by Surface"],
      paperReferenceJson "frg-ricci" "FRG and Ricci analogies"
        "future comparison work outside the trusted path" "future_work" "boundary"
        ["paper-map.json"] [] ["not claimed: no FRG/Ricci equivalence is claimed"],
      paperReferenceJson "webgpu-rendering" "WebGPU cellular rendering"
        "visual reference for runtime snapshots" "visual_reference" "renderer"
        ["blm-flow-bijective.json"] [] ["GPU buffers derive from runtime snapshots only"],
      paperReferenceJson "foundation-boundary" "Logical foundation registry"
        "formal foundation and claim-status bookkeeping" "formalized" "lean_theorem"
        ["foundations.json"] ["Surface.Foundation.LogicalFoundation", "Surface.Legacy.BinaryLogicMatrix.Gamma"]
        ["foundation strength is tracked separately from mathematical truth"],
      paperReferenceJson "prismatic-cohomology-atlas" "Prismatic cohomology exposition model"
        "exposition model for site-like atlas organization and comparison maps"
        "research_note" "documentation"
        ["lean-project-exposition.json"] []
        ["not claimed: Surface does not formalize prismatic cohomology",
         "site-like navigation is expository structure only"]
    ] ++
  "]\n" ++
  "}\n"

def main : IO Unit := do
  IO.FS.createDirAll "../fixtures/lean-generated"
  IO.FS.writeFile "../fixtures/lean-generated/eml-catalogue.json" emlCatalogueJson
  IO.FS.writeFile "../fixtures/lean-generated/extended-eml-coverage.json" extendedCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/measurable-coverage.json" measurableCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/fractal-coverage.json" fractalCoverageJson
  IO.FS.writeFile "../fixtures/lean-generated/zeta-mobius-fractal.json" zetaMobiusFractalJson
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-average.json" averageFixtureJson
  IO.FS.writeFile "../fixtures/lean-generated/paper-map.json" paperMapJson
  IO.FS.writeFile "../fixtures/lean-generated/foundations.json" foundationsJson
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-bijective.json" blmFlowBijectiveJson
  IO.FS.writeFile "../fixtures/lean-generated/flow-transport.json"
    (foundationFixtureJson "flow-transport" "FlowAutomorphismTransport"
      "bijectiveFiniteFlow" "binaryLogicMatrixFlow" "proved_bijective"
      "flowAutomorphismTransport_bijective"
      "not_claimed: arbitrary decode/encode pairs are faithful")
  IO.FS.writeFile "../fixtures/lean-generated/oracle-coverage.json"
    (foundationFixtureJson "oracle-coverage" "OracleRepresentableFunction"
      "oracle" "combined" "not_claimed"
      "oracleComputable_covered_by_extendedEML"
      "not_claimed: oracle-relative computation is ordinary computation")
  IO.FS.writeFile "../fixtures/lean-generated/heat-flow-coverage.json"
    (foundationFixtureJson "heat-flow-coverage" "HeatFlowRepresentableObject"
      "heatFlow" "heatTransport" "not_claimed"
      "heatFlowRepresentable_covered_by_extendedEML"
      "not_claimed: heat flow smoothing without a certificate")
  IO.FS.writeFile "../fixtures/lean-generated/heat-averaging.json"
    (foundationFixtureJson "heat-averaging" "CertifiedHeatAveragingOperator"
      "heatAveraging" "heatAveraging" "not_claimed"
      "heatFlow_decomposition_sound"
      "not_claimed: heat averaging is BinaryLogicMatrixFlow")
  IO.FS.writeFile "../fixtures/lean-generated/frame-commuting-flow.json"
    (foundationFixtureJson "frame-commuting-flow" "FrameCommutationCertificate"
      "homologyStability" "frameCommutingHeatTransport" "requires_certificate"
      "frameCommuting_flow_requires_commutation_certificate"
      "not_claimed: frame commutation implies homology invariance without quasi-isomorphism")
  IO.FS.writeFile "../fixtures/lean-generated/homology-stability.json"
    (foundationFixtureJson "homology-stability" "HomologyStabilityCertificate"
      "homologyStability" "chainHomotopyFlow" "requires_certificate"
      "HomologyStabilityCertificate.claimSound_id"
      "not_claimed: numerical Betti computation is a Lean proof")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-flow-coverage.json"
    (foundationFixtureJson "ricci-flow-coverage" "RicciFlowRepresentableObject"
      "ricciFlow" "ricciFlow" "not_claimed"
      "ricciFlowRepresentable_covered_by_extendedEML"
      "not_claimed: Ricci flow automatically stabilizes topology")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-surgery.json"
    (foundationFixtureJson "ricci-surgery" "RicciSurgeryStep"
      "ricciSurgery" "ricciFlowWithSurgery" "not_claimed"
      "ricciSurgery_topology_change_requires_twoSphere_surgery"
      "not_claimed: Dehn surgery is controlled by two-sphere surgery certificates")
  IO.FS.writeFile "../fixtures/lean-generated/ricci-extinction-topology.json"
    (foundationFixtureJson "ricci-extinction-topology" "FiniteTimeExtinctionCertificate"
      "extinctionTopology" "finiteTimeExtinction" "not_claimed"
      "ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses"
      "not_claimed: every Ricci flow becomes extinct")
  IO.FS.writeFile "../fixtures/lean-generated/topological-stability.json"
    (foundationFixtureJson "topological-stability" "TopologicalStabilityCertificate"
      "infiniteTime" "infiniteTimeLimit" "not_claimed"
      "topologicalStability_requires_convergence_certificate"
      "not_claimed: stability without convergence certificate")
  IO.FS.writeFile "../fixtures/lean-generated/infinite-time-coverage.json"
    (foundationFixtureJson "infinite-time-coverage" "InfiniteTimeRepresentableFunction"
      "infiniteTime" "infiniteTimeLimit" "not_claimed"
      "infiniteTimeRepresentable_covered_by_extendedEML"
      "not_claimed: infinite time is finite execution")
  IO.FS.writeFile "../fixtures/lean-generated/choice-coverage.json"
    (foundationFixtureJson "choice-coverage" "ChoiceDependentObject"
      "choice" "combined" "not_claimed"
      "choiceCoverage_requires_foundation"
      "not_claimed: Choice is constructive")
  IO.FS.writeFile "../fixtures/lean-generated/vitali.json"
    (foundationFixtureJson "vitali" "VitaliSet"
      "choice" "combined" "not_claimed"
      "vitali_exists_under_choice"
      "not_claimed: Vitali set construction is choice-free")
  IO.FS.writeFile "../fixtures/lean-generated/eml-catalogue.sha256" (emlArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/extended-eml-coverage.sha256" (coverageArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/measurable-coverage.sha256" (measurableArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/fractal-coverage.sha256" (fractalArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/zeta-mobius-fractal.sha256" (zetaMobiusArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-average.sha256" (averageArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/paper-map.sha256" (paperMapArtifactHash ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/foundations.sha256"
    (foundationArtifactHash "foundations" ++ "\n")
  IO.FS.writeFile "../fixtures/lean-generated/blm-flow-bijective.sha256"
    (bijectiveFlowArtifactHash ++ "\n")
  for name in [
    "flow-transport",
    "oracle-coverage",
    "heat-flow-coverage",
    "heat-averaging",
    "frame-commuting-flow",
    "homology-stability",
    "ricci-flow-coverage",
    "ricci-surgery",
    "ricci-extinction-topology",
    "topological-stability",
    "infinite-time-coverage",
    "choice-coverage",
    "vitali"
  ] do
    IO.FS.writeFile ("../fixtures/lean-generated/" ++ name ++ ".sha256")
      (foundationArtifactHash name ++ "\n")
  IO.println "wrote finite EML, reversible flow, foundation, coverage, and boundary fixtures"
