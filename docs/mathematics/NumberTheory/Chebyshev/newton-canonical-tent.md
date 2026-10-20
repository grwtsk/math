# Local Newton witnesses for canonical tent evaluation

Owner #194; local-zero consumers #134/#139 and canonical consumer #261.
Additive extension of draft #274 at parent
`13ea6b73a10aa27c97ed5935e9b0cca83cf3dc7c`, tree
`4e8da0a27a24007a241e49b296551c768db8d505`.
Mathlib stays `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All proof scripts, including
inherited scripts, remain unelaborated candidates. No actual zeta-value enclosure,
zero inventory, executable evaluator or kernel acceptance is produced. This is
classical fixed-preconditioner Newton/Banach mathematics, not a novelty claim.

## 1. Replace an existence premise with quantitative analytic estimates

The preceding canonical evaluator requires one actual zero per separated record,
with a local multiplicity lower bound, and an independent complete upper count.
This increment supplies the local witness for UNIT-weight records through a
Newton-disk theorem. It derives existence, uniqueness and analytic order one from
three precise analytic estimates. It does not merely repackage an assumed zero.

Let f be analytic at every point of the closed disk D={z:|z-c|<=R}, R>0.
Choose a fixed rational-complex preconditioner A; it need not be the exact inverse
of the derivative. Rational-complex v,d approximate the actual f(c),f'(c).
The independently PROVED analytic inputs are

    |f(c)-v| <= e0,
    |f'(c)-d| <= e1,
    forall z in D, |f''(z)| <= L.

The last estimate is on the WHOLE closed disk, not a derivative sampled at its
center or on a finite grid. Error radii and L must be nonnegative. The rational
Boolean calculation cannot establish these analytic inputs.

## 2. Construct residual and contraction allowances

For rational-complex u, put mag(u)=|Re u|+|Im u|. It bounds the Euclidean norm but
is not asserted to equal it. Named complex multiplication is reused from the
existing rational-coordinate owner; componentwise pair multiplication is not used.

Compute, using exact rational arithmetic,

    eta = mag(A*v)+mag(A)*e0,
    kappa = mag(1-A*d)+mag(A)*(e1+L*R).

The center residual satisfies |A*f(c)|<=eta. The mean-value inequality, applied
to f' on the convex disk, gives |f'(z)-f'(c)|<=L*R. Consequently

    forall z in D, |1-A*f'(z)|<=kappa.

Both derivative-evaluation uncertainty e1 and spatial variation L*R remain.
There is no numerical division by a possibly vanishing derivative.

The finite criterion checks

    R>0, e0>=0, e1>=0, L>=0,
    kappa<1,
    eta+kappa*R<=R.

Nonnegativity of kappa follows from these data. The strict inequality cannot be
weakened to <=1. The last inequality is a distinct self-map requirement; a
contraction can have its only fixed point outside the chosen disk.

## 3. Actual Banach application and simple-zero conclusion

Define the fixed-preconditioner Newton map T(z)=z-A*f(z). Its derivative is
1-A*f'(z); the uniform bound makes it kappa-Lipschitz on D. The center residual
and self-map margin give

    |T(z)-c| <= kappa*|z-c|+eta <= R.

D is a nonempty complete metric subspace. The source applies pinned Mathlib's
ContractingWith.exists_fixedPoint' to the restricted map, not to a global
contraction assumed without proof. A fixed point exists. The derivative-defect
bound at c excludes A=0, so T(z)=z implies f(z)=0. The same contraction estimate
forces uniqueness of any zero in D.

At every point of D, f'(z)=0 would give |1-A*f'(z)|=1, contradicting kappa<1.
The obtained zero therefore has nonzero derivative. The pinned analytic-order
theorem then yields analyticOrderAt f z=1. A separate source lemma retains the
position allowance |z-c|<=eta/(1-kappa).

The disk and self-map margin are CLOSED. Equality can put the unique simple zero
on the boundary. This theorem is not a zero-free contour-boundary certificate.
A strict interior conclusion would require an additional strict margin.

## 4. Bind the analytic estimates to actual zeta

LocalNewtonWitness.checkAt also checks

    0<Re(c)-R, Re(c)+R<1.

The entire disk is then in the open critical strip. Source analyticity follows
from the actual riemannZeta pole exclusion; no arbitrary analyticity field is
supplied by the caller. The zero obtained from the Newton theorem satisfies the
maintained NontrivialZetaZero predicate: its positive real part excludes negative
even points, and its real part below one excludes the pole.

The source constructs an actual CanonicalZeroDivisor.ZeroPoint in the SAME disk,
with the actual analytic multiplicity equal to one, and uniqueness among all
actual nontrivial zeros in that disk. No critical-line projection or line-status
claim is made. The sufficient strip guard may reject other legitimate disks;
failure of this selected criterion does not prove absence of zeros.

The required Estimates are literally about riemannZeta, deriv riemannZeta, and
deriv (deriv riemannZeta), at the external center and over the external disk.
They have NOT been constructed for any actual numerical zeta example here.
The existing Mellin-density evaluator does not evaluate these different functions
and cannot be substituted for that missing analytic supplier.

## 5. Compose with the unchanged canonical evaluator

checkFamily uses a typed datum at EVERY record index, requires record multiplicity
one, and checks each Newton criterion at exactly the center and radius already
used by the canonical tent calculation. This is a finite mathematical function
of record indices, not a parser or byte-level table validator. Serialized table
coverage would require its own decoding/refinement theorem.

localWitnesses_of_checks constructs the preceding LocalWitnesses from those
finite checks and the independently proved analytic Estimates. The old route for
higher multiplicity remains unchanged; Newton contraction cannot certify a
multiple zero as a simple one, and a cluster count is not a substitute.

NewtonTentEvaluation.checkWithin retains ALL previous geometry, pairwise disk
separation, closed-height bounds, tent discretization, node-value uncertainty,
inner/family arithmetic, coordinate transport and requested tolerance checks.
It adds the quantitative local criteria and derives the local witnesses before
calling the existing canonical theorem. Its conclusion is the SAME complete
canonical tent-head error bound.

The actual complete upper-count hypothesis heightCount(T)<=recordMass is still
an independent proof argument. Neither a local Newton success nor a list of such
successes proves that no other zeros are missing. No count normalization, global
contour limit, omitted-divisor tail or strict prime margin is supplied.

## 6. Controls and evidence limits

For f(z)=z^2-2 at c=3/2, R=1/4, A=1/3, v=1/4, d=3, e0=e1=0 and L=2, the computed
allowances are eta=1/12 and kappa=1/6, with eta+kappa R=1/8<=1/4. The literal
rational guard is a source control. A separate affine analytic example composes
the actual Banach theorem. Neither function is zeta.

Controls reject zero preconditioners, missing self-map margins, non-strict
contraction, imaginary derivative defects, negative radii/bounds, zero R and
closed disks touching the strip boundary. A double zero cannot satisfy the true
strict derivative-defect test at that zero.

A deliberate false-data control makes the proof boundary visible. For
f(z)=z^2-z/50+1/5000 at c=0, A=-50 and R=1/50, a FALSE claimed L=0 passes the
rational test. The true L=2 rejects it. In fact both exact rational-complex roots
1/100 +/- i/100 lie inside this disk. The source does not claim Estimates for the
false datum. Arithmetic acceptance without its analytic proof is not a root
certificate; this is why that argument cannot be dropped.

All new source needs pinned elaboration, proof repairs if necessary, exact public
and generated type checks, transitive import/axiom reconciliation and independent
acceptance. No Lean/Lake execution or runtime qualification occurred. Auxiliary
Python tests are separate exact finite polynomial models, not Lean proofs and
not actual zeta data. Scripts and reports remain outside the math repository.

Next: certified actual center zeta/derivative values and a usable uniform second-
derivative estimate on the chosen disks, independently the normalized complete
upper count, and pinned source acceptance. No local zero dataset, bounded line
result, new prime-distribution bound, Legendre or RH conclusion is claimed.
