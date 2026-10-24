# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant1e141d6d3cb0e28886cb5782d9e68e64d8d8da6d3b76fb752b0ac75a24263ab9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e52104775ef709e071c6163aa15d87db259fb720` · SHA-256 `e6acf968fb277206682a0ecd4a6c41fb5936ff802c5924410f5c25154f5fc422`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/NoZeroSMulDivisors/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Yaël Dillies
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Defs
import Mathlib.Algebra.Group.Action.Pi

/-!
# Pi instances for NoZeroSMulDivisors

This file defines instances for NoZeroSMulDivisors on Pi types.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b

universe u v

variable {I : Type u}

-- The indexing type
variable {f : I → Type v}

instance Pi.noZeroSMulDivisors (α) [Zero α] [∀ i, Zero <| f i]
    [∀ i, SMulWithZero α <| f i] [∀ i, NoZeroSMulDivisors α <| f i] :
    NoZeroSMulDivisors α (∀ i : I, f i) :=
  ⟨fun {_ _} h =>
    or_iff_not_imp_left.mpr fun hc =>
      funext fun i => (smul_eq_zero.mp (congr_fun h i)).resolve_left hc⟩

/-- A special case of `Pi.noZeroSMulDivisors` for non-dependent types. Lean struggles to
synthesize this instance by itself elsewhere in the library. -/
instance _root_.GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variantd4a54f7151aad31acabdce8fe29ccb5fcc1f67e7aa1d785994af295eafbba14b.Function.noZeroSMulDivisors {ι α β : Type*} [Zero α] [Zero β]
    [SMulWithZero α β] [NoZeroSMulDivisors α β] : NoZeroSMulDivisors α (ι → β) :=
  Pi.noZeroSMulDivisors _
```
