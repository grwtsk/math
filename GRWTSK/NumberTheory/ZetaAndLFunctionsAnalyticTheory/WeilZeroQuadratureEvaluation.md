# Sampled-cell moment bounds returned to the original Weil enclosure

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65D30, 65G20.
Owner: [WeilZeroQuadratureEvaluation.lean](WeilZeroQuadratureEvaluation.lean).
Supplier: [RawMomentQuadrature](../../MeasureAndIntegration/RawMomentQuadrature.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6986179500).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No numerical certificate or unconditional sign is asserted.

## WZQ-1: quantified same-source enclosure

Fix exactly the previous primitive NONPRINCIPAL character chi and the original
admissible smooth real odd test f supported in [-T,T]. Work with its canonical
complex lift, not a piecewise-constant substitute test. Preserve all preceding
native hypotheses: D,L>=0 and N_chi(U)<=D U(log U+L) for every U>=2; J,H with
2^J<=1+H; a finite subset S of the actual strict height window |Im rho|<H;
a true analytic-multiplicity count ceiling N_chi(H)<=M; and full-complex disks
|z_rho-c_rho|<=delta_rho, where z_rho=-i(rho-1/2). Retain C>=0 bounding every
|c_rho|. In particular, no rounded center becomes a source zero by definition.

Take an adjacent ordered partition x_0=-T,...,x_N=T, widths h_j>=0,
midpoints q_j, complex sample approximations w_j, and certified K_j,s_j>=0:

    |f(t)-f(q_j)| <= K_j |t-q_j| for EVERY t in cell j,
    |f(q_j)-w_j| <= s_j.

All f-values above denote the same real lift used in the arithmetic consumer.
Put

    epsilon_j=K_j h_j/2+s_j,
    E=sum epsilon_j h_j,
    B=sum (|w_j|+epsilon_j)h_j,
    muQuad_k=sum w_j (x_{j+1}^{k+1}-x_j^{k+1})/(k+1).

The raw-moment and global L1 bounds are now DERIVED. Allow only a finite
algebraic table-rounding premise |muQuad_k-mu_k|<=tau_k, k<n, so that

    eta_k=T^k E+tau_k,
    |rawMoment(f,k)-mu_k|<=eta_k,   ||f||_1<=B.

There is no raw-moment integral enclosure or global L1 enclosure among WZQ-1's
input hypotheses. Exact rational table arithmetic can use tau_k=0 after its
identity is proved. For approximate finite arithmetic the charge must remain.

Keep the Taylor order TC/(n+1)<=1/2 and define

    E_center = 2B(TC)^n/n! + sum_{k<n} C^k eta_k/k!.

Retain the separate finite polynomial enclosures
|P_n(c_rho;mu)-a_rho|<=r_plus,rho and
|P_n(conj(c_rho);mu)-b_rho|<=r_minus,rho. With the original disk error Delta_rho,

    alpha_rho=Delta_rho+E_center+r_plus,rho,
    beta_rho =Delta_rho+E_center+r_minus,rho,
    R_S=sum m_chi(rho)[alpha_rho |b_rho|+beta_rho |a_rho|+alpha_rho beta_rho].

For final finite-sum rounding
|Re sum m_chi(rho) a_rho conj(b_rho)-v|<=r_final, the result is

    |Q_chi(f)-v| <= E_tail+E_missing+R_S+r_final.             (WZQ-1)

Q_chi is exactly the existing `primitiveArithmeticValue`. Its conductor,
parity/gamma term, character phases, prime powers and same-character return
are not redefined. The signed reflected product remains signed and complex.
Neither ordinate projection nor an absolute-square replacement is made.

## Complete analytical argument and declaration correspondence

The original admissible smooth test supplies integrability and support of its
real lift, as in the existing moment consumer. Apply the new
`moment_and_l1_bounds_of_midpoint` to this lift, deriving ALL raw-moment
bounds and B. Add the explicitly stated finite moment-table rounding via
`norm_rawMoment_sub_roundedQuadrature_le`. Substitute those derived bounds
into the UNCHANGED `abs_primitiveArithmeticValue_sub_moment_estimate_le`.
That theorem supplies the two center transforms and then invokes the original
disk/partial-height chain. No moment, Fourier, zero, or arithmetic source is
replaced at any stage. This is a composition of proved-in-writing suppliers,
not a proof that the suppliers' input certificates exist universally.

Fully qualified public declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain.abs_primitiveArithmeticValue_sub_quadrature_estimate_le`.

Classification: local consequence, not direct formalization of a paper theorem.
Individual provenance: RMQ-1/2/3 in RawMomentQuadrature, followed by WZM-1 in
[WeilZeroMomentEvaluation.lean](WeilZeroMomentEvaluation.lean), inspected blob
`a7877ad6f570f1f80ae21e3e9bc898d92dd6349c` at the base below. The new analytic
supplier and the prior arithmetic supplier are both SOURCE_PROOF_CANDIDATE;
this increment does not promote their evidence. Every character, test, radius,
cell, zero, multiplicity, cutoff, order and rounding parameter is retained.

The source consumer is evaluation of the original same-character form. A
strictly negative total upper endpoint would contradict the existing positivity
under that character's critical-line assertion; this corollary follows from the
existing sign consumer and is not another new declaration. No negative endpoint
or off-line zero is produced. An all-test positive conclusion is not obtained.

## Remaining numerical and arithmetic obligations

Sample enclosures and analytic within-cell variation must be supplied for the
actual test formula; finite samples cannot certify the variation themselves.
All finite arithmetic, norm bounds and transcendental constants need outward
certification. The existing error expressions still contain literal source
quantities, including the derivative L1 cost in E_tail and the L1 norm in the
disk error. Although B bounds the latter, WZQ-1 keeps the existing error
expressions; it does not implement a fully rational interval backend or replace
all source norms in the tail. No derivative-norm certificate is supplied here.

Actual-zero region association, analytic multiplicities and native count
ceilings are separate obligations. Strict-boundary zeros remain in the infinite
tail; unlisted zeros below H remain charged as missing multiplicity. The
product cross error, both center-rounding errors, moment-table rounding and
final finite-sum rounding are all retained.

The generic quadrature estimates are independent of conductor and can serve
zeta, but this arithmetic endpoint requires chi!=1. The conductor-one zeta
pole-inclusive return remains an explicit gap. No transfer to imprimitive
characters or broader L-function families is inferred. Universal lower
certificates for every required character, support, test and accuracy remain
OPEN; refinement of a numerical enclosure does not establish its sign.

Written hostile checks are in the supplier record: unseen between-sample
variation, fixed precision floors, complex sample phases, zero-length cells,
empty grids, exact endpoint coverage and fixed-frequency versus all-height
accuracy. These are not executed certified computations or independent review.

## Source pins and verification

Inspected base `3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`, complete tree
`45277e7e02eaf79af41ff5c199bcccaa3deaafa9`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Root/scoped policies, publication procedure and tree identities were inspected;
scoped AGENTS files at the source ancestors returned 404. The root publication
policy and build-pin blobs are unchanged from the previous inspected revision.
The unchanged .github tree contains no Actions workflow. No root import,
dependency pin, existing source or historical evidence status is changed.

Elaboration, exact-type checks, targeted/full builds, fresh kernel replay,
transitive axiom audit, certified numerical computation and independent review:
NOT_RUN. Static text/digest checks and publication are not substitutes. Ordinary
source-publication observations and hashes belong in math#1801; no operational
proof-execution receipt is created by these source files.

Canonical execution skill was inaccessible at Noe main
`2a253a7ab656de19cf73d5b0d886e109150a898d`; no verified local skill checkout or
Lean/lake executable was present. No dependent execution was dispatched.
Intended exact-pin target, after current execution policy is satisfied:
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroQuadratureEvaluation`.
This command is NOT_RUN. Inspect its full signature, replay the reached
declarations and audit transitive axioms; preserve any actual future failures.
