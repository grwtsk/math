# Finite strip sampling and Gaussian averaging

Local attribution: grwtsk contributors.

## Mathematical source and consumer

The maintained source is [CriticalStripSampling.lean](CriticalStripSampling.lean),
namespace `GRWTSK.NumberTheory.CriticalStripSampling`. It corrects the finite-grid
proposal supplied for project g: the old step-size constraint did not keep every
row inside the critical strip as the number of rows increased. The consumer is
a finite numerical sampling grid and its normalized averaging operation.

This is an elementary local construction, not a formalization of a published
zero-confinement theorem. Starting repository revision:
`9f997b28e66f1997c9c7c6e1318b08081e2bfd90`. The supplied architecture specification
has SHA256 `d4d153db89e3505e17dcb002053f13f7bb8e53b80eb4f200f8fe328e27300dea`.
The earlier standalone `CorrectedStrip.lean` from that specification is adapted
to the canonical subject namespace; its unrelated scalar enclosure definitions
are omitted in favor of the repository's existing rational-enclosure development.

## Definitions and argument

For `M > 0` and `0 < r < 1/2`, the `2*M` row midpoints are

\[
\sigma_i=\tfrac12+r\left(\frac{i+1/2}{M}-1\right).
\]

The source proves that every row lies in `(0,1)`, reversal sends `sigma` to
`1-sigma`, and the two central rows are `1/2 ± r/(2*M)`. The central-cell
predicate is equivalent to the explicit pair of strict inequalities. Heights
are arbitrary sample coordinates; repeated heights are permitted.

For positive `tau`, each Gaussian weight is positive, hence the finite row mass
is positive. Dividing by that exact mass produces a nonnegative matrix whose
row sums are one. `normalizedGaussian_preserves_constants` proves constant
preservation. `normalizedGaussian_norm_le` applies the complex triangle
inequality and the row-sum identity to prove that a supplied uniform column
bound is preserved. No sign or positivity of the sampled complex values is
assumed.

The principal declarations are `reverseRow_involutive`, `rowSigma_reflect`,
`rowSigma_mem_strip`, `rowSigma_leftCenter`, `rowSigma_rightCenter`,
`withinCentralCell_iff`, `gaussianWeight_pos`, `gaussianRowMass_pos`,
`normalizedGaussian_nonneg`, `normalizedGaussian_row_sum`,
`normalizedGaussian_preserves_constants`, and `normalizedGaussian_norm_le`.

## Exact scope

- The input values are not identified with zeta or an L-function.
- Sample heights do not constitute a complete zero divisor or certified roots.
- The central-cell predicate is defined, not proved for nontrivial zeros.
- The finite averaging matrix has no asserted heat-semigroup composition law.
- Norm contraction of sampled data gives no sign conclusion for an indefinite
  Weil form; the repository's signed error-return theorems remain necessary.

The separate source review checked the midpoint/reflection arithmetic and
the stochastic contraction argument. This is a separate mathematical review
pass, not a claim of an independently implemented proof checker.

## Verification

Pinned environment: Lean `4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Direct source compilation completed
successfully with no warnings. Final source-bound kernel replay and axiom
results are recorded in the coordinating [issue #1839](https://github.com/grwtsk/math/issues/1839)
after the final source review. Repository-wide validation and Rust execution
are outside this module's evidence scope.

## Exact maintained source

The checked Lean source has SHA256
`b07aa1980ba6490016667125c6045077932028c6deb9effc98ef1c8dc8256b81`. The checks above and the final issue record refer to these
bytes; later source edits require their own evidence.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
