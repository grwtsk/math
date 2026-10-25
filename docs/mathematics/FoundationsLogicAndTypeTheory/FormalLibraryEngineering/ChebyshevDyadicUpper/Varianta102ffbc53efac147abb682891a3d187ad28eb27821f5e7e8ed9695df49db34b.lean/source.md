# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChebyshevDyadicUpper.Varianta102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27903c11ce388798d20f85274336bafb68abf1e5` · SHA-256 `a102ffbc53efac147abb682891a3d187ad28eb27821f5e7e8ed9695df49db34b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.PsiBinomialBridge
import Mathlib.Tactic

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevDyadicUpper

Dyadic summation for turning doubling-difference estimates into linear upper
bounds.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem dyadic_upper_from_doubling_difference
    (f : Nat → Real)
    (hf_zero : f 0 = 0)
    (_hf_nonneg : ∀ n, 0 ≤ f n)
    (hf_mono : Monotone f)
    (A : Real)
    (hA_nonneg : 0 ≤ A)
    (hdiff : ∀ n, f (2 * n) - f n ≤ A * n) :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, f N ≤ C * N := by
  let C : Real := max (2 * A) (max (f 1) 1)
  have hC_pos : 0 < C := by
    have hle : (1 : Real) ≤ C :=
      le_trans
        (le_max_right (f 1) 1)
        (le_max_right (2 * A) (max (f 1) 1))
    linarith
  have hA_le_C_half : 2 * A ≤ C := le_max_left _ _
  refine ⟨C, hC_pos, ?_⟩
  intro N
  induction N using Nat.strong_induction_on with
  | h N ih =>
      by_cases h0 : N = 0
      · subst N
        simp [hf_zero]
      · by_cases h1 : N = 1
        · subst N
          have hf1 : f 1 ≤ C :=
            le_trans
              (le_max_left (f 1) 1)
              (le_max_right (2 * A) (max (f 1) 1))
          simpa using hf1
        · have hN2 : 2 ≤ N := by omega
          let m : Nat := (N + 1) / 2
          have hm_lt : m < N := by omega
          have hN_le : N ≤ 2 * m := by omega
          have hm_le_gap : m ≤ 2 * (N - m) := by omega
          have hmono : f N ≤ f (2 * m) := hf_mono hN_le
          have hdiffm : f (2 * m) ≤ f m + A * m := by
            have h := hdiff m
            linarith
          have hih : f m ≤ C * m := ih m hm_lt
          have hAle : A * (m : Real) ≤ C * (N - m : Nat) := by
            have hm_real : (m : Real) ≤ 2 * (N - m : Nat) := by
              exact_mod_cast hm_le_gap
            have hAm :
                A * (m : Real) ≤ A * (2 * (N - m : Nat)) := by
              nlinarith [hA_nonneg, hm_real]
            have h2A :
                A * (2 * (N - m : Nat)) =
                  (2 * A) * (N - m : Nat) := by
              ring
            calc
              A * (m : Real) ≤ A * (2 * (N - m : Nat)) := hAm
              _ = (2 * A) * (N - m : Nat) := h2A
              _ ≤ C * (N - m : Nat) := by
                exact mul_le_mul_of_nonneg_right hA_le_C_half (by positivity)
          have hsum :
              C * (m : Real) + C * (N - m : Nat) = C * N := by
            have hmn : m + (N - m) = N := Nat.add_sub_of_le (by omega)
            have hmnR : (m : Real) + (N - m : Nat) = (N : Real) := by
              exact_mod_cast hmn
            nlinarith
          calc
            f N ≤ f (2 * m) := hmono
            _ ≤ f m + A * (m : Real) := hdiffm
            _ ≤ C * (m : Real) + C * (N - m : Nat) := by nlinarith
            _ = C * N := hsum

theorem chebyshevTheta_zero :
    chebyshevTheta 0 = 0 := by
  simp [chebyshevTheta, primesUpTo]

theorem chebyshevTheta_linear_upper_from_dyadic
    (hdiff : ∀ n, chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4) :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N := by
  exact
    dyadic_upper_from_doubling_difference
      chebyshevTheta
      chebyshevTheta_zero
      chebyshevTheta_nonneg
      chebyshevTheta_mono
      (Real.log 4)
      (Real.log_nonneg (by norm_num))
      (fun n => by
        simpa [mul_comm] using hdiff n)

end AnalyticNumberTheory
end Rebuild
end Folder
```
