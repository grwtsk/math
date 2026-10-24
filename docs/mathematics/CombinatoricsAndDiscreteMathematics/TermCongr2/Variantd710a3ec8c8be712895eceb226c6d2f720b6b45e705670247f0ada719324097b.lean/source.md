# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TermCongr2.Variantd710a3ec8c8be712895eceb226c6d2f720b6b45e705670247f0ada719324097b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00f66a2ca15b0cdba7cbb65617a5696da3bb3770` · SHA-256 `01ccf49f9a5dbaa7ba87878db0c74502021c39ea3b09ee21b1499aed0d994756`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TermCongr.Variant323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TermCongr.Variant323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/TermCongr2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.TermCongr
import Mathlib.Data.Fintype.Card
import Mathlib.Tactic.Ring

/-!
`congr(...)` tests with heavier imports (`TermCongr` is in `Mathlib/Tactic/Common.lean`)
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TermCongr.Variant323c942193da56a4142e51fd6f886e9687eed1aa2f71df13d21cbd1981b8c013

namespace Tests

set_option autoImplicit true

-- set_option trace.Elab.congr true

example [Fintype α] [Fintype β] (h : α = β) : Fintype.card α = Fintype.card β :=
  congr(Fintype.card $h)

example (s t : Set α) [Fintype s] [Fintype t] (h : s = t) : Fintype.card s = Fintype.card t :=
  congr(Fintype.card $h)

example (x y : ℤ) (h1 : 3 * x + 2 * y = 10) (h2 : 2 * x + 5 * y = 3) :
    11*y = -11 := by
  have := congr(-2*$h1 + 3*$h2)
  guard_hyp this : -2*(3*x + 2*y) + 3*(2*x + 5*y) = -2*10 + 3*3
  ring_nf at this ⊢
  exact this

example (a b c d : ℚ) (h1 : a = 4) (h2 : 3 = b) (h3 : c * 3 = d) (h4 : -d = a) :
    2*a - 3 + 9*c + 3*d = 8 - b + 3*d - 3*a := by
  have := congr(2*$h1 -1*$h2 +3*$h3 -3*$h4)
  guard_hyp this : 2*a - 1*3 + 3*(c*3) -3*(-d) = 2*4 - 1*b + 3*d - 3*a
  ring_nf at this ⊢
  exact this

end Tests
```
