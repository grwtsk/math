# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a85d516de862df1513b7538b0641d5560ee156cf` · SHA-256 `565ebb862c9e2554c5df02388f31b34fa23d9534a9b9680b7b4a41b83b0c6df2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
External Tauberian proof ideas: Alex Kontorovich, Terry Tao and the
Prime Number Theorem + Project collaborators.
Mathlib and external projects retain their original licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Pinned Chebyshev growth input for the external Wiener-Ikehara PNT proof

External PrimeNumberTheoremAnd/Wiener.lean defines

  chebyWith C f := forall N, cumsum (norm f) N <= C * N
  cheby f := exists C, chebyWith C f.

Its local vonMangoldt_cheby proof imports external Brun-Titchmarsh.
The local pinned Mathlib already proves a simpler unconditional
input, Chebyshev.psi_le_const_mul_self:

  psi(x) <= (log 4 + 4) * x for all 0 <= x.

This source constructs the exact external-form Chebyshev input
for the ACTUAL pinned von Mangoldt coefficients, with no PNT or
zero-free analytic premise.  It is only the Tauberian *growth*
hypothesis.  Neither Wiener-Ikehara nor WeakPNT is deduced here.

The full historical Wiener-Ikehara source and its proof closure are
separate external theorem-port obligations; source text is not a
kernel-checked local proof.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PINNED_VONMANGOLDT_CHEBY_INPUT_DEFINED /
EXTERNAL_BRUNTITCHMARSH_UNNECESSARY_FOR_THIS_INPUT /
WIENER_IKEHARA_THEOREM_PROOF_PORT_OPEN /
NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev

/-- The literal historical cumsum convention for the real-valued,
pinned von Mangoldt coefficients: range N is open at the right. -/
def pinnedVonMangoldtRangeSum (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, (ArithmeticFunction.vonMangoldt n : ℝ)

/-- The historical range partial sum is exactly the inclusive Chebyshev
psi sum one integer earlier: sum_range (N+1) Lambda = psi(N).
At N=0 the identity retains Lambda(0)=0, not an omitted endpoint. -/
theorem pinnedVonMangoldtRangeSum_succ_eq_psi
    (N : ℕ) :
    pinnedVonMangoldtRangeSum (N + 1) = Chebyshev.psi (N : ℝ) := by
  have hsets :
      Finset.range (N + 1) = Finset.Icc 0 N := by
    ext n
    simp only [Finset.mem_range, Finset.mem_Icc]
    omega
  rw [Chebyshev.psi_eq_sum_Icc]
  simp only [Nat.floor_natCast]
  unfold pinnedVonMangoldtRangeSum
  rw [hsets]

theorem pinnedVonMangoldtRangeSum_succ
    (N : ℕ) :
    pinnedVonMangoldtRangeSum (N + 1) =
      pinnedVonMangoldtRangeSum N +
        (ArithmeticFunction.vonMangoldt N : ℝ) := by
  simp [pinnedVonMangoldtRangeSum, Finset.sum_range_succ]

/-- A genuine pinned source inequality, not an asymptotic hypothesis.
It follows from positivity of Lambda and the exact right-endpoint
convention, without relying on the historical Brun-Titchmarsh lemma. -/
theorem pinnedVonMangoldtRangeSum_le_psi
    (N : ℕ) :
    pinnedVonMangoldtRangeSum N ≤ Chebyshev.psi (N : ℝ) := by
  calc
    pinnedVonMangoldtRangeSum N
        ≤ pinnedVonMangoldtRangeSum (N + 1) := by
          rw [pinnedVonMangoldtRangeSum_succ]
          exact le_add_of_nonneg_right
            (ArithmeticFunction.vonMangoldt_nonneg (n := N))
    _ = Chebyshev.psi (N : ℝ) :=
      pinnedVonMangoldtRangeSum_succ_eq_psi N

/-- The literal external cumsum uses norms, which are just the real
nonnegative pinned von Mangoldt coefficients. -/
theorem pinnedVonMangoldtRangeNorm_eq_sum
    (N : ℕ) :
    (∑ n ∈ Finset.range N,
        ‖(ArithmeticFunction.vonMangoldt n : ℝ)‖) =
      pinnedVonMangoldtRangeSum N := by
  unfold pinnedVonMangoldtRangeSum
  apply Finset.sum_congr rfl
  intro n _
  exact Real.norm_of_nonneg
    (ArithmeticFunction.vonMangoldt_nonneg (n := n))

/-- Actual unconditional Chebyshev growth estimate for ALL N,
including N=0. The coefficient matches the pinned Mathlib theorem,
not an unnamed external constant. -/
theorem pinnedVonMangoldtRangeNorm_le_chebyshev
    (N : ℕ) :
    (∑ n ∈ Finset.range N,
        ‖(ArithmeticFunction.vonMangoldt n : ℝ)‖) ≤
      (Real.log 4 + 4) * (N : ℝ) := by
  rw [pinnedVonMangoldtRangeNorm_eq_sum]
  exact (pinnedVonMangoldtRangeSum_le_psi N).trans
    (Chebyshev.psi_le_const_mul_self (by positivity))

/-- This is exactly the historically required quantitative growth
predicate chebyWith C Lambda, recreated over pinned local coefficients.
It contains no L-series summability, boundary continuity, or PNT. -/
def PinnedVonMangoldtChebyWith (C : ℝ) : Prop :=
  ∀ N : ℕ,
    (∑ n ∈ Finset.range N,
        ‖(ArithmeticFunction.vonMangoldt n : ℝ)‖) ≤
      C * (N : ℝ)

def PinnedVonMangoldtCheby : Prop :=
  ∃ C : ℝ, PinnedVonMangoldtChebyWith C

/-- The exact Chebyshev input of the external Wiener-Ikehara proof
is already supplied from pinned Mathlib, without Brun-Titchmarsh. -/
theorem pinnedVonMangoldtCheby :
    PinnedVonMangoldtCheby :=
  ⟨Real.log 4 + 4, pinnedVonMangoldtRangeNorm_le_chebyshev⟩

/-- The chosen bound is genuinely nonnegative; this stronger
certificate is convenient when using norm comparisons. -/
theorem pinnedVonMangoldtCheby_nonnegativeWitness :
    ∃ C : ℝ, 0 ≤ C ∧ PinnedVonMangoldtChebyWith C := by
  refine ⟨Real.log 4 + 4, ?_,
    pinnedVonMangoldtRangeNorm_le_chebyshev⟩
  have hlog : 0 ≤ Real.log (4 : ℝ) :=
    Real.log_nonneg (by norm_num)
  linarith

end GRWTSK.RiemannHypothesis
```
