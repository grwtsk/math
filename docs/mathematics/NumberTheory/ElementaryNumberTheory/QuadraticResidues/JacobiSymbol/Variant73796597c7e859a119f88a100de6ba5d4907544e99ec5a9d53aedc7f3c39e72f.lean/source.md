# Complete source: GRWTSK.NumberTheory.JacobiSym.Variant73796597c7e859a119f88a100de6ba5d4907544e99ec5a9d53aedc7f3c39e72f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f717583b2c690104ca0f24f42c5d9b03462d2ed` · SHA-256 `ec73879051216e7e312822c9b9654c5bc8895bdce31628385c13ab0036da0a38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.JacobiSymbol.Variantaff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.JacobiSymbol.Variantaff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"aff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/jacobiSym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol
import Mathlib.Tactic.NormNum.Prime

-- TODO(kmill): remove once the mathlib ToExpr Int instance is removed

namespace GRWTSK.NumberTheory.JacobiSymbol.Variantaff5ec567b83253f8ec222004fee1e556a50c21899a99c82ddbc70d42e4f7ba6

set_option eval.pp false

section Csimp

/-!
We test that `@[csimp]` replaces `jacobiSym` (i.e. `J(· | ·)`) and `legendreSym` with
`jacobiSym.fastJacobiSym` at runtime.
-/

open scoped NumberTheorySymbols

/-- info: -1 -/
#guard_msgs in
#eval J(123 | 335)

/-- info: -1 -/
#guard_msgs in
#eval J(-2345 | 6789)

/-- info: 1 -/
#guard_msgs in
#eval J(-1 | 1655801)

/-- info: -1 -/
#guard_msgs in
#eval J(-102334155 | 165580141)

/-- info: -1 -/
#guard_msgs in
#eval J(58378362899022564339483801989973056405585914719065 |
  53974350278769849773003214636618718468638750007307)

instance prime_1000003 : Fact (Nat.Prime 1000003) := ⟨by norm_num1⟩
/-- info: -1 -/
#guard_msgs in
#eval @legendreSym 1000003 prime_1000003 7

-- Should replace `legendreSym` with `fastJacobiSym` without using `Fact p.Prime`
/--
info: 1
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
#eval! @legendreSym (2 ^ 11213 - 1) sorry 7

end Csimp
```
