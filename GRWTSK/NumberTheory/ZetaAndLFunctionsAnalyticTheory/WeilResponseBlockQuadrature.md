# Complete source suppliers for response-block certificates

Local attribution: grwtsk contributors.
Source: [WeilResponseBlockQuadrature.lean](WeilResponseBlockQuadrature.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseBlockQuadrature`.
MSC2020 primary: 11M06; dependencies in 65G20 and 15A48.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty/prior-art completeness UNASSESSED.

## Exact source and analytical construction

Keep the preceding block's actual finite-sine loads and primal/dual trials,
its source q, lambda, derivative load and minimizing negative-pole port.
The canonical `approximateResidual` uses beta-lambda, and the existing
source-return theorem gives the COMPLETE physical column error

    ||r_i-rhat_i|| <= delta_i,
    delta_i=(x(0)+x(0)^2+5 mesh) slopeBound(T,a_i).

The lag mesh is monotone, starts strictly above zero, reaches at least 2T,
and satisfies the existing relative-width bound. These are retained as
explicit hypotheses, not asserted for an arbitrary numerical mesh.

### Full Gram inflation

If the complete approximate residual Gram is at most G in quadratic order,
then for every real coefficient vector z,

    ||sum z_i r_i|| <= ||sum z_i rhat_i|| + sum |z_i| delta_i.

Cauchy--Schwarz gives

    (sum |z_i| delta_i)^2 <= |I| sum z_i^2 delta_i^2.

For theta>0, expanding (theta u-v)^2 gives

    (u+v)^2 <= (1+theta)u^2+(1+1/theta)v^2.

Consequently the full exact Gram has upper bound

    inflatedGram(G,delta,theta)
      =(1+theta)G+(1+1/theta)diag_i(|I| delta_i^2).           (G)

This applies separately to the primal and derivative-load families. The
physical difference need not have finite Fourier support; all its norm is
paid by the source output theorem. No high-test projection is used.

### Finite source loads and the spatial producer

For a finite sine load f_d,

    approximateResidual(T,beta,f_d,x,N,a)
      = -correctedColumn(T,beta-lambda,x,N,a,d).

Thus simultaneous negation leaves the entire residual Gram unchanged.
The existing `residualGram_upper_of_rational_samples` then supplies G from
whole-window spatial sampling with proved source Lipschitz variation,
outward scalar midpoint enclosures, and rational cell widths/radii. The
source identity is derived, not passed as an `hsource` premise. Midpoint
values without the whole-cell modulus do not suffice.

For a common finite coefficient length,

    dualLoad(f_d,finiteLift(a)) = f_(d-2(lambda-epsilon)a).

This is finite linearity of the SAME original normalized sine synthesis,
including its support and a.e. representative. It makes the dual load another
explicit input to the spatial sampler. The theorem does not claim that an
unknown exact response is a finite sine. Different finite families can be
represented with a common length by zero padding; no separate zero-padding
interface theorem is asserted by this increment.

### Correction entries need an additional charge

Replace r_i by rhat_i only in the residual pairing of the corrected matrix.
The exact symmetrized correction-entry error is bounded by

    F_ij=(delta_i ||Jw_j|| + delta_j ||Jw_i||)/2.             (C)

This follows by Cauchy--Schwarz for EACH mixed entry, then the triangle
inequality. It is symmetric. Paying (G) does not also pay (C): (G) bounds
norms, whereas (C) prices evaluation of the corrected matrix itself.

If |Mhat_ij-O_ij|<=Eround_ij, the complete entry radius is
F_ij+Eround_ij. A certified rational outward envelope supplies the E input
of `ResponseBlockCertificate.checked_block_nonnegative`. Source, quadrature,
scalar rounding and all coefficient cross terms are kept distinct.

## Individual declaration correspondence

- `gram_le_inflated`: generic real-Hilbert proof of (G), retaining every
  vector coefficient and every column. Its only error input is a full norm.
- `physicalResidual_gram_upper`: instantiates (G) with the existing canonical
  output quadrature. The same theorem applies to either solve, including
  its actual derivative load; no source equivalence is assumed.
- `finiteLoad_approximateResidual`: exact sign-reversal identity between
  a response residual and the existing spatial source column.
- `finiteLoads_approximateGram`: both Gram arguments change sign, so the
  whole matrix equals the existing source residual Gram at beta-lambda.
- `finiteLoads_approximateGram_upper`: directly consumes the source rational
  spatial sampler, including all cells covering [-T,T], the source-derived
  modulus, nonnegative scalar radii, and every real coefficient vector.
- `finiteInput_sub_smul`: finite source synthesis commutes with subtraction
  and scalar multiplication, proved on the actual L2 equivalence classes.
- `finiteLoad_dualLoad`: source-return identity for the explicit dual
  coefficient vector, not a new derivative or approximate target.
- `correctionRadius_symmetric`: symmetry of the separate mixed-entry price.
- `correctionMatrix_entry_error`: formula (C), derived from both canonical
  output errors and the complete physical dual-trial norms.
- `correctionMatrix_observed_error`: adds separately supplied scalar-entry
  rounding to (C), the exact prerequisite of the block checker consumer.

Definitions `inflatedGram`, `approximateCorrectionMatrix` and
`correctionRadius` denote only these concrete quantities. They do not
assert their numerical evaluation or certificate success.

## Source provenance

Inspected `grwtsk/math@87538d799fe27620ef06524defc2bfb732193328`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilResponseQuadratureCorrection.lean](WeilResponseQuadratureCorrection.lean),
  blob `31b983bf61fa796c3b6bbadff8dd6f95e25fc119`: the actual approximate
  residual, quadrature charge, and full physical output comparison.
- [WeilFiniteSineSpatialResidual.lean](WeilFiniteSineSpatialResidual.lean):
  current main's source representatives, complete spatial Gram, whole-cell
  modulus and rational sample assembler. This increment consumes that
  concurrent construction rather than replacing it with Fourier samples.
- [SpatialGramEnclosure.lean](../../FunctionalAnalysis/SpatialGramEnclosure.lean),
  blob `276552428c4870314ae3748f954df9a8e2869abc`: Gram identity, full column
  error inequality, Cauchy diagonal allowance and weighted square estimate.
- [WeilOddSineForm.lean](WeilOddSineForm.lean), blob
  `ce5100120f5af50eb520a5a58e6aac0c10f26ba2`: original finite synthesis.

The mathematics is a local consequence of these source-bound identities and
standard finite Hilbert inequalities. This is not a claim that an external
paper contains the precise arithmetic-source block implementation. Established
dual-weighted-residual prior art remains as recorded by the correction source.

## Hostile checks and limitations

Omitting correction evaluation remains unsound even if norm inflation is
paid: the previously recorded one-dimensional control gives a false positive
lower endpoint 3/50 when the source defect is zero. Off-diagonal residual
correlations also cannot be discarded. The current exact-rational controls
check (G) for correlated columns and the full paid block inequality; these
are synthetic matrices, not actual source rows or numerical Weil signs.

For fixed finite data, small column errors and fine spatial ranges can make
the input allowances small. No rate uniform over the load dimension or the
window is proved. The card(I) factor can be conservative, and a passing
certificate is not guaranteed by refinement alone, especially at zero margin.
Rational upper envelopes of all remaining real quantities still require
certified scalar evaluation. The new declarations neither run that evaluator
nor establish the universal certificate-existence premise.

Actual source-independent rational checks and publication hashes are recorded
in math#1837. Parsing, elaboration, exact types, dependency/kernel replay,
transitive axiom audit, certified source numerical evaluation and independent
review remain **NOT_RUN**. A namespace transcription was corrected by source
inspection before publication; this was not a passing Lean execution.
No prior source, pins, root imports, or historical evidence are changed.
