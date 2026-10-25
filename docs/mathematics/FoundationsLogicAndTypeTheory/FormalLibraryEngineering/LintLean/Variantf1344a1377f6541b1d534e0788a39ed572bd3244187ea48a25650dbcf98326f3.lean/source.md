# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintLean.Variantf1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25db639a8caa49234524f5801eea1faa19ebaf59` · SHA-256 `f1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lint

/-!
This test file runs the environment linters set up in Batteries on the core Lean4 repository.

Everything is commented out as it is too slow to run in regular Batteries CI
(and in any case there are many failures still),
but it is useful to run locally to see what the linters would catch.
-/

-- We can't apply `nolint` attributes to imported declarations,
-- but if we move the environment linters up to Lean,
-- these nolints should be installed there.
-- (And in the meantime you can "manually" ignore them!)
-- attribute [nolint explicitVarsOfIff] Iff.refl

/-! Failing lints that need work. -/

-- Many fixed in https://github.com/leanprover/lean4/pull/4620 and subsequent PRs
-- and should be checked again.
-- #lint only simpNF in all -- Found 22 errors

/-! Lints that fail, but that we're not intending to do anything about. -/

-- Mostly fixed in https://github.com/leanprover/lean4/pull/4621
-- There are many false positives here.
-- To run this properly we would need to ignore all declarations with `@[extern]`.
-- #lint only unusedArguments in all -- Found 89 errors

-- After https://github.com/leanprover/lean4/pull/4616, these are all intentional and have
-- `nolint` attributes above.
-- #lint only dupNamespace in all -- Found 6 errors

-- After https://github.com/leanprover/lean4/pull/4619 all of these should be caused by `abbrev`.
-- Unless we decide to upstream something like `alias`, we're not planning on fixing these.
-- #lint only defLemma in all -- Found 31 errors

/-! Lints that have succeeded in the past, and hopefully still do! -/

-- #lint only explicitVarsOfIff in all -- Found 1 errors, `Iff.refl`, which could be nolinted.
-- #lint only impossibleInstance  in all -- Found 0 errors
-- #lint only simpVarHead in all -- Found 0 error
-- #lint only unusedHavesSuffices in all  -- Found 0 errors
-- #lint only checkUnivs in all -- Found 0 errors
```
