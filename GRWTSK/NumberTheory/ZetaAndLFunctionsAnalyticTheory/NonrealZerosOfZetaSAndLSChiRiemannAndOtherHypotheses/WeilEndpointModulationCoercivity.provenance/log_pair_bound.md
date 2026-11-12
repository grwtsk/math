# log_pair_bound — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6830340391.

## Exact declaration and source

File: [WeilEndpointModulationCoercivity.lean](../WeilEndpointModulationCoercivity.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointModulationCoercivity.log_pair_bound`.
For all real x,y, with the explicit hypothesis x+y!=0,

    log|x+y| <= log(1+x^2)/2 + log(1+y^2)/2.

Lean source Git blob: 9b11fdf60cf727b690b85e43385b976b98da4d91.
SHA-256: 04028134a7950b702afa70584bae21b2fae5310a03dbdb886ad19b3ef5e60964.

## Complete proof and consumer

The private helper expands
(1+x^2)(1+y^2)-(x+y)^2=(xy-1)^2. Its right side is nonnegative.
Both factors 1+x^2,1+y^2 are positive; (x+y)^2 is positive by the hypothesis.
Apply the increasing real logarithm to the resulting inequality, use the
product and square logarithm identities, and divide by two. This proves the
literal statement, with no assertion using a totalized logarithm at zero.
The body uses ring, nlinarith, log_le_log, log_mul, log_pow, log_abs and linarith.
These are inspected source uses, not executed proof evidence.

The direct Lean consumer is `shifted_log_pair_bound`. The analytical consumer
is WEMC-v1-2 in [the companion note](../WeilEndpointModulationCoercivity.md):
substitute x=xi/b, y=(eta-xi)/b, then use the actual gamma multiplier lower
bound and Plancherel to derive modulation coercivity. WEMC-v1-3--4 return it
to the full prime/gamma/pole source and the complex endpoint span. Those
integral and arithmetic steps are WRITTEN, not formalized by this declaration.
No independent zero divisor or positive model is introduced.

## Comparison and evidence

This is a locally written elementary logarithmic inequality, not a copied
upstream proof or a direct formalization of a named paper. No novelty is
asserted. Equality when xy=1 checks the gap's sign and scale. The eta=0 case
is explicitly excluded in the later shift consumer. The note records bounded
prior-art comparison with canonical WGPC/WEGR/WEPD, DLMF 5.9.16, and an
abstract-only comparison with arXiv:2312.15689; neither external source is
claimed to state or prove this local declaration.

Inspected Mathlib source: Analysis/SpecialFunctions/Log/Basic.lean, blob
0ed3c957d0d1f37094a8da10e42e6d2c2807e7be at revision
d13f23b723b8a846827a245b89c10fc7d3f11612, declarations log_le_log, log_mul,
log_pow and log_abs. Math main: 68d976d55601e8b827dd9e93bb45678eb074265d.
Lean: leanprover/lean4:v4.34.1. Local attribution: grwtsk contributors.
Status SOURCE_PROOF_CANDIDATE; written argument complete; originality UNASSESSED.
Elaboration, full dependency build, fresh kernel replay, transitive axiom audit,
certified computation and independent analytical review: NOT_RUN.
No sorry/admit/research axiom appears in the new bodies; this source observation
is not an axiom audit or a passing build. RH/GRH and all-window sign remain open.
