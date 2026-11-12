# twistedPrime_inverse_eq_plus_phase

Local attribution: grwtsk contributors. Date: 2026-11-11.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.twistedPrime_inverse_eq_plus_phase`.
Maintained source: [../DirichletWeilIntegrand.lean](../DirichletWeilIntegrand.lean).
Source line 300; Git blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`; SHA-256 `a3f747aed6a43687cccc43f59716796cd14afb792ee80535e066b7fd8a6f83c3`.
Source inspection base `9faf3baa8307ffe27c78db2821945ecb7062ed05`; complete tree `7776847f6fdab7642e423f29b06a80ed241fd484`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Issue math#1801.

## Exact statement

Ambient namespace `GRWTSK.NumberTheory.WeilNegativeWitness`; shared variables `{N : ℕ} [NeZero N]` are used only where they occur in the statement or inferred dependencies. Complex norms, analytic functions and character objects are the existing canonical ones. No imported candidates are retroactively verified.

```lean
theorem twistedPrime_inverse_eq_plus_phase (chi : DirichletCharacter ℂ N)
    (T : ℝ) (C : ℕ → ℂ) :
    GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow.twistedPrime T chi⁻¹ C =
      2 * ∑ n ∈ GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.activePrimePowers T,
        GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.primeWeight n * (chi n * C n).re
```

## Individual primary source correspondence

Michael Stoll, [Mathlib/NumberTheory/MulChar/Lemmas.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Lemmas.lean), `star_eq_inv and star_apply' (finite unit group, including nonunit values)`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `90102fbc7a80e4dca25c75de152c3aa1eae2538d`. Apache-2.0.

This declaration is a local consequence/composition of the listed pinned primary implementations, not a claimed direct formalization of a new paper theorem. Existing local prerequisites have their own adjacent records and retain their candidate evidence status. No novelty or exhaustive-absence claim is made.

## Analytical argument and consumer

Unfold the unchanged finite prime expression and use conj(chi inverse(n))=chi(n) at each index. The support inventory and weights are unchanged.

Consumer: Return of the plus-sign contour prime term to canonical chi inverse, never same chi silently.

Full analytical context: [README.md](README.md). The sign/conjugation correction is recorded in [CHARACTER-ORIENTATION-v1.md](CHARACTER-ORIENTATION-v1.md). The finite contour, integral interchange and Fourier/gamma evaluations in the README are written proofs; they are not asserted to have Lean declarations here. No RH/GRH or lower sign conclusion.

## Verification obligation

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and repository-wide verification: NOT_RUN. No Lean execution has been performed. Source-text and scalar checks establish only their recorded scope. The following query is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.twistedPrime_inverse_eq_plus_phase
```

Use the publication revision recorded in math#1801 and the unchanged pins. Run the targeted module build before the audit. The unavailable Noe skill prevents dependent proof automation; it grants no alternative execution authority.
