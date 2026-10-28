# Signed Abel readout: finite-law, stability, and heat neighborhood

Contribution: grwtsk.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
Reviewed baseline: `dbb66c7d4fa430ce3f7b48d806a271d9632e4ec8`.
All six final source leaves coexist at
`68daa0f37dc7c836792462877b5e26be58e4d052`.
There are 21 definitions and 67 theorem declarations, counted lexically;
this is not a native declaration census or kernel acceptance.

This note EXTENDS, and does not replace,
`mertens-signed-abel-neighborhood.md`. That pre-existing neighborhood already
connects dyadic variance, weighted refinement, threshold energy, finite rows,
feature recovery, row-Abel transport, and input approximation. Its content and
historical pins are preserved. The additions below reuse its actual sources.
This is a bounded integration of the immediate operator neighborhood, not a
claim that every possible RH-related connection in the repository is proved.

## Exact source and reused neighbors

Keep the original finite prime band, ordered triples, repeated-prime guards,
ordinary prefix windows, middle-depth restriction, Abel coefficients and factor
2/Y. The existing operator has responses A_j(f)_v for v=1,2,3. Define
s(b)=b1-b2-b3. The old source decomposition remains

    bulk_j = H_j - s(A_j(mu))/6,
    |full_packet_j - bulk_j| <= 2.

H_j is the unchanged SIGNED unsifted, one-prime, and two-prime head. It is not
estimated here. No extra boundary arithmetic premise is introduced.

| Existing module | Actual reuse in this increment |
| --- | --- |
| `Analysis/FiniteSums/ThreeCoordinateReadout` | Projection value/energy and the existing dyadic/weighted-cell detail split. |
| `NumberTheory/Moebius/MertensSignedAbelFiniteRows` | The new coefficient notation is definitionally its old `responseRow`; positivity, finite superposition, row reconstruction, weighted Cauchy and feature-fibre recovery are reused. |
| `NumberTheory/Moebius/MertensSignedAbelRowAbel` | The same combined signed row, terminal-zero Abel identity, and separate ordinary-prefix allowances. |
| `Analysis/Inequalities/FiniteKernelCorrelation` | Its actual covariance inequality is instantiated on the normalized arithmetic coefficient array. |
| `NumberTheory/Moebius/MertensSignedAbelTripleOperator` | The actual operator, signed triple identity, original head, and finite input support. |
| `NumberTheory/Moebius/MertensSignedAbelBoundaryCore` | The unchanged two-unit boundary comparison and canonical RH consumer. |

All paths are beneath GRWTSK and end in .lean. Direct/transitive dependencies
are distinguished in the passive specification; complete proof closure has
not been audited. Existing source candidates do not become accepted by import.

## 1. Readout geometry and observability

New module: `MertensSignedAbelReadoutGeometry`.
Namespace prefix for all six additions: `GRWTSK.NumberTheory.Moebius`.
Final blob: `b4ddd280d9965837f532db505ce08a1f82e20444`.

For E(b)=b1^2+b2^2+b3^2 and Pi(b)=(s(b)/3,-s(b)/3,-s(b)/3), the source gives

    s(Pi b)=s(b);  Pi(Pi b)=Pi b;
    E(Pi b)=s(b)^2/3;
    E(b)=E(Pi b)+E(b-Pi b).

Projection value/energy and the explicit detail decomposition reuse the
existing ThreeCoordinateReadout source, whose proof itself imports
DyadicVariance and WeightedCellRefinement:

    E(b)=s(b)^2/3+(b2-b3)^2/2+(2b1+b2+b3)^2/6.

The new minimum-energy theorem states that Pi(b) minimizes E among profiles
with the same signed readout. The exact Cauchy slack is also retained:

    3E(b)-s(b)^2=(b1+b2)^2+(b1+b3)^2+(b2-b3)^2.

The collision (1,1,0) versus (0,0,0) has the same readout; knowing s,b2,b3
recovers b1=s+b2+b3 on the three read coordinates only. Unread coordinates
are never reconstructed by assertion.

For the actual residual d=A_j(mu)-b, the projected residual has energy
[s(A_j(mu))-s(b)]^2/3. A bound on |s(A_j(mu))-s(b)| alone therefore suffices
for the source comparison 2+epsilon/6. No small projected energy is supplied.

## 2. Reuse the actual finite matrix and retain row cancellation

New module: `MertensSignedAbelCoefficientKernel`.
Final blob: `32e7efbf72ccc5376af79c1f780f8816140f0325`.

Let S_j={1,...,Y}, W(v,a)=A_j(e_a)_v, and D(a)=W(1,a)-W(2,a)-W(3,a).
The point input and row coefficients reuse the existing sourceAtom and
responseRow. They are not a second fitted arithmetic matrix. The inherited
row representation and positivity give

    W(v,a)>=0;
    A_j(f)_v=sum_(a in S_j) W(v,a)f(a);
    s(A_j(f))=sum_(a in S_j) D(a)f(a).

The new pointwise stability comparison is

    |s(A_j(f))-s(A_j(g))| <= sum_a |D(a)| |f(a)-g(a)|.

D is combined BEFORE taking an absolute value. Uniform input error eta costs
eta*L_j, where L_j=sum_a |D(a)|. An explicit one-bounded sign input attains
L_j. Therefore no bound uniform over all one-bounded inputs can be smaller
than L_j. The saturating input is NOT claimed to be Mobius, and no growth
estimate for L_j is asserted.

For an actual approximate input g, the complete packet comparison is

    |full_packet_j-[H_j-s(A_j(g))/6]|
      <=2+(1/6)sum_a |D(a)| |mu(a)-g(a)|.

The model and its weighted input error both remain arithmetic obligations.

## 3. Actual coefficient law, marginal means, and dependence cost

New module: `MertensSignedAbelResponseLaw`.
Blob: `84e496353279c6eae5593373f75a370bc31b135c`.

Let M=sum_(v=1..3,a in S_j) W(v,a). For M>0 set P(v,a)=W(v,a)/M,
p(v)=sum_a P(v,a), and q(a)=sum_v P(v,a). Nonnegativity and mass-one
identities are derived from these actual coefficients. This is a law on
COFACTOR and SOURCE-COORDINATE INDICES, not a claimed identification with
multiplicative-function block/residue variables in an entropy-decrement proof.

For chi=(1,-1,-1), the existing finite correlation theorem gives

    |s(A_j(f))-B_j(f)| <= C_j,
    B_j(f)=M (sum_v p(v)chi(v))(sum_a q(a)f(a)),
    C_j=M sum_(v,a)|P(v,a)-p(v)q(a)|,

for one-bounded f on S_j. Both marginal means and the total mass M survive.
Small normalized discrepancy does not automatically pay a small C_j, and
independence alone does not make B_j(f) vanish. No Pinsker theorem, entropy
decrement, or arithmetic independence result is imported.

M=0 is a separate case: all nonnegative coefficients on the finite carrier
vanish, so the signed response is zero. The quantitative inequality extends
through this case, but the zero array is NOT called a probability law.

## 4. Reconnect covariance to the existing Abel and feature machinery

New module: `MertensSignedAbelNeighborhoodTransport`.
Blob: `379542360f190450145d5bd0db05ada660fb8e15`.

Definition-level identities establish compatibility with the older finite-row
and signedResponse definitions. The old decoder criterion is reused exactly:
a feature map supports this scalar readout iff every same-feature input
difference pairs to zero with D. This does not assert that any proposed
arithmetic feature map has that property.

The old weighted Cauchy estimate and row-Abel theorem also act on the same
input difference f-g. A variable prefix budget E(t) gives

    |s(A_j(f))-s(A_j(g))|
      <=sum_(t<Y) E(t)|D(t+1)-D(t+2)|,

when E(t) bounds the absolute ordinary prefix of f-g through t+1. The terminal
coefficient D(Y+1)=0 is inherited from actual source support, not omitted.
The new comparison can retain the minimum of this prefix allowance and the
pointwise weighted input allowance from section 2.

The central new cross-connection is the exact identity

    c_j(f)=sum_a q(a)f(a),
    B_j(f)=s(A_j(constant c_j(f))).

Thus the finite-law discrepancy and row-Abel discrepancy are the SAME centered
arithmetic observable. For one-bounded f and prefix bounds on f-c_j(f),

    |s(A_j(f))-B_j(f)|
      <=min(C_j, sum_(t<Y) E(t)|D(t+1)-D(t+2)|).

For f=mu this returns to the original packet as

    |full_packet_j-[H_j-B_j(mu)/6]|
      <=2+(1/6)min(C_j, sum_(t<Y) E(t)|D(t+1)-D(t+2)|).

Neither allowance is claimed small. The mean depends on the actual column
weights; replacing it by zero or an unweighted mean needs another theorem.
This connection permits covariance/entropy-motivated and ordinary-prefix
methods to support one another without changing the target source.

## 5. Explicit finite heat and the no-saving boundary

New module: `MertensSignedAbelReadoutHeat`.
Final blob: `97b201cef475dc766ebf21f0d7bdbdf021262015`.

Define H_t(b)=Pi b+exp(-t)(b-Pi b). The source proves the semigroup law,
fixed-time inverse H_(-t), injectivity, and

    E(H_t b)=E(Pi b)+exp(-t)^2 E(b-Pi b).

For t>=0 the energy contracts, but s(H_t b)=s(b) for every t. Consequently a
bound for the actual triple readout after this heat is equivalent to the same
bound before it. On the invisible subspace inverse energy is multiplied by
exp(t)^2; invertibility is not a uniform stability bound.

This is an explicitly constructed finite RESPONSE-SPACE heat. It is not an
identification with classical zeta/Newman heat flow, a Weil form, or another
repository graph operator. Energy contraction here cannot manufacture the
missing arithmetic cancellation estimate.

## 6. Conditional canonical RH consumers

New module: `MertensSignedAbelNeighborhoodCriterion`.
Blob: `4887e48007317b6b47702c5ebd86e43712b84ef5`.

`riemannHypothesis_of_readout_models` takes both the signed model bound and
its actual readout error, for every positive exponent and every dyadic scale.
`riemannHypothesis_of_weighted_input_models` supplies the error from the D-weighted
input difference. `riemannHypothesis_of_finite_law_models` supplies it from the
actual mass-weighted covariance defect while retaining the marginal model.
If the model has constant C_delta and error D_delta at scale X^delta, the
complete packet constant is C_delta+D_delta/6+2.

These consumers preserve H_j. They do not weaken, supersede or erase the older
joint-head cancellation interface in MertensSignedAbelResponseCoordinates.
That older interface may be preferable when head and triple residuals cancel.
No analytic model, small discrepancy, low variation, or RH-strength witness is
constructed by this finite integration.

## Verification and provenance

All new results are finite local mathematics using the actual repository
sources, plus elementary real exponential identities. No external analytic
paper theorem is ported and no historical influence is inferred. A literature
entry claiming an entropy-decrement or expander theorem would be misleading;
none is added. Genuine upstream attribution and licenses are preserved.

The passive specification is
`docs/verification/NumberTheory/Moebius/MertensSignedAbelNeighborhoodTransport/readout-law-heat-v0.1.toml`.
Compilation, fresh kernel replay, exact-type checking and transitive axiom
auditing remain NOT_RUN. The complete imported proof closure, including all
older RH consumers and finite-sum dependencies, must be checked independently.
Operational diagnostics and accepted receipts belong outside math.

Static proof-completion edits and the reuse refactor do not establish native
acceptance. An incomplete intermediate Geometry write at `2aaa30b235b57274d9a5f281015731f94cdc0d33`
was superseded by the full source restoration at `fca0f8765a4f5cb5b01baf54d6e63c9b7f13cbec`;
its changed recovery statement and missing declarations are not verification
targets. Only the six final blobs at the pinned snapshot are requested.
Concurrent main work and the pre-existing neighborhood note were preserved.
No public-root import, dependency migration, remote runner or history rewrite
was introduced by this increment.

Remaining bridges include actual quantitative cancellation for the centered
Mobius source, a useful approximation with a paid weighted error, the signed
head estimate, entropy decrement for this precise law, an external arithmetic
operator comparison, and any link to the separate pickupCross/Weil/spectral
programmes. None follows merely from finite representation or heat contraction.
