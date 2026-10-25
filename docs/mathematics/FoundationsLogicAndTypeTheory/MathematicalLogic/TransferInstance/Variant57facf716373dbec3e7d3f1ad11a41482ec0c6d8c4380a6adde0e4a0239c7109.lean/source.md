# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TransferInstance.Variant57facf716373dbec3e7d3f1ad11a41482ec0c6d8c4380a6adde0e4a0239c7109

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7932111a825465031ebbcfff68d5bc0ba5d2d988` · SHA-256 `77ffcfffc23108b9c19f28bb1489980c74935777fff1acfb56eead88f6f56780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Star.Variante221c5521df8fae3c11a57964506d170351829984e61c2fa93c8b6ac8bd2b19d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e221c5521df8fae3c11a57964506d170351829984e61c2fa93c8b6ac8bd2b19d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Star.Variante221c5521df8fae3c11a57964506d170351829984e61c2fa93c8b6ac8bd2b19d","mathematical_subject":"Logic.Foundations","original_sha256":"e221c5521df8fae3c11a57964506d170351829984e61c2fa93c8b6ac8bd2b19d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Star/TransferInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Algebra.Ring.TransferInstance

/-! # Transfer star (algebraic) structures across `Equiv`s

This continues the pattern set in `Mathlib/Algebra/Group/TransferInstance.lean`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Star.Variante221c5521df8fae3c11a57964506d170351829984e61c2fa93c8b6ac8bd2b19d

variable {R S : Type*}

public section

namespace Equiv

variable (e : R ≃ S)

-- See note [instance transfer via equivalence]
/-- Transfer `Star` across an `Equiv`. See note [reducible non-instances].

For `star : R → R` bundled as an `Equiv`, see `Equiv.Perm.star`. -/
protected abbrev star [Star S] : Star R where
  star r := e.invFun (star (e.toFun r))

/-- Transfer `InvolutiveStar` across an `Equiv`. See note [reducible non-instances]. -/
protected abbrev involutiveStar [InvolutiveStar S] : InvolutiveStar R :=
  let _ := e.star
  e.injective.involutiveStar _ fun _ ↦ e.apply_symm_apply _

/-- Transfer `StarMul` across an `Equiv`. See note [reducible non-instances]. -/
protected abbrev starMul [Mul S] [StarMul S] :
    letI := e.mul
    StarMul R := by
  let := e.star
  let := e.mul
  apply e.injective.starMul <;> (intros; exact e.apply_symm_apply _)

/-- Transfer `StarAddMonoid` across an `Equiv`. See note [reducible non-instances]. -/
protected abbrev starAddMonoid [AddMonoid S] [StarAddMonoid S] :
    letI := e.addMonoid
    StarAddMonoid R := by
  let := e.star
  let := e.addMonoid
  apply e.injective.starAddMonoid <;> (intros; exact e.apply_symm_apply _)

/-- Transfer `StarRing` across an `Equiv`. See note [reducible non-instances]. -/
protected abbrev starRing [NonUnitalNonAssocSemiring S] [StarRing S] :
    letI := e.nonUnitalNonAssocSemiring
    StarRing R := by
  let := e.star
  let := e.nonUnitalNonAssocSemiring
  apply e.injective.starRing <;> (intros; exact e.apply_symm_apply _)

/-- Transfer `StarModule` across an `Equiv` -/
protected lemma starModule (𝕜 : Type*)
    [Star 𝕜] [Star S] [SMul 𝕜 S] [StarModule 𝕜 S] :
    letI := e.star
    letI := e.smul 𝕜
    StarModule 𝕜 R := by
  let := e.star
  let := e.smul 𝕜
  apply e.injective.starModule _ 𝕜 <;> (intros; exact e.apply_symm_apply _)

end Equiv
```
