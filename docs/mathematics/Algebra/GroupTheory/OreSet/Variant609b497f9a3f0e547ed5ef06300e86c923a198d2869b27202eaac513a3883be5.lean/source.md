# Complete source: GRWTSK.Algebra.GroupTheory.OreSet.Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a63299475337014b568d124b92cbe536ead8722` · SHA-256 `3d47242017f5c5897d5c9a9cd352498d23590460754ee0f71ac58e8323ceab10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddOreSet.Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddOreSet.Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc","mathematical_subject":"Algebra.Groups","original_sha256":"f204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/OreLocalization/OreSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer, Kevin Klinge
-/
import Mathlib.Algebra.Group.Submonoid.Defs

/-!

# (Left) Ore sets

This defines left Ore sets on arbitrary monoids.

## References

* https://ncatlab.org/nlab/show/Ore+set

-/


namespace GRWTSK.Algebra.GroupTheory.AddOreSet.Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc

assert_not_exists RelIso

namespace AddOreLocalization

/-- A submonoid `S` of an additive monoid `R` is (left) Ore if common summands on the right can be
turned into common summands on the left, and if each pair of `r : R` and `s : S` admits an Ore
minuend `v : R` and an Ore subtrahend `u : S` such that `u + r = v + s`. -/
class AddOreSet {R : Type*} [AddMonoid R] (S : AddSubmonoid R) where
  /-- Common summands on the right can be turned into common summands on the left, a weak form of
cancellability. -/
  ore_right_cancel : ∀ (r₁ r₂ : R) (s : S), r₁ + s = r₂ + s → ∃ s' : S, s' + r₁ = s' + r₂
  /-- The Ore minuend of a difference. -/
  oreMin : R → S → R
  /-- The Ore subtrahend of a difference. -/
  oreSubtra : R → S → S
  /-- The Ore condition of a difference, expressed in terms of `oreMin` and `oreSubtra`. -/
  ore_eq : ∀ (r : R) (s : S), oreSubtra r s + r = oreMin r s + s

end AddOreLocalization

namespace OreLocalization

section Monoid

/-- A submonoid `S` of a monoid `R` is (left) Ore if common factors on the right can be turned
into common factors on the left, and if each pair of `r : R` and `s : S` admits an Ore numerator
`v : R` and an Ore denominator `u : S` such that `u * r = v * s`. -/
@[to_additive AddOreLocalization.AddOreSet]
class OreSet {R : Type*} [Monoid R] (S : Submonoid R) where
  /-- Common factors on the right can be turned into common factors on the left, a weak form of
cancellability. -/
  ore_right_cancel : ∀ (r₁ r₂ : R) (s : S), r₁ * s = r₂ * s → ∃ s' : S, s' * r₁ = s' * r₂
  /-- The Ore numerator of a fraction. -/
  oreNum : R → S → R
  /-- The Ore denominator of a fraction. -/
  oreDenom : R → S → S
  /-- The Ore condition of a fraction, expressed in terms of `oreNum` and `oreDenom`. -/
  ore_eq : ∀ (r : R) (s : S), oreDenom r s * r = oreNum r s * s

-- TODO: use this once it's available.
-- run_cmd to_additive.map_namespace `OreLocalization `AddOreLocalization

variable {R : Type*} [Monoid R] {S : Submonoid R} [OreSet S]

/-- Common factors on the right can be turned into common factors on the left, a weak form of
cancellability. -/
@[to_additive AddOreLocalization.ore_right_cancel]
theorem ore_right_cancel (r₁ r₂ : R) (s : S) (h : r₁ * s = r₂ * s) : ∃ s' : S, s' * r₁ = s' * r₂ :=
  OreSet.ore_right_cancel r₁ r₂ s h

/-- The Ore numerator of a fraction. -/
@[to_additive AddOreLocalization.oreMin "The Ore minuend of a difference."]
def oreNum (r : R) (s : S) : R :=
  OreSet.oreNum r s

/-- The Ore denominator of a fraction. -/
@[to_additive AddOreLocalization.oreSubtra "The Ore subtrahend of a difference."]
def oreDenom (r : R) (s : S) : S :=
  OreSet.oreDenom r s

/-- The Ore condition of a fraction, expressed in terms of `oreNum` and `oreDenom`. -/
@[to_additive AddOreLocalization.add_ore_eq
  "The Ore condition of a difference, expressed in terms of `oreMin` and `oreSubtra`."]
theorem ore_eq (r : R) (s : S) : oreDenom r s * r = oreNum r s * s :=
  OreSet.ore_eq r s

/-- The Ore condition bundled in a sigma type. This is useful in situations where we want to obtain
both witnesses and the condition for a given fraction. -/
@[to_additive AddOreLocalization.addOreCondition
  "The Ore condition bundled in a sigma type. This is useful in situations where we want to obtain
both witnesses and the condition for a given difference."]
def oreCondition (r : R) (s : S) : Σ'r' : R, Σ's' : S, s' * r = r' * s :=
  ⟨oreNum r s, oreDenom r s, ore_eq r s⟩

/-- The trivial submonoid is an Ore set. -/
@[to_additive AddOreLocalization.addOreSetBot]
instance oreSetBot : OreSet (⊥ : Submonoid R) where
  ore_right_cancel _ _ s h :=
    ⟨s, by
      rcases s with ⟨s, hs⟩
      rw [Submonoid.mem_bot] at hs
      subst hs
      rw [mul_one, mul_one] at h
      subst h
      rfl⟩
  oreNum r _ := r
  oreDenom _ s := s
  ore_eq _ s := by
    rcases s with ⟨s, hs⟩
    rw [Submonoid.mem_bot] at hs
    simp [hs]

/-- Every submonoid of a commutative monoid is an Ore set. -/
@[to_additive AddOreLocalization.addOreSetComm]
instance (priority := 100) oreSetComm {R} [CommMonoid R] (S : Submonoid R) : OreSet S where
  ore_right_cancel m n s h := ⟨s, by rw [mul_comm (s : R) n, mul_comm (s : R) m, h]⟩
  oreNum r _ := r
  oreDenom _ s := s
  ore_eq r s := by rw [mul_comm]

end Monoid

end OreLocalization
```
