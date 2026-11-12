# gammaLogBudget

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.SpecialFunctions.GammaLogDerivativeBounds.gammaLogBudget`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

The following is the verbatim declaration header and defining expression.

```lean
def gammaLogBudget : ℝ :=
  1 + |Real.log (2 * Real.exp (7 * Real.log 14))| +
    |Real.log (2 * Real.exp (4 * Real.log 8) / Real.pi)|
```

## Individual source correspondence

Local explicit constant definition from canonical ComplexGammaGrowth.norm_Gamma_le_envelope at R=7 and ReciprocalGammaStrip.norm_inv_Gamma_le_strip. The underlying classical inputs are DLMF 5.2.1 and 5.5.3. This definition is a local consequence/normalization, not a formalization of a separate paper theorem.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/grwtsk/math/blob/5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6/GRWTSK/SpecialFunctions/ComplexGammaGrowth.lean).

## Hypotheses, normalization and source return

The absolute logarithms are of fixed positive real source constants. The added one provides a strictly positive ceiling even when the normalized modulus ratio is one.

norm_digamma_le_right_band uses B+pi|Im z| as the real-part ceiling of the constructed normalized holomorphic logarithm.

The complete primary argument, hostile checks and alternative route are in the
source-local README. This record does not assert that a second script constitutes
an independent proof. Mathematical comparison and formal execution are separate.

## Evidence and open obligations

SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Imported candidates
retain their known evidence and failures. There is no passing Lean receipt.
The exact build and declaration-level transitive axiom queries are obligations,
not executed commands. The canonical proof-execution skill was inaccessible at
Noe revision `a5ef0a774b3e5decabc2ed2885108805ea7022bc`; no dependent automation ran.
Source/publication identities and observations are recorded in math#1801 after
readback. Neither publication nor this record proves an RH/GRH conclusion.
