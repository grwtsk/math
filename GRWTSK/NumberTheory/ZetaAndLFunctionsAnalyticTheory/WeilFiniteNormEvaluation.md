# Finite norm budgets for the unchanged primitive Weil enclosure

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65G20.
Source: [WeilFiniteNormEvaluation.lean](WeilFiniteNormEvaluation.lean).
Supplier: [DerivativeCellBounds](../../MeasureAndIntegration/DerivativeCellBounds.md).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration 5 scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6987078199).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty UNASSESSED. No executed interval certificate or arithmetic sign claim.
The error side no longer contains norms of the original test or its derivative
as unevaluated integrals. This does NOT make the certificate inputs executable
or prove their existence for every character, window, test and accuracy.

## WFN-5: exact quantified arithmetic endpoint

Fix a primitive NONPRINCIPAL Dirichlet character chi modulo q, q!=0, with
proofs hp and hn as in the existing canonical source. Fix the original
admissible smooth real odd test f supported in [-T,T], and let g=liftReal(f).
All differentiations and Fourier transforms below apply to this same g.
No step-function approximant is used as an admissible arithmetic test.

Retain source-native counting constants D,L>=0 satisfying, for EVERY U>=2,

    N_chi(U) <= D U (log U+L).

Choose J in N, H in R with 2^J<=1+H, a finite set S of actual distinct
critical-strip zeros inside the STRICT window |Im rho|<H, and a true count
upper bound N_chi(H)<=M. Zero counts and m_chi(rho) are analytic multiplicities,
not the number of supplied disks. Put m(S)=sum_{rho in S} m_chi(rho).
The original inclusion and count hypotheses imply m(S)<=M, so natural-number
subtraction cannot silently hide an overfull list.

For each rho in S, supply full-complex location data

    ||z_rho-c_rho||<=delta_rho, delta_rho>=0,
    z_rho=-i(rho-1/2),  ||c_rho||<=C, C>=0.

Use a covering ordered partition x_0=-T,...,x_N=T, widths h_j>=0, samples
w_j in C, and nonnegative K_j,s_j with

    ||g'(t)||<=K_j for EVERY t in [x_j,x_{j+1}],
    ||g((x_j+x_{j+1})/2)-w_j||<=s_j.

The derivative supplier derives the OLD variation condition and the bounds

    epsilon_j=K_j h_j/2+s_j,
    E=sum_j epsilon_j h_j,
    B0=sum_j (||w_j||+epsilon_j)h_j >= ||g||_1,
    B1=sum_j K_j h_j >= ||g'||_1,
    ||rawMoment(g,k)-quadratureMoment(x,w,N,k)||<=T^k E.

There is no independent L1 or derivative-L1 integral bound in WFN-5's inputs.
There is also no input within-cell-variation inequality: it follows from the
actual derivative bound and differentiability. Supplying the whole-cell
range K_j and the midpoint enclosures still requires proof for the chosen g.

Choose a Taylor order n with TC/(n+1)<=1/2. Retain finite table-rounding bounds

    ||quadratureMoment(x,w,N,k)-mu_k||<=tau_k,  k<n,
    eta_k=T^k E+tau_k.

Define the unchanged moment polynomial and center budget

    P_n(c;mu)=sum_{k<n}(ic)^k mu_k/k!,
    E_center=2B0(TC)^n/n!+sum_{k<n} C^k eta_k/k!.

For each rho in S, retain separate finite arithmetic enclosures

    ||P_n(c_rho;mu)-a_rho||<=r_plus,rho,
    ||P_n(conj(c_rho);mu)-b_rho||<=r_minus,rho,
    e_plus,rho=E_center+r_plus,rho,
    e_minus,rho=E_center+r_minus,rho.

The table and polynomial bounds imply nonnegative errors on the relevant
finite ranges. The formal source derives this before using monotonicity of
the quadratic product error; it does not assume arbitrary signed tolerances.

## Explicit error expressions, with no remaining test norm integral

Define

    Tail = 4 exp(T) D(L+1) [2(B0+B1)]^2 (J+2) 2^(-J),
    Missing = (M-m(S)) exp(T) (2B0)^2,
    Delta_rho = T delta_rho exp(T|Im c_rho|+T delta_rho) B0,
    alpha_rho = Delta_rho+e_plus,rho,
    beta_rho  = Delta_rho+e_minus,rho,
    Disk = sum_{rho in S} m_chi(rho)
      [alpha_rho ||b_rho|| + beta_rho ||a_rho|| + alpha_rho beta_rho].

These are finite-norm error majorants. They do not redefine the arithmetic
form, its signed finite head, the source zero divisor or the explicit formula.
With final finite-sum rounding

    |Re sum_{rho in S} m_chi(rho) a_rho conj(b_rho)-v|<=r_final,

WFN-5 is

    |Q_chi(f)-v| <= Tail+Missing+Disk+r_final.

Q_chi is EXACTLY the old `primitiveArithmeticValue chi hp hn T (liftReal f)`.
Its conductor, parity/gamma term, character phases, all prime powers and inverse-
character source return are unchanged. Complex off-line spectral coordinates
and the signed reflected product are not replaced by ordinates or norm squares.

The tail is still infinite-source coverage. Zeros at |Im rho|=H are in that
tail, while unlisted multiplicity below H remains in Missing. The factor
alpha*beta is retained. For exact zero-radius disks Delta=0, but center/table/
final rounding errors do not disappear. For a complete exact head with M=N_chi(H),
Missing=0; this does not make the infinite tail zero at a finite cutoff.

## Complete primary argument and source return

1. Smooth admissibility gives a C1 compactly supported canonical lift g.
   DCB-1 supplies within-cell variation, and DCB-3 supplies all raw-moment
   bounds together with ||g||_1<=B0 and ||g'||_1<=B1. Moment-table rounding is
   added by the existing `norm_rawMoment_sub_roundedQuadrature_le`.
2. Invoke the UNCHANGED WZQ-1 quadrature arithmetic enclosure. This proves an
   error bound with the old literal norm-dependent tail, missing-head and
   disk budgets. It has already returned to the original arithmetic source.
3. Use d0<=2B0 and d1<=2(B0+B1). The original costs and their upper bounds are
   nonnegative, so squaring preserves the inequalities. This bounds the tail
   and missing-head budgets without changing any zero or cutoff.
4. The disk error is a nonnegative coefficient times ||g||_1, so replacing that
   norm by B0 increases it. Both factor errors are nonnegative. Thus replacing
   them by larger errors increases alpha||b||+beta||a||+alpha beta. Multiply
   by nonnegative actual multiplicities and sum over the SAME S.
5. Add the three comparisons and the unchanged final rounding error. The
   triangle inequality already supplied by WZQ-1 then gives WFN-5.

An alternative check expands the final budgets directly in the three old error
inequalities. It gives the same positive coefficients and squares, not a
mathematically independent proof or independent review.

A strictly negative upper endpoint v+Tail+Missing+Disk+r_final<0 would contradict
`primitiveArithmeticValue_nonneg_of_criticalLine_smooth` for this same character.
This is a written corollary using the existing sign consumer, NOT an additional
new declaration or an exhibited negative certificate. No sign has been computed.

## Individual declaration/provenance records

All five public declarations have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.
All are local consequences, not direct paper adaptations or new explicit formulas.

### primitiveHeightTailBudget_le_finiteNorm (WFN-1)

Every complex test g, real D,L,T,B0,B1, natural J, D,L>=0, and bounds on both
norm integrals. Source: DCB-5 and the original primitiveHeightTailBudget.
Its exact expanded coefficient is also checked in
`exists_uniform_primitiveHeightTailBudget_and_error_le_of_heightCount` in
WeilPrimitiveHeightTailUniform.lean, inspected blob
`e1e860b8d1a7146f573d492c7339d8b429114be8` at the base below.
Consumer: WFN-5. This is a majorant comparison, not a stronger tail asymptotic.

### partialHeightMissingBudget_le_finiteNorm (WFN-2)

Every q!=0, chi, g,T,B0,S,M and L1 upper bound. Source: DCB-4 and the unchanged
partialHeightMissingBudget/partialHeightUnitBudget definitions in
WeilPartialHeightEnclosure.lean, inspected blob
`db4f5876c2268ac8433fb335bc0b6fe38f41e94f`.
Consumer: WFN-5, where valid source inclusion and count hypotheses are retained.
The algebraic comparison alone does not validate an arbitrary zero list.

### fourierDiskError_le_finiteNorm (WFN-3)

Every g,T>=0,B0,c,delta>=0 and L1 upper bound. Source: the existing
fourierDiskError definition in FourierDiskEnclosure.lean, blob
`ae0b179df32d4dfcd27420743f87a7911db6f825` in the preceding inspected chain.
Consumer: WFN-4. Complex center imaginary displacement is retained exactly.

### zeroDiskEvaluationBudget_le_finiteNorm (WFN-4)

Every chi,g,T>=0,B0,S,c,a,b,delta,e_plus,e_minus; L1 bound and nonnegative
radii and center errors on S. Source: WFN-3, reflectedProductError and the
existing zeroDiskEvaluationBudget in WeilZeroDiskEvaluation.lean, blob
`54ad935e5aabf496c1f8e9a3d4ddeec00934deb9` in the preceding chain.
Consumer: WFN-5. The auxiliary product comparison is private, not a substitute
Weil pairing or a separately claimed new theorem.

### abs_primitiveArithmeticValue_sub_derivativeCell_estimate_le (WFN-5)

Exact quantifiers and domain: all the character/test/count/window/grid/disk/
order/rounding conditions stated above, in the same order as the Lean signature.
Sources: DCB-1/DCB-3, WFN-1 through WFN-4 and WZQ-1 in
[WeilZeroQuadratureEvaluation.lean](WeilZeroQuadratureEvaluation.lean), blob
`300f5b6d9a7adb20fd24f1b4c618177a028218b4` at the inspected base.
Consumer: finite evaluation of the original same-character arithmetic form.
Dependency candidate statuses and historical verification scopes are not promoted.

## Falsification checks and open obligations

The factors two in d0 and d1 cannot be discarded. Squares may be bounded
monotonically here only after nonnegativity has been established. A mere lower
bound on a signed quantity does not control its square. A root-disk count is
not analytic multiplicity; native count validity is still required. Omitting
alpha*beta would give zero product error for a=b=0 even when both exact factors
are 1. Finite sampling does not prove the derivative ranges. These are written
hostile checks, not executed numerical tests or independent review.

The displayed error expression uses only finite table operations, finite
zero/multiplicity data and explicit real functions, but its real/complex inputs,
norms, exponentials and comparisons still require certified outward evaluation.
No rational interval evaluator, automatic differentiation backend, actual
root-region association, multiplicity determination or native count certificate
is implemented. No numerical example is promoted to a theorem about an L-function.

The generic derivative and budget comparisons permit conductor one. WFN-5
requires chi!=1, so it does NOT establish the pole-inclusive zeta enclosure or
RH. No imprimitive or broader-family transfer is inferred. Universal lower-
certificate supply and the all-scale signed arithmetic inequality remain OPEN.
The numerical enclosure can be sharpened without establishing its sign.

## Pins and reproduction

Inspected base: `bc1e1b34506f54ccdb46de9138e906044def5a55`.
Complete root: `8f99ccffd05e511bc86bb7b124166d2b2c4b35ac`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Policy, layout, build configuration and .github identities remain unchanged
from the preceding fully inspected source; applicable scoped AGENTS reads
returned 404. No existing source, root imports or dependency pins are changed.

Lean parsing, elaboration, expected signatures, builds, fresh kernel replay,
transitive axiom audit, certified numerical computation and independent review:
NOT_RUN. Canonical execution-skill access returned 404 at Noe main
`2a253a7ab656de19cf73d5b0d886e109150a898d`; no verified local skill or Lean/lake
executable was available. No dependent execution was dispatched.
After current execution policy is satisfied, the exact-pin intended command is
`lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteNormEvaluation`.
This is NOT_RUN. Audit the complete expected signature and transitive axioms;
retain any actual future failure rather than replacing it with NOT_RUN.
Ordinary source-publication observations and digests are recorded in math#1801.
