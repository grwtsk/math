# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Finsupp.Varianta0d06b8e98425ff1be150fecc1806555ea2e5ee44507acd851818d6e72972916

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39cda8d7a4c306a712e7026af88ecfe9cd852fc1` · SHA-256 `5988a4931c59c033a09a8df75bd7504361c5959e3d554f357ef03bb29ff5f436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym2SupportEqPreimageSupportMul.Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Sym2SupportEqPreimageSupportMul.Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Sym/Sym2/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Data.Finset.Sym
import Mathlib.Data.Finsupp.Defs

/-!
# Finitely supported functions from the symmetric square

This file lifts functions `α →₀ M₀` to functions `Sym2 α →₀ M₀` by precomposing with multiplication.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym2SupportEqPreimageSupportMul.Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b

open Sym2

variable {α M₀ : Type*} [CommMonoidWithZero M₀] {f : α →₀ M₀}

namespace Finsupp

lemma sym2_support_eq_preimage_support_mul [NoZeroDivisors M₀] (f : α →₀ M₀) :
    f.support.sym2 = map f ⁻¹' mul.support := by ext ⟨a, b⟩; simp

lemma mem_sym2_support_of_mul_ne_zero (p : Sym2 α) (hp : mul (p.map f) ≠ 0) :
    p ∈ f.support.sym2 := by
  obtain ⟨a, b⟩ := p
  simp only [map_pair_eq, mul_mk, ne_eq] at hp
  simpa using .intro (left_ne_zero_of_mul hp) (right_ne_zero_of_mul hp)

/-- The composition of a `Finsupp` with `Sym2.mul` as a `Finsupp`. -/
noncomputable def sym2Mul (f : α →₀ M₀) : Sym2 α →₀ M₀ :=
  .onFinset f.support.sym2 (fun p ↦ mul (p.map f)) mem_sym2_support_of_mul_ne_zero

lemma support_sym2Mul_subset : f.sym2Mul.support ⊆ f.support.sym2 := support_onFinset_subset

@[simp, norm_cast] lemma coe_sym2Mul (f : α →₀ M₀) : f.sym2Mul = mul ∘ map f := rfl

lemma sym2Mul_apply_mk (p : α × α) : f.sym2Mul (.mk p) = f p.1 * f p.2 := rfl

end Finsupp
```
