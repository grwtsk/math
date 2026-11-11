# conductor_bounds_of_localized_witness — transitive domain migration v2

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.GaussianLocalization.conductor_bounds_of_localized_witness`.
Maintained module [WeilGaussianLocalization.lean](../WeilGaussianLocalization.lean) is unchanged, blob `4dd56d11b74f7b4e63b64c29e8a8c0485cd4ba0c` at base `c14f9934bbe83e7ff5706f6a730947fac003a412`.
Its `hadmissible` type now imports the corrected C-infinity Admissible, rather than analytic order. This field was not used by its proof. Its support, MemLp, archimedean integrability, Gaussian and cutoff bounds, strict negative margin, and equality with original primitiveArithmeticValue remain explicit. No premise is silently removed by this transitive change.
Correction source: Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/Analysis/Calculus/ContDiff/Defs.lean`, exact order notation. Original primary proof and dependencies remain in its prior record; this successor adds only domain-migration provenance. See [migration](../../WeilArchimedeanDomain.provenance/MIGRATION-v2.md).
The new archimedean-domain module can supply harch for genuinely admissible tests; it does not supply the arithmetic pairing identity or interpolation. Old semantic failure retained; elaboration, kernel replay, axiom audit, downstream compatibility and independent review NOT_RUN. Novelty UNASSESSED. No source body, target or dependency pin changed.
