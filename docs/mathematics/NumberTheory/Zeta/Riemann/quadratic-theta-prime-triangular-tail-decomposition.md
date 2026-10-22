# Triangular smoothing: near boundary plus tail leakage

The previous corrected boundary interface still assumed exact spatial
localization of the smoothing error.  That is not the right model for a
triangular/Fejer-type kernel: triangular Fourier coefficients correspond to a
kernel with global spatial tails.

The source now uses the correct decomposition

[
mathrm{total error}
=
mathrm{near boundary error}
+
mathrm{tail leakage}.
]

The near-boundary term is tied to a concrete interval of width at most

[
leftlceil X/Nightceil
]

and the previously proved arithmetic estimate gives

[
|mathrm{near boundary error}|
le
leftlceil X/Nightceil log(4X).
]

A new structure
`TriangularBoundaryTailData X N m tailBound`
names the near-boundary error, tail error, total error, and proves the exact
decomposition.  The source proves

[
oxed{
|mathrm{total error}|
le
leftlceil X/Nightceillog(4X)
+
mathrm{tailBound}.
}
]

Thus the boundary-counting contribution is completely separated from the
remaining analytic problem.

For the balanced cutoff (Nasymp X^{1/3}), the near-boundary power remains
(X^{2/3}) up to logarithms.  The only new requirement is therefore a global
tail-leakage estimate at or below the (X^{3/4}(log X)^2) scale.

The open interfaces are:

- `TriangularBoundaryTailDecompositionClaim tailBudget`;
- `SevenEighthsTriangularTailBudget tailBudget`.

No tail estimate is proved.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BOUNDARY_TAIL_DECOMPOSITION_TYPED / TRIANGULAR_TAIL_BOUND_OPEN`.
