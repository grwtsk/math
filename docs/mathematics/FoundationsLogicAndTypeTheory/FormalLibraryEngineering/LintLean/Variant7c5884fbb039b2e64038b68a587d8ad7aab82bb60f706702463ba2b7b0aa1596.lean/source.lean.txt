-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variantf1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lint.Variantf1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lint_lean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variantf1344a1377f6541b1d534e0788a39ed572bd3244187ea48a25650dbcf98326f3

