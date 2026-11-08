/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
Source baseline grwtsk/math@ce17d0c21026a26e4ed27012840b51cb7a73034f.
Analytic source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20).
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoOcticSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialPrimeDiffusion
import Mathlib

/-!
# A genuine source-indexed octic positive Weil prime diffuser

The original positive absolute prime-power operator is unchanged:
K g(t)=sum_{q in activePrimePowers 2} w_q[
  1_I(t+log q)*g(t+log q)+1_I(t-log q)*g(t-log q)],
on I=[-2,2], and K g=0 outside I.
The source prime-weight, phase, support, log and normalization
are the original LowSchur and OddRootProjection definitions.

Inside I use the new positive octic ground h from
WeilRadiusTwoOcticSchurData. Outside I extend it by the positive
constant 1. This does NOT modify K, which only reads supported
neighbor values. The Doob--Schur diffuser is exactly
  P g(t)=K(h*g)(t)/( (859/100)*h(t)).
Its source return is exact. It maps nonnegative source densities
to nonnegative densities on all of R. When the independently checked
512-cell source-row estimate K h<=859/100*h is transported to the
continuum source, P 1<=1 (sub-Markov). Mass conservation is NOT
asserted: killing on the physical support boundary is retained.

The actual signed Dirichlet prime term is dominated by K through
weighted Young and |Re(conj(chi(n))*C_f)|<=|C_f|, but IS NOT K.
The physical L2 norm, all character phases, parity and any scalar
zeta pole remain independent source objects. The full integral
Schur/interval cover is written in WeilRadiusTwoOcticSchurData;
its Lean elaboration, kernel check and analytic review are NOT_RUN.
No zeta 65x65 sign or unbounded support positivity is implied.
-/

set_option autoImplicit false
noncomputable section
open Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticPrimeDiffusion

open LowSchur OddSineForm OddRootProjection
open RadiusTwoPolynomialPrimeDiffusion
open RadiusTwoOcticSchurData

/-- Globally positive extension of the ACTUAL source-window octic
weight; exterior values cannot affect any literal source prime row. -/
def ground (t : ℝ) : ℝ :=
  if t ∈ Icc (-2 : ℝ) 2 then RadiusTwoOcticSchurData.ground t
  else 1

private theorem ground_cubic_nonneg {u : ℝ}
    (hu0 : 0 <= u) (hu1 : u <= 1) :
    0 <= (12476:ℝ)-25461*u+42115*u^2-20110*u^3 := by
  have hu : 0 <= 1-u := by linarith
  have ident :
      (12476:ℝ)-25461*u+42115*u^2-20110*u^3 =
      12476*(1-u)^3+3*3989*u*(1-u)^2+
        28621*u^2*(1-u)+9020*u^3 := by ring
  rw [ident]
  positivity

/-- Analytic positivity of the *original physical* octic ground state
follows from exact positive Bernstein coefficients. -/
theorem ground_ge_one_on {t : ℝ} (ht : t ∈ Icc (-2 : ℝ) 2) :
    (1:ℝ) <= ground t := by
  have hprod : 0 <= (2-t)*(2+t) :=
    mul_nonneg (by linarith [ht.2]) (by linarith [ht.1])
  let u : ℝ := (t/2)^2
  have hu0 : 0 <= u := sq_nonneg _
  have hu1 : u <= 1 := by
    dsimp [u]
    nlinarith [hprod]
  have hp := ground_cubic_nonneg hu0 hu1
  have heq : ground t =
      1+u*((12476:ℝ)-25461*u+42115*u^2-20110*u^3)/10000 := by
    simp only [ground, if_pos ht]
    dsimp [RadiusTwoOcticSchurData.ground, u]
    ring
  rw [heq]
  have hnonneg : 0 <=
      u*((12476:ℝ)-25461*u+42115*u^2-20110*u^3)/10000 :=
    div_nonneg (mul_nonneg hu0 hp) (by norm_num)
  linarith

theorem ground_pos (t : ℝ) : 0 < ground t := by
  by_cases ht : t ∈ Icc (-2 : ℝ) 2
  · exact lt_of_lt_of_le (by norm_num : (0:ℝ)<1) (ground_ge_one_on ht)
  · simp [ground, ht]

/-- Doob source diffuser. It preserves the ENTIRE original finite
prime-power inventory and zero extension, not a surrogate matrix. -/
def diffuser (g : ℝ → ℝ) (t : ℝ) : ℝ :=
  absolutePrimeOperator (fun s => ground s*g s) t /
    ((859/100 : ℝ)*ground t)

/-- Exact source return, including outside the physical support. -/
theorem source_return (g : ℝ → ℝ) (t : ℝ) :
    (859/100 : ℝ)*ground t*diffuser g t =
      absolutePrimeOperator (fun s => ground s*g s) t := by
  unfold diffuser
  have hden : (859/100 : ℝ)*ground t ≠ 0 :=
    mul_ne_zero (by norm_num) (ne_of_gt (ground_pos t))
  field_simp [hden]

theorem diffuser_nonneg (g : ℝ → ℝ)
    (hg : ∀ t, 0 <= g t) (t : ℝ) : 0 <= diffuser g t := by
  unfold diffuser
  apply div_nonneg
  · exact positivePrimeOperator_nonneg _
      (fun s => mul_nonneg (ground_pos s).le (hg s)) t
  · exact mul_nonneg (by norm_num) (ground_pos t).le

/-- The actual positive original source row/ground quotient. -/
def rowPrice (t : ℝ) : ℝ :=
  absolutePrimeOperator ground t/ground t

theorem diffuser_one_eq_rowPrice (t : ℝ) :
    diffuser (fun _ => 1) t = rowPrice t/(859/100 : ℝ) := by
  unfold diffuser rowPrice
  have heq : (fun s : ℝ => ground s*(fun _ : ℝ => (1:ℝ)) s) = ground := by
    funext s
    ring
  rw [heq]
  field_simp [ne_of_gt (ground_pos t)]
  ring

/-- The precise remaining continuum/source-interval bridge is retained
as hrow, not inferred merely from a nonnegative diffusion kernel. -/
theorem subMarkov_of_rowPrice
    (hrow : ∀ t ∈ Icc (-2 : ℝ) 2, rowPrice t <= 859/100) :
    ∀ t ∈ Icc (-2 : ℝ) 2,
      0 <= diffuser (fun _ => 1) t ∧
      diffuser (fun _ => 1) t <= 1 := by
  intro t ht
  have hp := diffuser_nonneg (fun _ => 1) (fun _ => by norm_num) t
  refine ⟨hp, ?_⟩
  rw [diffuser_one_eq_rowPrice]
  exact (div_le_one (by norm_num : (0:ℝ)<859/100)).mpr
    (hrow t ht)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticPrimeDiffusion
