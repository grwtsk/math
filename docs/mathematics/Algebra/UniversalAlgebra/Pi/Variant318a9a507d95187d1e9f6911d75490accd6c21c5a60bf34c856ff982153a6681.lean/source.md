# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e93b7a0c9019c9d06556be2c9cdbad2d72589a9` · SHA-256 `8320544530cce68bf4918fca4075a1628ece59ca4dbe2607b3aab1cb0d0caa75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.PreQuasiregularToPi.Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.PreQuasiregularToPi.Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Spectrum/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/

import Mathlib.Algebra.Algebra.Spectrum.Quasispectrum
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Algebra.Prod
import Mathlib.Algebra.Group.Pi.Units

/-!
# Spectrum and quasispectrum of products

This file contains results regarding the spectra and quasispectra of (indexed) products of
elements of a (non-unital) ring. The main result is that the (quasi)spectrum of a product is the
union of the (quasi)spectra.

## Main declarations

+ `Pi.spectrum_eq`: `spectrum R a = ⋃ i, spectrum R (a i)` for `a : ∀ i, κ i`
+ `Prod.spectrum_eq`: `spectrum R ⟨a, b⟩ = spectrum R a ∪ spectrum R b`
+ `Pi.quasispectrum_eq`: `quasispectrum R a = ⋃ i, quasispectrum R (a i)` for `a : ∀ i, κ i`
+ `Prod.quasispectrum_eq`: `quasispectrum R ⟨a, b⟩ = quasispectrum R a ∪ quasispectrum R b`

## TODO

+ Apply these results to block matrices.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.PreQuasiregularToPi.Variant6f2c5aae29771fb5f6fee308367b5456b43a461d98f02e1ba9e0793167076b0b

variable {ι A B R : Type*} {κ : ι → Type*}

section quasiregular

variable (κ) in
/-- The equivalence between pre-quasiregular elements of an indexed product and the indexed product
of pre-quasiregular elements. -/
def PreQuasiregular.toPi [∀ i, NonUnitalSemiring (κ i)] :
    PreQuasiregular (∀ i, κ i) ≃* ∀ i, PreQuasiregular (κ i) where
  toFun := fun x i => .mk <| x.val i
  invFun := fun x => .mk <| fun i => (x i).val
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

variable (A B) in
/-- The equivalence between pre-quasiregular elements of a product and the product of
pre-quasiregular elements. -/
def PreQuasiregular.toProd [NonUnitalSemiring A] [NonUnitalSemiring B] :
    PreQuasiregular (A × B) ≃* PreQuasiregular A × PreQuasiregular B where
  toFun := fun p => ⟨.mk p.val.1, .mk p.val.2⟩
  invFun := fun ⟨a, b⟩ => .mk ⟨a.val, b.val⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

lemma isQuasiregular_pi_iff [∀ i, NonUnitalSemiring (κ i)] (x : ∀ i, κ i) :
    IsQuasiregular x ↔ ∀ i, IsQuasiregular (x i) := by
  simp only [isQuasiregular_iff', ← isUnit_map_iff (PreQuasiregular.toPi κ), Pi.isUnit_iff]
  congr!

lemma isQuasiregular_prod_iff [NonUnitalSemiring A] [NonUnitalSemiring B] (a : A) (b : B) :
    IsQuasiregular (⟨a, b⟩ : A × B) ↔ IsQuasiregular a ∧ IsQuasiregular b := by
  simp only [isQuasiregular_iff', ← isUnit_map_iff (PreQuasiregular.toProd A B), Prod.isUnit_iff]
  congr!

lemma quasispectrum.mem_iff_of_isUnit [CommSemiring R] [NonUnitalRing A]
    [Module R A] {a : A} {r : R} (hr : IsUnit r) :
    r ∈ quasispectrum R a ↔ ¬ IsQuasiregular (-(hr.unit⁻¹ • a)) :=
  ⟨fun h => h hr, fun h _ => h⟩

end quasiregular

section spectrum

lemma Pi.spectrum_eq [CommSemiring R] [∀ i, Ring (κ i)] [∀ i, Algebra R (κ i)]
    (a : ∀ i, κ i) : spectrum R a = ⋃ i, spectrum R (a i) := by
  apply compl_injective
  simp_rw [spectrum, Set.compl_iUnion, compl_compl, resolventSet, Set.iInter_setOf,
    Pi.isUnit_iff, sub_apply, algebraMap_apply]

lemma Prod.spectrum_eq [CommSemiring R] [Ring A] [Ring B] [Algebra R A] [Algebra R B]
    (a : A) (b : B) : spectrum R (⟨a, b⟩ : A × B) = spectrum R a ∪ spectrum R b := by
  apply compl_injective
  simp_rw [spectrum, Set.compl_union, compl_compl, resolventSet, ← Set.setOf_and,
    Prod.isUnit_iff, algebraMap_apply, mk_sub_mk]

lemma Pi.quasispectrum_eq [Nonempty ι] [CommSemiring R] [∀ i, NonUnitalRing (κ i)]
    [∀ i, Module R (κ i)] (a : ∀ i, κ i) :
    quasispectrum R a = ⋃ i, quasispectrum R (a i) := by
  apply compl_injective
  ext r
  simp only [quasispectrum, Set.mem_compl_iff, Set.mem_setOf_eq, not_forall,
    not_not, Set.mem_iUnion, not_exists]
  by_cases hr : IsUnit r
  · lift r to Rˣ using hr with r' hr'
    simp [isQuasiregular_pi_iff]
  · simp [hr]

lemma Prod.quasispectrum_eq [CommSemiring R] [NonUnitalRing A] [NonUnitalRing B]
    [Module R A] [Module R B] (a : A) (b : B) :
    quasispectrum R (⟨a, b⟩ : A × B) = quasispectrum R a ∪ quasispectrum R b := by
  apply compl_injective
  ext r
  simp only [quasispectrum, Set.mem_compl_iff, Set.mem_setOf_eq, not_forall,
    not_not, Set.mem_union, not_exists]
  by_cases hr : IsUnit r
  · lift r to Rˣ using hr with r' hr'
    simp [isQuasiregular_prod_iff]
  · simp [hr]

end spectrum
```
