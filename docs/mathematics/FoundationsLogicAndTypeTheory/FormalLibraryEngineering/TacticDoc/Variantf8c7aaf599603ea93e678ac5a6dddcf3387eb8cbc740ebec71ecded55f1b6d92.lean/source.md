# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticDoc.Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba4d4d66af06c4e7b29f60c133ba88dd9e82ea97` · SHA-256 `f8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.TacticDocumentation
import Batteries.Tactic.Lint.Frontend

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
```
