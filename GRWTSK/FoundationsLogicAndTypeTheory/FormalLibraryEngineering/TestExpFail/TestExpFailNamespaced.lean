-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Variant2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I01.Variant2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_exp_fail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Variant2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683

open LeanCert.Core
open LeanCert.Validity

-- e ≈ 2.7182818284590452...
-- This bound is below e; the checker should reject it even at high Taylor depth.
def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def exprExp : Expr := Expr.exp (Expr.var 0)

example :
    checkUpperBound exprExp I01 (679570457 / 250000000) { taylorDepth := 50 } = false := by
  native_decide
