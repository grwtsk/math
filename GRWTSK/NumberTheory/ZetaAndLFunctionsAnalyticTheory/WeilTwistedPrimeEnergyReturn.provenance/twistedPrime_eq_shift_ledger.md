# WFCP-v1-03 — twistedPrime_eq_shift_ledger

Maintained source: ../WeilTwistedPrimeEnergyReturn.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn.twistedPrime_eq_shift_ledger
Source blob: dacbda52de0148393bc594594faccf3e7cd1cb76
Local author: grwtsk contributors. 2026-11-12. MSC2020 11M26.

Literal declaration:
theorem twistedPrime_eq_shift_ledger {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (T : ℝ)
    (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    twistedPrime T χ (fun n => correlation f (Real.log (n : ℝ))) =
      ∑ n ∈ activePrimePowers T, primeWeight n *
        ((1 + ‖χ n‖ ^ 2) * energy f -
          twistedShiftEnergy f (Real.log (n : ℝ)) (χ n))

Proof: unfold the native CharacterWindow.twistedPrime as
2 times the finite sum of primeWeight(n) times the real part
of conj(chi(n))*correlation f (log n). Apply WFCP-v1-01
separately to every n and distribute the original factor 2.
No convergence or period assumption: the exact existing
activePrimePowers T is finite and includes all powers.
No phase is replaced; real parts and the original
antilinear-first source correlation are retained. The term
at a nonunit n cancels by WFCP-v1-02.

Consumer: WFCP-v1-04, plus the WRITTEN all-shift finite-path
prime-mass bound in WeilFiniteChainPrimeBound.md.
Do NOT infer universal positivity by dropping the negative
mass retained in this equality. In the q=1 case only the
prime term may be instantiated; the two signed zeta pole
orientations must be added separately.

Source: native CharacterWindow.twistedPrime, LowSchur
primeWeight and activePrimePowers at grwtsk/math pinned
main; Connes--Consani--Moscovici arXiv:2511.22755v1
(3.19)--(3.20). Novelty UNASSESSED.

Evidence: LEAN SOURCE_PROOF_CANDIDATE; elaboration, full
dependency build, fresh kernel replay, transitive axiom
audit, independent review and numerical certification
NOT_RUN. No universal sign, RH or primitive GRH claim.
