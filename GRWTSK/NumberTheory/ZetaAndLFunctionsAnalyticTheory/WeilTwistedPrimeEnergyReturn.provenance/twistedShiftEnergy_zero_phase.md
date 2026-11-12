# WFCP-v1-02 — twistedShiftEnergy_zero_phase

Maintained source: ../WeilTwistedPrimeEnergyReturn.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn.twistedShiftEnergy_zero_phase
Source blob: dacbda52de0148393bc594594faccf3e7cd1cb76
Local author: grwtsk contributors. 2026-11-12. MSC2020 11M26.

Literal declaration:
theorem twistedShiftEnergy_zero_phase (f : ℝ → ℂ)
    (hf : MemLp f 2 volume) (r : ℝ) :
    twistedShiftEnergy f r 0 = energy f

Proof: specialize WFCP-v1-01 to z=0 and simplify.
The physical translation difference is f(t+r), whose
whole-line L2 norm equals f's L2 norm. Thus in the original
prime ledger at a ramified n, |chi(n)|=0, its mass term
(1+|chi(n)|²)E equals D_0, so the prime summand cancels.
Do not replace zero character values by unit phases.

Consumer: WFCP-v1-03 and the original primitive arithmetic
character sum. Upstream normalization: SourcePrimeCorrelation;
Connes--Consani--Moscovici, arXiv:2511.22755v1 (3.19)--(3.20).
Classical translation invariance, novelty UNASSESSED.

Evidence: LEAN SOURCE_PROOF_CANDIDATE. Lean elaboration,
complete dependency build, fresh kernel replay, transitive
axiom audit, independent review, certified numerics: NOT_RUN.
No RH/GRH claim.
