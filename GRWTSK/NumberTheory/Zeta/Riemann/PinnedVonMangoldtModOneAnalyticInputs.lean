/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and the Prime Number Theorem + Project retain upstream authorship
and their respective original licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput
import Mathlib.NumberTheory.LSeries.PrimesInAP
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Pinned modulus-one analytic inputs to Wiener-Ikehara for von Mangoldt

The historical proof of WeakPNT in PrimeNumberTheoremAnd/Wiener.lean
at revision a5040887e6bb24f7c201db8568e7755c138b3878 calls a
Wiener-Ikehara theorem with five inputs:
  (1) nonnegative coefficients,
  (2) summability of the real-axis norm terms for every sigma > 1,
  (3) an O(N) norm-cumsum Chebyshev bound,
  (4) continuity of a pole-subtracted auxiliary on Re(s) >= 1,
  (5) identity F(s) = LSeries(Lambda)(s) - 1/(s-1) for Re(s) > 1.

The previous child #909 supplied (3). The exact PINNED Mathlib source
already provides (2), (4), and (5) at residue modulus q=1, provided
that residueClass(1 : ZMod 1) is identified with literal Lambda and the
L-series normalization is carried without changing the pole residue.

This module authors that source-specific q=1 comparison and packages
ALL five inputs, with proof fields rather than strings.

The actual Wiener-Ikehara Tauberian implication is NOT proved or
imported here. Neither WeakPNT nor RH follows from these premises alone.
The external theorem uses a different Lean/Mathlib revision, and an
exact proof/axiom closure and kernel replay are still independent gates.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PINNED_MODONE_RESIDUE_IDENTITY_SOURCE_DEFINED /
PINNED_LSERIES_SUMMABILITY_SOURCE_DEFINED /
PINNED_MODONE_AUX_CONTINUITY_SOURCE_DEFINED /
PINNED_POLE_NORMALIZATION_SOURCE_DEFINED /
PINNED_FIVE_TAUBERIAN_INPUTS_SOURCE_DEFINED /
WIENER_IKEHARA_THEOREM_PROOF_PORT_OPEN /
NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open ArithmeticFunction
open scoped ArithmeticFunction LSeries.notation

/-- The same REAL von Mangoldt coefficients as the previous Chebyshev
input and the actual pinned Chebyshev.psi. -/
def pinnedTauberianLambda (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n

/-- Source-preserving complexification, not a distinct arithmetic input. -/
def pinnedTauberianLambdaComplex (n : ℕ) : ℂ :=
  (pinnedTauberianLambda n : ℝ)

/-- Exactly the historic norm-term normalization. The value at zero
is totalized, as in the external Wiener source. -/
def pinnedTauberianNormTerm (σ : ℝ) (n : ℕ) : ℝ :=
  if n = 0 then 0
  else ‖pinnedTauberianLambdaComplex n‖ / (n : ℝ) ^ σ

/-- The q=1 residue-class source is literally the full von Mangoldt
sequence, including n=0 and all prime powers. -/
theorem pinnedTauberianResidueClassOne_eq_lambda (n : ℕ) :
    ArithmeticFunction.vonMangoldt.residueClass (1 : ZMod 1) n =
      pinnedTauberianLambda n := by
  have hn : (n : ZMod 1) = (1 : ZMod 1) :=
    Subsingleton.eq_one _
  simp [ArithmeticFunction.vonMangoldt.residueClass,
    pinnedTauberianLambda, hn]

/-- The exact source coefficient identity lifts through the genuine
LSeries congruence theorem; its zero-th term is immaterial. -/
theorem pinnedTauberianResidueClassOne_LSeries_eq
    (s : ℂ) :
    LSeries
      (fun n : ℕ =>
        (ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℂ)) s =
    LSeries pinnedTauberianLambdaComplex s := by
  apply LSeries.LSeries_congr (s := s)
  intro n _hn
  simpa [pinnedTauberianLambdaComplex] using
    congrArg (fun x : ℝ => (x : ℂ))
      (pinnedTauberianResidueClassOne_eq_lambda n)

/-- The historic auxiliary function at exact modulus one; not a
freely selected analytic continuation. -/
def pinnedTauberianModOneAux (s : ℂ) : ℂ :=
  ArithmeticFunction.vonMangoldt.LFunctionResidueClassAux
    (1 : ZMod 1) s

/-- The genuine pinned Mathlib source proves continuity on the
closed right half-plane. This is not just a right-open assertion. -/
theorem pinnedTauberianModOneAux_continuous :
    ContinuousOn pinnedTauberianModOneAux
      {s : ℂ | 1 ≤ s.re} := by
  simpa only [pinnedTauberianModOneAux] using
    (ArithmeticFunction.vonMangoldt.continuousOn_LFunctionResidueClassAux
      (1 : ZMod 1))

/-- The exact L-series pole-subtraction normalization at q=1.
The residue is (totient 1)^(-1) = 1, not a free target-fitted
coefficient. -/
theorem pinnedTauberianModOneAux_eq_lambdaLSeries
    {s : ℂ} (hs : 1 < s.re) :
    pinnedTauberianModOneAux s =
      LSeries pinnedTauberianLambdaComplex s - 1 / (s - 1) := by
  have hsource :=
    (ArithmeticFunction.vonMangoldt.eqOn_LFunctionResidueClassAux
      (q := 1) (a := (1 : ZMod 1))
      (isUnit_one : IsUnit (1 : ZMod 1)))
      (show s ∈ {z : ℂ | 1 < z.re} from hs)
  have hseries := pinnedTauberianResidueClassOne_LSeries_eq s
  change pinnedTauberianModOneAux s =
    LSeries
      (fun n : ℕ =>
        (ArithmeticFunction.vonMangoldt.residueClass
          (1 : ZMod 1) n : ℂ)) s -
        (Nat.totient 1 : ℂ)⁻¹ / (s - 1) at hsource
  rw [hseries] at hsource
  simpa [Nat.totient_one] using hsource

/-- The historic norm term is the literal norm of the pinned L-series
term on the real-parameter vertical line. -/
theorem pinnedTauberianNormTerm_eq_norm_LSeries_term
    (σ : ℝ) (n : ℕ) :
    pinnedTauberianNormTerm σ n =
      ‖LSeries.term pinnedTauberianLambdaComplex
        (σ : ℂ) n‖ := by
  simp [pinnedTauberianNormTerm, LSeries.norm_term_eq,
    pinnedTauberianLambdaComplex]

/-- The PINNED absolute L-series convergence theorem supplies the
historical sigma>1 summability requirement with no new analytic
hypothesis or PNT import. -/
theorem pinnedTauberianNormTerm_summable
    (σ : ℝ) (hσ : 1 < σ) :
    Summable (pinnedTauberianNormTerm σ) := by
  have hL :
      LSeriesSummable pinnedTauberianLambdaComplex (σ : ℂ) := by
    simpa [pinnedTauberianLambdaComplex, pinnedTauberianLambda] using
      (ArithmeticFunction.LSeriesSummable_vonMangoldt
        (s := (σ : ℂ)) (by simpa using hσ))
  have hnorm :
      Summable
        (fun n : ℕ =>
          ‖LSeries.term pinnedTauberianLambdaComplex
            (σ : ℂ) n‖) := hL.norm
  have hfunctions :
      (fun n : ℕ =>
        ‖LSeries.term pinnedTauberianLambdaComplex
          (σ : ℂ) n‖) =
        pinnedTauberianNormTerm σ := by
    funext n
    exact (pinnedTauberianNormTerm_eq_norm_LSeries_term σ n).symm
  exact hfunctions ▸ hnorm

/-- The exact finite source required by the historical
WienerIkeharaTheorem' for f=Lambda and pole residue A=1. This
structure contains the *premises*, not that theorem's conclusion. -/
structure PinnedTauberianModOneAnalyticInputs : Prop where
  lambda_nonnegative :
    ∀ n : ℕ, 0 ≤ pinnedTauberianLambda n
  summability :
    ∀ σ : ℝ, 1 < σ → Summable (pinnedTauberianNormTerm σ)
  chebyshev :
    PinnedVonMangoldtCheby
  auxiliary_continuous :
    ContinuousOn pinnedTauberianModOneAux
      {s : ℂ | 1 ≤ s.re}
  pole_identity :
    ∀ s : ℂ, 1 < s.re →
      pinnedTauberianModOneAux s =
        LSeries pinnedTauberianLambdaComplex s - 1 / (s - 1)

/-- Fully sourced PINNED inputs to the missing Tauberian theorem.
In particular, no field carries WeakPNT or an RH assertion. -/
theorem pinnedTauberianModOneAnalyticInputs :
    PinnedTauberianModOneAnalyticInputs := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro n
    exact ArithmeticFunction.vonMangoldt_nonneg (n := n)
  · exact pinnedTauberianNormTerm_summable
  · exact pinnedVonMangoldtCheby
  · exact pinnedTauberianModOneAux_continuous
  · intro s hs
    exact pinnedTauberianModOneAux_eq_lambdaLSeries hs

end GRWTSK.RiemannHypothesis
