/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZetaNegativeMomentCodimension
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaPhysicalReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
import Mathlib.Analysis.Calculus.ContDiff.Operations
import Mathlib.Topology.Algebra.Support
import Mathlib.Tactic

/-!
# The actual smooth compact support window and the conductor-one pole codimension

MSC2020: 11M26 (primary), 11M41, 46C20.

This module discharges the missing ORIGINAL-SOURCE instantiation of the
negative zeta pole's complex-linear rank-one functional on finite-dimensional
subspaces of the supported smooth complex test class. The window carrier
consists literally of C-infinity functions on R with zero values for |t|>A.
Smoothness is closed under complex linear combinations, compact support is
proved from the literal window, and genuine L1 integrability is then proved
by the existing smooth compact support theorem.

The source pole remains the actual two-orientation zeta correlation integral
from ZetaPoleRankOneReturn and its canonical WeilCorrelationFourier consumer.
No prime, gamma, conductor, complex phase or pole sign changes. The rank-one
kernel is used only to count negative directions; it is NOT a pole-neutral
restriction of the full original Weil test domain.

The full completed-zero sum, genuine Fourier Bessel negative-index bound,
universal RH/GRH targets and all-window arithmetic sign remain separate.
SOURCE_PROOF_CANDIDATE. Lean elaboration, complete import build,
kernel replay, transitive axiom audit and independent review NOT_RUN.
Novelty UNASSESSED. No sorry/admit/new research axioms.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ContDiff BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn

open ZetaNegativeMomentCodimension ZetaPoleRankOneReturn
open SourcePrimeCorrelation OddRootProjection LowSchur
open GRWTSK.NumberTheory.WeilNegativeWitness

/-- The ORIGINAL complex smooth compact supported test carrier on [-A,A].
The pointwise zero condition also covers the exact support endpoint. -/
def smoothWindow (A : ℝ) : Submodule ℂ (ℝ → ℂ) where
  carrier := {f | ContDiff ℝ ∞ f ∧ ∀ t : ℝ, A < |t| → f t = 0}
  zero_mem' := by
    constructor
    · simpa using (contDiff_const : ContDiff ℝ ∞ (fun _ : ℝ => (0 : ℂ)))
    · intro t ht
      rfl
  add_mem' := by
    intro f g hf hg
    constructor
    · exact hf.1.add hg.1
    · intro t ht
      simp [hf.2 t ht, hg.2 t ht]
  smul_mem' := by
    intro c f hf
    constructor
    · simpa only [Pi.smul_apply] using (ContDiff.const_smul c hf.1)
    · intro t ht
      simp [hf.2 t ht]

/-- The exact pointwise support of each canonical smooth window test is
contained in the SAME closed support interval used by the Weil formula. -/
theorem smoothWindow_support_subset (A : ℝ) (f : smoothWindow A) :
    Function.support (f : ℝ → ℂ) ⊆ Icc (-A) A := by
  intro t ht
  have hne : (f : ℝ → ℂ) t ≠ 0 := by
    simpa only [Function.mem_support] using ht
  have hb : |t| ≤ A := by
    by_contra hnot
    exact hne (f.property.2 t (lt_of_not_ge hnot))
  exact abs_le.mp hb

/-- The topological support required by the canonical completed-source
explicit formula is closed inside the original symmetric window. -/
theorem smoothWindow_tsupport_subset (A : ℝ) (f : smoothWindow A) :
    tsupport (f : ℝ → ℂ) ⊆ Icc (-A) A := by
  change closure (Function.support (f : ℝ → ℂ)) ⊆ Icc (-A) A
  exact closure_minimal (smoothWindow_support_subset A f) isClosed_Icc

/-- Every actual smooth supported window test has genuine compact support.
There are no new decay or Sobolev hypotheses. -/
theorem smoothWindow_hasCompactSupport (A : ℝ) (f : smoothWindow A) :
    HasCompactSupport (f : ℝ → ℂ) := by
  exact HasCompactSupport.of_support_subset_isCompact
    isCompact_Icc (smoothWindow_support_subset A f)

/-- The same window test is genuinely L1, as required by the
unchanged SourcePrimeCorrelation.zeta_pole_correlation theorem. -/
theorem smoothWindow_integrable (A : ℝ) (f : smoothWindow A) :
    Integrable (f : ℝ → ℂ) volume := by
  exact f.property.1.continuous.integrable_of_hasCompactSupport
    (smoothWindow_hasCompactSupport A f)

/-- Literal identification with the repository's ORIGINAL admissible
smooth compact test predicate, not a redefined weaker test domain. -/
theorem smoothWindow_admissible (A : ℝ) (f : smoothWindow A) :
    GRWTSK.NumberTheory.WeilNegativeWitness.Admissible (f : ℝ → ℂ) := by
  exact ⟨f.property.1, smoothWindow_hasCompactSupport A f⟩

/-- Direct completed-zeta zero-sum consumer at the canonical test
domain: original zero multiplicities, full signed prime powers,
gamma/conductor and BOTH pole orientations, without an RH hypothesis.
This only specializes the previously authored explicit-formula
SOURCE_PROOF_CANDIDATE; neither theorem was kernel-replayed here. -/
theorem smoothWindow_zeta_hasSum_physical_arithmetic
    (A : ℝ) (hA : 0 ≤ A) (f : smoothWindow A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ =>
      ∫ r : ℝ, correlation (f : ℝ → ℂ) r *
        Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi =>
        (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (((gammaConstant 1 0 * energy (f : ℝ → ℂ) +
        (∫ r in Ioi (0 : ℝ),
          gammaCorrectionDensity 0 (f : ℝ → ℂ) r) -
        2 * ∑ n ∈ LowSchur.activePrimePowers A,
          LowSchur.primeWeight n *
            (correlation (f : ℝ → ℂ)
              (Real.log (n : ℝ))).re : ℝ) : ℂ) +
        W 0 + W 1) := by
  exact zeta_hasSum_physical_arithmetic
    (f : ℝ → ℂ) A hA
    (smoothWindow_admissible A f)
    (smoothWindow_tsupport_subset A f)

/-- Source-inclusion of an arbitrary finite-dimensional test subspace into
the original Lebesgue source function. It is not a model Weil operator. -/
def windowSource (A : ℝ) (W : Submodule ℂ (smoothWindow A)) :
    W →ₗ[ℂ] (ℝ → ℂ) :=
  (smoothWindow A).subtype.comp W.subtype

private theorem windowSource_integrable (A : ℝ)
    (W : Submodule ℂ (smoothWindow A)) (w : W) :
    Integrable (windowSource A W w) volume := by
  change Integrable ((w : smoothWindow A) : ℝ → ℂ) volume
  exact smoothWindow_integrable A (w : smoothWindow A)

private theorem windowSource_supported (A : ℝ)
    (W : Submodule ℂ (smoothWindow A)) (w : W)
    (t : ℝ) (ht : A < |t|) :
    windowSource A W w t = 0 := by
  change ((w : smoothWindow A) : ℝ → ℂ) t = 0
  exact (w : smoothWindow A).property.2 t ht

/-- The exact negative zeta moment on a finite source subspace.
All the weighted exponential integrability is derived from the
original smooth support by the preceding source declaration. -/
def negativeMomentOnWindow (A : ℝ)
    (W : Submodule ℂ (smoothWindow A)) : W →ₗ[ℂ] ℂ :=
  sourceNegativeMomentLinear (windowSource A W) A
    (windowSource_integrable A W)
    (windowSource_supported A W)

/-- Actual-source codimension-one bound and the complete signed zeta pole
nonnegativity on the negative-moment kernel. Every complex coefficient
in the finite-dimensional supported smooth subspace remains allowed. -/
theorem smoothWindow_pole_nonneg_on_codimension_one_kernel
    (A : ℝ) (W : Submodule ℂ (smoothWindow A))
    [FiniteDimensional ℂ W] :
    Module.finrank ℂ W ≤
      Module.finrank ℂ (LinearMap.ker (negativeMomentOnWindow A W)) + 1 ∧
    (∀ w : LinearMap.ker (negativeMomentOnWindow A W),
      0 ≤ sourcePole (windowSource A W w.1)) := by
  exact sourcePole_nonneg_on_codimension_one_kernel
    (windowSource A W) A
    (windowSource_integrable A W)
    (windowSource_supported A W)

/-- Every actual finite negative zeta Weil subspace loses at most ONE
complex dimension when the negative pole is eliminated; the original
nonpole source stays strictly negative on that kernel. The local
hnegative describes the subspace being tested, not a global sign axiom. -/
theorem smoothWindow_negative_full_implies_negative_nonpole
    (A : ℝ) (W : Submodule ℂ (smoothWindow A))
    [FiniteDimensional ℂ W] (nonpole : W → ℝ)
    (hnegative : ∀ w : W, w ≠ 0 →
      nonpole w + sourcePole (windowSource A W w) < 0) :
    Module.finrank ℂ W ≤
      Module.finrank ℂ (LinearMap.ker (negativeMomentOnWindow A W)) + 1 ∧
    (∀ w : LinearMap.ker (negativeMomentOnWindow A W),
      (w : W) ≠ 0 → nonpole w.1 < 0) := by
  exact negative_full_source_implies_negative_nonpole_on_kernel
    (windowSource A W) A
    (windowSource_integrable A W)
    (windowSource_supported A W)
    nonpole hnegative

/-- The literal conductor-one NONPOLE arithmetic expression in
SourcePrimeCorrelation.zeta_hasSum_physical_arithmetic. Every active
von Mangoldt prime power and the entire gamma correction remain. -/
def originalZetaNonpole (A : ℝ) (f : ℝ → ℂ) : ℝ :=
  gammaConstant 1 0 * energy f +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 0 f r) -
    2 * ∑ n ∈ activePrimePowers A,
      primeWeight n * (correlation f (Real.log (n : ℝ))).re

/-- A finite-dimensional negative subspace of the ORIGINAL pole-inclusive
conductor-one Weil arithmetic source has a codimension-at-most-one
subspace on which its literal nonpole arithmetic is strictly negative.
The hypothesis describes this particular negative subspace and does
NOT assert a negative or positive sign for every Weil test. -/
theorem originalZeta_negative_subspace_restricts_to_nonpole
    (A : ℝ) (W : Submodule ℂ (smoothWindow A))
    [FiniteDimensional ℂ W]
    (hnegative : ∀ w : W, w ≠ 0 →
      originalZetaNonpole A (windowSource A W w) +
        sourcePole (windowSource A W w) < 0) :
    Module.finrank ℂ W ≤
      Module.finrank ℂ (LinearMap.ker (negativeMomentOnWindow A W)) + 1 ∧
    (∀ w : LinearMap.ker (negativeMomentOnWindow A W),
      (w : W) ≠ 0 →
        originalZetaNonpole A (windowSource A W w.1) < 0) := by
  exact smoothWindow_negative_full_implies_negative_nonpole
    A W (fun w => originalZetaNonpole A (windowSource A W w)) hnegative

end GRWTSK.NumberTheory.WeilQuadraticForm.SmoothWindowPoleReturn
