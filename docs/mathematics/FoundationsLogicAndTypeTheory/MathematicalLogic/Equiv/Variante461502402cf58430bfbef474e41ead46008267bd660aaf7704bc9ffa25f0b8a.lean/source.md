# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variante461502402cf58430bfbef474e41ead46008267bd660aaf7704bc9ffa25f0b8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dad1fbc73c2353e366a50090f3614ee2dad8f0d` · SHA-256 `3a1d2e3807d3a50cc2011b9d480ddbaaf673e24cd774709e97447080d62c9fb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootEquivPnatEquivNat.Variant8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RootEquivPnatEquivNat.Variant8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15","mathematical_subject":"Logic.Foundations","original_sha256":"8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/PNat/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Ralf Stephan, Neil Strickland, Ruben Van de Velde
-/
import Mathlib.Data.PNat.Defs
import Mathlib.Logic.Equiv.Defs

/-!
# The equivalence between `ℕ+` and `ℕ`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootEquivPnatEquivNat.Variant8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15

/-- An equivalence between `ℕ+` and `ℕ` given by `PNat.natPred` and `Nat.succPNat`. -/
@[simps -fullyApplied]
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootEquivPnatEquivNat.Variant8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15.Equiv.pnatEquivNat : ℕ+ ≃ ℕ where
  toFun := PNat.natPred
  invFun := Nat.succPNat
  left_inv := PNat.succPNat_natPred
  right_inv := Nat.natPred_succPNat
```
