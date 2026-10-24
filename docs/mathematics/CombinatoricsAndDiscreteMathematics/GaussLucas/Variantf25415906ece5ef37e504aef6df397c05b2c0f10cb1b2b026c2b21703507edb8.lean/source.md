# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussLucas.Variantf25415906ece5ef37e504aef6df397c05b2c0f10cb1b2b026c2b21703507edb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00d686f09dabb5812a59aee8fc87c51a18eb11cd` · SHA-256 `7331d5b33ec8cec0b7d0ca818c2268b589f448628a8694930103b445c4a3e5bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DerivRootWeight.Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DerivRootWeight.Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/Polynomial/GaussLucas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Analysis.Complex.Polynomial.Basic

/-!
# Gauss-Lucas Theorem

In this file we prove Gauss-Lucas Theorem:
the roots of the derivative of a nonconstant complex polynomial
are included in the convex hull of the roots of the polynomial.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DerivRootWeight.Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e

@[expose] public section
open scoped Polynomial ComplexConjugate

namespace Polynomial

/-- Given a polynomial `P` of positive degree and a root `z` of its derivative,
`derivRootWeight P z w` gives the weight of a root `w` of `P` in a convex combination
that is equal to `z`. -/
noncomputable def derivRootWeight (P : ℂ[X]) (z w : ℂ) : ℝ :=
  if P.eval z = 0 then (Pi.single z 1 : ℂ → ℝ) w
  else P.rootMultiplicity w / ‖z - w‖ ^ 2

theorem derivRootWeight_nonneg (P : ℂ[X]) (z w : ℂ) : 0 ≤ derivRootWeight P z w := by
  simp only [derivRootWeight, Pi.single, Function.update_apply]
  split_ifs <;> first | positivity | simp

variable {P : ℂ[X]} {z : ℂ}

/-- The sum of the weights `derivRootWeight P z w` of all the roots `w` of `P` is positive,
provided that `P` is not a constant polynomial. -/
theorem sum_derivRootWeight_pos (hP : 0 < degree P) (z : ℂ) :
    0 < ∑ w ∈ P.roots.toFinset, derivRootWeight P z w := by
  have hP₀ : P ≠ 0 := by rintro rfl; simp at hP
  by_cases hPz : P.eval z = 0
  · simp [derivRootWeight, hPz, hP₀]
  · simp only [derivRootWeight, ite_eq_right hPz]
    apply Finset.sum_pos
    · intro w hw
      apply div_pos (by simp_all)
      suffices z ≠ w by simpa [sq_pos_iff, sub_eq_zero]
      rintro rfl
      simp_all
    · rw [Multiset.toFinset_nonempty]
      apply Splits.roots_ne_zero (IsAlgClosed.splits _)
      rwa [← pos_iff_ne_zero, natDegree_pos_iff_degree_pos]

/-- *Gauss-Lucas Theorem*: if $P$ is a nonconstant polynomial with complex coefficients,
then all zeros of $P'$ belong to the convex hull of the set of zeros of $P$.

This version provides explicit formulas for the coefficients of the convex combination.
See also `rootSet_derivative_subset_convexHull_rootSet` below.
-/
theorem eq_centerMass_of_eval_derivative_eq_zero (hP : 0 < P.degree)
    (hz : P.derivative.eval z = 0) :
    z = P.roots.toFinset.centerMass (P.derivRootWeight z) id := by
  set weight : ℂ → ℝ := P.derivRootWeight z
  set s := P.roots.toFinset
  suffices ∑ x ∈ s, weight x • (z - x) = 0 by calc
    z = s.centerMass weight fun _ ↦ z := by
      rw [Finset.centerMass, ← Finset.sum_smul, inv_smul_smul₀]
      exact (sum_derivRootWeight_pos hP z).ne'
    _ = s.centerMass weight (z - ·) + s.centerMass weight id := by
      simp only [Finset.centerMass, ← smul_add, ← Finset.sum_add_distrib, id, sub_add_cancel]
    _ = s.centerMass weight id := by
      simp only [add_eq_right, Finset.centerMass, this, smul_zero]
  by_cases hzP : P.eval z = 0
  · simp only [weight, derivRootWeight, ite_eq_left hzP]
    rw [Finset.sum_eq_single z] <;> simp_all
  calc
    ∑ x ∈ s, weight x • (z - x) = conj (∑ x ∈ s, P.rootMultiplicity x • (1 / (z - x))) := by
      simp only [map_sum, weight, derivRootWeight, ite_eq_right hzP]
      refine Finset.sum_congr rfl fun x hx ↦ ?_
      have : z - x ≠ 0 := by
        rw [sub_ne_zero]
        rintro rfl
        simp_all [s]
      simp [← Complex.conj_mul', field]
    _ = conj (P.roots.map fun x ↦ 1 / (z - x)).sum := by
      simp only [Finset.sum_multiset_map_count, P.count_roots, s]
    _ = 0 := by
      rw [← (IsAlgClosed.splits _).eval_derivative_div_eval_of_ne_zero hzP]
      simp [hz]

/-- *Gauss-Lucas Theorem*: if $P$ is a nonconstant polynomial with complex coefficients,
then all zeros of $P'$ belong to the convex hull of the set of zeros of $P$.

See also `eq_centerMass_of_eval_derivative_eq_zero`
for a version that provides explicit coefficients of the convex combination.
-/
theorem rootSet_derivative_subset_convexHull_rootSet (h₀ : 0 < P.degree) :
    P.derivative.rootSet ℂ ⊆ convexHull ℝ (P.rootSet ℂ) := by
  intro z hz
  rw [mem_rootSet, coe_aeval_eq_eval] at hz
  rw [eq_centerMass_of_eval_derivative_eq_zero h₀ hz.2]
  apply Finset.centerMass_mem_convexHull
  · simp [derivRootWeight_nonneg]
  · apply sum_derivRootWeight_pos h₀
  · simp [mem_rootSet]

end Polynomial
```
