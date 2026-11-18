# Popcorn reference on the original lasso kernel

Local attribution: grwtsk contributors.
Owner: [SoficCyclicPopcornKernel.lean](SoficCyclicPopcornKernel.lean).
Namespace: the existing symbolic-dynamics prefix followed by
`SoficCyclicPopcornKernel`. Related source: math#1832.

`phase` reads the absolute exponent residue of an existing `LassoKernel`
element. `phase_injective` uses the canonical `kernelResidueEquiv`, not a
new finite group. `lassoKernel` is the corresponding submatrix of the
actual cyclic popcorn matrix. `lassoKernel_posDef`,
`lassoKernel_isHermitian`, `lassoKernel_diag`, and `lassoKernel_entry`
return its complete positivity/entry properties to that original carrier.

The proof of injectivity is residue equality -> equality in ZMod ->
injectivity of the existing residue equivalence. Matrix positivity then
uses the actual injective submatrix theorem. The source depends on
`SoficCyclicMonoidKernel.lean` blob
`5b44e1a2dc14093e024de7ca8d4831661440212f` at the inspected base.

Absolute residue is not the offset from the first cyclic state when the
internal identity is elsewhere in the cycle. The transient monoid states
are NOT projected injectively into this group by this theorem. Existing
residual tags remain necessary for full source recovery. There is no
claim about the full syntactic monoid, a VOA realization, or RH.

This is a local consequence of canonical declarations, not an external
paper adaptation. Its consumer is a source-qualified cyclic reference for
`WeilPopcornReference`; no arithmetic lower comparison is supplied.

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
