-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmlArtifactHash.Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EmlArtifactHash.Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c","mathematical_subject":"Computation.DataStructures","original_sha256":"c82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/GenerateFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GenerateFixturesNamespaced.lean
Git blob: ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb
Retained finite matrix fixture and row-major Boolean-to-natural representation.
The Noe driver imports this core; historical fixture/report emission is external.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmlArtifactHash.Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c

open Surface
open Surface.Legacy
open Surface.Legacy.BinaryLogicMatrix
open Surface.Legacy.BinaryLogicMatrixFlow
open Surface.Legacy.BinaryLogicMatrixAveragingModel

def bits01 {rows cols : Nat} (M : BinaryLogicMatrix rows cols) : List Nat :=
  M.rowMajorBits.map fun b => if b then 1 else 0

def canonicalRuntimeInitial4 : BinaryLogicMatrix 4 4 :=
  BinaryLogicMatrix.fromBoolList 4 4
    [true, false, true, false,
     false, false, true, true,
     true, true, false, false,
     false, true, false, true]

end GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmlArtifactHash.Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c
