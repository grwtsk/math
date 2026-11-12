# WFCP-v1-04 — primitiveArithmeticValue_eq_twisted_shift_ledger

Maintained source: ../WeilTwistedPrimeEnergyReturn.lean
Fully qualified: GRWTSK.NumberTheory.WeilQuadraticForm.TwistedPrimeEnergyReturn.primitiveArithmeticValue_eq_twisted_shift_ledger
Source blob: dacbda52de0148393bc594594faccf3e7cd1cb76
Local author: grwtsk contributors. 2026-11-12. MSC2020 11M41.

Literal declaration:
theorem primitiveArithmeticValue_eq_twisted_shift_ledger {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    primitiveArithmeticValue χ hprimitive hnonprincipal T f =
      gammaConstant q (gammaParity χ) * energy f +
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
      ∑ n ∈ activePrimePowers T, primeWeight n *
        ((1 + ‖χ n‖ ^ 2) * energy f -
          twistedShiftEnergy f (Real.log (n : ℝ)) (χ n))

Proof: unfold the unchanged native primitiveArithmeticValue and
rewrite the unchanged signed twistedPrime by WFCP-v1-03.
The native conductor/parity scalar and entire physical gamma
term remain literally identical. This is equality of the
repository's formal arithmetic expression, not an assertion
that an arbitrary source's totalized gamma integral is
integrable. In genuine form applications the separate
gamma-integrability theorem is required.

The primitive nonprincipal assumption is essential for
this declaration. Conductor-one zeta is NOT obtained by
instantiating it; the two pole orientations belong to
the separate zeta form. No imprimitive or new family
is added. The WRITTEN finite-chain estimate consumes
the same signed prime term but does not prove all-scale sign.

Source: native WeilConductorFrontier.primitiveArithmeticValue,
GammaData.gammaConstant, OddRootProjection.gammaCorrectionDensity
and WFCP-v1-03; Connes--Consani--Moscovici
arXiv:2511.22755v1 (3.19)--(3.20).
Novelty UNASSESSED.

Evidence: LEAN SOURCE_PROOF_CANDIDATE; elaboration, complete
dependency build, fresh kernel replay, transitive axiom audit,
certified whole-form computation, independent review NOT_RUN.
No unconditional sign, RH or primitive GRH assertion.
