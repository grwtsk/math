# Conjugate symmetry of the original Weil pairing

Local attribution: grwtsk contributors.
Owner: [WeilMirroredHermitian.lean](WeilMirroredHermitian.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.MirroredHermitian`.

`prime_pairing_symmetric` consumes the existing two-orientation translation
identity `OddPrimePoleOutput.integral_mul_primeOutput`. Both original
logarithmic shifts and the exact von Mangoldt weights are retained.
`gammaPairing_symmetric` and `gammaPairing_self` concern the literal
zero-extended gamma integral.

`sourcePairing_symmetric` combines the mass, gamma, mirrored prime and
negative pole terms. `sourcePairing_self` proves that its diagonal is
EXACTLY `shiftedOddWeilEnergy`, not a replacement positive square.
`complexSourcePairing` is the conjugate-linear-first complexification
convention; `complexSourcePairing_conj_symm` proves conjugate symmetry
and `complexSourcePairing_self` returns the diagonal to the two original
real component energies. The four required real-component L2 hypotheses
are explicit in the conjugate-symmetry theorem.

The integral equalities alone are not a full formalized closed
sesquilinear-form API: finite mixed gamma integrability, domain linearity,
complete-domain realization and operator association require their own
proofs before that promotion. In particular totalized integrals cannot be
used to erase convergence obligations. The consumer is the complex
source-identification step for the fixed-window form, whose real
source is already canonical. This does not create a Dirichlet-character
phase adapter, a conformal net, or a cofinal nonnegativity proof.

This is local algebra and a reuse of an existing source integral identity,
not a new formalization of result 280.

## Evidence and limits

Source base: `grwtsk/math@c93bb944b56366ad636ddec0eadc0fadd0d6fe57`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; pins and root imports unchanged.
This is a **SOURCE_PROOF_CANDIDATE**. Elaboration, exact expected signatures,
fresh kernel replay, transitive axiom audit, and independent mathematical
review: **NOT_RUN**. No earlier source-bound acceptance is overwritten.
No theorem-level novelty is claimed; prior-art completeness is UNASSESSED.
Publication and finite diagnostics are not proof acceptance. Coordination:
[math#1837](https://github.com/grwtsk/math/issues/1837).
