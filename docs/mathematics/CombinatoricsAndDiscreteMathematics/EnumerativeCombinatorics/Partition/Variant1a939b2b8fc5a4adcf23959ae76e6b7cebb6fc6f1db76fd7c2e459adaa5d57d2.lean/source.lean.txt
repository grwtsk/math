-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.LexicographicObjective.Variant9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.LexicographicObjective.Variant9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Partition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Refactor.Constraint

/-! # Deterministic constrained partitions -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.LexicographicObjective.Variant9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc

namespace Mathematics.Refactor

open Mathematics

structure LexicographicObjective where
  hardPolicyFailures : Nat
  elementCountPenalty : Nat
  largestElement : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array Mathematics.Element.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end Mathematics.Refactor
