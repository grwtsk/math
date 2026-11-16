/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBandReduction

/-! # Conditional return from the Chebyshev band bound to RiemannHypothesis

Cryptids source pin and proof scopes are recorded in ChebyshevBandCryptids.md.
-/

namespace GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand

open ConjectureMachines Riemann120Analytic

/-- The uniform band bound rules out every checkpoint of the blank-tape run. -/
theorem riemann95_nonhalting_of_bandBound (band : BandBound) :
    ¬ Halts Riemann95.candidate := by
  intro h
  obtain ⟨m, hm⟩ := Riemann95.halts_candidate_iff_counterexample.mp h
  have hn : 2 ≤ m + 2 := by omega
  by_cases hs : m + 2 ≤ 21845
  · exact not_shuniaCounterexample_of_le_21845 hn hs hm
  · have hbase : (4 : ℕ) ^ 7 ≤ m + 2 := by omega
    have htheta : ((m + 2 : ℕ) : ℝ) - Chebyshev.theta (m + 2 : ℕ) ≤
        (1 / 2 : ℝ) * Real.sqrt (m + 2 : ℕ) * (Real.log (m + 2 : ℕ)) ^ 2 := by
      simpa only [deficit, scale, mul_assoc] using
        half_bound band hbase
    exact not_shuniaCounterexample_of_theta_bound hn
      (large_theta_bound_of_half_sqrt_log_sq hn htheta) hm

/-- Conditional reduction through Cryptids' published 95-state equivalence. -/
theorem riemannHypothesis_of_bandBound (band : BandBound) : RiemannHypothesis := by
  by_contra hRH
  exact riemann95_nonhalting_of_bandBound band
    (Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr hRH)

end GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ChebyshevBand
