# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularNativeGeometry.Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f9c05eca287447d198bdbbfd8afceed9c97c1d9` · SHA-256 `39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularCountingPulse

/-!
# The source triangle uses the literal native inverse-root cells

B09's interval starts at M^2 and ends at M^2+2M. Every complete cell in
that interval has the source's exact bounds 1/(8M^3) <= w_n <= 1/M^3.
The M retained central indices have storage at least a*M/2. These exact
geometric laws are inputs to the complete pulse-debt consumer; they do not
construct the infinite disjoint bank or assert an actual-prime bound.
Human pulse/native-clock direction: grwtsk contributors. Local literal
rationalization and central-inventory proof: OpenAI Codex. Mathlib square-root
and order laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularNativeGeometry
open ArithmeticPrimitive NativeRecordConsumer NativeClockDecay TriangularCountingPulse
noncomputable section

private theorem exact_native_rationalization {n : ℕ} (hn : 1 ≤ n) :
    cellClock n (n + 1 : ℕ) = 2 /
      (Real.sqrt n * Real.sqrt (n + 1 : ℕ) * (Real.sqrt n + Real.sqrt (n + 1 : ℕ))) := by
  have ha : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by exact_mod_cast hn)).ne'
  have hb : Real.sqrt (n + 1 : ℕ) ≠ 0 := (by positivity : 0 < Real.sqrt (n + 1 : ℕ)).ne'
  have hs : Real.sqrt (n : ℝ) + Real.sqrt (n + 1 : ℕ) ≠ 0 := by positivity
  have ha2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) n)
  have hb2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hb2r : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 :=
    hb2.trans (by push_cast; rfl)
  unfold cellClock
  field_simp [ha, hb, hs]
  nlinarith [ha2, hb2r]

theorem literal_pulse_cell_bounds {M n : ℕ} (hM : 2 ≤ M)
    (hn : M ^ 2 ≤ n) (hnU : n ≤ M ^ 2 + 2 * M) :
    1 / (8 * (M : ℝ) ^ 3) ≤ cellClock n (n + 1 : ℕ) ∧
      cellClock n (n + 1 : ℕ) ≤ 1 / (M : ℝ) ^ 3 := by
  have hMr : (2 : ℝ) ≤ M := by exact_mod_cast hM
  have hM0 : (0 : ℝ) < M := by linarith
  have hn1 : 1 ≤ n := by nlinarith
  have hnr : (M : ℝ) ^ 2 ≤ n := by exact_mod_cast hn
  have hnUr : (n : ℝ) ≤ (M : ℝ) ^ 2 + 2 * M := by exact_mod_cast hnU
  have ha : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast hn1)
  have hb : 0 < Real.sqrt (n + 1 : ℕ) := by positivity
  have ha2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) n)
  have hb2 : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 := by
    simpa only [Nat.cast_add, Nat.cast_one] using Real.sq_sqrt
      (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hamin : (M : ℝ) ≤ Real.sqrt n := by nlinarith
  have hamax : Real.sqrt (n : ℝ) ≤ 2 * M := by nlinarith
  have hbmax : Real.sqrt (n + 1 : ℕ) ≤ 2 * M := by nlinarith
  have hden : Real.sqrt n * Real.sqrt (n + 1 : ℕ) *
      (Real.sqrt n + Real.sqrt (n + 1 : ℕ)) ≤ 16 * (M : ℝ) ^ 3 := by
    calc
      _ ≤ (2 * (M : ℝ)) * (2 * (M : ℝ)) * (4 * (M : ℝ)) := by gcongr; linarith
      _ = _ := by ring
  constructor
  · rw [exact_native_rationalization hn1]
    apply (div_le_div_iff₀ (by positivity : 0 < 8 * (M : ℝ) ^ 3)
      (by positivity : 0 < Real.sqrt n * Real.sqrt (n + 1 : ℕ) *
        (Real.sqrt n + Real.sqrt (n + 1 : ℕ)))).mpr
    nlinarith
  · have hp : (M : ℝ) ^ 3 ≤ (n : ℝ) * Real.sqrt n := by
      calc
        _ = (M : ℝ) ^ 2 * M := by ring
        _ ≤ (n : ℝ) * Real.sqrt n := mul_le_mul hnr hamin hM0.le (Nat.cast_nonneg n)
    exact (literal_native_cell_decay hn1).trans
      ((div_le_div_iff₀ (by positivity : 0 < (n : ℝ) * Real.sqrt n)
        (by positivity : 0 < (M : ℝ) ^ 3)).mpr (by simpa using hp))

theorem retained_central_indices_belong {M i : ℕ} (hi : i < M) :
    M ^ 2 ≤ M ^ 2 + (M + 1) / 2 + i ∧
      M ^ 2 + (M + 1) / 2 + i ≤ M ^ 2 + 2 * M := by omega

theorem retained_central_storage_lower {M i : ℕ} (hi : i < M)
    {a : ℝ} (ha : 0 ≤ a) :
    a * M / 2 ≤ storage M a (M ^ 2 + (M + 1) / 2 + i) := by
  have ht : M ≤ 2 * triangle M (M ^ 2 + (M + 1) / 2 + i) := by
    unfold triangle
    omega
  have htr : (M : ℝ) ≤ 2 * triangle M (M ^ 2 + (M + 1) / 2 + i) := by exact_mod_cast ht
  unfold storage
  have h := mul_le_mul_of_nonneg_left htr ha
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularNativeGeometry
```
