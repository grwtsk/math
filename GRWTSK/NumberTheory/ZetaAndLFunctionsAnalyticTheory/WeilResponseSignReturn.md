# Signed response criterion and certified approximation charge

Local attribution: grwtsk contributors.
Owner: [WeilResponseSignReturn.lean](WeilResponseSignReturn.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseSignReturn`.
MSC2020: 11M06, 47B25, 65J10.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

## Exact source and first unresolved premise

Use H, V, J, q, lambda, W and R from `WeilResponseGeneratedCore.md`.
No new positive model is substituted. For epsilon in R define

    Q_epsilon(z)=q(z,z)+epsilon ||Jz||_H^2,
    D_epsilon(h)=<h,Rh>_H-(lambda-epsilon)||Rh||_H^2.

The weak equation on w=W h gives the EXACT identity

    Q_epsilon(W h)=D_epsilon(h).

Thus the decisive arithmetic obligation is the signed comparison
R-(lambda-epsilon)R*R >= 0, on all finite load combinations, not positivity
of the already positive regularized response R. This file identifies that
obligation precisely and returns it to the original criterion. It does not
prove it, create numeric certificates, or assume it inside a new operator.

## Complete analytical arguments

### Extension from the proved response core

`responseCore_closure` proves density in the complete ORIGINAL form topology.
The functional Q_epsilon is continuous there, because q is a continuous
bilinear form and J is bounded. Its nonnegative set is closed. Consequently

    forall z in V, Q_epsilon(z)>=0
      iff forall c : Nat ->_0 Real, D_epsilon(L(c))>=0.

The forward direction is evaluation at W L(c). The reverse direction is
closedness plus the actual core density. All finite supports and all signed
real coefficients are quantified; checking only the individual sine loads
would lose the complex/signed coupling analogue even in this real source.

By classical negation, a negative full-domain direction exists iff a negative
finite response combination exists. This is a qualitative witness-existence
theorem. It supplies no effective bound on support, precision or search time.

### Error when an exact response is approximated

Let v in V be a trial and assume the genuine graph error ||W h-v||_V<=eta.
Contractivity of J gives ||Rh-Jv||_H<=eta, and eta>=0 follows. For

    d_trial=<h,Jv>-(lambda-epsilon)||Jv||^2,

Cauchy--Schwarz gives a linear error <=||h|| eta. The reverse triangle
inequality and ||Rh||<=||Jv||+eta give

    | ||Rh||^2-||Jv||^2 | <= eta (2||Jv||+eta).

Combining the two yields the full charge

    |D_epsilon(h)-d_trial|
      <= eta [||h||+|lambda-epsilon|(2||Jv||+eta)].

The absolute value on lambda-epsilon is essential; epsilon is not silently
restricted to one side of the regularization. For a finite-sine trial,
`weakSolve_error_le_physical` supplies eta=||h-(A+lambda)f_trial|| from the
ENTIRE physical residual. Its original Parseval/finite-row/remote bounds
remain the separately proved certificate suppliers. No finite row sample is
relabelled a full dual residual.

If |d_trial-observed|<=rounding, subtract rounding AND the response charge
before claiming a lower bound. `responseDefect_lower_of_observation` states
this direction explicitly. The statement does not evaluate either charge.

### Return to the original dyadic stage

Every original admissible real odd source representative lifts uniquely to
V. The source bilinear diagonal and physical squared mass are transported
through a.e. equality, including translated null sets; finite energy remains
an explicit domain premise. Hence the core sign gives

    shiftedOddWeilEnergy(T,beta,f)+epsilon integral |f|^2 >= 0.

At T=j+1, beta=0, epsilon=(1/2)^j, this is exactly the existing
`OddLiteralCofinal.StageLower j`, whose definition uses beta=-epsilon.
`stageLower_of_finite_response_sign` performs this return. The final theorem
calls `nonnegative_of_stageLower` with the original stages and original
supported test domain. It introduces no new RH statement or altered criterion.
The all-stage universal sign remains a hypothesis.

## Declaration map

- `correctedEnergy`, `responseDefect`, `correctedEnergy_continuous`,
  `correctedEnergy_response`: exact form/response identity and physical shift.
- `nonnegative_iff_finite_responses`, `negative_witness_iff_finite_response`:
  true dense-core equivalence and qualitative negative witnesses.
- `trialDefect`, `responseDefect_error_le`: signed approximation charge.
- `finiteTrial_responseDefect_error_le`: direct consumer of the complete
  original finite-sine physical residual, with its minimizing pole port.
- `responseDefect_lower_of_observation`: separate rounding/response prices.
- `literal_lower_of_finite_response_sign`: original a.e. representative return.
- `stageLower_of_finite_response_sign`,
  `literal_nonnegative_of_finite_response_signs`: unchanged literal/cofinal
  consumers. Neither supplies the missing universally quantified sign.

## Falsification and scope

A bounded positive response is insufficient: R=I, lambda=2, epsilon=0 gives
D(h)=-||h||^2. Even all one-coordinate tests can pass while a combination
fails. A rational control is

    R = [[9/20,1/4],[1/4,9/20]], lambda=3/2, epsilon=0.

R is symmetric positive with eigenvalues 7/10 and 1/5, both <=1.
D's matrix has positive diagonal 21/400 and off-diagonal -7/80.
The vector (1,1) gives -7/100. These are synthetic algebraic controls,
not a negative direction for the actual Weil form and not RH counterexamples.

No original-sine form-core claim, numerical source sign, effective convergence
rate, compactness/discrete spectrum, zero-spectrum identification, primitive
Dirichlet character transfer, or universal certificate existence is asserted.
A positive construction shift remains removed in the signed comparison.

## Provenance and evidence

Inspected base: `grwtsk/math@300b564894b2c6fe44424ae4a4da9a8170d4c50d`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a local consequence of the exact source weak equation and the new
proved core, not an externally imported paper result. Principal inspected
canonical consumers: `WeilFiniteSineSolveResidual.lean` (blob
`4c023c9c33f256ba83bda68c47d6d66b47e36fa0`) and
`WeilOddLiteralCofinal.lean` (blob
`8140cfc4ecb141a24bb183e7b3e41dbf3a8f00cf`). The original gamma, prime,
pole, residual and cofinal hypotheses retain their meanings.

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, kernel replay,
transitive axiom audit, clean dependency replay, certified numerical source
evaluation and independent review: NOT_RUN. Static text checks and synthetic
algebra controls, if run, are separately scoped in math#1837. No novelty claim;
prior-art completeness UNASSESSED. Root imports, pins and historical evidence
remain unchanged.
