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

/-!
## A bound on the multiplicity-weighted zero sum at the anchor

Use the same pole-cleared `ξ` and `L=ξ'/ξ` as above. For a complex point
`ρ` in the open critical strip put
`K(ρ)=(2-Re ρ)/((2-Re ρ)²+(Im ρ)²)`. Let `S` be any finite set of
distinct actual zeros of ξ. If every integer weight `k(ρ)≥0` is at most
the analytic order of ξ at `ρ`, then

`Σ_{ρ∈S} k(ρ) K(ρ) ≤ L(2) < 1/2`.

Indeed, take real parts in the centered Hadamard sum above. Each paired
term is `(2-ρ)⁻¹+(2-(1-ρ))⁻¹`. Its real part is the sum of the two
positive `K` terms. Reflection preserves analytic order. Expanding the
pair sum with multiplicities gives the sum over the entire actual
divisor. Absolute convergence also follows directly from the strip
bound and `Σ |ρ-1/2|⁻²<∞`. Dropping any nonnegative residual weights
gives the first inequality.

Logarithmically differentiate the actual completion at `s=2` to get
`L(2)=3/2-(log π+γ_E)/2-Σ_{n≥1} Λ(n)/n²`, with Euler's constant
`γ_E` and the von Mangoldt function `Λ`. The terms `1/2+1` come
from the two pole-clearing factors. The gamma term uses
`Γ'(1)/Γ(1)=-γ_E`, as in Mathlib's `Complex.digamma_one` and
[DLMF 5.4.12](https://dlmf.nist.gov/5.4#E12). The Euler term is the
same absolutely convergent series used in the uncompleted anchor
bound above. Keeping all powers of 2 and 3 yields a lower bound
`(log 2)/3+(log 3)/8` on that series by two geometric sums.

The increasing sequence `H_n-log(n+1)` tends to `γ_E` and starts
at `1-log 2`. Monotonicity follows by integrating `1/x` on
`[n+1,n+2]`. Using `π>3` now gives
`L(2)<1+(log 2)/6-(5/8)log 3<1/2`. For the last inequality,
strict convexity of `1/x` gives the trapezoid upper bound
`log 2<3/4` on `[1,2]` and the midpoint lower bound
`log 3>1` on `[1,3]`.

The quartet `1/2±1/4±3i` from the derivative test contributes at
least `2(20/169+28/193)=17184/32617>1/2` if each of its points is
present. Even as a sub-divisor with other roots present, it exceeds
the bound. More generally, any off-line nonreal zero of height at
most 3 would supply a quartet under reflection and conjugation.
Write its horizontal displacement as `α` and take one copy of each
of its four distinct points. Their combined `K` term decreases as
the common absolute height increases, since each numerator
`2-Re ρ` is positive and independent of height. At height 3 the
combined term is `6A/(A²+36α²)` with `A=45/4-α²`. As
`0≤α²≤1/4`, `A≥11` and
`A²+36α²=2025/16+(27/2)α²+α⁴≤130`. Thus the contribution is at
least `33/65>1/2`. The existing centered Mellin height-five
exclusion gives a separate location check via Euler–Maclaurin
remainder estimates in `CriticalStripFiveHeightSeed.lean`.
The weighted inclusion bound here applies at arbitrary heights.

For the normalized source `F(z)=ξ(1/2+iz)/ξ(2)` at `a=-3i/2`,
the bound is on `Im (F'/F)(a)`. Scalar normalization and a real
spectral exponential slope leave this imaginary derivative unchanged.
For an exact germ return
`G=e^h F`, use the corrected observation
`Im ((G'/G)(a)-h'(a))` with differentiable `h` at `a`.
A candidate inventory still needs a proof of its full point and weight
agreement, including coverage of every actual zero at all heights.

The separate signed Möbius identity
`pickupCross_eq_observed_sub_surplus_add_defect` at `073508598443`
keeps ordered graph surplus and the remaining signed defect
explicit. The `K` sum here has nonnegative weights on the analytic
divisor. A transfer from graph pickup to this sum requires a
source-preserving proof of the point and weight map.

This section records an analytic derivation. Lean elaboration,
kernel replay and transitive axiom audit were NOT_RUN.
-/

/-!
## Explicit tail and a test for missing zero multiplicity

Use the completed source and `K(ρ)` above. Write `m(ρ)=ord_ρ ξ` for each
distinct actual zero. The completion factors are nonzero in the open strip,
so these are the analytic orders of ζ there. The head at height `T`
contains both signs and includes every point with `|Im ρ|≤T`. Let
`W(T)=Σ_{|Im ρ|>T} m(ρ) K(ρ)` be the remaining anchor mass.

### An explicit enclosure for the tail

For `T≥e` define the positive-height count
`N(T)=Σ_{0<Im ρ≤T} m(ρ)`, and put

```
C₁ = 0.11200,   C₂ = 0.12567,   C₃ = 3.77417
E(T) = C₁ log T + C₂ log log T + C₃
P(T) = (1 + log(T/(2π))) / (2π T)
Q(T) = (2 E(T) + (C₁ + C₂/log T)/2) / T²
B₋(T) = 3 T²/(T²+3) · max(0, P(T)-Q(T))
B₊(T) = 3 (P(T)+Q(T)).
```

Then `B₋(T)≤W(T)≤B₊(T)`. The count input is the second estimate in
[Bellotti–Wong, arXiv:2412.15470v2, Theorem 1.1](https://arxiv.org/html/2412.15470v2#S1.Thmtheorem1).
It bounds `|N(u)-M(u)|` by `E(u)` for `u≥e`, with
`M(u)=u log(u/(2πe))/(2π)`. Section 3 counts orders by the argument
principle. At a zero ordinate the closed count is the right limit
of counts taken on contours avoiding zeros, since the divisor is locally
finite in the bounded strip. The continuous error bound passes to that
limit. The paper's completion differs by the nonzero factor 2.

Put `S₂(T)=Σ_{Im ρ>T} m(ρ)/(Im ρ)²`. Integrating `2/u³` from each
included ordinate to infinity and summing the nonnegative integrals gives
`S₂(T)=2∫_T^∞ (N(u)-N(T))/u³ du`. A zero at height exactly `T` is
subtracted in `N(T)` with its full order. Replacing `N` by `M`
gives `P(T)` by integration by parts using
`M'(u)=log(u/(2π))/(2π)`. The absolute error is bounded by
`E(T)/T²+2∫_T^∞ E(u)/u³ du`. Another integration by parts expresses
this as `2E(T)/T²+∫_T^∞ E'(u)/u² du`, which is at most `Q(T))
because `E'(u)≤(C₁+C₂/log T)/u` for `u≥T`. The boundary terms at
infinity vanish by the stated count estimate and the growth of `E`.

For each positive-height representative `ρ=1/2+α+iγ`, pair it with
`1-ρ` and keep their common order. As above the two `K` terms sum
to `3 Re(1/q)` for `q=(3/2)²-(ρ-1/2)²=A+iB`. Here
`A=γ²+9/4-α²>γ²` and `B²=4α²γ²`, so
`γ² < A+B²/A ≤ γ²+9/4+3α² ≤ γ²+3`.
Since `Re(1/q)=1/(A+B²/A)`, the pair contributes between
`3/(γ²+3)` and `3/γ²` per unit of the common order. The
ratio `γ²/(γ²+3)` is at least `T²/(T²+3)` in the strict tail.
Thus `3T²/(T²+3)·S₂(T)≤W(T)≤3S₂(T)`, giving the enclosure.
Each positive ordinate contributes one representative per reflected
pair, including critical-line pairs with one point of each sign.

### Test for a finite inventory

At `T≥e`, assign integers `k(ρ)` to distinct verified actual zero
locations in the closed head, with `0≤k(ρ)≤m(ρ)`. Extend `k` by zero
at unrecorded locations. Let `H=Σ_{|Im ρ|≤T} k(ρ)K(ρ)`. Given certified
intervals `L(2)∈[l₋,l₊]` and `H∈[h₋,h₊]`, put

```
d₋ = max(0, l₋-h₊-B₊(T))
d₊ = l₊-h₋-B₋(T).
```

The missing weighted mass `D=Σ_{|Im ρ|≤T}(m(ρ)-k(ρ))K(ρ)` equals
`L(2)-H-W(T)`, so `d₋≤D≤d₊`. If `d₋>0`, at least one unit of
analytic order is missing. If `d₊<d₋`, the enclosures or inventory
premises are inconsistent. For consistent inputs, the total missing
multiplicity is at most `floor((1+T²)d₊)`. Indeed, for
`x=2-Re ρ∈(1,2)`, a single missing unit costs at least
`x/(x²+T²)≥1/(1+T²)`, since this function of `x` is increasing on
`[1,2]` when `T≥e`. In particular `d₊<1/(1+T²)` certifies that
every point and its full analytic order are present through `T`.
An order-two point recorded once has a deficit of one even if its
location already appears. For an exact collision without the inclusion
premise, consider critical-line pairs at heights ±x of order one and
±y of order two. Their respective masses are `3/(x²+9/4)` and
`6/(y²+9/4)`, equal when `y²=2x²+9/4`. The test needs source-certified
inclusion even when an inventory's scalar mass is known exactly.

The same upper test can certify a smaller head through `T` from an
inventory through `U≥T`. Use its `d₊` at `U` and the per-unit
minimum at `T`, since the larger head deficit includes every deficit
through `T` with nonnegative weights. The interval test can remain
inconclusive, including when tail uncertainty exceeds the mass of one
missing unit. The anchor can be enclosed independently using the Euler
formula above. After `J≥2` terms its Euler sum has omitted mass at most
`(1+log J)/J` by `Λ(n)≤log n` and the integral of `log x/x²`.
With `H_J` the `J`th harmonic number, the interval
`[H_J-log(J+1), H_J-log J]` for Euler's constant and certified log
bounds enclose the other terms.

This bounded test consumes exact source identification and one-sided
analytic orders. It gives a route to coverage tests for the same
modulus-one zero divisor in #1806 and #1807. The ordered signed Möbius
surplus of #1815 plays no role in these estimates. The argument is
analytic exposition. No inventory or numerical enclosure was tested.
Lean elaboration, kernel replay and transitive axiom audit were NOT_RUN.
-/
