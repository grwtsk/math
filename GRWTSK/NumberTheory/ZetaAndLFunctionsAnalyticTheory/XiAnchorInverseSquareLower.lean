/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAnchorActualTail

/-!
# A lower enclosure of the actual positive inverse-square tail

The Lean statements compare the order count in an exact positive-height band
of the original pole-cleared ξ with its full positive inverse-square tail.
They retain inverse-square summability as a separate input.

## Analytic supplier of the band count

For a cutoff `T ≥ e`, put `U=max(64,T)` and `l=log U`. Let `N(v)`
count the actual positive zeros with `0<Im ρ≤v`, by analytic order. Use
the second estimate of
[Bellotti–Wong, arXiv:2412.15470v2, Theorem 1.1](https://arxiv.org/html/2412.15470v2#S1.Thmtheorem1)
with main term `M(v)=v log(v/(2πe))/(2π)` and error
`E(v)=0.11200 log v+0.12567 log log v+3.77417`.
Their argument-principle count in §3 is for the completion `2ξ`,
which has the same zeros and orders. Equivalently, the completion
prefactor is analytic and nonzero in the open critical strip.
Local finiteness gives the closed count at occupied ordinates by
taking right limits.

For `v≥e`, `log log v≤log v` gives `E(v)≤(log v)/4+4`. Since
`l≥log 64=6 log 2>4`, the sum `E(2U)+E(U)` is at most
`l/2+33/4≤3l`. Here `2/3<log 2<1` follows from the strict midpoint
lower bound and the maximum of `1/x` on `[1,2]`, respectively.
Also `π<4` and `log 2<1` give
`M(2U)-M(U)=U(l+log(2/π)-1)/(2π)≥U(l-2)/8≥Ul/16`.
Consequently `N(2U)-N(U)≥(U/16-3)l≥Ul/64`.
The difference counts exactly `U<Im ρ≤2U`, with multiplicity at
the right endpoint and no contribution from the left endpoint.
The checked comparison below turns this count into
`S₂(T)≥log U/(256U)>1/(64U)`.

For a separate summability argument, the same count estimate gives
`N(v)≤v log v` for `v≥64` using `π>3` and `E(v)≤(log v)/4+4`.
The inverse-square mass on each band `2^j U<Im ρ≤2^(j+1) U` is
at most `(2/U)·2^(-j)(log U+(j+1)log 2)`. These bounds are summable.
The remaining band `T<Im ρ≤U` has finite mass by local finiteness
in the bounded strip. The published count and this analytic proof
are separate from the Lean comparison.
-/

set_option autoImplicit false

noncomputable section

open scoped Topology

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource (xi)

/-- The complete actual ξ band with a strict lower and closed upper endpoint. -/
def xiPositiveZeroBand (A B : ℝ) : Set ℂ :=
  {ρ | xi ρ = 0 ∧ A < ρ.im ∧ ρ.im ≤ B}

/-- The order count in the exact band. The comparison proves convergence
under the inverse-square summability hypothesis. -/
def xiPositiveBandOrderCount (A B : ℝ) : ℝ :=
  ∑' ρ : xiPositiveZeroBand A B, (analyticOrderNatAt xi ρ.val : ℝ)

/-- The actual band is included pointwise in the strict positive tail.
Each unit of order in the band contributes at least `1 / B^2`. -/
theorem xiInverseSquareTail_ge_positiveBand {T A B : ℝ}
    (hT : Real.exp 1 ≤ T) (hTA : T ≤ A) (hAB : A ≤ B)
    (hsquare : Summable (xiInverseSquareTailTerm (xiPositiveTailOrder T))) :
    Summable (fun ρ : xiPositiveZeroBand A B => (analyticOrderNatAt xi ρ.val : ℝ)) ∧
      xiPositiveBandOrderCount A B / B ^ 2 ≤
        ∑' ρ : xiPositiveZeroTail T, xiInverseSquareTailTerm (xiPositiveTailOrder T) ρ := by
  let includeBand : xiPositiveZeroBand A B → xiPositiveZeroTail T :=
    fun ρ => ⟨ρ.val, ρ.property.1, hTA.trans_lt ρ.property.2.1⟩
  have hinj : Function.Injective includeBand :=
    fun _ _ h => Subtype.ext (congrArg (fun ρ : xiPositiveZeroTail T => ρ.val) h)
  let term := xiInverseSquareTailTerm (xiPositiveTailOrder T)
  have hsband : Summable (fun ρ => term (includeBand ρ)) := hsquare.comp_injective hinj
  have hTpos : 0 < T := (Real.exp_pos 1).trans_le hT
  have hBpos : 0 < B := hTpos.trans_le (hTA.trans hAB)
  have hBsq : 0 < B ^ 2 := by positivity
  have hpoint (ρ : xiPositiveZeroBand A B) :
      (analyticOrderNatAt xi ρ.val : ℝ) / B ^ 2 ≤ term (includeBand ρ) := by
    have hγ : 0 < ρ.val.im := hTpos.trans (hTA.trans_lt ρ.property.2.1)
    have hγsq : 0 < ρ.val.im ^ 2 := by positivity
    have hbound : ρ.val.im ^ 2 ≤ B ^ 2 :=
      (sq_le_sq₀ hγ.le hBpos.le).mpr ρ.property.2.2
    exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) hγsq hbound
  have horders : Summable (fun ρ : xiPositiveZeroBand A B =>
      (analyticOrderNatAt xi ρ.val : ℝ)) :=
    Summable.of_nonneg_of_le (fun _ => Nat.cast_nonneg _)
      (fun ρ => by simpa only [mul_comm] using (div_le_iff₀ hBsq).mp (hpoint ρ))
      (hsband.mul_left (B ^ 2))
  refine ⟨horders, ?_⟩
  change xiPositiveBandOrderCount A B / B ^ 2 ≤ ∑' ρ, term ρ
  have hwithin : xiPositiveBandOrderCount A B / B ^ 2 ≤
      ∑' ρ, term (includeBand ρ) := by
    rw [xiPositiveBandOrderCount, ← tsum_div_const]
    exact (horders.div_const _).tsum_le_tsum hpoint hsband
  refine hwithin.trans (tsum_comp_le_tsum_of_inj hsquare ?_ hinj)
  intro ρ
  exact div_nonneg (Nat.cast_nonneg _) (sq_nonneg _)

/-- The doubling-band count enclosure gives the stated lower bound.
In the analytic supplier above take `U=max(64,T)`. -/
theorem xiInverseSquareTail_ge_log_of_doublingBandCount {T U : ℝ}
    (hT : Real.exp 1 ≤ T) (hTU : T ≤ U)
    (hsquare : Summable (xiInverseSquareTailTerm (xiPositiveTailOrder T)))
    (hcount : U * Real.log U / 64 ≤ xiPositiveBandOrderCount U (2 * U)) :
    Real.log U / (256 * U) ≤
      ∑' ρ : xiPositiveZeroTail T, xiInverseSquareTailTerm (xiPositiveTailOrder T) ρ := by
  have hU : 0 < U := ((Real.exp_pos 1).trans_le hT).trans_le hTU
  have hband := (xiInverseSquareTail_ge_positiveBand hT hTU (by linarith : U ≤ 2 * U)
    hsquare).2
  have hquot : Real.log U / (256 * U) = (U * Real.log U / 64) / (2 * U) ^ 2 := by
    field_simp [hU.ne']
    ring
  rw [hquot]
  exact (div_le_div_of_nonneg_right hcount (sq_nonneg _)).trans hband

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
