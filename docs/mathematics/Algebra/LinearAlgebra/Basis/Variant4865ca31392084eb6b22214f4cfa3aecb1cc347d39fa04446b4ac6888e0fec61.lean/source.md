# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variant4865ca31392084eb6b22214f4cfa3aecb1cc347d39fa04446b4ac6888e0fec61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89009c39d77ec275bbbb8a9a34b05b244ec6a215` · SHA-256 `3423e541cc100d7602e70c3b0f6e3271cb4fb9329a48af7e3cee96900e743e5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BasisExtMultilinear.Variant6abd35c06fc33478c0a01ee7fbc9125baea82039cfb4c16cafaef71e0907aa33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6abd35c06fc33478c0a01ee7fbc9125baea82039cfb4c16cafaef71e0907aa33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BasisExtMultilinear.Variant6abd35c06fc33478c0a01ee7fbc9125baea82039cfb4c16cafaef71e0907aa33","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6abd35c06fc33478c0a01ee7fbc9125baea82039cfb4c16cafaef71e0907aa33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Multilinear/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.LinearAlgebra.Basis.Defs
import Mathlib.LinearAlgebra.Multilinear.Basic

/-!
# Multilinear maps in relation to bases.

This file proves lemmas about the action of multilinear maps on basis vectors.

-/



namespace GRWTSK.Algebra.LinearAlgebra.BasisExtMultilinear.Variant6abd35c06fc33478c0a01ee7fbc9125baea82039cfb4c16cafaef71e0907aa33

open MultilinearMap

variable {ι R : Type*} [CommSemiring R]
  {M : ι → Type*} [∀ i, AddCommMonoid (M i)] [∀ i, Module R (M i)]
  {N : Type*} [AddCommMonoid N] [Module R N]

/-- Two multilinear maps indexed by a `Fintype` are equal if they are equal when all arguments
are basis vectors. -/
theorem Basis.ext_multilinear [Finite ι] {f g : MultilinearMap R M N} {ιM : ι → Type*}
    (e : ∀ i, Basis (ιM i) R (M i))
    (h : ∀ v : (i : ι) → ιM i, (f fun i ↦ e i (v i)) = g fun i ↦ e i (v i)) : f = g := by
  cases nonempty_fintype ι
  classical
  ext m
  rcases Function.Surjective.piMap (fun i ↦ (e i).repr.symm.surjective) m with ⟨x, rfl⟩
  unfold Pi.map
  simp_rw [(e _).repr_symm_apply, Finsupp.linearCombination_apply, Finsupp.sum,
    map_sum_finset, map_smul_univ, h]

@[deprecated (since := "2025-05-12")]
alias Basis.ext_multilinear_fin := Basis.ext_multilinear
```
