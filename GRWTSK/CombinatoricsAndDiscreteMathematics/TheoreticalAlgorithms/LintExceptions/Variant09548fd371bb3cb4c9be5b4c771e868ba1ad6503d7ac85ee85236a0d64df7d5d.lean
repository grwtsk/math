-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Std.Variant76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Std.Variant76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5","mathematical_subject":"Computation.DataStructures","original_sha256":"76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/LintExceptions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module  -- shake: keep-all (almost-terminal module, `#grind_lint` does not track extra deps)
prelude
import Init
import Std
import Lean.Elab.Tactic.Grind.Lint

-- We allow these as grind lemmas even though they triggers >20 further instantiations.
-- See tests/lean/run/grind_lint_*.lean for more details.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Std.Variant76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5

#grind_lint skip BitVec.msb_extractLsb
#grind_lint skip BitVec.msb_signExtend
#grind_lint skip BitVec.toInt_shiftLeftZeroExtend
#grind_lint skip List.replicate_sublist_iff
#grind_lint skip List.Sublist.append
#grind_lint skip List.Sublist.middle
#grind_lint skip List.getLast?_pmap
#grind_lint skip List.drop_append_length
#grind_lint skip List.getLast_scanr
#grind_lint skip Array.back_singleton
#grind_lint skip Array.count_singleton
#grind_lint skip Array.foldl_empty
#grind_lint skip Array.foldr_empty

#grind_lint skip suffix sizeOf_spec
