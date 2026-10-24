-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.BusyBeaverDescriptor.Variant31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.BusyBeaverDescriptor.Variant31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde","mathematical_subject":"Computation.Computability","original_sha256":"31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Oracle/BusyBeaver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Oracle.Halting

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.BusyBeaverDescriptor.Variant31af481357dd3915bd348e3445855941580e7e5543222de6f5f6f2261941dfde

namespace Surface
namespace Legacy

structure BusyBeaverDescriptor where
  haltingOracle : HaltingOracleDescriptor
  ordinaryComputable : Bool

theorem busyBeaver_not_marked_ordinary_computable
    (B : BusyBeaverDescriptor) :
    B.ordinaryComputable = false -> B.ordinaryComputable = false := by
  intro h
  exact h

end Legacy
end Surface
