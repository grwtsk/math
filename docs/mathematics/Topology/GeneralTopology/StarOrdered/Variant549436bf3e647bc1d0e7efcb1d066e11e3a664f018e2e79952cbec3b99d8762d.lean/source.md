# Complete source: GRWTSK.Topology.GeneralTopology.StarOrdered.Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd9208dc2721913f04bd3568fd33c57b86ad0cf4` · SHA-256 `07f298ab0bd7fe1d3ca71581f4e0ecca7a1689497fb0e486395cb2ac4d64070b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousSqrt.Variant57db0e628294895eadce60dadbf71fe5ae2d448df33db22cdc19efb562b146b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57db0e628294895eadce60dadbf71fe5ae2d448df33db22cdc19efb562b146b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousSqrt.Variant57db0e628294895eadce60dadbf71fe5ae2d448df33db22cdc19efb562b146b7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"57db0e628294895eadce60dadbf71fe5ae2d448df33db22cdc19efb562b146b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/StarOrdered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Topology.ContinuousMap.ContinuousMapZero
import Mathlib.Topology.ContinuousMap.Ordered

/-! # Continuous functions as a star-ordered ring

The type class `ContinuousSqrt` gives a sufficient condition on `R` to make `C(α, R)`
and `C(α, R)₀` into a `StarOrderedRing` for any topological space `α`, thereby providing a means
by which we can ensure `C(α, R)` has this property. This condition is satisfied
by `ℝ≥0`, `ℝ`, and `ℂ`, and the instances can be found in the file
`Mathlib/Topology/ContinuousMap/ContinuousSqrt.lean`.

## Implementation notes

Instead of asking for a well-behaved square root on `{x : R | 0 ≤ x}` in the obvious way, we instead
require that, for every `x y  : R` such that `x ≤ y`, there exist some `s` such that `x + s*s = y`.
This is because we need this type class to work for `ℝ≥0` for the
continuous functional calculus. We could instead assume `[OrderedSub R] [ContinuousSub R]`, but that
would lead to a proliferation of type class assumptions in the general case of the continuous
functional calculus, which we want to avoid because there is *already* a proliferation of type
classes there. At the moment, we only expect this class to be used in that context so this is a
reasonable compromise.

The field `ContinuousSqrt.sqrt` is data, which means that, if we implement an instance of the class
for a generic C⋆-algebra, we'll get a non-defeq diamond for the case `R := ℂ`. This shouldn't really
be a problem since the only purpose is to obtain the instance `StarOrderedRing C(α, R)`, which is a
`Prop`, but we note it for future reference.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousSqrt.Variant57db0e628294895eadce60dadbf71fe5ae2d448df33db22cdc19efb562b146b7

/-- A type class encoding the property that there is a continuous square root function on
nonnegative elements. This holds for `ℝ≥0`, `ℝ` and `ℂ` (as well as any C⋆-algebra), and this
allows us to derive an instance of `StarOrderedRing C(α, R)` under appropriate hypotheses.
In order for this to work on `ℝ≥0`, we actually must force our square root function to be defined
on and well-behaved for pairs `x : R × R` with `x.1 ≤ x.2`. -/
class ContinuousSqrt (R : Type*) [LE R] [NonUnitalSemiring R] [TopologicalSpace R] where
  /-- `sqrt (a, b)` returns a value `s` such that `b = a + s * s` when `a ≤ b`. -/
  protected sqrt : R × R → R
  protected continuousOn_sqrt : ContinuousOn sqrt {x | x.1 ≤ x.2}
  protected sqrt_nonneg (x : R × R) : x.1 ≤ x.2 → 0 ≤ sqrt x
  protected sqrt_mul_sqrt (x : R × R) : x.1 ≤ x.2 → x.2 = x.1 + sqrt x * sqrt x

namespace ContinuousMap

variable {α : Type*} [TopologicalSpace α]

instance {R : Type*} [PartialOrder R] [NonUnitalSemiring R] [StarRing R]
    [StarOrderedRing R] [TopologicalSpace R] [ContinuousStar R] [IsTopologicalSemiring R]
    [ContinuousSqrt R] : StarOrderedRing C(α, R) := by
  refine StarOrderedRing.of_le_iff ?_
  intro f g
  constructor
  · rw [ContinuousMap.le_def]
    intro h
    use (mk _ ContinuousSqrt.continuousOn_sqrt.restrict).comp
      ⟨_, map_continuous (f.prodMk g) |>.codRestrict (s := {x | x.1 ≤ x.2}) (by exact h)⟩
    ext x
    simpa [IsSelfAdjoint.star_eq <| .of_nonneg (ContinuousSqrt.sqrt_nonneg (f x, g x) (h x))]
      using ContinuousSqrt.sqrt_mul_sqrt (f x, g x) (h x)
  · rintro ⟨p, rfl⟩
    exact fun x ↦ le_add_of_nonneg_right (star_mul_self_nonneg (p x))

end ContinuousMap

namespace ContinuousMapZero

variable {α : Type*} [TopologicalSpace α] [Zero α]

instance instStarOrderedRing {R : Type*}
    [TopologicalSpace R] [CommSemiring R] [PartialOrder R] [NoZeroDivisors R] [StarRing R]
    [StarOrderedRing R] [IsTopologicalSemiring R] [ContinuousStar R] [StarOrderedRing C(α, R)] :
    StarOrderedRing C(α, R)₀ where
  le_iff f g := by
    constructor
    · rw [le_def, ← ContinuousMap.coe_coe, ← ContinuousMap.coe_coe g, ← ContinuousMap.le_def,
        StarOrderedRing.le_iff]
      rintro ⟨p, hp_mem, hp⟩
      induction hp_mem using AddSubmonoid.closure_induction_left generalizing f g with
      | one => exact ⟨0, zero_mem _, by ext x; congrm($(hp) x)⟩
      | mul_left s s_mem p p_mem hp' =>
        obtain ⟨s, rfl⟩ := s_mem
        simp only at *
        have h₀ : (star s * s + p) 0 = 0 := by simpa using congr($(hp) 0).symm
        rw [← add_assoc] at hp
        have p'₀ : 0 ≤ p 0 := by rw [← StarOrderedRing.nonneg_iff] at p_mem; exact p_mem 0
        have s₉ : (star s * s) 0 = 0 := le_antisymm ((le_add_of_nonneg_right p'₀).trans_eq h₀)
          (star_mul_self_nonneg (s 0))
        have s₀' : s 0 = 0 := by aesop
        let s' : C(α, R)₀ := ⟨s, s₀'⟩
        obtain ⟨p', hp'_mem, rfl⟩ := hp' (f + star s' * s') g hp
        refine ⟨star s' * s' + p', ?_, by rw [add_assoc]⟩
        exact add_mem (AddSubmonoid.subset_closure ⟨s', rfl⟩) hp'_mem
    · rintro ⟨p, hp, rfl⟩
      induction hp using AddSubmonoid.closure_induction generalizing f with
      | mem s s_mem =>
        obtain ⟨s, rfl⟩ := s_mem
        exact fun x ↦ le_add_of_nonneg_right (star_mul_self_nonneg (s x))
      | one => simp
      | mul g₁ g₂ _ _ h₁ h₂ => calc
          f ≤ f + g₁ := h₁ f
          _ ≤ (f + g₁) + g₂ := h₂ (f + g₁)
          _ = f + (g₁ + g₂) := add_assoc _ _ _

end ContinuousMapZero
```
