# `GRWTSK.Combinatorics.PfrOriginalEnergyTransport.original_addEnergy_of_small_doubling`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [PfrOriginalEnergyTransport.lean](../PfrOriginalEnergyTransport.lean), line 86.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/PfrOriginalEnergyTransport.lean#L86).
- Declaration spelling: `GRWTSK.Combinatorics.PfrOriginalEnergyTransport.original_addEnergy_of_small_doubling` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/DenseSubmoduleSlice.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

/-!
# Returning exact PFR slice energy to the original source set

DenseSubmoduleSlice constructs B = {b in H | u+b in A}, but its energy
inequality initially concerns B, not the actual original finite set A.
Every energy quadruple in B embeds into an original energy quadruple
in A by translating ALL FOUR entries by the SAME u. This injection
preserves the additive equality and does not require a reversible
cover, disjoint cosets, or ambient group finiteness.

The return preserves the exact PFR source hypotheses, exponent-nine
constant, chosen translated B, its submodule H, all support relations
and the original A's energy. It does not assert an upper bound on
energy, pointwise equality of energy, a new PFR theorem, or acceptance
of the upstream PFR source without native qualification.
-/

/-- The original additive energy of a finite set cannot decrease when
one injects the source B by one common translation into A.
An actual four-coordinate injection retains all witness multiplicities. -/

/-- Consumer-facing PFR return: the chosen structured, nonempty B
has its exact translated-source identity, AND its quantitative
submodule Cauchy--Schwarz bound now holds against the energy of
THE ORIGINAL A. No analytic or cross-version premise is discarded. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
