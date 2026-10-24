# Complete source: GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d25b3131dae04a7c08208227357180db777462ab` · SHA-256 `df3ae073fefc1cfcbb5c93c285aeeb15fce3b1bc599b39a88f69d97126770cfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Ordinary rational absolute-value maximum, and the RAW four-field block
(m,t,u,v) -> w*(3m,t,t+4u,t+4v). The target has not been replaced by its
difference frame. These estimates use the archimedean triangle inequality,
not the ultrametric one. No global norm instance is installed.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

section Finite
variable {ι : Type*} [Fintype ι] [Nonempty ι]

/-- Usual absolute value at the rational ARCHIMEDEAN place, not padicNorm. -/
def maxAbs (v : ι → ℚ) : ℚ :=
  Finset.univ.sup' Finset.univ_nonempty (fun i => |v i|)

theorem maxAbs_le_iff (v : ι → ℚ) (B : ℚ) :
    maxAbs v ≤ B ↔ ∀ i, |v i| ≤ B := by
  simp only [maxAbs, Finset.sup'_le_iff, Finset.mem_univ, forall_const]

theorem entry_le (v : ι → ℚ) (i : ι) : |v i| ≤ maxAbs v :=
  Finset.le_sup' (fun j => |v j|) (Finset.mem_univ i)

theorem maxAbs_nonneg (v : ι → ℚ) : 0 ≤ maxAbs v := by
  obtain ⟨i⟩ := ‹Nonempty ι›
  exact (abs_nonneg (v i)).trans (entry_le v i)

@[simp] theorem maxAbs_ones : maxAbs (fun _ : ι => (1 : ℚ)) = 1 := by
  simp only [maxAbs, abs_one, Finset.sup'_const]

end Finite

/-- The original target coordinates are sum, common edge, and two MORE edges. -/
def forwardBlock (w : ℚ) (q : Fin 4 → ℚ) : Fin 4 → ℚ :=
  ![3*w*q 0, w*q 1, w*(q 1+4*q 2), w*(q 1+4*q 3)]

/-- Inverse in the RAW coordinates; subtracting the common edge is essential. -/
def inverseBlock (w : ℚ) (r : Fin 4 → ℚ) : Fin 4 → ℚ :=
  ![r 0/(3*w), r 1/w, (r 2-r 1)/(4*w), (r 3-r 1)/(4*w)]

private theorem chart_row_bound (q : Fin 4 → ℚ) (M : ℚ)
    (hM : 0 ≤ M) (hq : ∀ j, |q j| ≤ M) :
    ∀ j, |(![3*q 0,q 1,q 1+4*q 2,q 1+4*q 3] : Fin 4 → ℚ) j| ≤ 5*M := by
  intro j
  have h0 := hq 0
  have h1 := hq 1
  have h2 := hq 2
  have h3 := hq 3
  fin_cases j
  · change |3*q 0| ≤ 5*M
    rw [abs_mul]
    norm_num
    linarith
  · simpa using (h1.trans (by linarith : M ≤ 5*M))
  · have h := abs_add (q 1) (4*q 2)
    norm_num [abs_mul] at h
    simpa using (show |q 1+4*q 2| ≤ 5*M by linarith)
  · have h := abs_add (q 1) (4*q 3)
    norm_num [abs_mul] at h
    simpa using (show |q 1+4*q 3| ≤ 5*M by linarith)

/-- The factor FIVE comes from two raw edge rows, not the diagonal-frame maximum four. -/
theorem forwardBlock_bound (w : ℚ) (q : Fin 4 → ℚ) (M : ℚ)
    (hM : 0 ≤ M) (hq : ∀ j, |q j| ≤ M) (j : Fin 4) :
    |forwardBlock w q j| ≤ 5*|w|*M := by
  have he : forwardBlock w q j =
      w * (![3*q 0,q 1,q 1+4*q 2,q 1+4*q 3] : Fin 4 → ℚ) j := by
    fin_cases j <;> simp [forwardBlock] <;> ring
  rw [he, abs_mul]
  calc
    _ ≤ |w| * (5*M) :=
      mul_le_mul_of_nonneg_left (chart_row_bound q M hM hq j) (abs_nonneg w)
    _ = 5*|w|*M := by ring

/-- With an integer nonzero weight, the unframed inverse is already nonexpanding. -/
theorem inverseBlock_bound (w : ℚ) (hw : 1 ≤ |w|) (r : Fin 4 → ℚ) (M : ℚ)
    (hM : 0 ≤ M) (hr : ∀ j, |r j| ≤ M) (j : Fin 4) :
    |inverseBlock w r j| ≤ M := by
  have hw0 : 0 < |w| := lt_of_lt_of_le (by norm_num) hw
  have hMw : M ≤ M*|w| := by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hw hM
  have h0 := hr 0
  have h1 := hr 1
  have h2 := (abs_sub (r 2) (r 1)).trans (add_le_add (hr 2) (hr 1))
  have h3 := (abs_sub (r 3) (r 1)).trans (add_le_add (hr 3) (hr 1))
  fin_cases j
  · change |r 0/(3*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 3*|w|)).mpr
    nlinarith
  · change |r 1/w| ≤ M
    rw [abs_div]
    exact (div_le_iff₀ hw0).mpr (h1.trans hMw)
  · change |(r 2-r 1)/(4*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 4*|w|)).mpr
    nlinarith
  · change |(r 3-r 1)/(4*w)| ≤ M
    rw [abs_div, abs_mul]
    norm_num
    apply (div_le_iff₀ (by positivity : 0 < 4*|w|)).mpr
    nlinarith

/-- No source-dependent lower bound is assumed: a nonzero INTEGER has size at least one. -/
theorem integer_abs_one_le (w : ℤ) (hw : w ≠ 0) : (1 : ℚ) ≤ |(w : ℚ)| := by
  have hz : (1 : ℤ) ≤ |w| := by
    have := abs_pos.mpr hw
    omega
  exact_mod_cast hz

/-- Divisibility by a nonzero integer controls its ordinary absolute value. -/
theorem abs_cast_le_of_dvd (x y : ℤ) (hy : y ≠ 0) (hxy : x ∣ y) :
    |(x : ℚ)| ≤ |(y : ℚ)| := by
  obtain ⟨t, rfl⟩ := hxy
  have ht : t ≠ 0 := right_ne_zero_of_mul hy
  rw [Int.cast_mul, abs_mul]
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left (integer_abs_one_le t ht) (abs_nonneg (x : ℚ))

/-- A direct raw-coordinate witness rejects the false archimedean factor four. -/
theorem raw_chart_not_four :
    maxAbs (forwardBlock 1 (fun _ => 1)) = 5 ∧
    maxAbs (fun _ : Fin 4 => (1 : ℚ)) = 1 := by
  constructor
  · apply le_antisymm
    · apply (maxAbs_le_iff _ _).mpr
      intro j
      fin_cases j <;> norm_num [forwardBlock]
    · simpa [forwardBlock] using entry_le (forwardBlock 1 (fun _ => 1)) 2
  · exact maxAbs_ones

end GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm
```
