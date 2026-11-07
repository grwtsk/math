/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Analytical source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, (3.19)--(3.20); NIST DLMF 5.4 and 5.5
(digamma special values); elementary Fourier transform of sech.
Source identity: grwtsk/math@3fcbdb243a8656a4dc67202c125a070394adfd6a.
Source reuse: WeilUniformShortWindowCoercivity.lean,
WeilGammaData.lean, CharacterWeilWindowBounds.lean.

WRITTEN_ANALYTICAL_PROOF; INDEPENDENT_REVIEW_NOT_RUN.
LEAN_CANDIDATE; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUniformShortWindowCoercivity
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# A rational-cubic all-sector short-window improvement

## Main written theorem (not claimed as a Lean-checked continuum theorem)

For every 0<T<=1/32 and every function f of finite source-form energy,
zero-extended from [-T,T], with the ORIGINAL physical L²(dt) metric,
the canonical full pole-inclusive zeta Weil form and every individual
primitive nonprincipal Dirichlet-character Hermitian Weil form satisfy

       Q_zeta,T(f) >= (1/21) ||f||²,
       Q_chi,T(f)  >= (1/21) ||f||².

The inequalities hold also for complex-valued f, before restriction
to the real odd root-detecting tests. All conductor and gamma-parity
sectors are included. For imprimitive L-functions the zero-location
question returns separately through the genuine inducing-character
Euler factor identity; no character-specific source at an inflated
conductor is introduced.

## Mathematical proof, full physical source

Let M=||f||² and E_a=integral_(r>0) kappa_a(r)
||f(.+r)-f||² dr, with
kappa_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)).
The arithmetic source sums only prime powers with log(n)<2T.
Since 2T<=1/16<log 2, their entire source contribution is ZERO
on every supported f, including the overlap endpoint.
The already proved source inventory statement is
ShortWindow.activePrimePowers_empty_of_exp_le_two.

For every r>=2T the translates are disjoint up to a null set, so
||f(.+r)-f||²=2M. The positive gamma kernel has the exact series
kappa_0(r)=sum_(j>=0) exp(-alpha_j*r) with alpha_j=2j+1/2.
By Tonelli and integration, since 2T<=1/16,

  E_0 >= 2M integral_(1/16)^infinity kappa_0(r)dr
      = 2M sum_(j>=0) exp(-alpha_j/16)/alpha_j.

The exact cubic Taylor lower polynomial, valid for every x>=0, is
p3(x)=1-x+x²/2-x³/6 <= exp(-x). Indeed the fourth derivative of
exp(-x) is positive, so its integral remainder after degree three
is nonnegative. For j=0,...,12 let x_j=(4j+1)/32.
p3'(x)=-((x-1)^2+1)/2 <0 for all x; at the last argument
p3(49/32)=8399/196608>0, so the first thirteen lower terms
are POSITIVE and the remaining TRUE exponential terms are also
nonnegative. Exact rational summation gives

  2 sum_(j=0)^12 p3(alpha_j/16)/alpha_j
    = 35793169628469661/6439406182809600 > 111/20.

Therefore the genuine archimedean source has
  E_0(f) >= (111/20) M.

Gamma parity is NOT erased. With k(r)=1/(2*cosh(r/2)),
the actual source identity is
  kappa_0(r)-kappa_1(r)=k(r),
  gammaConstant(q,1)-gammaConstant(q,0)=pi,
  2 integral_(0)^infinity k(r)dr=pi.

For finite-energy complex f let
C_f(r)=integral_R conj(f(t))*f(t+r)dt. Expanding square differences,
  (gammaConstant(q,1) M + E_1)
      -(gammaConstant(q,0) M + E_0)
    = integral_R k(r) C_f(r)dr
    = (1/(2*pi)) integral_R
        [pi/cosh(pi*xi)] * |fhat(xi)|² dxi >= 0.
Here the Fourier transform is the SOURCE convention
fhat(xi)=integral f(t)*exp(-i*xi*t)dt, so the nonnegative sech
multiplier and the full conjugate correlation are retained.
As gammaConstant(q,0)=gammaConstant(1,0)+log q,
the character archimedean forms for BOTH parities dominate
[gammaConstant(1,0)+log q]M+E_0. The existing source theorem
gammaConstant_one_zero_ge gives gammaConstant(1,0)>=-11/2.
Every primitive nonprincipal q>1 therefore satisfies
  Q_chi,T(f) >= (111/20-11/2+log q)M >= (1/20)M.

The full zeta source adds the pole
  +2|<cosh(t/2),f>|² - 2|<sinh(t/2),f>|².
It has the exact negative allowance
  2|<sinh(t/2),f>|² <= 2(sinh T-T)M <= 2T³ M
                    <= (1/16384)M.
Therefore
  Q_zeta,T(f) >= (1/20-1/16384)M >= (1/21)M.

The maximal finite-gamma-energy domain is the closed form domain
of the nonnegative jump energy on zero-extended L²[-T,T].
This is densely defined (compact smooth functions) and closed by
the difference-map/Hilbert product criterion or a form-Cauchy,
a.e.-subsequence and Fatou argument. The pole is a bounded
finite-rank perturbation on this fixed window, and all prime
translations vanish. Thus the canonical form realizations have
self-adjoint physical-L² operators A_kappa,T >= (1/21)I.
Their ACTUAL spectral semigroups satisfy
  ||exp(-s*A_kappa,T)|| <= exp(-s/21), s>=0.
This is distinct from finite Euler sign-heat, countable coverage
heat and the global theta-weighted spectral semigroup.

## Exact consumer and limits

The result discharges the genuine FULL source lower-sign component
at T<=1/32 of obligation.cofinal-full-lower and covers the primitive
character label of obligation.all-character-sectors on THESE windows.
It does not provide signs on any cofinal support family T->infinity,
the sharp odd theta-weighted half-gap, or RH/Dirichlet GRH.
The source gamma-parity Fourier identity and the infinite jump
lower bound are WRITTEN proofs, not Lean formalization results;
the scalar theorems below keep their analytic inputs visible.
Independent mathematical review and compilation are NOT_RUN.

Representable exact rational observations together with source ID,
conductor, parity, support, error bounds and certificate descriptor
reuse ShortWindow.shortWindowRecordCodec and its roundtrip.
The complete countable unobserved coverage tail is preserved by
ShortWindow.shortWindowCoverage_tail. Neither transports the
actual infinite-dimensional functions as finite data nor proves
an arithmetic sign through coding or coverage alone.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow.CubicRefinement

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

/-- The cubic lower Taylor polynomial for exp(-x). -/
def cubicMinorant (x : ℚ) : ℚ :=
  1 - x + x ^ 2 / 2 - x ^ 3 / 6

/-- The exact argument alpha_j/16, with alpha_j=2j+1/2. -/
def argument (j : ℕ) : ℚ :=
  ((4 * j + 1 : ℕ) : ℚ) / 32

/-- The source-dependent finite contribution, before the positive infinite
gamma remainder and without floating-point evaluation. -/
def thirteenTermFloor : ℚ :=
  ∑ j ∈ Finset.range 13,
    4 * cubicMinorant (argument j) / ((4 * j + 1 : ℕ) : ℚ)

/-- The last retained Taylor term is genuinely positive. -/
theorem endpoint_pos : 0 < cubicMinorant (49 / 32) := by
  norm_num [cubicMinorant]

/-- Each retained contribution is positive, not a sampled approximation. -/
theorem retained_pos (j : Fin 13) : 0 < cubicMinorant (argument j.val) := by
  fin_cases j <;> norm_num [cubicMinorant, argument]

/-- Exact all-thirteen-term identity: ordinary rational arithmetic. -/
theorem thirteenTermFloor_exact :
    thirteenTermFloor =
      35793169628469661 / 6439406182809600 := by
  norm_num [thirteenTermFloor, cubicMinorant, argument, Finset.sum_range_succ]

theorem thirteenTermFloor_gt : (111 / 20 : ℚ) < thirteenTermFloor := by
  rw [thirteenTermFloor_exact]
  norm_num

/-- The actual negative odd zeta pole is charged before concluding the
short-window floor. The 111/20 integral supplier is separately identified
in the written source proof; it is not inferred from this scalar lemma. -/
theorem zeta_refined_scalar_floor
    (M jump pole value : ℝ) (hM : 0 ≤ M)
    (hjump : (111 / 20 : ℝ) * M ≤ jump)
    (hpole : pole ≤ (1 / 16384 : ℝ) * M)
    (hvalue : value = gammaConstant 1 0 * M + jump - pole) :
    (1 / 21 : ℝ) * M ≤ value := by
  have hgammaM :=
    mul_le_mul_of_nonneg_right gammaConstant_one_zero_ge hM
  rw [hvalue]
  linarith

/-- Actual source gamma parity is not replaced. This conditional scalar
assembly consumes the separately proved Fourier-sech domination on
the true physical source; its analytic proof is above, NOT in Lean. -/
theorem primitive_refined_scalar_floor
    (q a : ℕ) (hq : 0 < q) (_ha : a ≤ 1)
    (M evenJump parityJump value : ℝ) (hM : 0 ≤ M)
    (heven : (111 / 20 : ℝ) * M ≤ evenJump)
    (hparity : (gammaConstant 1 0 + Real.log (q : ℝ)) * M + evenJump ≤
      gammaConstant q a * M + parityJump)
    (hvalue : value = gammaConstant q a * M + parityJump) :
    (1 / 21 : ℝ) * M ≤ value := by
  have hgammaM :=
    mul_le_mul_of_nonneg_right gammaConstant_one_zero_ge hM
  have hqReal : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  have hlog : 0 ≤ Real.log (q : ℝ) := Real.log_nonneg hqReal
  have hlogM := mul_nonneg hlog hM
  rw [hvalue]
  nlinarith

/-! Reuse the source's explicit heat and lossless interfaces;
do not construct a second codec or a replacement sign heat. -/

/-- A finite dependent record retains ALL its labeled exact data. -/
theorem shortWindow_data_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    ShortWindow.shortWindowRecordCodec.decode
        (ShortWindow.shortWindowRecordCodec.encode record) =
      some record :=
  ShortWindow.shortWindowRecord_roundtrip record

/-- Exact remaining coverage mass after any inspected finite prefix. -/
theorem shortWindow_unobserved_mass (J : ℕ) :
    (∑' k : ℕ,
      GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage.stageCoverageWeight
        (J + k)) = (1 / 2 : ℝ) ^ J :=
  ShortWindow.shortWindowCoverage_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ShortWindow.CubicRefinement
