# WFCP-v1-01 — twistedShiftEnergy_eq_correlation

Maintained source: ../WeilTwistedPrimeEnergyReturn.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn.twistedShiftEnergy_eq_correlation
Source blob: dacbda52de0148393bc594594faccf3e7cd1cb76
Local author: grwtsk contributors. 2026-11-12. MSC2020 11M26.

Literal declaration:
theorem twistedShiftEnergy_eq_correlation (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) (r : ℝ) (z : ℂ) :
    twistedShiftEnergy f r z =
      (1 + ‖z‖ ^ 2) * energy f -
        2 * (conj z * correlation f r).re

Proof: for all u,v,z in C expand |v-zu|² =
|v|²+|z|²|u|²-2Re(conj(z)*conj(u)*v). This is verified by real
and imaginary coordinates. For MemLp f 2, the unshifted and translated
square norms are integrable. The mixed product is integrable using the
native SourcePrimeCorrelation.integrable_correlation_integrand. The
complex real-part integral commutes with taking its real part; the
translated square integral equals the original energy exactly.
All terms are integrable BEFORE splitting the genuine whole-line
integral. No unit-phase assumption or L-series-series totalization.

Source-local consumers: WFCP-v1-03 and the exact native
primitiveArithmeticValue; ramified cancellation is WFCP-v1-02.
Primary normalization Connes--Consani--Moscovici, Zeta Spectral
Triples, arXiv:2511.22755v1 (3.19)--(3.20).
Reuse SourcePrimeCorrelation.energy, correlation and integrable
correlation theorem; no duplicate arithmetic source definition.
This scalar/whole-line expansion is a classical Hilbert identity,
not asserted as novel.

Evidence: LEAN SOURCE_PROOF_CANDIDATE; not elaborated. Complete
dependency build, kernel replay, transitive axiom audit, numerical
certification and independent review NOT_RUN. Novelty UNASSESSED.
No unconditional arithmetic sign, RH, or primitive GRH result.
