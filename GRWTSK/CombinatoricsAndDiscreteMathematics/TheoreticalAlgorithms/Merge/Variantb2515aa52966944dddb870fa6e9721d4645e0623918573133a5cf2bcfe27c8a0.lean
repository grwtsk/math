-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","mathematical_subject":"Computation.DataStructures","original_sha256":"7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Merge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Serialization

/-!
# Incremental shard-merge boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ShardMergeCertificate.Variant7adfd8385e51616718002c9ce8fce3402353d7a19b7dd0988de880ba5782776b

namespace MathDiscovery.Extractor

open MathDiscovery

structure ShardMergeCertificate where
  cleanDigest : Digest
  incrementalDigest : Digest
  comparedFileDigests : Array (CanonicalPath × Digest)
  deriving DecidableEq, Repr, Inhabited

namespace ShardMergeCertificate

/-- Incremental and clean extraction agree only when their canonical digests do. -/
def Valid (certificate : ShardMergeCertificate) : Prop :=
  certificate.cleanDigest = certificate.incrementalDigest

end ShardMergeCertificate

end MathDiscovery.Extractor
