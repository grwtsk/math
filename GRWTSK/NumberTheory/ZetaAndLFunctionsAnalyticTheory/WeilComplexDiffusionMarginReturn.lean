/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTunableInvariantDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveAndSpectralDiffusers
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoComplexConductorFrontier
import Mathlib

/-!
# Phase-preserving complex Weil observer with a paid diffusion margin

The source is the ACTUAL individual primitive, nonprincipal Dirichlet
arithmetic form primitiveArithmeticValue chi hp hn T f. It contains:
- gammaConstant(q,gammaParity chi) times physical complex L2 mass;
- the full gammaCorrectionDensity integral over positive shifts;
- the original signed twistedPrime T chi with every prime power,
  and complex antilinear-first correlation.

On a FINITE complex sine synthesis f=complexSineTest T v,
apply nonzero-gap heat H_r to v and return through exact inverse
R_r before evaluating the original source. The observer is the REAL
PART of a finite complex matrix quadratic; no imaginary prime
phase or source parity is silently discarded. The comparison
hypothesis must bound the difference of this real readout and the
complete original real arithmetic value, not merely its prime part.

An observed inequality
  |Re <w,Bw> - Q_chi(complexSineTest T (R_r w))|
       <= error * sum_i ||w_i||^2
together with
  error * sum_i ||w_i||^2 <= Re <w,Bw>
implies Q_chi(complexSineTest T v)>=0 on ALL vectors v.
This is a lossless finite certificate RETURN and remains conditional:
the exact Hermitian source matrix comparison, margin, test-domain
identification and full completed-L-function root formula require
their actual independent mathematical proofs.

At radius two, the existing source row norm/primitive conductor
theorem additionally gives a real SOURCE sign when conductor
q>=2^23 and the recovered complex test meets exactly the stated
physical L2, support and gamma integral hypotheses. No fixed
radius-two result is promoted to cofinal window signs.

The finite complex norm-square is separate from the physical
energy(f) and theta-weighted coordinateMass; identifying these
on a finite test requires an actual Parseval/source lemma.
The operator need not be stochastic in the character sector.
This is not a spectral heat semigroup, zero divisor diffusion,
or a proof of Dirichlet GRH.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
Source baseline grwtsk/math@859cb74d7b56cd6c744aab5e449ec09b906f862e.
-/

set_option autoImplicit false
noncomputable section
open Matrix MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveComplexMarginReturn

open FiniteInvariantDiffusion
open FiniteInvariantDiffusion.Involution
open TypedSourceDiffusion
open OddRootProjection
open SourcePrimeCorrelation
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Finite complex observer-coordinate mass, NOT the full physical L2 mass
of the associated original test. -/
def complexHeadMass {ι : Type*} [Fintype ι] (w : ι → ℂ) : ℝ :=
  ∑ i, ‖w i‖^2

theorem complexHeadMass_nonneg {ι : Type*} [Fintype ι] (w : ι → ℂ) :
    0 ≤ complexHeadMass w := by
  unfold complexHeadMass
  exact Finset.sum_nonneg (fun i _ => sq_nonneg _)

/-- Observed finite COMPLEX matrix real part; source Hermiticity and
actual matrix construction are separate observer obligations. -/
def observedHermitianReal {ι : Type*} [Fintype ι]
    (B : Matrix ι ι ℂ) (w : ι → ℂ) : ℝ :=
  (FiniteInvariantDiffusion.Involution.complexPairing B w).re

/-- Return a paid finite complex observer to the genuine primitive
individual Dirichlet arithmetic form on the same finite sine test.
The result covers genuinely complex chi and BOTH gamma parities. -/
theorem original_primitive_sign_of_complex_margin
    {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M))
    (gap : ℂ) (hgap : gap ≠ 0)
    (B : Matrix (Fin M) (Fin M) ℂ) (error : ℝ)
    (hcomparison : ∀ w,
      |observedHermitianReal B w -
        primitiveArithmeticValue chi hp hn T
          (complexSineTest T (d.recoverField gap w))| ≤
        error * complexHeadMass w)
    (hmargin : ∀ w,
      error * complexHeadMass w ≤ observedHermitianReal B w) :
    ∀ v : Fin M → ℂ,
      0 ≤ primitiveArithmeticValue chi hp hn T (complexSineTest T v) := by
  intro v
  have hobs := (abs_le.mp (hcomparison (d.heatField gap v))).2
  have hpositive := hmargin (d.heatField gap v)
  rw [d.recover_heatField gap hgap v] at hobs
  linarith

/-- A genuine negative primitive source vector stays negative after
diffusion and inverse return: phases and all source terms survive. -/
theorem negative_primitive_survives_tunable_heat
    {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M))
    (gap : ℂ) (hgap : gap ≠ 0)
    (v : Fin M → ℂ)
    (hneg : primitiveArithmeticValue chi hp hn T
      (complexSineTest T v) < 0) :
    primitiveArithmeticValue chi hp hn T
      (complexSineTest T
        (d.recoverField gap (d.heatField gap v))) < 0 := by
  simpa only [d.recover_heatField gap hgap v] using hneg

/-- The independently supplied fixed-window large-conductor source
positivity transfers to EVERY recovered complex finite sine test in
the exact ORIGINAL analytic domain, without a new positivity premise. -/
theorem radiusTwo_highConductor_heated_nonneg
    {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hq : 2^(23:ℕ) ≤ q)
    (d : Involution (Fin M)) (gap : ℂ)
    (w : Fin M → ℂ)
    (hf : MemLp (complexSineTest 2 (d.recoverField gap w)) 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-2:ℝ) 2 →
      complexSineTest 2 (d.recoverField gap w) t = 0)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi)
        (complexSineTest 2 (d.recoverField gap w))) (Ioi 0)) :
    0 ≤ primitiveArithmeticValue chi hp hn 2
      (complexSineTest 2 (d.recoverField gap w)) :=
  RadiusTwoComplexConductor.conductor_threshold_two_of_power_two
    chi hp hn hq _ hf hs harch

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveComplexMarginReturn
