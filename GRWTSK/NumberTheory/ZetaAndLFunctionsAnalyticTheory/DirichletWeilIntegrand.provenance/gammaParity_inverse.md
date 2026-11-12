# gammaParity_inverse

Local attribution: grwtsk contributors. Date: 2026-11-11.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.gammaParity_inverse`.
Maintained source: [../DirichletWeilIntegrand.lean](../DirichletWeilIntegrand.lean).
Source line 78; Git blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`; SHA-256 `a3f747aed6a43687cccc43f59716796cd14afb792ee80535e066b7fd8a6f83c3`.
Source inspection base `9faf3baa8307ffe27c78db2821945ecb7062ed05`; complete tree `7776847f6fdab7642e423f29b06a80ed241fd484`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Issue math#1801.

## Exact statement

Ambient namespace `GRWTSK.NumberTheory.WeilNegativeWitness`; shared variables `{N : ℕ} [NeZero N]` are used only where they occur in the statement or inferred dependencies. Complex norms, analytic functions and character objects are the existing canonical ones. No imported candidates are retroactively verified.

```lean
theorem gammaParity_inverse (chi : DirichletCharacter ℂ N) :
    gammaParity chi⁻¹ = gammaParity chi
```

## Individual primary source correspondence

Ashvni Narayanan, Moritz Firsching and Michael Stoll, [Mathlib/NumberTheory/DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), `conductor_inv; IsPrimitive; the actual character group`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`. Apache-2.0.

This declaration is a local consequence/composition of the listed pinned primary implementations, not a claimed direct formalization of a new paper theorem. Existing local prerequisites have their own adjacent records and retain their candidate evidence status. No novelty or exhaustive-absence claim is made.

## Analytical argument and consumer

Evaluate chi*chi inverse at the unit -1. A product equal to one implies one factor equals one iff the other does, so the existing parity branches agree.

Consumer: The two gamma terms in the reflected contour identity.

Full analytical context: [README.md](README.md). The sign/conjugation correction is recorded in [CHARACTER-ORIENTATION-v1.md](CHARACTER-ORIENTATION-v1.md). The finite contour, integral interchange and Fourier/gamma evaluations in the README are written proofs; they are not asserted to have Lean declarations here. No RH/GRH or lower sign conclusion.

## Verification obligation

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and repository-wide verification: NOT_RUN. No Lean execution has been performed. Source-text and scalar checks establish only their recorded scope. The following query is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.gammaParity_inverse
```

Use the publication revision recorded in math#1801 and the unchanged pins. Run the targeted module build before the audit. The unavailable Noe skill prevents dependent proof automation; it grants no alternative execution authority.
