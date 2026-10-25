-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticDocumentation.Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TacticDocumentation.Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/TacticDoc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.TacticDocumentation
import Batteries.Tactic.Lint.Frontend


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticDocumentation.Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92

syntax "noDocs" : tactic

/-- `duplicate` is a tactic. -/
syntax (name := duplicate1) "duplicate" : tactic
/-- `duplicate only t1 t2 ... tn` should be a `@[tactic_alt]` of `duplicate`. -/
syntax (name := duplicate2) "duplicate" "only" ident* : tactic
-- Limitation: both `duplicate1` and `duplicate2` currently cause a linter warning.

/-- `no_duplicate` is a tactic.

* `no_duplicate only t1 t2 ... tn` is an alternative form of this tactic.
-/
syntax (name := no_duplicate) "no_duplicate" : tactic
@[tactic_alt no_duplicate]
syntax "no_duplicate" "only" ident* : tactic

/-- We should also give a linter warning across imports. -/
syntax (name := rfl2) "rfl" "too" : tactic

-- But not if it has a `@[tactic_alt]` attribute.
-- Note that `change` in Lean core has an alternative `changeWith`.
@[tactic_alt Lean.Parser.Tactic.change]
syntax (name := change2) "change" "too" : tactic

/--
error: -- Found 4 errors in 7 declarations (plus 0 automatically generated ones) in the current file with 2 linters

/- The `tacticAlt` linter reports:
TACTICS ARE MISSING `@[tactic_alt]` ATTRIBUTES:
This linter can be disabled with `@[nolint tacticAlt]`. -/
#check duplicate1 /- tactic `duplicate` has multiple declarations [duplicate2,
 duplicate1] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/
#check duplicate2 /- tactic `duplicate` has multiple declarations [duplicate2,
 duplicate1] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/
#check rfl2 /- tactic `rfl` has multiple declarations [Lean.Parser.Tactic.tacticRfl,
 rfl2] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/

/- The `tacticDocs` linter reports:
TACTICS ARE MISSING DOCUMENTATION STRINGS:
This linter can be disabled with `@[nolint tacticDocs]`. -/
#check tacticNoDocs /- tactic `noDocs` missing documentation string -/
-/
#guard_msgs in
#lint
