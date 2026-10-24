# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FlexedTents.Variant59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4358c07eabae53287c0d566a8665700d22f9470f` · SHA-256 `59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# Flexed tents and exact Green reconstruction

Finite source algebra from audited RH conversation Batches 13–14. The grid is
represented by inverse-root coordinates. Nonzero widths are explicit guards;
positivity is only asserted on decreasing grids. Every initial ramp and terminal
seam is retained. No arithmetic sign or cancellation estimate is assumed.

Mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FlexedTents

open scoped BigOperators
open CausalRecords

noncomputable section

/-- The width in this module, with the following exact parameterization.

def width (z : ℕ → ℝ) (k : ℕ) : ℝ := z k - z (k + 1)
-/
def width (z : ℕ → ℝ) (k : ℕ) : ℝ := z k - z (k + 1)
/-- The increment in this module, with the following exact parameterization.

def increment (F : ℕ → ℝ) (k : ℕ) : ℝ := F (k + 1) - F k
-/
def increment (F : ℕ → ℝ) (k : ℕ) : ℝ := F (k + 1) - F k
/-- The flexed tent in this module, with the following exact parameterization.

def flexedTent (z F : ℕ → ℝ) (k : ℕ) : ℝ := increment F (k + 1) - width z (k + 1) / width z k
* increment F k
-/
def flexedTent (z F : ℕ → ℝ) (k : ℕ) : ℝ :=
  increment F (k + 1) - width z (k + 1) / width z k * increment F k

/-- The normalized slope jump, with both literal widths in its denominator. -/
theorem normalized_jump (z F : ℕ → ℝ) (k : ℕ)
    (h₀ : width z k ≠ 0) (h₁ : width z (k + 1) ≠ 0) :
    increment F (k + 1) / width z (k + 1) - increment F k / width z k =
      flexedTent z F k / width z (k + 1) := by
  unfold flexedTent
  field_simp

/-- Green reconstruction before specializing to an arithmetic source. -/
theorem finite_green_identity (z a : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, (z k - z (k + 1)) * a k) =
      (z 0 - z N) * a 0 +
        ∑ k ∈ Finset.range N, (z (k + 1) - z N) * (a (k + 1) - a k) := by
  have h := suffix_summation_by_parts a (fun k => -z k) N
  simpa only [neg_sub_neg, mul_comm] using h

/-- Every source value is reconstructed with its initial value and initial ramp. -/
theorem source_green_reconstruction (z F : ℕ → ℝ) (N : ℕ)
    (hw : ∀ k ≤ N, width z k ≠ 0) :
    F N = F 0 + (z 0 - z N) * (increment F 0 / width z 0) +
      ∑ k ∈ Finset.range N,
        (z (k + 1) - z N) / width z (k + 1) * flexedTent z F k := by
  have h := finite_green_identity z (fun k => increment F k / width z k) N
  have hleft : (∑ k ∈ Finset.range N,
      (z k - z (k + 1)) * (increment F k / width z k)) = F N - F 0 := by
    calc
      _ = ∑ k ∈ Finset.range N, increment F k := by
        apply Finset.sum_congr rfl
        intro k hk
        change width z k * (increment F k / width z k) = _
        field_simp [hw k (Nat.le_of_lt (Finset.mem_range.mp hk))]
      _ = _ := sum_increments F N
  have hright : (∑ k ∈ Finset.range N,
      (z (k + 1) - z N) *
        (increment F (k + 1) / width z (k + 1) - increment F k / width z k)) =
      ∑ k ∈ Finset.range N,
        (z (k + 1) - z N) / width z (k + 1) * flexedTent z F k := by
    apply Finset.sum_congr rfl
    intro k hk
    have hkN := Finset.mem_range.mp hk
    rw [normalized_jump z F k (hw k (by omega)) (hw (k + 1) (by omega))]
    ring
  rw [hleft, hright] at h
  linarith

/-- An old affine prefix is annihilated by the flexed two-increment combination. -/
theorem old_prefix_annihilation (z₀ z₁ z₂ t c : ℝ) (h : z₀ - z₁ ≠ 0) :
    (2 * c * (t - z₂) - 2 * c * (t - z₁)) -
      (z₁ - z₂) / (z₀ - z₁) * (2 * c * (t - z₁) - 2 * c * (t - z₀)) = 0 := by
  field_simp
  ring

/-- The tent atom in this module, with the following exact parameterization.

def tentAtom (z₀ z₁ z₂ t : ℝ) : ℝ := 2 * ((max (t - z₂) 0 - max (t - z₁) 0) - (z₁ - z₂) / (z₀
- z₁) * (max (t - z₁) 0 - max (t - z₀) 0))
-/
def tentAtom (z₀ z₁ z₂ t : ℝ) : ℝ :=
  2 * ((max (t - z₂) 0 - max (t - z₁) 0) -
    (z₁ - z₂) / (z₀ - z₁) * (max (t - z₁) 0 - max (t - z₀) 0))

theorem first_panel (z₀ z₁ z₂ t : ℝ) (h₀ : z₀ - z₁ ≠ 0)
    (h21 : z₂ ≤ z₁) (ht1 : z₁ ≤ t) (ht0 : t ≤ z₀) :
    tentAtom z₀ z₁ z₂ t = 2 * ((z₁ - z₂) / (z₀ - z₁)) * (z₀ - t) := by
  unfold tentAtom
  rw [max_eq_left (by linarith : 0 ≤ t - z₂),
    max_eq_left (by linarith : 0 ≤ t - z₁), max_eq_right (by linarith : t - z₀ ≤ 0)]
  field_simp
  ring

theorem second_panel (z₀ z₁ z₂ t : ℝ) (h10 : z₁ ≤ z₀)
    (ht2 : z₂ ≤ t) (ht1 : t ≤ z₁) : tentAtom z₀ z₁ z₂ t = 2 * (t - z₂) := by
  unfold tentAtom
  rw [max_eq_left (by linarith : 0 ≤ t - z₂),
    max_eq_right (by linarith : t - z₁ ≤ 0), max_eq_right (by linarith : t - z₀ ≤ 0)]
  ring

theorem outside_old_prefix (z₀ z₁ z₂ t : ℝ) (h₀ : z₀ - z₁ ≠ 0)
    (h10 : z₁ ≤ z₀) (h21 : z₂ ≤ z₁) (ht : z₀ ≤ t) :
    tentAtom z₀ z₁ z₂ t = 0 := by
  unfold tentAtom
  rw [max_eq_left (by linarith : 0 ≤ t - z₂),
    max_eq_left (by linarith : 0 ≤ t - z₁), max_eq_left (by linarith : 0 ≤ t - z₀)]
  field_simp
  ring

theorem before_support (z₀ z₁ z₂ t : ℝ) (h10 : z₁ ≤ z₀)
    (h21 : z₂ ≤ z₁) (ht : t ≤ z₂) : tentAtom z₀ z₁ z₂ t = 0 := by
  unfold tentAtom
  rw [max_eq_right (by linarith : t - z₂ ≤ 0),
    max_eq_right (by linarith : t - z₁ ≤ 0), max_eq_right (by linarith : t - z₀ ≤ 0)]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.FlexedTents
```
