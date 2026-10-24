-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/GroundedLaplacian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.ExactRationalEdge.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3

namespace Noeoueue.TypeMemory

structure ExactRationalEdge where
  numerator : Nat
  denominator : Nat
  positive : 0 < numerator
  nonzero : denominator ≠ 0

def componentKernelDimension (valid grounded : Bool) : Nat := if valid && !grounded then 1 else 0

end Noeoueue.TypeMemory
