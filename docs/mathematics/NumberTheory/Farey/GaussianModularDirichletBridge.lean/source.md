# Complete source: GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90c5ea4b167090d3046fc48d02055f00accbba2d` · SHA-256 `38a5a49a7a857c2de9893900d638ece3bec474f2866ce16f95d0579f85498c76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Imported Mathlib and GRWTSK modules retain their original authorship and licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This module is deliberately not imported by GRWTSK.lean until the pinned
transitive Lean build, kernel check, and axiom audit are completed.
-/
import GRWTSK.NumberTheory.Farey.ResolvableQuintic
import GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
import GRWTSK.Analysis.Fourier.FiniteAdditiveProjector
import GRWTSK.NumberTheory.Moebius.DirichletNonunitResidueObstruction
import Mathlib.Tactic

/-!
# Gaussian and modular arithmetic on resolvable Farey eyes

A Farey cell has a determinant-one identity over the natural numbers.
Encoding its two column vectors as Gaussian integers identifies the oriented
determinant with an *exact imaginary coordinate* of a Gaussian product. The
same identity reduces modulo every modulus. The mediant is componentwise
addition, so the already-defined finite additive-character projector detects
its two coordinates without an invertibility assumption.

These identities can be packaged with the existing endpoint-sign definition
of `ResolvableEye` and are preserved by its one-step refinement. The
package has **no** root-existence, spectral, analytic-continuation, or
Mordell-Weil-rank consequence.

An explicit cell, 1/2 < 2/3, exhibits the Dirichlet restriction: its right
numerator is 2 modulo 4. Ordinary multiplicative Dirichlet characters vanish
there; the finite additive projector still detects the exact residue class.
This reuses the repository's nonunit-residue obstruction, not a conjectural
Dirichlet-L-series or modular-form comparison.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Farey

open Polynomial Zsqrtd
open GRWTSK.NumberTheory.Primes.QuadraticGaussianLine

/-- The left Farey integer column as a Gaussian integer `a + ib`. -/
def leftGaussian (I : Cell) : GaussianInt :=
  ⟨(I.leftNum : ℤ), (I.leftDen : ℤ)⟩

/-- Conjugate of the right integer column, `c - id`. -/
def conjugateRightGaussian (I : Cell) : GaussianInt :=
  ⟨(I.rightNum : ℤ), -(I.rightDen : ℤ)⟩

/-- The Farey determinant is exactly the Gaussian cross-product imaginary part.
This uses the *actual* Gaussian multiplication theorem, not an analogy. -/
theorem gaussian_cross_im_eq_one (I : Cell) :
    (leftGaussian I * conjugateRightGaussian I).im = 1 := by
  have hdet :
      (I.leftDen : ℤ) * (I.rightNum : ℤ) =
        (I.leftNum : ℤ) * (I.rightDen : ℤ) + 1 := by
    exact_mod_cast I.unimodular
  calc
    (leftGaussian I * conjugateRightGaussian I).im =
        (I.leftNum : ℤ) * (-(I.rightDen : ℤ)) +
          (I.leftDen : ℤ) * (I.rightNum : ℤ) := by
      simp [leftGaussian, conjugateRightGaussian]
    _ = (I.leftDen : ℤ) * (I.rightNum : ℤ) -
          (I.leftNum : ℤ) * (I.rightDen : ℤ) := by ring
    _ = 1 := by rw [hdet]; ring

/-- Reduction of the oriented Farey determinant modulo `q`.
There is no assumption that any individual numerator is a unit. -/
def modularDet (I : Cell) (q : ℕ) : ZMod q :=
  (I.leftDen : ZMod q) * (I.rightNum : ZMod q) -
    (I.leftNum : ZMod q) * (I.rightDen : ZMod q)

/-- The Farey determinant remains one for every modulus (including `q = 0`). -/
theorem modularDet_eq_one (I : Cell) (q : ℕ) :
    modularDet I q = 1 := by
  have hdet :
      (I.leftDen : ZMod q) * (I.rightNum : ZMod q) =
        (I.leftNum : ZMod q) * (I.rightDen : ZMod q) + 1 := by
    simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_one] using
      congrArg (fun n : ℕ => (n : ZMod q)) I.unimodular
  unfold modularDet
  rw [hdet]
  ring

/-- The additive projector recognizes the mediant *numerator* modulo `q`.
No lift from a residue equality to an unbounded integer equality is used. -/
theorem mediant_numerator_projector (I : Cell) (q : ℕ) [NeZero q] :
    GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector
      q I.leftNum I.rightNum (I.leftNum + I.rightNum) = 1 := by
  rw [GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector_eq_modular_indicator]
  simp

/-- The corresponding exact additive projector for the mediant denominator. -/
theorem mediant_denominator_projector (I : Cell) (q : ℕ) [NeZero q] :
    GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector
      q I.leftDen I.rightDen (I.leftDen + I.rightDen) = 1 := by
  rw [GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector_eq_modular_indicator]
  simp

/-- The endpoint-sign eye together with exact Gaussian and modular certificates.
Every extra field is an arithmetic identity forced by the underlying Farey cell;
these fields are not hypotheses asserting a Dirichlet or spectral estimate. -/
def GaussianModularEye (p : Polynomial ℚ) (q : ℕ) [NeZero q]
    (I : Cell) : Prop :=
  ResolvableEye p I ∧
    (leftGaussian I * conjugateRightGaussian I).im = 1 ∧
    modularDet I q = 1 ∧
    GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector
      q I.leftNum I.rightNum (I.leftNum + I.rightNum) = 1 ∧
    GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterProjector
      q I.leftDen I.rightDen (I.leftDen + I.rightDen) = 1

/-- Gaussian/modular decoration adds *no* assertion beyond a resolved eye:
the extra arithmetic certificates are derived unconditionally from `Cell`. -/
theorem gaussianModularEye_iff (p : Polynomial ℚ) (q : ℕ) [NeZero q]
    (I : Cell) :
    GaussianModularEye p q I ↔ ResolvableEye p I := by
  constructor
  · exact And.left
  · intro h
    exact ⟨h, gaussian_cross_im_eq_one I, modularDet_eq_one I q,
      mediant_numerator_projector I q, mediant_denominator_projector I q⟩

/-- Exact Farey refinement retains all Gaussian/modular arithmetic certificates.
The output is a mediant root or one child *endpoint-sign certificate*; it does
not infer the existence of a root from a sign change. -/
theorem gaussianModularEye_refine (p : Polynomial ℚ) (q : ℕ) [NeZero q]
    (I : Cell) (h : GaussianModularEye p q I) :
    p.eval I.mediant = 0 ∨
      GaussianModularEye p q I.leftChild ∨
        GaussianModularEye p q I.rightChild := by
  rcases resolvableEye_refine p I ((gaussianModularEye_iff p q I).mp h) with
    hzero | hleft | hright
  · exact Or.inl hzero
  · exact Or.inr (Or.inl ((gaussianModularEye_iff p q I.leftChild).mpr hleft))
  · exact Or.inr (Or.inr ((gaussianModularEye_iff p q I.rightChild).mpr hright))

/-- A concrete Farey neighbor pair with an active nonunit right numerator mod 4. -/
def nonunitEye : Cell where
  leftNum := 1
  leftDen := 2
  rightNum := 2
  rightDen := 3
  leftDen_pos := by decide
  rightDen_pos := by decide
  unimodular := by decide

/-- The example is genuinely a resolved endpoint-sign eye for `X - 1/2`. -/
theorem nonunitEye_resolves :
    ResolvableEye (X - C (1 / 2 : ℚ)) nonunitEye := by
  norm_num [ResolvableEye, PolynomialResolves, Resolves,
    nonunitEye, Cell.left, Cell.right]

/-- Its right numerator, although part of a unimodular Farey pair, is not
invertible modulo four. Unimodularity is a *matrix* property, not pointwise
invertibility of every matrix entry. -/
theorem nonunitEye_right_nonunit :
    ¬ IsUnit ((nonunitEye.rightNum : ℕ) : ZMod 4) := by
  simpa [nonunitEye] using
    GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_not_isUnit_zmod_four

/-- Every ordinary multiplicative character mod four misses this actual Farey
coordinate. This reuses the exact nonunit-residue theorem in the Dirichlet stack. -/
theorem nonunitEye_right_dirichlet_vanishes
    (χ : DirichletCharacter ℂ 4) :
    χ ((nonunitEye.rightNum : ℕ) : ZMod 4) = 0 := by
  simpa [nonunitEye] using
    (GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dirichletCharacter_mod_four_two_eq_zero χ)

/-- The full additive-frequency average still detects the right endpoint's
residue exactly, even though that residue is a multiplicative nonunit. -/
theorem nonunitEye_right_additive_selector :
    GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage 4
      (((nonunitEye.rightNum : ℕ) : ZMod 4) - 2) = 1 := by
  rw [GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage_eq_indicator]
  simp [nonunitEye]

/-- Joint witness: the same true Gaussian/modular Farey eye cannot make a
pure finite Dirichlet-character expansion recover the nonunit residue selector.
The obstruction is to that *specific representation*, not to all L-functions. -/
theorem nonunitEye_gaussian_modular_dirichlet_obstruction :
    GaussianModularEye (X - C (1 / 2 : ℚ)) 4 nonunitEye ∧
      ¬ GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.PureDirichletCharacterResidueTwoRepresentation := by
  constructor
  · exact (gaussianModularEye_iff (X - C (1 / 2 : ℚ)) 4 nonunitEye).mpr
      nonunitEye_resolves
  · exact
      GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_pureDirichletCharacterResidueTwoRepresentation

end GRWTSK.NumberTheory.Farey
```
