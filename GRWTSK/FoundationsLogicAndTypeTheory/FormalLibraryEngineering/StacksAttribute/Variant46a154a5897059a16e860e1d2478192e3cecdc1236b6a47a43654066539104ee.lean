-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tagged.Variant911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tagged.Variant911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/StacksAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.StacksAttribute
import Mathlib.Util.ParseCommand


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tagged.Variant911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697

/-- info: No tags found. -/
#guard_msgs in
#stacks_tags

namespace X

@[stacks A04Q "A comment", kerodon B15R "Also a comment"]
theorem tagged : True := .intro

end X

/--
info: some ([Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) (A comment)

[Kerodon Tag B15R](https://kerodon.net/tag/B15R) (Also a comment))
-/
#guard_msgs in
run_cmd
  Lean.logInfo m!"{← Lean.findDocString? (← Lean.getEnv) `X.tagged}"

#guard_msgs in
@[stacks 0BR2, kerodon 0X12]
example : True := .intro

@[stacks 0BR2, stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0BR2, stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0X14 "I can also have a comment"]
example : True := .intro

/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05"

/-- error: <input>:1:4: Stacks tags must consist only of digits and uppercase letters. -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05b"

/-- info: 0BD5 -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "0BD5"

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
-/
#guard_msgs in
#stacks_tags

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
True
-/
#guard_msgs in
#stacks_tags!

/--
info:
[Stacks Tag B15R](https://kerodon.net/tag/B15R) corresponds to declaration 'X.tagged'. (Also a comment)
True
-/
#guard_msgs in
#kerodon_tags!

section errors

open Lean Parser Mathlib.StacksTag

def captureException (env : Environment) (s : ParserFn) (input : String) : Except String Syntax :=
  let ictx := mkInputContext input "<input>"
  let s := s.run ictx { env, options := {} } (getTokenTable env) (mkParserState input)
  if !s.allErrors.isEmpty then
    .error (s.toErrorMsg ictx)
  else if ictx.input.atEnd s.pos then
    .ok s.stxStack.back
  else
    .error ((s.mkError "end of input").toErrorMsg ictx)

/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in
run_cmd do
  let _ ← Lean.ofExcept <| captureException (← getEnv) stacksTagFn "A05"

/-- error: <input>:1:4: Stacks tags must consist only of digits and uppercase letters. -/
#guard_msgs in
run_cmd do
  let _ ← Lean.ofExcept <| captureException (← getEnv) stacksTagFn "aaaa"

/-- error: <input>:1:0: expected stacks tag -/
#guard_msgs in
run_cmd do
  let env ← getEnv
  let _ ← Lean.ofExcept <| captureException env stacksTagFn "\"A04Q\""

end errors
