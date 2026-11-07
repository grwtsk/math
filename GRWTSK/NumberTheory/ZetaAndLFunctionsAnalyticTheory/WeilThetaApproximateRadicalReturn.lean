/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Analytical source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20), and the normalized theta radical
as documented in the supplied theta-weighted jump form notes (2026-11-06).
Repository base: grwtsk/math@e0a7434867ace9cec43861c70e4b54e229c05a71.

WRITTEN_ANALYTICAL_ARGUMENT / INDEPENDENT_REVIEW_NOT_RUN
LEAN_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN
TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedRadicalCompression

/-!
# Quantitative finite-window return for approximate theta-radical compression

## Actual carrier, normalization and backward target

The ORIGINAL full, pole-inclusive real odd zeta source is
  shiftedOddWeilEnergy T 0 (physicalTest sigma u),
where the existing source has f=sigma*u, physical zero extension from
[-T,T], conductor 1, gamma parity 0, and the negative zeta pole.
The coordinate mass is coordinateMass u, not the physical ||f||².
In the normalized theta-weighted realization, dnu =
2 phi(t) cosh(t/2) dt, tau=tanh(t/2), and
sigma=sqrt(phi/(2*cosh(t/2))). Its unitary coordinate is
u=sqrt(2 phi cosh) g, with f=phi*g. These identifications are
MATHEMATICAL ANALYTIC INPUTS at their existing review level,
not newly verified Lean theorems in this file.

The supplied theta derivative response y=-2 phi'/phi satisfies
  (2 L_0 - I)y=tau,  <tau,y>_nu=1.
Writing a(g,h)=2J_0(g,h)-<g,h>_nu, we have
  a(y,h)=<tau,h>_nu, a(y,y)=1,
  Q_zeta(phi*g)=(a(g,g)-<tau,g>_nu²)/2.

The pole-cancelling OBLIQUE projection
  P_obl g=g-<tau,g>_nu*y
has P_obl²=P_obl and the exact algebraic identity
  Q_zeta(phi*g)=a(P_obl g,P_obl g)/2.
It maps to tau-perp but is not in general contractive in ||.||_nu.
For example in R², tau=(1,0), y=(1,1), g=(-1,1):
P_obl g=(0,2) and ||P_obl g||²=4>2=||g||².
This blocks replacing the original metric by a presumed contraction.

The ORTHOGONAL projection off a nonzero r in the actual Hilbert space,
  P_r^perp g=g-<g,r>r/||r||²,
does contract the SAME mass. For any semibounded self-adjoint source
operator A and r in Dom(A), writing v=P_r^perp g on its FORM domain,
  |q_A(v)-q_A(g)| <= 2 (||A r||/||r||) ||g||².
Indeed g=v+c e with e=r/||r||, v perpendicular to e. The form identity
  q_A(g)-q_A(v)=<A(c e),g>+<A v,c e>
and self-adjointness move both pairings onto Ae. Each is bounded by
(||Ar||/||r||)||g||². No source positivity or spectral gap is used.

On the global weighted zeta carrier the self-adjoint bounded-perturbation
operator is
  A=L_0-(1/2)I-(1/2)|tau><tau|,
and the exact theta response gives A y=0. Thus P_y^perp is a genuine
source-preserving, norm-contracting global projection. However y is not
compactly supported. For a fixed physical window choose an admissible
supported approximation r_T (e.g. a smooth cutoff of y); a uniform
SOURCE-RETURN ERROR needs the graph residual ||A r_T||/||r_T||,
not just convergence of r_T to y in the form norm. It also needs
r_T to be in Dom(A), and both original and compressed physical tests to
remain supported in the same window.

## A new exact allowed error budget, not a new source sign

The existing three-mode radical-compression price in
WeilWeightedRadicalCompression is the exact rational
  p = 25146892339808994427929475600016090149
      /403323959649275107012821919989760000000
    = 0.062349115985265... < 1/16.
The strict leftover source-return allowance is
  eps = 1/16-p = 0.000150884014735...
This file proves: the old compressed archimedean n=2 bound,
the ENTIRE residual-prime Delta_8 allowance, the exact negative pole
price, mass contraction and the one-sided error
  Q(compressed)-eps*coordinateMass(u) <= Q(original)
suffice for the same source 1/16 stage. Exact equality is NOT needed.
A sufficient operator-domain residual is
  ||A r_T||/||r_T|| <= eps/2.
No source-dependent r_T meeting this condition at all required windows
has been constructed or certified by this file.

This directly strengthens the consumer of
  obligation.weighted-half-gap / obligation.remaining-finite-grams
at the recorded 1/16 stage; it does NOT discharge their universal
analytical premises, the sharp half-gap, cofinal signs, RH or Dirichlet GRH.

## Heat, coding and evidence

Use the existing actual weighted spectral semigroup only after the
closed-form/source identification and half-gap (still open). The
stageCoverageWeight interface is separate countable BRANCH COVERAGE heat.
Its tail at every J remains exactly 2^-J, including all unobserved labels.
The dependent Lossless codec encodes source, sector, domain/parameter tokens,
exact rational certificate entries AND all residual/error tokens together;
decode(encode(record))=some record. Neither heat nor coding manufactures
a source sign. Arbitrary Hilbert functions are not finite certificates.

The mathematical projection/residual estimate above is a written proof.
The Lean bodies below check only scalar source-return arithmetic, rational
margin transport and the finite hostile comparison. They do not formalize
the full continuum graph-norm residual construction, an all-support
spectral gap, or every character sector. Compilation/kernel/audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open OddRootProjection OddSineForm OddHighComplement OddLiteralWindow LowSchur
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

namespace ApproximateRadical

/-- The entire available exact rational price not already spent by the
zeta 1/16 stage. This includes the full remote Delta_8 allowance. -/
def allowableSourceDefect : ℚ :=
  (1 / 16 : ℚ) - RadicalCompressionObservation.zetaSixteenthPrice

theorem allowableSourceDefect_pos : 0 < allowableSourceDefect := by
  unfold allowableSourceDefect
  linarith [RadicalCompressionObservation.zetaSixteenthPrice_lt_sixteenth]

theorem price_nonneg :
    (0 : ℚ) ≤ RadicalCompressionObservation.zetaSixteenthPrice := by
  rw [RadicalCompressionObservation.zetaSixteenthPrice_eq_recorded]
  norm_num [RadicalCompressionObservation.recordedZetaSixteenthPrice]

/-- No transcendental number is hidden in the remaining exact allowance. -/
theorem price_add_allowance :
    RadicalCompressionObservation.zetaSixteenthPrice +
      allowableSourceDefect = (1 / 16 : ℚ) := by
  unfold allowableSourceDefect
  ring

/-- A scalar recording of unconditional theta-response algebra. It contains
NO assertion that a(g,g) is nonnegative. -/
theorem pole_elimination_scalar (agg agy ayy tau_g : ℝ)
    (hresponse : agy = tau_g) (hnormal : ayy = 1) :
    (agg - tau_g ^ 2) / 2 =
      (agg - 2 * tau_g * agy + tau_g ^ 2 * ayy) / 2 := by
  rw [hresponse, hnormal]
  ring

/-- Hostile exact 2-dimensional example: the tau-orthogonal oblique
projection is idempotent but need not contract the Hilbert metric. -/
theorem oblique_pole_projection_not_contractive :
    (0 : ℝ) ^ 2 + 2 ^ 2 > (-1 : ℝ) ^ 2 + 1 ^ 2 := by
  norm_num

/-- The residual estimate from the written Hilbert-space projection
argument is an explicit input. The linear inequality correctly returns
its one-sided source error at the ACTUAL allocated budget. -/
theorem source_return_of_graph_residual
    (mass rnorm residual source compressed : ℝ)
    (hmass : 0 ≤ mass) (_hrnorm : 0 < rnorm)
    (_hresidual : 0 ≤ residual)
    (hgraph : |compressed - source| ≤
      2 * residual / rnorm * mass)
    (hsmall : 2 * residual / rnorm ≤
      (allowableSourceDefect : ℝ)) :
    compressed - (allowableSourceDefect : ℝ) * mass ≤ source := by
  have hscaled := mul_le_mul_of_nonneg_right hsmall hmass
  have hupper := (abs_le.mp hgraph).2
  linarith

/-- A SOURCE-EXACT scalar statement: a nonnegative price p plus an
allowable one-sided source defect eps yields 1/16, provided the SAME
mass contracts and the entire compressed energy has the signed lower
bound -p. There is no claim that any analytic input was checked. -/
theorem source_sign_of_approximate_return
    (originalMass compressedMass source compressed : ℝ)
    (_horiginalMass : 0 ≤ originalMass)
    (hcontract : compressedMass ≤ originalMass)
    (hcompressed :
      -(RadicalCompressionObservation.zetaSixteenthPrice : ℝ) *
        compressedMass ≤ compressed)
    (hreturn : compressed -
      (allowableSourceDefect : ℝ) * originalMass ≤ source) :
    -(1 / 16 : ℝ) * originalMass ≤ source := by
  have hp : (0 : ℝ) ≤
      (RadicalCompressionObservation.zetaSixteenthPrice : ℝ) := by
    exact_mod_cast price_nonneg
  have hmassMul := mul_le_mul_of_nonneg_left hcontract hp
  have hadd : (RadicalCompressionObservation.zetaSixteenthPrice : ℝ) +
      (allowableSourceDefect : ℝ) = 1 / 16 := by
    exact_mod_cast price_add_allowance
  calc
    -(1 / 16 : ℝ) * originalMass =
        -(RadicalCompressionObservation.zetaSixteenthPrice : ℝ) *
          originalMass - (allowableSourceDefect : ℝ) * originalMass := by
      rw [← hadd]
      ring
    _ ≤ -(RadicalCompressionObservation.zetaSixteenthPrice : ℝ) *
          compressedMass - (allowableSourceDefect : ℝ) *
          originalMass := by linarith
    _ ≤ compressed - (allowableSourceDefect : ℝ) * originalMass := by
      linarith
    _ ≤ source := hreturn

end ApproximateRadical

/-- Source-exact analytic inputs for a compression with a PAID one-sided
source-return error, rather than the stronger sourceReturn equality in
ZetaRadicalCompressionInputs.

The same physical source/oddness, conductor, support, full prime residual
and pole sign are retained. This structure is not an existence theorem
for its fields. -/
structure ZetaApproximateRadicalInputs
    (T : ℝ) (sigma u compressed : ℝ → ℝ) : Prop where
  sourceReturnLower :
    shiftedOddWeilEnergy T 0 (physicalTest sigma compressed) -
      (ApproximateRadical.allowableSourceDefect : ℝ) * coordinateMass u ≤
        shiftedOddWeilEnergy T 0 (physicalTest sigma u)
  massContractive : coordinateMass compressed ≤ coordinateMass u
  archTwo :
    -(RadicalCompressionObservation.compressedBandUpper : ℝ) *
        coordinateMass compressed ≤
      gammaConstant 1 0 * coordinateMass (physicalTest sigma compressed) +
        oddArchimedeanEnergy (physicalTest sigma compressed) -
        zetaTwoPrimeTerm sigma compressed
  residualPrime :
    zetaResidualPrime T sigma compressed ≤
      (EighthObservation.residualWithTail : ℝ) * coordinateMass compressed
  pole :
    2 * (∫ t : ℝ,
      physicalTest sigma compressed t * Real.sinh (t / 2)) ^ 2 ≤
      (RadicalCompressionObservation.poleUpper : ℝ) *
        coordinateMass compressed

/-- An APPROXIMATE source return can consume the exact 1/16 budget.
All original domain and pole hypotheses are preserved; only the formerly
exact source-return field is weakened by the paid rational allowance.

No actual r_T, approximate radical projection, entire prime enclosure or
operator-graph residual is constructed by this scalar assembly. -/
theorem zeta_sixteenthStage_of_approximate_radical
    (T : ℝ) (sigma u compressed : ℝ → ℝ)
    (_hu : MemLp u 2 volume)
    (_hcompressed : MemLp compressed 2 volume)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hphysicalCompressed : MemLp (physicalTest sigma compressed) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hoddCompressed : Function.Odd (physicalTest sigma compressed))
    (_hsupport : ∀ᵐ t : ℝ,
      t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_hsupportCompressed : ∀ᵐ t : ℝ,
      t ∉ Icc (-T) T → physicalTest sigma compressed t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) -
        physicalTest sigma u t) ^ 2)) (Ioi 0))
    (_henergyCompressed : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma compressed (t + r) -
        physicalTest sigma compressed t) ^ 2)) (Ioi 0))
    (h : ZetaApproximateRadicalInputs T sigma u compressed) :
    -(1 / 16) * coordinateMass u ≤
      shiftedOddWeilEnergy T 0 (physicalTest sigma u) := by
  have harch := h.archTwo
  have hprime := h.residualPrime
  have hpole := h.pole
  have hcompressed :
      -(RadicalCompressionObservation.zetaSixteenthPrice : ℝ) *
          coordinateMass compressed ≤
        shiftedOddWeilEnergy T 0 (physicalTest sigma compressed) := by
    simp only [shiftedOddWeilEnergy, shiftedOddCoreEnergy, sub_zero,
      Real.norm_eq_abs, sq_abs]
    change -(RadicalCompressionObservation.zetaSixteenthPrice : ℝ) *
      coordinateMass compressed ≤
        gammaConstant 1 0 * coordinateMass (physicalTest sigma compressed) +
          oddArchimedeanEnergy (physicalTest sigma compressed) -
          primeEnergy T (physicalTest sigma compressed) -
          2 * (∫ t : ℝ,
            physicalTest sigma compressed t * Real.sinh (t / 2)) ^ 2
    unfold zetaResidualPrime at hprime
    dsimp [RadicalCompressionObservation.zetaSixteenthPrice]
    linarith
  exact ApproximateRadical.source_sign_of_approximate_return
    (coordinateMass u) (coordinateMass compressed)
    (shiftedOddWeilEnergy T 0 (physicalTest sigma u))
    (shiftedOddWeilEnergy T 0 (physicalTest sigma compressed))
    (coordinateMass_nonneg u) h.massContractive hcompressed
    h.sourceReturnLower

/-! Exact finite evidence and exhaustive branch indexing are reused as-is. -/

/-- Finite SOURCE/PARAMETER/ERROR payloads remain attached to their
dependent descriptors, including the exact source-return allowance. -/
def approximateRadicalRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

/-- Encoding cannot discard the branch descriptor or error data. -/
theorem approximateRadicalRecord_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    approximateRadicalRecordCodec.decode
      (approximateRadicalRecordCodec.encode record) = some record :=
  approximateRadicalRecordCodec.roundtrip record

/-- Every representable branch is covered, not automatically proved. -/
theorem approximateRadicalRecord_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n)
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    ∃ n : ℕ, Encodable.decode n = some record ∧
      0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm record

/-- Entire unobserved coverage tail, without truncation. -/
theorem approximateRadicalCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
