# Complete source: GRWTSK.Algebra.GalNotation.Variant52a5f9b21f7d8f20322063b96db2d8d631e2afba0ad25aa44365d122281c0de7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e6c5579c64bd0210ee2fcacd6d9e6ec4d2c9849` · SHA-256 `42d3b656663421b1e6a7ccfda9fd73f8045fb40a7aa64046be6a289937211efd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Copy.Variante255403eb568044e6ac04bbdc4519400046322cbea827fc9d141642feff9ff1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e255403eb568044e6ac04bbdc4519400046322cbea827fc9d141642feff9ff1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Copy.Variante255403eb568044e6ac04bbdc4519400046322cbea827fc9d141642feff9ff1f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e255403eb568044e6ac04bbdc4519400046322cbea827fc9d141642feff9ff1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/GalNotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module
import Mathlib.FieldTheory.Galois.Notation
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.Field.ULift

/-! Tests for the notation `Gal(L/K)`. -/


namespace GRWTSK.Algebra.Copy.Variante255403eb568044e6ac04bbdc4519400046322cbea827fc9d141642feff9ff1f

universe uR uS uK uL

variable (R : Type uR) (S : Type uS) (K : Type uK) (L : Type uL)
variable [CommSemiring R] [Semiring S] [Algebra R S] [Field K] [Field L] [Algebra K L]

/-! `Gal(S/R)` should always elaborate to `S ≃ₐ[R] S`,
but `S ≃ₐ[R] S` should not pretty print as `Gal(S/R)` because `R` and `S` are not fields. -/

/-- info: S ≃ₐ[R] S : Type uS -/
#guard_msgs in
#check Gal(S/R)

/-! `Gal(L/K)` should pretty print as `Gal(L/K)` when `K` and `L` are fields. -/

/-- info: Gal(L/K) : Type uL -/
#guard_msgs in
#check Gal(L/K)

/-- info: Gal(L/K) : Type uL -/
#guard_msgs in
#check L ≃ₐ[K] L

/-! This should also work for concrete types other than variables -/

/-- info: Gal(ℚ/ℚ) : Type -/
#guard_msgs in
#check Gal(ℚ/ℚ)

/-- info: Gal(ULift.{uL, 0} ℚ/ℚ) : Type uL -/
#guard_msgs in
#check Gal(ULift.{uL} ℚ/ℚ)

/-! This should not see through `abbrev`s and pretty print `AlgEquiv`s between them as `Gal`. -/

/-- A copy of `L` for testing. -/
abbrev Copy := L

/-- info: Gal(Copy L/K) : Type uL -/
#guard_msgs in
#check Gal(Copy L/K)

/-- info: L ≃ₐ[K] Copy L : Type uL -/
#guard_msgs in
#check L ≃ₐ[K] Copy L

/-! `Gal(L/K)` should not pretty print when `pp.explicit` is set to true. -/

set_option pp.explicit true in
/--
info: @AlgEquiv K L L (@Semifield.toCommSemiring K (@Field.toSemifield K inst✝²))
  (@CommSemiring.toSemiring L (@Semifield.toCommSemiring L (@Field.toSemifield L inst✝¹)))
  (@CommSemiring.toSemiring L (@Semifield.toCommSemiring L (@Field.toSemifield L inst✝¹))) inst✝ inst✝ : Type uL
-/
#guard_msgs in
#check Gal(L/K)
```
