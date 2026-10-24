# Complete source: GRWTSK.Algebra.UniversalAlgebra.CharPZeroNeCharZero.Variant93935cb6b9448d6c76aac72978cfa1256999ffa2b81c2a9811058122265d4853

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4760d30991020d959439a2b083e38be4afee0ac5` · SHA-256 `d4457a3f55841d8cec4031dec9d7ed3a0d5c4aaed0c625d45cdd0a527f1884b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AddOneEqOne.Variant2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AddOneEqOne.Variant2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/CharPZeroNeCharZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa, Eric Wieser
-/
import Mathlib.Algebra.CharP.Lemmas
import Mathlib.Algebra.Ring.PUnit

/-! # `CharP R 0` and `CharZero R` need not coincide for semirings

For rings, the two notions coincide.

In fact, `CharP.ofCharZero` shows that `CharZero R` implies `CharP R 0` for any `CharZero`
`AddMonoid R` with `1`.
The reverse implication holds for any `AddLeftCancelMonoid R` with `1`, by `charP_to_charZero`.

This file shows that there are semirings `R` for which `CharP R 0` holds and `CharZero R` does not.

The example is `{0, 1}` with saturating addition.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.AddOneEqOne.Variant2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca

namespace Counterexample

@[simp]
theorem add_one_eq_one (x : WithZero Unit) : x + 1 = 1 :=
  WithZero.cases_on x (by rfl) fun h => by rfl

theorem withZero_unit_charP_zero : CharP (WithZero Unit) 0 :=
  ⟨fun x => by cases x <;> simp⟩

theorem withZero_unit_not_charZero : ¬CharZero (WithZero Unit) := fun ⟨h⟩ =>
  h.ne (by simp : 1 + 1 ≠ 0 + 1) (by set_option simprocs false in simp)

end Counterexample
```
