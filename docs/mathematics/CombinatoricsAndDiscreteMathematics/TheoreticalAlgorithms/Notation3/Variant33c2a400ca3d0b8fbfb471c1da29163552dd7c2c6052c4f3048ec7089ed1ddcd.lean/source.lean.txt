-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variantcd12e5115798b09ba3f86bcc92cc23c72b286b407d9ff1464337d020542fdf74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd12e5115798b09ba3f86bcc92cc23c72b286b407d9ff1464337d020542fdf74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.All.Variantcd12e5115798b09ba3f86bcc92cc23c72b286b407d9ff1464337d020542fdf74","mathematical_subject":"Computation.DataStructures","original_sha256":"cd12e5115798b09ba3f86bcc92cc23c72b286b407d9ff1464337d020542fdf74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/PrivateModule/Notation3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import all Mathlib.Tactic.Linter.PrivateModule
import Mathlib.Util.Notation3


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variantcd12e5115798b09ba3f86bcc92cc23c72b286b407d9ff1464337d020542fdf74

open Lean

local notation3 "MyList[" (x", "* => foldr (a b => List.cons a b) List.nil) "]" => x

/- Check that we have indeed created declarations, and aren't not linting just due to being an
empty file: -/
/--
info: [_private.MathlibTest.Linter.PrivateModule.Notation3.0.«termMyList[_,]»,
 _private.MathlibTest.Linter.PrivateModule.Notation3.0.«_aux_MathlibTest_Linter_PrivateModule_Notation3___macroRules__private_MathlibTest_Linter_PrivateModule_Notation3_0_termMyList[_,]_1»,
 _private.MathlibTest.Linter.PrivateModule.Notation3.0.«_aux_MathlibTest_Linter_PrivateModule_Notation3___delab_app__private_MathlibTest_Linter_PrivateModule_Notation3_0_termMyList[_,]_2»,
 _private.MathlibTest.Linter.PrivateModule.Notation3.0.«_aux_MathlibTest_Linter_PrivateModule_Notation3___delab_app__private_MathlibTest_Linter_PrivateModule_Notation3_0_termMyList[_,]_1»]
-/
#guard_msgs in
run_cmd do
  logInfo m!"{(← getEnv).constants.map₂.toArray.map (·.1)}"

-- The linter should fire since the `notation3` is local
-- Run the linter on artificial `eoi` syntax so that we can actually guard the message
set_option linter.mathlibStandardSet true in
open Mathlib.Linter Parser in
/--
warning: The current module only contains private declarations.

Consider adding `public section` at the beginning of the module, or selectively marking declarations as `public`. Mark a `def` with `@[expose]` if downstream code needs it to be definitionally equal to its body (e.g. for `unfold`). Alternatively, add `@[expose] public section` to mark every definition as exposed.

Note: This linter can be disabled with `set_option linter.privateModule false`
-/
#guard_msgs in
run_cmd do
  let eoi := mkNode ``Command.eoi #[mkAtom .none ""]
  privateModule.run eoi
