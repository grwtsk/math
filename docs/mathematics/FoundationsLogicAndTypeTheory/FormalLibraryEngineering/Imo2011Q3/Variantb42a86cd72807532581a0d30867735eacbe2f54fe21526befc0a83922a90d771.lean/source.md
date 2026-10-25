# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2011Q3.Variantb42a86cd72807532581a0d30867735eacbe2f54fe21526befc0a83922a90d771

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8369d5877098a5f84eaae57bc467cd85092cde31` · SHA-256 `e4057c38fe31c0bc5bb772f54405e782cd630f273ad5525f64015bdfb87ccac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2011Q3.Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imo2011Q3.Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Imo/Imo2011Q3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 David Renshaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw
-/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

/-!
# IMO 2011 Q3

Let f : ℝ → ℝ be a function that satisfies

   f(x + y) ≤ y * f(x) + f(f(x))

for all x and y. Prove that f(x) = 0 for all x ≤ 0.

# Solution

Direct translation of the solution found in https://www.imo-official.org/problems/IMO2011SL.pdf
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2011Q3.Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f

theorem imo2011_q3 (f : ℝ → ℝ) (hf : ∀ x y, f (x + y) ≤ y * f x + f (f x)) : ∀ x ≤ 0, f x = 0 := by
  -- reparameterize
  have hxt : ∀ x t, f t ≤ t * f x - x * f x + f (f x) := fun x t =>
    calc
      f t = f (x + (t - x)) := by rw [add_eq_of_eq_sub' rfl]
      _ ≤ (t - x) * f x + f (f x) := hf x (t - x)
      _ = t * f x - x * f x + f (f x) := by rw [sub_mul]
  have h_ab_combined : ∀ a b, a * f a + b * f b ≤ 2 * f a * f b := fun a b => by
    linarith [hxt b (f a), hxt a (f b)]
  have h_f_nonneg_of_pos : ∀ a < 0, 0 ≤ f a := fun a han =>
    suffices a * f a ≤ 0 from nonneg_of_mul_nonpos_right this han
    add_le_iff_nonpos_left.mp (h_ab_combined a (2 * f a))
  have h_f_nonpos : ∀ x, f x ≤ 0 := fun x => by
    by_contra h_suppose_not
    -- If we choose a small enough argument for f, then we get a contradiction.
    let s := (x * f x - f (f x)) / f x
    have hm : min 0 s - 1 < s := (sub_one_lt _).trans_le (min_le_right 0 s)
    have hml : min 0 s - 1 < 0 := (sub_one_lt _).trans_le (min_le_left 0 s)
    suffices f (min 0 s - 1) < 0 from not_le.mpr this (h_f_nonneg_of_pos (min 0 s - 1) hml)
    have hp : 0 < f x := not_le.mp h_suppose_not
    calc
      f (min 0 s - 1) ≤ (min 0 s - 1) * f x - x * f x + f (f x) := hxt x (min 0 s - 1)
      _ < s * f x - x * f x + f (f x) := by linarith [(mul_lt_mul_right hp).mpr hm]
      _ = 0 := by rw [(eq_div_iff hp.ne.symm).mp rfl]; linarith
  have h_fx_zero_of_neg : ∀ x < 0, f x = 0 := fun x hxz =>
    (h_f_nonpos x).antisymm (h_f_nonneg_of_pos x hxz)
  intro x hx
  obtain (h_x_neg : x < 0) | (rfl : x = 0) := hx.lt_or_eq
  · exact h_fx_zero_of_neg _ h_x_neg
  · suffices 0 ≤ f 0 from le_antisymm (h_f_nonpos 0) this
    have hno : f (-1) = 0 := h_fx_zero_of_neg (-1) neg_one_lt_zero
    have hp := hxt (-1) (-1)
    rw [hno] at hp
    linarith
```
