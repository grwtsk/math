# Complete source: GRWTSK.Algebra.Finset.Variant9db17661931eab05997c18fb76b973fb06feebe574bfbe0471e95c6aa53a2352

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7e2cf1090e2a83c980e086795a665d85171e5e9` · SHA-256 `fccc96902b2ca6472c1d4e07c818a57ac6411d93b802ebcf72d492775423657e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DistribNeg.Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DistribNeg.Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Pointwise/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Ring.Pointwise.Set
import Mathlib.Algebra.Ring.InjSurj
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Pointwise operations of sets in a ring

This file proves properties of pointwise operations of sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.DistribNeg.Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca

assert_not_exists MulAction

open scoped Pointwise

namespace Finset
variable {α β : Type*}

/-- `Finset α` has distributive negation if `α` has. -/
protected noncomputable def distribNeg [DecidableEq α] [Mul α] [HasDistribNeg α] :
    HasDistribNeg (Finset α) :=
  coe_injective.hasDistribNeg _ coe_neg coe_mul

scoped[Pointwise] attribute [instance] Finset.distribNeg

section Distrib
variable [DecidableEq α] [Distrib α] (s t u : Finset α)

/-!
Note that `Finset α` is not a `Distrib` because `s * t + s * u` has cross terms that `s * (t + u)`
lacks.

```lean
-- {10, 16, 18, 20, 8, 9}
#eval {1, 2} * ({3, 4} + {5, 6} : Finset ℕ)

-- {10, 11, 12, 13, 14, 15, 16, 18, 20, 8, 9}
#eval ({1, 2} : Finset ℕ) * {3, 4} + {1, 2} * {5, 6}
```
-/

lemma mul_add_subset : s * (t + u) ⊆ s * t + s * u :=
  image₂_distrib_subset_left mul_add

lemma add_mul_subset : (s + t) * u ⊆ s * u + t * u :=
  image₂_distrib_subset_right add_mul

end Distrib
end Finset
````
