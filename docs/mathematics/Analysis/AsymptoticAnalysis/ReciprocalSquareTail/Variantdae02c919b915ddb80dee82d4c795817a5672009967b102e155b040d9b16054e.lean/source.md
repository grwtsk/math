# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ReciprocalSquareTail.Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcd6d90786a6f2ea47ee0829784ac2f361653204` · SHA-256 `59a3d317c21111e8914a4015a9f66fe1da6ea372a5c7cb0d2c82a426a5302f37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ReciprocalSquareTailLe.Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ReciprocalSquareTailLe.Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"dc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/ReciprocalSquareTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Real.Sqrt

/-!
Finite reciprocal-square tails for the common-scale counting discrepancy.
The sum retains both natural square-root endpoints. No infinite product or
arithmetic cancellation estimate is used.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ReciprocalSquareTailLe.Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b

set_option autoImplicit false

namespace ReciprocalSquareTailScratch

open Finset

noncomputable section

/-- The finite positive reciprocal-square tail is bounded by its first reciprocal endpoint. -/
theorem reciprocal_square_tail_le (Y Z : ℕ) (hY : 1 ≤ Y) (hYZ : Y ≤ Z) :
    (∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2) ≤ 1 / (Y : ℝ) := by
  have h := sum_Ioc_inv_sq_le_sub (α := ℝ) (by omega : Y ≠ 0) hYZ
  simp only [← one_div] at h
  exact h.trans (sub_le_self _ (by positivity))

/-- The true square-root cutoffs give a uniform finite tail discrepancy at every positive j. -/
theorem sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := by
  have hY : 1 ≤ Nat.sqrt j := (Nat.sqrt_pos.mpr (by omega : 0 < j))
  have hY0 : (0 : ℝ) < Nat.sqrt j := by exact_mod_cast (show 0 < Nat.sqrt j by omega)
  have hY1 : (1 : ℝ) ≤ Nat.sqrt j := by exact_mod_cast hY
  have hr : Real.sqrt (j : ℝ) ≤ 2 * (Nat.sqrt j : ℝ) := by
    have h := Real.real_sqrt_le_nat_sqrt_succ (a := j)
    linarith
  have hm := mul_le_mul_of_nonneg_left hr (Real.sqrt_nonneg (j : ℝ))
  have hs := Real.sq_sqrt (Nat.cast_nonneg j)
  calc
    _ ≤ (j : ℝ) * (1 / (Nat.sqrt j : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (reciprocal_square_tail_le (Nat.sqrt j) (Nat.sqrt G) hY (Nat.sqrt_le_sqrt hjG))
        (Nat.cast_nonneg j)
    _ = (j : ℝ) / (Nat.sqrt j : ℝ) := by ring
    _ ≤ 2 * Real.sqrt (j : ℝ) := by
      apply (div_le_iff₀ hY0).mpr
      nlinarith

/-- The identical estimate stated with literal natural floors of the real square roots. -/
theorem floor_sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc ⌊Real.sqrt (j : ℝ)⌋₊ ⌊Real.sqrt (G : ℝ)⌋₊,
      1 / (d : ℝ) ^ 2) ≤ 2 * Real.sqrt (j : ℝ) := by
  simpa only [Real.nat_floor_real_sqrt_eq_nat_sqrt] using sqrt_cutoff_tail_le j G hj hjG

end
end ReciprocalSquareTailScratch

#print axioms ReciprocalSquareTailScratch.reciprocal_square_tail_le
#print axioms ReciprocalSquareTailScratch.sqrt_cutoff_tail_le
#print axioms ReciprocalSquareTailScratch.floor_sqrt_cutoff_tail_le
```
