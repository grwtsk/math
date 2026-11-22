# Original gamma quadrature with rational coefficient rounding

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilGammaRoundedQuadrature.lean](WeilGammaRoundedQuadrature.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaRoundedQuadrature`.
MSC2020 primary 11M06; dependencies 47A30 and 65G20.
Status **SOURCE_PROOF_CANDIDATE**; novelty/prior-art completeness **UNASSESSED**.

## Source and exact modification

Keep the original physical L2 space, translations U_r, projection P_T,
finite-sine synthesis f_a, and signed prime/pole remainder. The original
symmetric difference is D_r f=2f-U_r f-U_(-r) f, so ||D_r f||<=4||f||.
The canonical finite quadrature row is

    P_T sum_{i<N} w_i D_(mid_i)f + 2 t_N f,
    w_i=cellWeight(x_i,x_(i+1)), t_N=tailWeight(x_N).

`roundedRow` replaces ONLY w_i and t_N by supplied rational values wHat_i,
tHat. It retains the same real midpoint translations. The rational-weight
module supplies bounds for these coefficients at logarithmic lag nodes.
No approximate translation position or prime/pole value is hidden here.

## Complete primary argument

Suppose |w_i-wHat_i|<=e_i for every panel, and |t_N-tHat|<=e_tail.
Finite linearity, ||D_r f||<=4||f||, and ||P_T||<=1 give

    ||middleRow-midHat|| <=4(sum_i e_i)||f||.

The separated far row contributes at most 2 e_tail||f||. Therefore

    ||quadratureRow-roundedRow||
       <= [4 sum_i e_i+2 e_tail] ||f||.                     (1)

This charges every lag-panel weight and the complete far coefficient. It is
a FULL physical L2 bound, not a bound only on tested Fourier coordinates.

Add the unchanged signed prime/pole output to both rows. Their difference is
unchanged. The canonical finite-sine source-output theorem already gives

    ||A_beta f_a-approximateOutput||
       <= (x_0+x_0^2+5 mesh) slopeBound(T,a),

under its original monotone positive mesh, relative-width and x_N>=2T
hypotheses. The triangle inequality and (1) prove

    ||A_beta f_a-roundedOutput||
       <= (x_0+x_0^2+5 mesh) slopeBound(T,a)
          +[4 sum_i e_i+2 e_tail]||f_a||.                   (2)

The operator A_beta is the pre-existing associated physical source operator.
Its finiteDomain membership and literal output identity are reused; no
new hsource premise, inverse model, or positivity hypothesis is introduced.

## Individual declaration correspondence

- `middle_rounding_error_le`: finite weighted-row subtraction, full norm
  triangle inequality, symmetric-difference mass bound, and finite sum.
- `row_rounding_error_le`: contractive physical projection plus the separate
  far coefficient error. No support or mesh assumption is needed for this
  algebraic comparison when the coefficient-error premises are supplied.
- `finiteOutput_error_le_rounded`: (2), with the exact original sine output,
  all existing mesh hypotheses, and unchanged signed prime/pole part.
- `sourceOperator_error_le_rounded`: exact canonical operator consumer, using
  `sourceOperator_finiteDomain`, not a new operator definition.

Definitions `roundedMiddle`, `roundedRow`, `coefficientCharge`, and
`roundedOutput` name these precise quantities. No new response criterion or
certificate checker is introduced.

## Downstream agreement and limitations

The complete row-error input to spatial residual Grams can use the sum of
the old near/mesh charge and (1), rather than the old charge alone. Correction
matrix evaluation must still pay its own mixed-pairing errors. Norm inflation
does not pay a scalar correction twice or silently pay it once elsewhere.
These applications use the existing generic column-error inequalities; this
file does not assert a passing response-block certificate.

At the five example nodes, four panel radii are 10^-9 and the far-coefficient
radius is 1/(2*10^9), so coefficient rounding costs at most 17*10^-9||f||.
This is NOT the total source error: near-zero, lag-mesh, position evaluation,
prime/pole/gamma-constant evaluation, spatial variation and subsequent
certificate rounding remain separate. The example mesh is not claimed to be
optimal or sufficient for any signed margin. The final lag exceeds four;
this does not certify all other radius-two packet conditions.

## Pins and evidence

Inspected base `grwtsk/math@bbf9ed09f0e29d1fd2796f4c7a5317fdcecc7ff6`.
Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilGammaBochnerRow.lean](WeilGammaBochnerRow.lean), blob
  `2b6539c6c70075bb022a8487e8b3192a70df3aa6`:
  `symmetricDifference_norm_le_mass`, `physicalWindow_norm_le`, `quadratureRow`.
- [WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean), blob
  `4c0038754542e9ad2e0b33b55add264d074320db`:
  `finiteOutput_error_le`, `approximateOutput`, `primePolePart`.
- [WeilGammaRationalWeights.lean](WeilGammaRationalWeights.lean): the new
  coefficient producer with its own complete argument/provenance.

This is local norm-error accounting, not a new general perturbation theorem.
Written argument supplied. Lean parsing/elaboration, exact types, fresh kernel
replay, transitive axiom audit and independent review: **NOT_RUN**. Source may
need elaboration repairs. Existing source candidates retain their status.
No actual operator row, residual matrix, or Weil sign was numerically certified.
