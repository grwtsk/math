/- Copyright (c) 2026 grwtsk contributors. MIT.
Arithmetic source specialization drafting assistance: OpenAI. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LiouvilleWalshSourceBridge
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Sharp finite-sample support floor for actual Liouville Walsh energy

The theorem is a specialization of an arithmetic-independent
finite Boolean-pattern inequality. It proves NO upper bound on
Liouville correlations, no Chowla cancellation, and no RH.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- For every positive sample N, the complete actual Liouville
correlation energy has the exact finite integrality floor
r(q-r)/N², q=2^|H| and r=N mod q. -/
theorem liouvilleAllOrderEnergy_sharp_sample_floor
    (N : ℕ) (H : Finset ℕ) (hN : 0 < N) :
    (((N % (2 ^ H.card) : ℕ) : ℚ) *
      (((2 ^ H.card) - N % (2 ^ H.card) : ℕ) : ℚ)) /
        (N : ℚ) ^ 2 ≤
      liouvilleAllOrderEnergy N H := by
  classical
  rw [liouvilleAllOrderEnergy_eq_sourceEnergy]
  have hfloor :=
    nonemptyCorrelationEnergy_sharp_sample_floor
      (Finset.range N)
      (ordinaryShiftWord H liouvillePositiveBool)
      (by simpa using hN)
  simpa only [Finset.card_range, Fintype.card_fun,
    Fintype.card_bool, Fintype.card_coe] using hfloor

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
