# Complete source: GRWTSK.Algebra.Polynomial.SignedRootTrace

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `681311b90019c078ed32a3ff4ddb31d6597704bc` · SHA-256 `a5c2e4856d19d979fd93711f2baefccea1ea762afb8d1a8db907740ca67da450`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors, supplied GRL research specifications.
Mathematics: Hermite and Sylvester; interpolation proof following M. B. Nathanson,
The Hermite-Sylvester criterion for real-rooted polynomials, arXiv:1911.01745.
Lean formalization assistance: OpenAI Codex. Mathlib retains upstream credit/license. -/
import GRWTSK.Algebra.Polynomial.ConjugateInterpolation
import Mathlib.Tactic.Linarith

/-!
# Signed square traces over finite complex node sets

Positive real weights may encode multiplicities. Tests are real polynomials;
their complex evaluations are squared without conjugation. The necessity
argument isolates one nonreal conjugate pair by real interpolation.
This is finite algebra; it supplies no positivity for any analytic source.
-/

open Polynomial Complex ComplexConjugate
open scoped BigOperators

set_option autoImplicit false

namespace GRWTSK.Polynomial.SignedRootTrace

/-- Weighted signed trace of polynomial squares, with no complex conjugation. -/
noncomputable def squareTrace (nodes : Finset ℂ) (weight : ℂ → ℝ)
    (p : Polynomial ℝ) : ℂ :=
  ∑ z ∈ nodes, (weight z : ℂ) * (p.eval₂ Complex.ofRealHom z) ^ 2

/-- Interpolation values that isolate a selected nonreal conjugate pair. -/
noncomputable def pairValues (z w : ℂ) : ℂ :=
  if w = z then I else if w = conj z then -I else 0

theorem pairValues_conj {z : ℂ} (hz : z.im ≠ 0) (w : ℂ) :
    pairValues z (conj w) = conj (pairValues z w) := by
  have hne : conj z ≠ z := fun h => hz (Complex.conj_eq_iff_im.mp h)
  by_cases hw : w = z
  · subst w
    simp [pairValues, hne]
  · by_cases hwc : w = conj z
    · subst w
      simp [pairValues, hne]
    · have hc : conj w ≠ z := by
        intro h
        exact hwc (by simpa using congrArg conj h)
      have hcc : conj w ≠ conj z := by
        intro h
        exact hw (by simpa using congrArg conj h)
      simp [pairValues, hw, hwc, hc, hcc]

/-- The isolating polynomial has trace minus the sum of the two pair weights. -/
theorem squareTrace_of_pair_values {nodes : Finset ℂ} {weight : ℂ → ℝ}
    {z : ℂ} (hz : z ∈ nodes) (hc : conj z ∈ nodes) (him : z.im ≠ 0)
    {p : Polynomial ℝ}
    (hp : ∀ w ∈ nodes, p.eval₂ Complex.ofRealHom w = pairValues z w) :
    squareTrace nodes weight p = -((weight z + weight (conj z) : ℝ) : ℂ) := by
  classical
  have hne : conj z ≠ z := fun h => him (Complex.conj_eq_iff_im.mp h)
  have hmem : conj z ∈ nodes.erase z := Finset.mem_erase.mpr ⟨hne, hc⟩
  rw [squareTrace, ← Finset.add_sum_erase _ _ hz,
    ← Finset.add_sum_erase _ _ hmem]
  have hzero : ∑ w ∈ (nodes.erase z).erase (conj z),
      (weight w : ℂ) * (p.eval₂ Complex.ofRealHom w) ^ 2 = 0 := by
    apply Finset.sum_eq_zero
    intro w hw
    have hw' := Finset.mem_erase.mp hw
    have hw'' := Finset.mem_erase.mp hw'.2
    rw [hp w hw''.2]
    simp [pairValues, hw''.1, hw'.1]
  rw [hzero, hp z hz, hp (conj z) hc]
  simp [pairValues, hne]
  ring

/-- A nonreal node has a real polynomial test of degree below the number of
distinct nodes with an exactly negative trace when both pair weights are positive. -/
theorem exists_pair_test {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) (weight : ℂ → ℝ)
    {z : ℂ} (hz : z ∈ nodes) (him : z.im ≠ 0) :
    ∃ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) ∧
      squareTrace nodes weight p = -((weight z + weight (conj z) : ℝ) : ℂ) := by
  obtain ⟨p, hdegree, hp⟩ :=
    ConjugateInterpolation.exists_real_interpolate nodes hclosed (pairValues z)
      (fun w _ => pairValues_conj him w)
  exact ⟨p, hdegree, squareTrace_of_pair_values hz (hclosed z hz) him hp⟩

/-- At real nodes the signed trace is the embedding of a real sum. -/
theorem squareTrace_eq_real {nodes : Finset ℂ} (weight : ℂ → ℝ)
    (hreal : ∀ z ∈ nodes, z.im = 0) (p : Polynomial ℝ) :
    squareTrace nodes weight p =
      ((∑ z ∈ nodes, weight z * (p.eval z.re) ^ 2 : ℝ) : ℂ) := by
  simp only [squareTrace, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro z hz
  have he : z = (z.re : ℂ) := by
    apply Complex.ext <;> simp [hreal z hz]
  have hev : p.eval₂ Complex.ofRealHom z = ((p.eval z.re : ℝ) : ℂ) := by
    conv_lhs => rw [he]
    exact Polynomial.eval₂_at_apply Complex.ofRealHom z.re
  rw [hev, Complex.ofReal_mul, Complex.ofReal_pow]

/-- With equal weights on conjugate pairs the entire signed trace is real. -/
theorem squareTrace_im_eq_zero (nodes : Finset ℂ)
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) (weight : ℂ → ℝ)
    (hweightconj : ∀ z ∈ nodes, weight (conj z) = weight z)
    (p : Polynomial ℝ) : (squareTrace nodes weight p).im = 0 := by
  have heval : ∀ z : ℂ, p.eval₂ Complex.ofRealHom (conj z) =
      conj (p.eval₂ Complex.ofRealHom z) := by
    intro z
    induction p using Polynomial.induction_on' with
    | add p q hp hq => simp [hp, hq]
    | monomial n c => simp
  have hconj : conj (squareTrace nodes weight p) = squareTrace nodes weight p := by
    simp only [squareTrace, map_sum, map_mul, map_pow, Complex.conj_ofReal]
    apply Finset.sum_bij (fun z _ => conj z) (fun z hz => hclosed z hz)
    · intro z hz w hw heq
      simpa only [Complex.conj_conj] using congrArg conj heq
    · intro z hz
      exact ⟨conj z, hclosed z hz, Complex.conj_conj z⟩
    · intro z hz
      rw [hweightconj z hz, heval z]
  exact Complex.conj_eq_iff_im.mp hconj

/-- Finite weighted Hermite trace criterion. Strict positivity is required only
on the selected nodes. Empty sets and repeated-root weights are allowed. -/
theorem squareTrace_nonneg_iff_real {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes) {weight : ℂ → ℝ}
    (hweight : ∀ z ∈ nodes, 0 < weight z) :
    (∀ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) →
      0 ≤ (squareTrace nodes weight p).re) ↔
    ∀ z ∈ nodes, z.im = 0 := by
  constructor
  · intro h z hz
    by_contra him
    obtain ⟨p, hdegree, hp⟩ := exists_pair_test hclosed weight hz him
    have hnonneg := h p hdegree
    rw [hp] at hnonneg
    simp only [Complex.neg_re, Complex.ofReal_re] at hnonneg
    have hw := hweight z hz
    have hwc := hweight (conj z) (hclosed z hz)
    linarith
  · intro hreal p _
    rw [squareTrace_eq_real weight hreal p, Complex.ofReal_re]
    exact Finset.sum_nonneg fun z hz => mul_nonneg (hweight z hz).le (sq_nonneg _)

end GRWTSK.Polynomial.SignedRootTrace
```
