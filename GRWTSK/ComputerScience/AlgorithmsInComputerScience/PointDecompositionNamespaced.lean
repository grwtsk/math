-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StatementRole.Variant530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StatementRole.Variant530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51","mathematical_subject":"Computation.DataStructures","original_sha256":"530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/PointDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.MathematicalPoint

/-!
# Lossless statement, proof, and definition decomposition

Atomization exposes typed point roles while retaining exact source bytes.
Reconstruction is the concatenation of the retained fragments, not a semantic
summary or a model-generated paraphrase.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StatementRole.Variant530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51

namespace Mathematics.Concept

inductive StatementRole
  | object
  | structure
  | relation
  | operation
  | quantifier
  | hypothesis
  | conclusion
  | scope
  | authority
  deriving DecidableEq, Repr, Inhabited

inductive ProofRole
  | input
  | lemma
  | transformation
  | case_
  | normalization
  | rewrite
  | witness
  | closure
  deriving DecidableEq, Repr, Inhabited

inductive DefinitionRole
  | genus
  | constraint
  | constructor
  | eliminator
  | equivalence
  | representation
  | boundary
  deriving DecidableEq, Repr, Inhabited

structure SourceFragment where
  pointId : ElementId
  sourceAddressId : StableId
  ordinal : Nat
  bytes : List UInt8
  fragmentDigest : Digest
  deriving DecidableEq, Repr

structure LosslessPointDecomposition where
  sourceAddressId : StableId
  sourceBytes : List UInt8
  fragments : List SourceFragment
  fragments_nonempty : fragments ≠ []
  source_round_trip :
    fragments.flatMap SourceFragment.bytes = sourceBytes
  decompositionDigest : Digest

/-- A statement records the semantic role of every retained fragment. -/
structure StatementDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × StatementRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

/-- A proof records inputs, transformations, cases, witnesses, and closure. -/
structure ProofDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × ProofRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

/-- A definition records genus, constraints, interfaces, and boundaries. -/
structure DefinitionDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × DefinitionRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

theorem LosslessPointDecomposition.reconstructs_source
    (decomposition : LosslessPointDecomposition) :
    decomposition.fragments.flatMap SourceFragment.bytes =
      decomposition.sourceBytes :=
  decomposition.source_round_trip

end Mathematics.Concept
