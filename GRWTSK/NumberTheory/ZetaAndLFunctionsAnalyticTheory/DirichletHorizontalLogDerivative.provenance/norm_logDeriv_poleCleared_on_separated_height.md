# GRWTSK.NumberTheory.WeilNegativeWitness.norm_logDeriv_poleCleared_on_separated_height

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: [../DirichletHorizontalLogDerivative.lean](../DirichletHorizontalLogDerivative.lean).
Source Git blob: `df57cc0537745d34b8a6c5451eeb636d829d108d`.
Source SHA-256: `5c2760d2565271752cc814bc8437014c02bd389642e96e922ca2e87b1485efb0`.
Inspection main: `ae929ffb9eb87612e063c78f642d54279fe1e9df`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Exact statement

```lean
theorem norm_logDeriv_poleCleared_on_separated_height
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (n : ℕ) (T sigma epsilon : ℝ)
    (hT : (n : ℝ) + 2 < T) (hslo : -1 ≤ sigma) (hshi : sigma ≤ 2)
    (he : epsilon = -1 ∨ epsilon = 1)
    (hsep : ∀ rho : CriticalStripZero chi,
      horizontalSeparationRadius chi n ≤
        ‖(sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ) - rho.1‖) :
    poleClearedLFunction chi
        ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) ≠ 0 ∧
      ‖logDeriv (poleClearedLFunction chi)
        ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤
          horizontalLogDerivativeConstant chi * (1 + T) ^ 4
```

## Argument, provenance, and consumer

Pay for the whole logarithmic derivative of the actual repaired source; derive nonvanishing and the all-point fourth-power bound.

Exact reused declarations: CompactDiskLogDerivative.norm_logDeriv_le_of_disk_data_centered; the source disk, anchor, zero-classification and radius lemmas above.

The complete analytical derivation and primary-source authors, editions,
licenses, pinned paths and available digests are in [README.md](README.md).
Mathlib inputs retain Apache-2.0 and their upstream bylines. Canonical local
inputs are MIT, attributed to grwtsk contributors. This is a local consequence
and source application, not an asserted direct formalization of an unseen paper.
Shared imported candidates are not independent evidence.

The distance hypothesis is supplied by the existing actual-source selected heights in the final theorem. No factorization/logarithm/count bound is assumed here.

## Verification boundary

Elaboration/build, fresh kernel replay, transitive axiom audit,
repository-wide compatibility and independent review: NOT_RUN.
Direct-source text/hash checks and publication readback are recorded in #1801;
they are not theorem acceptance. The missing canonical execution skill is
recorded in README.md. No runner or workflow was dispatched.

Proposed exact-declaration query, NOT EXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.norm_logDeriv_poleCleared_on_separated_height
```
