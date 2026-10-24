# Complete source: GRWTSK.NumberTheory.XiToeplitz.Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e80f1381d7e59f8cdbcbcb0062e0d1a209a29bbb` · SHA-256 `1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24
import FormalResearch.PositiveAtlas.Grassmannian.Transverse
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs

/-!
# Actual-source xi and explicit Toeplitz/Grassmannian obligations

Mathlib's `completedRiemannZeta` is Lambda, not xi. Its assigned pole values must
not be multiplied naively by s(s-1) to define xi at 0 and 1. We use the entire
pole-removed source Lambda_0 to define xi everywhere, then prove the exact
completion/recovery identities off the endpoints.

The real sequence below consists of the real parts of the actual even Taylor
derivatives. The analytic descent, positivity and RH criterion are distinct
unproved propositions, not axioms, proof imports, or fields in a certificate.
-/

namespace FormalResearch.RiemannHypothesis.XiToeplitz

noncomputable section

open FormalResearch.PositiveAtlas.Grassmannian

/-- Entire xi with the removable endpoint values restored from the actual Lambda_0 source. -/
def xi (s : ℂ) : ℂ := (1 + s * (s - 1) * completedRiemannZeta₀ s) / 2

/-- The endpoint at zero is not the spurious zero of a naively totalized product. -/
theorem xi_zero : xi 0 = 1 / 2 := by simp [xi]

/-- The endpoint at one is likewise restored. -/
theorem xi_one : xi 1 = 1 / 2 := by simp [xi]

/-- Entirety follows from the pinned pole-removed function, not a new hypothesis. -/
theorem differentiable_xi : Differentiable ℂ xi := by
  have hp : Differentiable ℂ (fun s : ℂ => s * (s - 1)) :=
    differentiable_id.mul (differentiable_id.sub_const 1)
  have hm := hp.mul differentiable_completedZeta₀
  exact ((differentiable_const 1).add hm).div_const (2 : ℂ)

/-- The actual completed source supplies the functional-equation reflection. -/
theorem xi_one_sub (s : ℂ) : xi (1 - s) = xi s := by
  simp only [xi, completedRiemannZeta₀_one_sub]
  ring

/-- Centering yields an even function without choosing a square-root branch. -/
theorem xi_centered_even (u : ℂ) : xi (1 / 2 - u) = xi (1 / 2 + u) := by
  have h := xi_one_sub (1 / 2 + u)
  convert h using 1
  congr 1
  ring

/-- Away from the two removable endpoints, xi is the familiar completed product. -/
theorem xi_eq_completed {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    xi s = s * (s - 1) * completedRiemannZeta s / 2 := by
  rw [xi, completedRiemannZeta_eq]
  have hs : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm h1)
  field_simp [h0, hs]
  ring

/-- The completed function is recovered with its source and endpoint conditions intact. -/
theorem completed_recover {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    completedRiemannZeta s = 2 * xi s / (s * (s - 1)) := by
  rw [xi_eq_completed h0 h1]
  have hs : s - 1 ≠ 0 := sub_ne_zero.mpr h1
  field_simp [h0, hs]

/-- Pullback from xi to actual zeta retains the archimedean completion factor. -/
theorem zeta_recover {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    riemannZeta s = (2 * xi s / (s * (s - 1))) / Complex.Gammaℝ s := by
  rw [riemannZeta_def_of_ne_zero h0, completed_recover h0 h1]

/-- Actual trivial zeros are reused from Mathlib, independently of RH or the new program. -/
theorem actual_trivial_zero (n : ℕ) : riemannZeta (-2 * (n + 1)) = 0 :=
  riemannZeta_neg_two_mul_nat_add_one n

/-- Even Taylor coefficient candidate from the actual entire source, not chosen zero ordinates. -/
def coefficient (k : ℕ) : ℝ :=
  (iteratedDeriv (2 * k) xi (1 / 2)).re / ((2 * k).factorial : ℝ)

/-- The zeroth coefficient has not silently been replaced by one. -/
theorem coefficient_zero : coefficient 0 = (xi (1 / 2)).re := by
  simp [coefficient]

/-- The literal squared-variable series. Summability is a separate obligation below. -/
def centeredSeries (w : ℂ) : ℂ := ∑' k : ℕ, (coefficient k : ℂ) * w ^ k

/-- The exact analytic descent and convergence target; no proof is installed here. -/
def TaylorDescent : Prop :=
  (∀ w : ℂ, Summable (fun k : ℕ => (coefficient k : ℂ) * w ^ k)) ∧
    Differentiable ℂ centeredSeries ∧
    ∀ u : ℂ, centeredSeries (u ^ 2) = xi (1 / 2 + u)

/-- The prime-power pullback target uses actual primes, positive exponents and actual zeta.
No convergence or Euler-product logarithmic differentiation proof is supplied here. -/
def PrimeLogDerivativeIdentity : Prop :=
  ∀ s : ℂ, 1 < s.re →
    HasSum (fun pm : {p : ℕ // p.Prime} × ℕ =>
      (Real.log (pm.1.val : ℝ) : ℂ) /
        (pm.1.val : ℂ) ^ (((pm.2 + 1 : ℕ) : ℂ) * s))
      (-(deriv riemannZeta s) / riemannZeta s)

/-- The trivial-zero residue series is separately scoped from the gamma-completion profile.
This is an exact real-series target on x > 1, not an assumed cancellation theorem. -/
def TrivialZeroCorrectionSeries : Prop :=
  ∀ x : ℝ, 1 < x →
    HasSum (fun m : ℕ => (x ^ (2 * (m + 1)))⁻¹ / (2 * ((m + 1 : ℕ) : ℝ)))
      (-(1 / 2 : ℝ) * Real.log (1 - (x ^ 2)⁻¹))

/-- The exact arithmetic all-order positivity target, with no premise that zeros lie on the line. -/
def XiToeplitzPositivity : Prop := Toeplitz.PFInfinity coefficient

/-- The literature's criterion is a formalization obligation, not an accepted Lean theorem. -/
def XiPFCriterion : Prop := _root_.RiemannHypothesis ↔ XiToeplitzPositivity

/-- The actual compatible finite matrix stages used by the Grassmannian construction. -/
def stage (N : ℕ) : Matrix (Fin N) (Fin N) ℝ := Toeplitz.block coefficient N

/-- An actual intrinsic half-dimensional plane at each finite stage. -/
def stagePlane (N : ℕ) : IntrinsicPlane N (N + N) := SignedGraph.plane (stage N)

/-- The exact ordered-minor Grassmannian positivity target in the distinguished pivot chart. -/
def XiGrassmannianPositivity : Prop :=
  ∀ N : ℕ, AllOrderedMinorsNonneg (SignedGraph.frame (stage N))

/-- Finite/infinite Toeplitz equivalence is already algebraic and does not invoke RH. -/
theorem xiToeplitz_iff_finite_stages :
    XiToeplitzPositivity ↔ ∀ N, Toeplitz.FiniteNonnegative (stage N) :=
  Toeplitz.pfInfinity_iff_blocks coefficient

/-- All stages remain entrywise compatible under truncation. -/
theorem stage_restrict {M N : ℕ} (h : M ≤ N) (i j : Fin M) :
    stage N (Fin.castLE h i) (Fin.castLE h j) = stage M i j := rfl

/-- Each individual geometric encoding decodes exactly to its arithmetic matrix stage. -/
theorem recover_stage (N : ℕ) : SignedGraph.recover (SignedGraph.frame (stage N)) = stage N :=
  SignedGraph.recover_frame _

/-- At rank two the matrix/minor bridge is proved without invoking the general-rank target. -/
theorem stage_two_minor_bridge :
    Toeplitz.FiniteNonnegative (stage 2) ↔ AllOrderedMinorsNonneg (SignedGraph.frame (stage 2)) :=
  signedGraph_minorCorrespondence_two _

/-- The stipulated phase normalization cannot supply missing arithmetic positivity. -/
theorem phase_normalization_iff :
    Toeplitz.PFInfinity (Toeplitz.rescale (Transverse.phaseUnit ^ 2) coefficient) ↔
      XiToeplitzPositivity :=
  Transverse.phase_normalization_preserves_pfInfinity coefficient

end

end FormalResearch.RiemannHypothesis.XiToeplitz
```
