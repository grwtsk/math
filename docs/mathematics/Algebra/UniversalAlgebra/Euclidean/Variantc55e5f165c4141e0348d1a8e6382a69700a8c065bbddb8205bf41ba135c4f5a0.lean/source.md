# Complete source: GRWTSK.Algebra.UniversalAlgebra.Euclidean.Variantc55e5f165c4141e0348d1a8e6382a69700a8c065bbddb8205bf41ba135c4f5a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d276e1a95cd9533f63a3fa2349ca770e96aa903b` · SHA-256 `9f36db775ff6cbcb0c9afa34ce0d42187381edd1a49d371da1a63042b46cae71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsEuclidean.Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsEuclidean.Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ed85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/AbsoluteValue/Euclidean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Order.AbsoluteValue.Basic
import Mathlib.Algebra.EuclideanDomain.Int

/-!
# Euclidean absolute values

This file defines a predicate `AbsoluteValue.IsEuclidean abv` stating the
absolute value is compatible with the Euclidean domain structure on its domain.

## Main definitions

* `AbsoluteValue.IsEuclidean abv` is a predicate on absolute values on `R` mapping to `S`
  that preserve the order on `R` arising from the Euclidean domain structure.
* `AbsoluteValue.abs_isEuclidean` shows the "standard" absolute value on `ℤ`,
  mapping negative `x` to `-x`, is euclidean.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsEuclidean.Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0

@[inherit_doc]
local infixl:50 " ≺ " => EuclideanDomain.r

namespace AbsoluteValue

section OrderedSemiring

variable {R S : Type*} [EuclideanDomain R] [Semiring S] [PartialOrder S]
variable (abv : AbsoluteValue R S)

/-- An absolute value `abv : R → S` is Euclidean if it is compatible with the
`EuclideanDomain` structure on `R`, namely `abv` is strictly monotone with respect to the well
founded relation `≺` on `R`. -/
structure IsEuclidean : Prop where
  /-- The requirement of a Euclidean absolute value
  that `abv` is monotone with respect to `≺` -/
  map_lt_map_iff' : ∀ {x y}, abv x < abv y ↔ x ≺ y

namespace IsEuclidean

variable {abv}

-- Rearrange the parameters to `map_lt_map_iff'` so it elaborates better.
theorem map_lt_map_iff {x y : R} (h : abv.IsEuclidean) : abv x < abv y ↔ x ≺ y :=
  map_lt_map_iff' h

attribute [simp] map_lt_map_iff

theorem sub_mod_lt (h : abv.IsEuclidean) (a : R) {b : R} (hb : b ≠ 0) : abv (a % b) < abv b :=
  h.map_lt_map_iff.mpr (EuclideanDomain.mod_lt a hb)

end IsEuclidean

end OrderedSemiring

section Int

open Int

-- TODO: generalize to `LinearOrderedEuclideanDomain`s if we ever get a definition of those
/-- `abs : ℤ → ℤ` is a Euclidean absolute value -/
protected theorem abs_isEuclidean : IsEuclidean (AbsoluteValue.abs : AbsoluteValue ℤ ℤ) :=
  {  map_lt_map_iff' := fun {x y} =>
       show abs x < abs y ↔ natAbs x < natAbs y by rw [abs_eq_natAbs, abs_eq_natAbs, ofNat_lt] }

end Int

end AbsoluteValue
```
