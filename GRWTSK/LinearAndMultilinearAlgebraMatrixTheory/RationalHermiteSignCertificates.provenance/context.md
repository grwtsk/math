# Program 6 rational sign-certificate increment

Local attribution: grwtsk contributors. Date: 2026-11-11. Coordination: [math #1806](https://github.com/grwtsk/math/issues/1806), [research #48](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/48).

## Exact source and evidence

Inspected base: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`; root tree `bcc23336ee84e2d954719dfb20cf1fe62abb5c06`. Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No pins, root imports or policies change.

Canonical module: [RationalHermiteSignCertificates.lean](../RationalHermiteSignCertificates.lean), Git blob `e5d0d80f8af9aea40ef334991d560ba736297c5e`, SHA-256 `b63599ddfce665b51290691a72caa2eb6b386255ce77c4fe2ee74a540208eb3c`, 6788 UTF-8 bytes, ten theorem bodies.

`FORMAL_SOURCE_CANDIDATE`. Source-text/token checks and Git blob identity checks are not Lean parsing. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytic review and independent reproduction: `NOT_RUN`. No local Lean/Lake executable was available. Canonical Noe proof-automation skill access returned 404 at `0126ba445446dea25047a89884df1adf6b10251a`; no dependent proof execution was dispatched. No novelty is asserted; this is a standard finite continuity/error-budget consequence.

## Primary argument and comparison

A finite real quadratic is continuous. Its strictly negative locus is open. The finite product topology supplies coordinatewise open neighborhoods inside that locus; rational density supplies a rational coefficient in each neighborhood. Hence any negative real direction has a rational witness, even when the matrix is singular or has nonsymmetric entries. Testing all rational vectors is equivalent to nonnegativity on all real vectors; testing finitely many or basis vectors is not.

For rational center M, symmetric nonnegative radius E and rational q, the exact upper expression is `q^T M q + sum E_ij |q_i q_j|`. The prior Program 6 enclosure theorem bounds the true quadratic by this expression. The new Boolean test reuses Program 10's `Packet.Guard`, and accepts only a STRICTLY negative upper expression. The true enclosure is a separate proposition, not a datum a producer can assert with a flag.

For conditional completeness, fix the rational negative q. The upper expression is at most `q^T H q + 2*errorBudget(E,q)`: one budget is the center error and another is the explicitly added radius. A sound supplier with arbitrarily small vectorwise budgets therefore eventually has an accepted packet. No monotone precision, computable convergence rate or actual supplier is produced. An explicitly surjective schedule then reaches an existing accepted pair; no runtime bound is proved.

The exact Mathlib dependencies inspected are `Rat.denseRange_cast`, `DenseRange.exists_mem_open`, and `isOpen_pi_iff'`, at the pinned revision. Mathlib authorship/license is preserved by imports; no upstream source is copied. The local mathematical consumer is ZCERT-1 sections 6--8 at research `b8c773f7847126518bcc20f3e37d1223af889cf4`; this is an extension by standard consequences, not a new attribution of an external paper theorem. Program 10 `RationalEnclosureCertificates.lean` (blob `521686ced291fdd04b3e214ce6489bd07dc0410a`) owns the rational Packet and positive checker. Program 6's prior Hermite criterion supplies the finite source converse. Program 8's new finite spectral divisor retains analytic orders only for its model; Program 9's quartet is a synthetic control, not arithmetic data.

## Hostile controls and limitations

The two-point rational packet has center diag(2,-2). At q=(0,1), zero radius is accepted, radius two gives upper value zero and is rejected, and radius minus one is rejected by the guard. The three Lean control proofs have NOT been executed. A packet can pass its finite arithmetic test while failing to enclose a different source matrix; no conclusion about that source follows. A rejected packet is inconclusive, not a positivity proof.

Reproducible rational controls and exact source references are owned by research `artifacts/reproducibility/zero-certification/rational-signs-2026-11-11/`; publication and execution observations are recorded in the coordinating issues. No Lean source is mirrored there. Any independent Python controls do not execute this Lean checker or establish its elaboration.

## Reproduction target

From a clean checkout of the publication commit recorded in #1806, retaining the pinned dependencies: `lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.RationalHermiteSignCertificates`. This command was not run here. Each adjacent record names the fully qualified declaration for later source-bound kernel/axiom review. Operational proof-execution receipts belong in Noe.
