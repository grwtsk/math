# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant4f1bd842f57b718ae8122891c302d7d58f6f2d46220ffbabf5d91405dc4dca96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b7d555e9f334f93ec6e21c579bde59c1fb83dd4` · SHA-256 `9fe54c9e16f69f9386719fd7d10ee58b9f1c559230abbd355e469eaf45e8219b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CastFinsetSupPrime.Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CastFinsetSupPrime.Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser, Yaël Dillies, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Yaël Dillies, Andrew Yang
-/
import Mathlib.Algebra.Order.Ring.Canonical
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Data.Nat.Cast.Order.Ring

/-!
# `Finset.sup` and ring operations
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CastFinsetSupPrime.Variante208e1e4837b25154937b903f8656e78a78c28db1d77f8f3fceb628adea734eb

open Finset

namespace Nat
variable {ι R : Type*}

section LinearOrderedSemiring
variable [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] {s : Finset ι}

set_option linter.docPrime false in
@[simp, norm_cast]
lemma cast_finsetSup' (f : ι → ℕ) (hs) : ((s.sup' hs f : ℕ) : R) = s.sup' hs fun i ↦ (f i : R) :=
  comp_sup'_eq_sup'_comp _ _ cast_max

set_option linter.docPrime false in
@[simp, norm_cast]
lemma cast_finsetInf' (f : ι → ℕ) (hs) : (↑(s.inf' hs f) : R) = s.inf' hs fun i ↦ (f i : R) :=
  comp_inf'_eq_inf'_comp _ _ cast_min

@[simp, norm_cast]
lemma cast_finsetSup [OrderBot R] [CanonicallyOrderedAdd R] (s : Finset ι) (f : ι → ℕ) :
    (↑(s.sup f) : R) = s.sup fun i ↦ (f i : R) :=
  comp_sup_eq_sup_comp _ cast_max (by simp)

end LinearOrderedSemiring

end Nat

section

variable {R ι : Type*} [LinearOrder R] [NonUnitalNonAssocSemiring R]
  [CanonicallyOrderedAdd R] [OrderBot R]

lemma Finset.mul_sup₀ (s : Finset ι) (f : ι → R) (a : R) :
    a * s.sup f = s.sup (a * f ·) := by
  classical
  induction s using Finset.induction with
  | empty => simp [bot_eq_zero]
  | insert _ _ _ IH => simp only [sup_insert, mul_max, ← IH]

/-- Also see `Finset.sup'_mul₀` for a version for `GroupWithZero`s. -/
lemma Finset.sup_mul₀ (s : Finset ι) (f : ι → R) (a : R) :
    s.sup f * a = s.sup (f · * a) := by
  classical
  induction s using Finset.induction with
  | empty => simp [bot_eq_zero]
  | insert _ _ _ IH => simp only [sup_insert, max_mul, ← IH]

end
```
