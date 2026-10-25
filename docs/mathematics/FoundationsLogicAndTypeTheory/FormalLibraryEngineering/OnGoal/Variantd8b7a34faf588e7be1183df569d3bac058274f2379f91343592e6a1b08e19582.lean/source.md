# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnGoal.Variantd8b7a34faf588e7be1183df569d3bac058274f2379f91343592e6a1b08e19582

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b51997356262db71a7ece5d7c372db13bcf6c818` · SHA-256 `1076006cc4eb249ad7d5d567fdafcbf7e1f93c181e6bdc55ecbc941852ccdc5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PermuteGoals.Variant17a7be5aa77c97369e5a486f4b562008931da8778718d7ee25af8a5456a5cb4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17a7be5aa77c97369e5a486f4b562008931da8778718d7ee25af8a5456a5cb4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PermuteGoals.Variant17a7be5aa77c97369e5a486f4b562008931da8778718d7ee25af8a5456a5cb4d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"17a7be5aa77c97369e5a486f4b562008931da8778718d7ee25af8a5456a5cb4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/on_goal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.PermuteGoals
import Batteries.Tactic.Unreachable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PermuteGoals.Variant17a7be5aa77c97369e5a486f4b562008931da8778718d7ee25af8a5456a5cb4d

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
