# primitiveArithmeticValue_dual_orientation

Local attribution: grwtsk contributors. Date: 2026-11-11.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.primitiveArithmeticValue_dual_orientation`.
Maintained source: [../DirichletWeilIntegrand.lean](../DirichletWeilIntegrand.lean).
Source line 312; Git blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`; SHA-256 `a3f747aed6a43687cccc43f59716796cd14afb792ee80535e066b7fd8a6f83c3`.
Source inspection base `9faf3baa8307ffe27c78db2821945ecb7062ed05`; complete tree `7776847f6fdab7642e423f29b06a80ed241fd484`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Issue math#1801.

## Exact statement

Ambient namespace `GRWTSK.NumberTheory.WeilNegativeWitness`; shared variables `{N : ℕ} [NeZero N]` are used only where they occur in the statement or inferred dependencies. Complex norms, analytic functions and character objects are the existing canonical ones. No imported candidates are retroactively verified.

```lean
theorem primitiveArithmeticValue_dual_orientation
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) (hnon : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue chi⁻¹
      (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
            using hprim)
      (by simpa only [ne_eq, inv_eq_one] using hnon) T f =
      gammaConstant N (gammaParity chi) *
        GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.energy f +
      (∫ r in Set.Ioi (0 : ℝ),
        GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity (gammaParity chi) f r) -
      2 * ∑ n ∈ GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.activePrimePowers T,
        GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.primeWeight n *
          (chi n * GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation f
            (Real.log (n : ℝ))).re
```

## Individual primary source correspondence

Michael Stoll, [Mathlib/NumberTheory/MulChar/Lemmas.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Lemmas.lean), `star_eq_inv and star_apply' (finite unit group, including nonunit values)`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `90102fbc7a80e4dca25c75de152c3aa1eae2538d`. Apache-2.0.

Ashvni Narayanan, Moritz Firsching and Michael Stoll, [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `conductor_inv; IsPrimitive; the actual character group`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Apache-2.0.

This declaration is a local consequence/composition of the listed pinned primary implementations, not a claimed direct formalization of a new paper theorem. Existing local prerequisites have their own adjacent records and retain their candidate evidence status. No novelty or exhaustive-absence claim is made.

## Analytical argument and consumer

Derive primitivity of the inverse by conductor_inv and nonprincipality by inverse_eq_one. Unfold only the existing arithmetic value, and rewrite parity and prime phase by the proved adapters.

Consumer: The exact canonical nonprincipal consumer for equation (24a). This is not the zero-sum equality; the residue/Fubini/inversion steps are written only.

Full analytical context: [README.md](README.md). The sign/conjugation correction is recorded in [CHARACTER-ORIENTATION-v1.md](CHARACTER-ORIENTATION-v1.md). The finite contour, integral interchange and Fourier/gamma evaluations in the README are written proofs; they are not asserted to have Lean declarations here. No RH/GRH or lower sign conclusion.

## Verification obligation

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and repository-wide verification: NOT_RUN. No Lean execution has been performed. Source-text and scalar checks establish only their recorded scope. The following query is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.primitiveArithmeticValue_dual_orientation
```

Use the publication revision recorded in math#1801 and the unchanged pins. Run the targeted module build before the audit. The unavailable Noe skill prevents dependent proof automation; it grants no alternative execution authority.
