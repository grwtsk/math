# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.EquivOfInjective.Variant5a8b48ec91895898359b7c11381b5b1e9bfef6795d7747d1b82aa64a394bd1ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485fa4f5e1420b9cd5e9fb2ac87a7c6deb66970a` · SHA-256 `3026972d0374a5e9a65f77e5c796acb59920f21e5b3aa20be64725f9172d42a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeOfInjectiveCastLESymm.Variant8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CoeOfInjectiveCastLESymm.Variant8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41","mathematical_subject":"Logic.Foundations","original_sha256":"8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fin/EquivOfInjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module -- shake: keep-all

public import Mathlib.Data.Fin.SuccPred
public import Mathlib.Logic.Equiv.Set


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeOfInjectiveCastLESymm.Variant8c31101d32659ed552c7eb89ea2d45a8f0a1cf6b3576fd79b86865805ff40b41

deprecated_module (since := "2026-08-26")

public section

namespace Fin

@[deprecated Equiv.apply_ofInjective_symm (since := "2026-08-26")]
theorem coe_of_injective_castLE_symm {n k : ℕ} (h : n ≤ k) (i : Fin k) (hi) :
    ((Equiv.ofInjective _ (castLE_injective h)).symm ⟨i, hi⟩ : ℕ) = i := by
  rw [← val_castLE h, Equiv.apply_ofInjective_symm _ ⟨i, hi⟩]

@[deprecated Equiv.apply_ofInjective_symm (since := "2026-08-26")]
theorem coe_of_injective_castSucc_symm {n : ℕ} (i : Fin n.succ) (hi) :
    ((Equiv.ofInjective castSucc (castSucc_injective _)).symm ⟨i, hi⟩ : ℕ) = i := by
  rw [← val_castSucc, Equiv.apply_ofInjective_symm _ ⟨i, hi⟩]

end Fin
```
