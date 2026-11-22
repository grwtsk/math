# Finite cyclic popcorn kernel

Local attribution: grwtsk contributors.
Owner: [CyclicPopcornKernel.lean](CyclicPopcornKernel.lean).
Namespace: `GRWTSK.NumberTheory.CyclicPopcorn`.
Subject: elementary arithmetic, finite Gram forms (MSC 11A25, 15B48).

## Exact statements and primary argument

For every natural p, `residueIncidence`, `residueGram`, and `kernel` define
actual real matrices on `Fin p`, not a positivity predicate stored in data.
`residueGram_apply` identifies a row contribution with residue equality.
`residueGram_quadratic` and `kernel_quadratic_sum_squares` give the explicit
weighted squares of residue-class sums. The weights are `totient d / p`.
For p>0 the divisor d=p contributes the identity, yielding
`kernel_sub_floor_posSemidef`, `kernel_coercive`, and `kernel_posDef`.
`kernel64_coercive` evaluates the coefficient as 1/2.

`kernel_eq_gcd` proves the ENTRY identity
`K(i,j)=gcd(i+p-j,p)/p`, by filtering the divisors of p to the divisors
of that gcd and applying pinned mathlib `Nat.sum_totient`. The shifted
natural difference represents i-j modulo p; it does not order the group.
`kernel_diag`, `kernel_symmetric`, and `kernel_isHermitian` retain all entries.
The complex extension has the same entries; `complexKernel_isHermitian`,
`complex_quadratic_re`, and `complex_quadratic_coercive` treat both real
components, not only a sampled real subspace.

These are local elementary derivations, not an imported theorem or a
formalization of the whole result-280 manuscript. The companion
`ThomaeNullPotential.kernel_eq_thomae` proves the literal reduced-denominator
connection. `SoficCyclicPopcornKernel` pulls this matrix to the existing
lasso cycle; `WeilPopcornReference` consumes it without changing Weil entries.

## Controls

Exact rational diagnostics checked all 11,440 entries for 1<=p<=32 and
160 rational vectors (seed 1837). They checked the gcd/incidence identity,
reduced rational denominator, symmetry, full quadratic identity and lower
bound. These finite controls neither quantify over all p nor execute Lean.
The period p=0 is an empty carrier, not a positive-period lasso. A finite
counting-measure Gram matrix must not be confused with the Lebesgue
multiplication operator of the pointwise popcorn function.

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
