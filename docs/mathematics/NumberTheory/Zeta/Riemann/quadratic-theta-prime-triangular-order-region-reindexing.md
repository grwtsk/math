# Triangular order-region reindexing

The positive and negative pair regions are now reindexed exactly by offset.

For (1\le d<N), define
[
D_d^+=\{(b+d,b):0\le b<N-d\},
qquad
D_d^-=\{(b,b+d):0\le b<N-d\}.
]

The source proves
[
\{(a,b):b<a<N\}
=
\bigsqcup_{1\le d<N} D_d^+
]
and the analogous identity for (a<b).

Distinct offsets give disjoint diagonal pair finsets, so Mathlib's
`Finset.sum_biUnion` yields the exact sum reindexing. Consequently the
previous interface `TriangularOrderRegionsToDiagonalsClaim` is discharged.

The remaining autocorrelation assembly is now only:
1. evaluate the zero-offset region;
2. insert the already-proved diagonal formulas;
3. divide by (N) and identify the resulting positive/negative Fourier terms
   with the symmetric triangular kernel.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ORDER_REGION_REINDEXING_SOURCE_WRITTEN / AUTOCORRELATION_ASSEMBLY_OPEN`.
