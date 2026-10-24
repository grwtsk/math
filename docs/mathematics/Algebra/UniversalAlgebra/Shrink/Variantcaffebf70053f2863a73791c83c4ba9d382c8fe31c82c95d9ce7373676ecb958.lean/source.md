# Complete source: GRWTSK.Algebra.UniversalAlgebra.Shrink.Variantcaffebf70053f2863a73791c83c4ba9d382c8fe31c82c95d9ce7373676ecb958

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ff7d2ec560cb361ca6f32d92c0e8eb0388a2f7c` · SHA-256 `37848e4bdbef639c125728a6e99ce64261d4eafc991ad969cf5fd6bb04128a0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Shrink.Variant915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Shrink.Variant915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/GroupWithZero/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Shrink
public import Mathlib.Algebra.GroupWithZero.Action.TransferInstance
public import Mathlib.Algebra.GroupWithZero.TransferInstance

/-!
# Transfer group with zero structures from `α` to `Shrink α`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Shrink.Variant915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406

public section

noncomputable section

universe v
variable {M α : Type*} [Small.{v} α]

instance [SemigroupWithZero α] : SemigroupWithZero (Shrink α) :=
  (equivShrink _).symm.semigroupWithZero
instance [MulZeroClass α] : MulZeroClass (Shrink α) := (equivShrink _).symm.mulZeroClass
instance [MulZeroOneClass α] : MulZeroOneClass (Shrink α) := (equivShrink _).symm.mulZeroOneClass

instance [Monoid M] [AddCommMonoid α] [DistribMulAction M α] : DistribMulAction M (Shrink.{v} α) :=
  Shrink.addEquiv.distribMulAction M
```
