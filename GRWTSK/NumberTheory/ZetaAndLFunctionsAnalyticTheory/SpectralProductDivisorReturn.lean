/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteSpectralProductMultiplicity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroCountCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantCertification
import Mathlib.NumberTheory.LSeries.Dirichlet

/-!
# Analytic finite spectral divisors and conditional arithmetic return

RP-OC-08 consumes RP-OC-04's analytic unit transfer, RP-OC-06's positive-divisor
count consumer, and RP-OC-10's existing primitive-Dirichlet critical-strip target.
The divisor weights below are PROVED equal to analytic orders of the finite
model. An arbitrary root-location list does not supply that fact.

Source identification on each domain and coverage of every arithmetic zero are
explicit unsupplied premises. There is no arithmetic operator construction,
contour algorithm, Montel/Hurwitz limit theorem, completed-source adapter, or
proof of GRH here. No arithmetic term is deleted or replaced by a finite model.

The imported arithmetic coordinate is 1/2 + I*z, the negative of Program 8's
original spectral coordinate. Accordingly s=2 has anchor -3*I/2 in this module.
The finite product theorems allow either nonzero anchor sign. No evenness of a
nonreal-character source is assumed. The actual uncompleted zeta source yields
an anchor residual and a necessary correction for a real-slope spectral return.
Elaboration, kernel replay, axiom audit, and independent review NOT_RUN.
Coordination: math#1805, #1800, #1806, #1807.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter Set

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum
open GRWTSK.ZeroCountCertificates
open GRWTSK.ResonanceDeterminantReturn
open GRWTSK.NumberTheory.WeilDenseCertificateReduction

variable {ι : Type*} [Fintype ι]

/-- Distinct locations in the requested domain, with exact occurrence weights. -/
def spectralDivisor (λ : ι → ℝ) (U : Set ℂ) : FiniteDivisor := by
  classical
  exact {
    support := (rootSupport λ).filter (fun z => z ∈ U)
    multiplicity := occurrenceCount λ
    positive := by
      intro z hz
      exact (occurrenceCount_pos_iff λ z).mpr
        ((mem_rootSupport λ z).mp (Finset.mem_filter.mp hz).1) }

/-- Actual zero-set identification for the finite normalized product. -/
theorem divisor_identifies_model (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) (U : Set ℂ) :
    (spectralDivisor λ U).IdentifiesZeros (normalizedExpProduct λ β c) U := by
  classical
  intro z
  change z ∈ (rootSupport λ).filter (fun w => w ∈ U) ↔
    z ∈ U ∧ normalizedExpProduct λ β c z = 0
  rw [Finset.mem_filter, mem_rootSupport, normalizedExpProduct_zero_iff λ hβ]
  exact and_comm

/-- This additional theorem, absent from a bare IdentifiesZeros predicate,
identifies every weight with the analytic order of the actual model. -/
theorem divisor_multiplicity_eq_order (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) (U : Set ℂ) :
    ((spectralDivisor λ U).multiplicity z : ℕ∞) =
      analyticOrderAt (normalizedExpProduct λ β c) z :=
  (analyticOrderAt_normalizedExpProduct λ hβ c z).symm

/-- The global multiplicity count is the index size, not the number of locations. -/
theorem divisor_totalCount_univ (λ : ι → ℝ) :
    (spectralDivisor λ Set.univ).totalCount = Fintype.card ι := by
  classical
  simpa [FiniteDivisor.totalCount, spectralDivisor] using sum_occurrenceCount λ

theorem divisor_allReal (λ : ι → ℝ) (U : Set ℂ) :
    (spectralDivisor λ U).AllReal := by
  classical
  intro z hz
  have hz' : z ∈ rootSupport λ := (Finset.mem_filter.mp hz).1
  obtain ⟨j, rfl⟩ := (mem_rootSupport λ z).mp hz'
  simp

/-- Reuse the existing RP-OC-06 count theorem rather than a new saturation notion. -/
theorem divisor_count_saturation (λ : ι → ℝ) (U : Set ℂ) :
    (spectralDivisor λ U).realCount = (spectralDivisor λ U).totalCount :=
  (spectralDivisor λ U).count_saturation_of_allReal (divisor_allReal λ U)

/-- Transfer locations through an exact source return on the same domain. -/
theorem divisor_identifies_source (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F) :
    (spectralDivisor λ U).IdentifiesZeros F U := by
  intro z
  constructor
  · intro hz
    obtain ⟨hzU, hzG⟩ := (divisor_identifies_model λ hβ c U z).mp hz
    exact ⟨hzU, (zero_iff_of_exactReturnOn hret hzU).mp hzG⟩
  · rintro ⟨hzU, hzF⟩
    exact (divisor_identifies_model λ hβ c U z).mpr
      ⟨hzU, (zero_iff_of_exactReturnOn hret hzU).mpr hzF⟩

/-- Supply the analytic-order hypothesis of the general RP-OC-04 transfer
 theorem with the actual orders just derived for the finite spectral model. -/
theorem divisor_returns_source_with_multiplicity (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hU : IsOpen U) (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F)
    (he : ∀ z ∈ U, AnalyticAt ℂ (fun w => Complex.exp (h w)) z)
    (hF : ∀ z ∈ U, AnalyticAt ℂ F z) :
    (spectralDivisor λ U).IdentifiesZeros F U ∧
      ∀ z ∈ (spectralDivisor λ U).support,
        analyticOrderAt F z = ((spectralDivisor λ U).multiplicity z : ℕ∞) :=
  finiteDivisor_source_return (spectralDivisor λ U) hU hret he hF
    (divisor_identifies_model λ hβ c U)
    (fun z _ => (divisor_multiplicity_eq_order λ hβ c z U).symm)

/-- Consume the same source-identified divisor through RP-OC-06's saturation rule. -/
theorem source_reality_of_local_return (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F) :
    ∀ z ∈ U, F z = 0 → z.im = 0 :=
  (spectralDivisor λ U).source_reality_of_saturation F U
    (divisor_identifies_source λ hβ c hret) (divisor_count_saturation λ U)

/-- Explicit sign-convention check for the imported spectral coordinate. -/
theorem arithmeticCoordinate_negative_anchor :
    arithmeticCoordinate (anchor (-(3 / 2 : ℝ))) = 2 := by
  apply Complex.ext <;>
    norm_num [arithmeticCoordinate, anchor, Complex.mul_re, Complex.mul_im]

private theorem zeta_logDeriv_re_le_at_two :
    (logDeriv riemannZeta (2 : ℂ)).re ≤ -(Real.log 2 / 4) := by
  let f : ℕ → ℂ := fun n => (ArithmeticFunction.vonMangoldt n : ℂ)
  have htwo : 1 < (2 : ℂ).re := by norm_num
  have hs : Summable (LSeries.term f (2 : ℂ)) :=
    ArithmeticFunction.LSeriesSummable_vonMangoldt htwo
  have hterm (n : ℕ) : (LSeries.term f (2 : ℂ) n).re =
      ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ 2 := by
    rw [LSeries.term_of_ne_zero' (by norm_num : (2 : ℂ) ≠ 0), Complex.cpow_two]
    change (((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) / (n : ℂ) ^ 2).re = _
    rw [← Complex.ofReal_natCast, ← Complex.ofReal_pow, ← Complex.ofReal_div, Complex.ofReal_re]
  have hsum : Real.log 2 / 4 ≤ (LSeries f (2 : ℂ)).re := by
    rw [LSeries, Complex.re_tsum hs]
    have hle := (Complex.hasSum_re hs.hasSum).summable.le_tsum 2 (fun n _ => by
      rw [hterm]
      exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (sq_nonneg _))
    have htwoTerm : (LSeries.term f (2 : ℂ) 2).re = Real.log 2 / 4 := by
      rw [hterm, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
      norm_num
    simpa only [htwoTerm] using hle
  have hz : LSeries f (2 : ℂ) = -logDeriv riemannZeta (2 : ℂ) := by
    simpa only [logDeriv_apply, neg_div] using
      ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div htwo
  rw [hz, Complex.neg_re] at hsum
  linarith

private theorem hasDerivAt_arithmeticCoordinate (z : ℂ) :
    HasDerivAt arithmeticCoordinate Complex.I z :=
  (hasDerivAt_const_mul (x := z) Complex.I).const_add (1 / 2 : ℂ)

/-- For the actual uncompleted zeta source, the term at 2 in the von Mangoldt
series gives a strictly negative imaginary logarithmic derivative at the anchor. -/
theorem zeta_logDeriv_im_le_at_anchor :
    (logDeriv (riemannZeta ∘ arithmeticCoordinate) (anchor (-(3 / 2 : ℝ)))).im ≤
      -(Real.log 2 / 4) := by
  have hz : DifferentiableAt ℂ riemannZeta (arithmeticCoordinate (anchor (-(3 / 2 : ℝ)))) := by
    rw [arithmeticCoordinate_negative_anchor]
    exact differentiableAt_riemannZeta (by norm_num)
  have ha := hasDerivAt_arithmeticCoordinate (anchor (-(3 / 2 : ℝ)))
  rw [logDeriv_comp hz ha.differentiableAt, arithmeticCoordinate_negative_anchor, ha.deriv]
  simpa [Complex.mul_im] using zeta_logDeriv_re_le_at_two

/-- For real `c` the logarithmic-derivative discrepancy is at least
`log 2 / 4`, uniformly in the spectrum. -/
theorem zeta_logDeriv_anchor_residual (λ : ι → ℝ) (c : ℂ) :
    Real.log 2 / 4 + c.im + (3 / 2 : ℝ) * anchorMass λ (-(3 / 2 : ℝ)) ≤
      ‖logDeriv (normalizedExpProduct λ (-(3 / 2 : ℝ)) c) (anchor (-(3 / 2 : ℝ))) -
        logDeriv (riemannZeta ∘ arithmeticCoordinate) (anchor (-(3 / 2 : ℝ)))‖ := by
  refine le_trans ?_ ((le_abs_self _).trans (Complex.abs_im_le_norm _))
  rw [Complex.sub_im, im_logDeriv_normalizedExpProduct_anchor λ (by norm_num : -(3 / 2 : ℝ) ≠ 0)]
  linarith [zeta_logDeriv_im_le_at_anchor]

/-- A local exponential return to uncompleted zeta must supply the missing
imaginary slope at the anchor, in addition to its value there. -/
theorem zeta_anchor_correction_of_exactReturnOn (λ : ι → ℝ) (c : ℂ) {U : Set ℂ}
    {h : ℂ → ℂ} (hU : IsOpen U) (ha : anchor (-(3 / 2 : ℝ)) ∈ U)
    (hh : DifferentiableAt ℂ h (anchor (-(3 / 2 : ℝ))))
    (hret : ExactReturnOn U (normalizedExpProduct λ (-(3 / 2 : ℝ)) c)
      h (riemannZeta ∘ arithmeticCoordinate)) :
    Real.log 2 / 4 + c.im + (3 / 2 : ℝ) * anchorMass λ (-(3 / 2 : ℝ)) ≤
      (deriv h (anchor (-(3 / 2 : ℝ)))).im := by
  have hz : DifferentiableAt ℂ riemannZeta (arithmeticCoordinate (anchor (-(3 / 2 : ℝ)))) := by
    rw [arithmeticCoordinate_negative_anchor]
    exact differentiableAt_riemannZeta (by norm_num)
  have hF := hz.comp (hasDerivAt_arithmeticCoordinate (anchor (-(3 / 2 : ℝ)))).differentiableAt
  have hF0 : (riemannZeta ∘ arithmeticCoordinate) (anchor (-(3 / 2 : ℝ))) ≠ 0 := by
    rw [Function.comp_apply, arithmeticCoordinate_negative_anchor]
    exact riemannZeta_ne_zero_of_one_lt_re (by norm_num)
  have heq : normalizedExpProduct λ (-(3 / 2 : ℝ)) c =ᶠ[𝓝 (anchor (-(3 / 2 : ℝ)))]
      (fun z => Complex.exp (h z) * (riemannZeta ∘ arithmeticCoordinate) z) := by
    filter_upwards [hU.mem_nhds ha] with z hzU
    exact hret hzU
  have hlog := (logDeriv_congr_nhds heq).eq_of_nhds
  have him := congrArg Complex.im (hlog.trans (logDeriv_exp_mul hh hF hF0))
  rw [Complex.add_im, im_logDeriv_normalizedExpProduct_anchor λ (by norm_num : -(3 / 2 : ℝ) ≠ 0)]
    at him
  linarith [zeta_logDeriv_im_le_at_anchor]

/-- Conditional return to the existing RP-OC-10 per-character target.
Coverage is over every open-strip zero at every height, not finitely many tests.
The exact local identities are unsupplied arithmetic premises, not new axioms. -/
theorem satisfiesGRH_of_local_spectral_returns
    (source : PrimitiveDirichletSource)
    (d : ℕ → ℕ) (λ : (n : ℕ) → Fin (d n) → ℝ)
    (β : ℕ → ℝ) (c : ℕ → ℂ) (U : ℕ → Set ℂ) (h : ℕ → ℂ → ℂ)
    (hβ : ∀ n, β n ≠ 0)
    (hret : ∀ n, ExactReturnOn (U n) (normalizedExpProduct (λ n) (β n) (c n))
      (h n) (fun z => source.lFunction (arithmeticCoordinate z)))
    (hcover : ∀ s : ℂ, 0 < s.re → s.re < 1 → source.lFunction s = 0 →
      ∃ n, spectralCoordinate s ∈ U n) : source.SatisfiesGRH := by
  intro s hleft hright hzero
  obtain ⟨n, hn⟩ := hcover s hleft hright hzero
  have hspec : source.lFunction (arithmeticCoordinate (spectralCoordinate s)) = 0 := by
    simpa only [arithmeticCoordinate_spectralCoordinate] using hzero
  have hreal := source_reality_of_local_return (λ n) (hβ n) (c n) (hret n)
    (spectralCoordinate s) hn hspec
  have hline := (arithmeticCoordinate_on_line_iff (spectralCoordinate s)).mpr hreal
  simpa only [arithmeticCoordinate_spectralCoordinate] using hline

end GRWTSK.NumberTheory.SpectralProductDivisorReturn

/-!
## The second logarithmic derivative of completed zeta at the anchor

For the pole-cleared Riemann function
`ξ(s) = (s(s-1)/2) π^(-s/2) Γ(s/2) ζ(s)`, put `L = ξ'/ξ`.
Then `|L'(2)| ≤ (2/3) Re L(2)`. This is an analytic proof for the
modulus-one source. Lean formalization of this section remains open.

The entire extension is `1/2 + (s(s-1)/2) completedRiemannZeta₀(s)`,
the definition `GRWTSK.NumberTheory.Zeta.CompletedQuotientSource.xi`.
Mathlib's `completedRiemannZeta_eq` gives the two pole terms. Their contribution
after multiplication by `s(s-1)/2` is exactly `1/2`. The full gamma and
zeta factors enter through this identity. The classical inputs are the
order-one Hadamard product for this ξ, the identification of its zeros with
the nontrivial zeros of ζ including multiplicity, their critical strip, and
`ξ(s)=ξ(1-s)` and `ξ(conj s)=conj ξ(s)`.
See [Voros, 2003, §3.1 and §5, pp. 674 and 679–680](https://www.numdam.org/item/10.5802/aif.1955.pdf)
and [DLMF 25.4.3–4](https://dlmf.nist.gov/25.4#E3).

Each such zero has `|Im ρ| > 1/2`. For `σ = Re s > 0` and `s ≠ 1`,
partial summation of the zeta series gives
`ζ(s)/s = 1/(s-1) - ∫₁∞ {x} x^(-s-1) dx`. Indeed integrate the step
function `floor x` for `σ>1`, split `floor x = x - {x}`, and continue
using local uniform absolute convergence of the fractional-part integral
on `σ>0`. On each unit interval the weight `x^(-σ-1)` is decreasing.
Pairing `x=n+u` and `x=n+1-u` for `0≤u≤1/2` shows that the weighted
integral of `{x}` on it is at most half the integral of the weight.
Thus the modulus of the fractional-part integral is at most `1/(2σ)`.
For `1/2≤σ≤1` and `|Im s|≤1/2`, `|s-1|≤1/√2<2σ`, so the two
terms cannot cancel. Reflection of ξ zeros under `s↦1-s` covers the
other half of the strip. This also gives `ξ(1/2)≠0`.

Write `t=s-1/2`. In the centered Hadamard product, pair a zero
`w=ρ-1/2` with `-w`, choosing once per pair with `Im w>0` and
retaining multiplicity. The two genus-one factors multiply to
`1-t²/w²`. The remaining linear exponential has zero slope by
evenness at `t=0` and the nonzero value there. The order-one product
has `Σ |w|⁻²<∞`. Hence, on any compact zero-free disk about `s=2`,
the two series
`L(s)=Σ 2t/(t²-w²)` and
`L'(s)=Σ [2/(t²-w²)-4t²/(t²-w²)²]` follow by termwise
logarithmic differentiation. The paired terms and their derivatives
are bounded uniformly in the tail by a constant times `|w|⁻²`.
The Euler product gives `ζ(2)≠0`, so `ξ(2)≠0` and such a disk exists.
Conjugation makes both `L(2)` and `L'(2)` real.

Set `t=3/2`. For a paired zero write `w=α+iγ` and
`q=t²-w²=A+iB`, with `A=t²-α²+γ²` and `B=-2αγ`. The strip and
height bound give `|α|<1/2<γ`, so `A>t²` and
`A-|B| ≥ 2+γ²-γ ≥ 7/4`. Put `u=Re(1/q)=A/(A²+B²)>0` and
`v=Re(1/q²)=(A²-B²)/(A²+B²)²`. Then
`0<v≤1/(A²+B²)=u/A<u/t²`. The real pair contribution to
`L'(2)` is `2u-4t²v`, whose absolute value is at most `2u`,
the pair contribution to `L(2)/t`. Sum the absolutely convergent
series to obtain the claimed bound.

For a real-slope finite model with `a=-3i/2` and `D=G'/G`,
`D'(a)=-Σ_j(a-λ_j)⁻²` and `Im D(a)=(3/2) anchorMass`.
For the normalized source `ξ(1/2+iz)/ξ(2)` these quantities are
`-L'(2)` and `Re L(2)`, respectively. Locally uniform convergence
near `a` would transfer the finite bound by convergence of the
first two derivatives at the nonzero anchor. The completed source
passes this necessary test. A reflection-symmetric off-line quartet
`1/2 ± 1/4 ± 3i` also satisfies the pair inequalities. The polynomial
with roots `1/4, 3/4` preserves strip and reflection symmetry and
exceeds the absolute bound by `64/1225` at `s=2`.

The surplus-path result `exists_path_not_source_block` in
MoebiusSoficBlockObstruction.lean (math#1815, `e23be8e335fc`) shows
that a fixed finite graph covering every signed Möbius prefix admits a
decoded path with no original contiguous placement. A graph used as an
overcover therefore needs a proved arithmetic check on the paths that
contribute to its proposed spectral product. The ξ estimate starts
with the actual completed divisor. Constructing that product from
arithmetic data, proving analytic source identification, and supplying
all-height zero coverage remain open in math#1805, #1800, #1806 and #1807.
-/
