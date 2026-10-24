# Complete source: GRWTSK.Analysis.SpecialFunctions.IrrationalPowerOfIrrational.Variantc04b7b4bb744d2fdb44a008cdb3552bcaa6fca4346b58d8b79f15d0958b51603

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d607b850bb6f42ebbeb29870b7a64c06ec4aafba` · SHA-256 `6df558bd8ebace696c36560480b1742bd29b196fa23b05a0398a98cb087321bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.NotIrrationalRpow.Variant6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.NotIrrationalRpow.Variant6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/IrrationalPowerOfIrrational.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Seewoo Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Seewoo Lee
-/
import Mathlib.Data.Real.Irrational
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal

/-
# Irrational power of irrational numbers are not necessarily irrational.

Prove that there exist irrational numbers `a`, `b` such that `a^b` is rational.

We use the following famous argument (based on the law of excluded middle and irrationality of √2).
Consider `c = √2^√2`. If `c` is rational, we are done.
If `c` is irrational, then `c^√2 = 2` is rational, so we are done.
-/



namespace GRWTSK.Analysis.SpecialFunctions.NotIrrationalRpow.Variant6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b

open Real

namespace Counterexample

/--
There exist irrational `a`, `b` with rational `a^b`.
Note that the positivity assumption on `a` is imposed because of the definition of `rpow` for
negative bases. See `Real.rpow_def_of_neg` for more details.
-/
theorem not_irrational_rpow :
   ¬ ∀ a b : ℝ, Irrational a → Irrational b → 0 < a → Irrational (a ^ b) := by
  push_neg
  by_cases hc : Irrational (√2 ^ √2)
  · use (√2 ^ √2), √2, hc, irrational_sqrt_two, by positivity
    rw [← rpow_mul, mul_self_sqrt, rpow_two, sq_sqrt] <;> norm_num
  · use √2, √2, irrational_sqrt_two, irrational_sqrt_two, by positivity, hc

end Counterexample
```
