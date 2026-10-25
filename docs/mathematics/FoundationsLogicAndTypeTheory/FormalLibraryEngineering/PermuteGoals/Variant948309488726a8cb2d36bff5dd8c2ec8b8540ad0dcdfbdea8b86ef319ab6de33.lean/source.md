# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PermuteGoals.Variant948309488726a8cb2d36bff5dd8c2ec8b8540ad0dcdfbdea8b86ef319ab6de33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12355f7f26306150f8df55ca48f81a9e7bdc7cf2` · SHA-256 `2b877279f4e9b7914f4b08c246aece704501043ad619b403fcf3cfad4378c799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variant08eb4738c98f7b58e2874298f40cbe596ff8c4a205c492c75939632604a09dac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08eb4738c98f7b58e2874298f40cbe596ff8c4a205c492c75939632604a09dac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GuardExpr.Variant08eb4738c98f7b58e2874298f40cbe596ff8c4a205c492c75939632604a09dac","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"08eb4738c98f7b58e2874298f40cbe596ff8c4a205c492c75939632604a09dac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/PermuteGoals.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardExpr
import Mathlib.Tactic.PermuteGoals


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variant08eb4738c98f7b58e2874298f40cbe596ff8c4a205c492c75939632604a09dac

example (p q r : Prop) : p → q → r → p ∧ q ∧ r := by
  intros
  constructor
  on_goal 2 =>
    guard_target = q ∧ r
    constructor
    assumption
    -- Note that we have not closed all the subgoals here.
  guard_target = p
  assumption
  guard_target = r
  assumption

example (p q r : Prop) : p → q → r → p ∧ q ∧ r := by
  intros a b c
  constructor
  fail_if_success on_goal -3 => unreachable!
  fail_if_success on_goal -1 => exact a
  fail_if_success on_goal 0 => unreachable!
  fail_if_success on_goal 2 => exact a
  fail_if_success on_goal 3 => unreachable!
  on_goal 1 => exact a
  constructor
  swap
  exact c
  exact b

example (p q : Prop) : p → q → p ∧ q := by
  intros a b
  constructor
  fail_if_success pick_goal -3
  fail_if_success pick_goal 0
  fail_if_success pick_goal 3
  pick_goal -1
  exact b
  exact a

example (p : Prop) : p → p := by
  intros
  fail_if_success swap -- can't swap with a single goal
  assumption
```
