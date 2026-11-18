# Finite moment evaluations returned to the original arithmetic Weil form

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65G20.
Owner: [WeilZeroMomentEvaluation.lean](WeilZeroMomentEvaluation.lean).
Analytic supplier: [FourierMomentEnclosure](../../MeasureAndIntegration/FourierMomentEnclosure.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6985225508).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No arithmetic sign theorem or numerical certificate is claimed.

## WZM-1: complete source-matched enclosure

Use exactly the existing primitive nonprincipal Dirichlet-character setting,
original admissible smooth real odd test f, its complex real lift, actual
critical-strip zeros, and analytic multiplicities. The original arithmetic
value is `primitiveArithmeticValue`, not a newly constructed positive form.

Retain the previous inputs: D,L>=0 and the source-native all-height bound
N_chi(U)<=D U(log U+L) for every U>=2; J,H with 2^J<=1+H; a finite set S of
actual zeros in the strict window |Im rho|<H; a true ceiling N_chi(H)<=M;
full-complex disks |z_rho-c_rho|<=delta_rho for z_rho=-i(rho-1/2).
No disk center is promoted to an actual zero, and multiplicity is not replaced
by the number of disks. Zeros at the strict boundary remain in the tail.

Choose C>=0 bounding EVERY |c_rho| for rho in S, and B bounding the L1 norm
of the original lifted test. Choose an order n with T*C/(n+1)<=1/2. Supply ONE
moment table mu_k and errors eta_k for the moments of this same lifted test:

    |integral f(t)t^k dt - mu_k| <= eta_k, k<n.

Define the exact finite polynomial P_n(c)=sum_{k<n}(i c)^k mu_k/k! and

    E = 2 (T*C)^n B/n! + sum_{k<n} C^k eta_k/k!.

For each actual zero in S, let finite polynomial computations satisfy

    |P_n(c_rho)-a_rho| <= r_plus,rho,
    |P_n(conj(c_rho))-b_rho| <= r_minus,rho.

Since conjugation preserves the frequency norm, FME-3 supplies BOTH original
center-transform bounds with errors E+r_plus and E+r_minus respectively.
The approximations a,b are evaluated separately; even when the same moment
table is used, the signed reflected product is NOT replaced by |a|^2.

Let Delta_rho be the existing `fourierDiskError`, and put

    alpha_rho = Delta_rho + E + r_plus,rho,
    beta_rho  = Delta_rho + E + r_minus,rho,
    R_S = sum_{rho in S} m_chi(rho)
            [alpha_rho |b_rho| + beta_rho |a_rho| + alpha_rho beta_rho].

With independently certified final finite-sum rounding

    |Re sum_{rho in S} m_chi(rho) a_rho conj(b_rho) - v| <= r_final,

the original arithmetic enclosure is

    |Q_chi(f)-v| <= E_tail + E_missing + R_S + r_final.   (WZM-1)

### Complete primary analytical argument and return

The original admissible smooth domain supplies compact support and integrability
of the real lift; these are derived inside the candidate, not new premises.
Apply FME-3 at c_rho and conj(c_rho), using the same B,C,n,mu,eta and their
separate finite-polynomial rounding bounds. Substitute these two conclusions
into the EXISTING `abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le`.
That theorem supplies disk transport, the reflected-product cross term,
analytic-multiplicity aggregation, the missing finite-head mass and the infinite
tail, followed by final arithmetic rounding. No source identity or domain changes.

The mathematical result is conditional on the stated moment, disk, counting and
finite-arithmetic certificates. It does not produce them by naming them. All
constants must be enclosed outward before any numerical sign decision is valid.

## Exact declaration provenance

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain.abs_primitiveArithmeticValue_sub_moment_estimate_le`.

Type/quantifiers: WZM-1 with every character, test, support, native height/count,
finite zero set, location radius, moment accuracy and rounding parameter retained.
The polynomial order and all data may depend on the chosen test and finite head.
Consumer: certified evaluation of the original same-character Weil form, with
all prior signed arithmetic source returns unchanged.

Classification: local consequence, not a direct adaptation from a paper.
Primary provider: all three center bounds in FourierMomentEnclosure, with their
individual records in its companion file. Arithmetic provider:
`abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le` in
[WeilZeroDiskEvaluation.lean](WeilZeroDiskEvaluation.lean), source blob
`54ad935e5aabf496c1f8e9a3d4ddeec00934deb9` at the inspected base.
The provider is itself a source candidate; its evidence is not promoted here.
No new explicit-formula or critical-line equivalence is claimed.

## Failure tests and remaining suppliers

The reflected-product cross error alpha*beta is retained. For a=b=0 and two
exact factors equal to 1, removing it would incorrectly report zero error.
Moment errors remain weighted: at n=2, c=2, an error of 1 in the first moment
can cause a transform-polynomial error of 2. A fixed moment tolerance need not
vanish when n increases, even though the Taylor tail does. These are written
hostile checks, not an independent review or certified numerical run.

Next local suppliers remain numerical/raw-moment certification for the chosen
original smooth tests, certified B, actual-root/region and multiplicity
certificates, and outward finite arithmetic. This increment removes the literal
center-transform bound as a premise but does not implement a complete numerical
backend. It provides no negative certificate or unconditional positive lower bound.

Uniform approximation on a FIXED frequency ball is not universal lower-certificate
supply for all characters, supports, tests and accuracies. The final arithmetic
endpoint requires chi!=1. Conductor-one zeta and its full pole-inclusive return
remain explicit obligations; there is no transfer to imprimitive or broader families.

## Evidence and reproduction

Inspected base: `71a70edea2007e6f5c1c408189e10862499139e9`.
Complete root tree: `2d3b6f625feb22e52b9f77ab595000f3aeec49e6`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Root/scoped policy and publication procedure were inspected. Historical root
ARCHITECTURE.md was absent; current AGENTS.md and CONTRIBUTING.md govern the
source layout and supported complete-tree publication. Scoped AGENTS requests
for the edited source paths returned 404. The inspected .github tree has no
Actions workflow. No root imports, pins or existing mathematical files change.

Elaboration, targeted/full builds, exact-type checks, fresh kernel replay,
transitive axiom audit, certified numerical computation and independent review:
NOT_RUN. Source-text/digest checks and publication do not establish any of them.
Canonical Noe execution skill access failed at
`e55ef9e67b6ab5a0556d5e66809cad9dceca1010`; no dependent execution was dispatched.
The source-bound verification obligation stays in math#1801; operational proof
execution belongs to Noe and is not created by this publication.

After satisfying the current execution policy, the intended exact-pin target is
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroMomentEvaluation`.
Inspect the full expected signature, replay the reached declarations and audit
transitive axioms. Preserve any actual future failure; do not relabel it NOT_RUN.
