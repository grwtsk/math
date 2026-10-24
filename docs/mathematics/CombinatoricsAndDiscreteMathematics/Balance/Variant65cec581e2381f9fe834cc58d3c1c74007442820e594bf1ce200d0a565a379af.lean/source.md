# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Balance.Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bacdbb01be096b138788ceac49ddc3254e50e657` · SHA-256 `385f0845c49efe189444e7be863ac0d014ffdbc156353c361b3bca2ee49b3570`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Balance.Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Balance.Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Balance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Algebra.BigOperators.Expect

/-!
# Balancing a function

This file defines the balancing of a function `f`, defined as `f` minus its average.

This is the unique function `g` such that `f a - f b = g a - g b` for all `a` and `b`, and
`∑ a, g a = 0`. This is particularly useful in Fourier analysis as `f` and `g` then have the same
Fourier transform, except in the `0`-th frequency where the Fourier transform of `g` vanishes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Balance.Variant45bc64bd3c4fd27fda63ed78756c8db64b12d317c9ea236154044bad6eef7847

open Finset Function
open scoped BigOperators

variable {ι H F G : Type*}

namespace Fintype

section AddCommGroup
variable [Fintype ι] [AddCommGroup G] [Module ℚ≥0 G] [AddCommGroup H] [Module ℚ≥0 H]

/-- The balancing of a function, namely the function minus its average. -/
def balance (f : ι → G) : ι → G := f - Function.const _ (𝔼 y, f y)

lemma balance_apply (f : ι → G) (x : ι) : balance f x = f x - 𝔼 y, f y := rfl

@[simp] lemma balance_zero : balance (0 : ι → G) = 0 := by simp [balance]

@[simp] lemma balance_add (f g : ι → G) : balance (f + g) = balance f + balance g := by
  simp only [balance, expect_add_distrib, ← const_add, add_sub_add_comm, Pi.add_apply]

@[simp] lemma balance_sub (f g : ι → G) : balance (f - g) = balance f - balance g := by
  simp only [balance, expect_sub_distrib, const_sub, sub_sub_sub_comm, Pi.sub_apply]

@[simp] lemma balance_neg (f : ι → G) : balance (-f) = -balance f := by
  simp only [balance, expect_neg_distrib, const_neg, neg_sub', Pi.neg_apply]

@[simp] lemma sum_balance (f : ι → G) : ∑ x, balance f x = 0 := by
  cases isEmpty_or_nonempty ι <;> simp [balance_apply]

@[simp] lemma expect_balance (f : ι → G) : 𝔼 x, balance f x = 0 := by simp [expect]

@[simp] lemma balance_idem (f : ι → G) : balance (balance f) = balance f := by
  cases isEmpty_or_nonempty ι <;> ext x <;> simp [balance, expect_sub_distrib, univ_nonempty]

@[simp] lemma map_balance [FunLike F G H] [LinearMapClass F ℚ≥0 G H] (g : F) (f : ι → G) (a : ι) :
    g (balance f a) = balance (g ∘ f) a := by simp [balance, map_expect]

end AddCommGroup
end Fintype
```
