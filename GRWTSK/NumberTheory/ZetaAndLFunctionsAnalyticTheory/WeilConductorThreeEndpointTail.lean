/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math 403254f825950fcdc743fd3cd1043580b7689979.
Consumers: WeilConductorThreeAnnulusSineEnclosure and
WeilConductorThreeAnnulusDual; their ORIGINAL chi3 and stage j=2.
Analytic proof below: WRITTEN, independently challenged by an AI agent;
independent human review NOT_RUN. Only the finite scalar declarations at
the end are Lean proofs; no continuum formalization is claimed.
Primary background: NIST DLMF 1.8 (Fourier sine expansion), 1.14(i)
(Fourier/Parseval). The endpoint polynomials and error bounds are derived
below rather than imported from a claim of RH or a spectral sign.
-/
import Mathlib.Tactic

/-!
# An entire physical sine tail after endpoint-jet lifting

This proves an ANALYTIC TAIL estimate. The head sign was initially open
at the inspected baseline; section 4A records its later written
computer-assisted return from the separately constructed packet proof.
It uses the same `finiteAnnulusValue`, `criticalAnnulus`, `sourceMultiplier`
and `spectralFilter` as ConductorThreeComplementTail. No source frequency,
band mask, prime atom, gamma parity, pole convention or norm is changed.

## 1. Exact consumer and carrier

Set T=3, R=3500000000 and
 b(xi)=1_criticalAnnulus(xi)*sourceMultiplier(xi)*spectralFilter(xi)^2.
This is real, even, bounded and supported in [-R,R]. Write
 B=integral_(0,R) |b(xi)| dxi.
The source bounds |A|<23 and the COMPLETE prime half-mass <181/5 give
 |P_arith|<362/5, hence |b|<477/5<100 and B<100R.
The factor two in P_arith is essential: a half-mass bound is not a
pointwise bound on the full prime symbol. This deliberately conservative
bound does not depend on a numerical search for a pointwise maximum.

Let H=L2((0,T),dt), with the PHYSICAL Lebesgue norm, and v_xi(t)=sin(xi*t).
For any real or complex odd zero-extended f on [-T,T], put u=f|(0,T).
Then E(f)=2||u||^2 and, by the exact angular Fourier normalization,

 J_b(f)=2<u,A_b u>,
 A_b=(2/pi)*integral_(0,R) b(xi)|v_xi><v_xi| dxi.             (1)

Here the inner product is antilinear in its first argument. The integral
exists in trace norm since ||v_xi||^2<=T and |b| is integrable. In
particular A_b is bounded self-adjoint and trace class. Fubini in (1)
is justified by |b|*T*||u||^2, an integrable majorant. The original
Admissible chi3 3 f is a SUBSET of this carrier; no C2-only density
assertion is used to reach a larger form domain.

The existing relaxed annulus consumer needs J_b(f)>=-(6/25)E(f) for
EVERY original Admissible input. By (1), this is A_b+(6/25)I>=0.
The initially missing head sign and its later evidence are separated below.

## 2. Construct actual endpoint polynomials

For arbitrary T>0 define p_0(t)=t/T. Recursively put

 p_(k+1)(t)=integral_0^t (t-s)p_k(s)ds
             -(t/T)*integral_0^T (T-s)p_k(s)ds.              (2)

These are genuine odd polynomials of degree 2k+1, with coefficients
rational in T. For k>=1, p_k(0)=p_k(T)=0 and p_k''=p_(k-1).
For example p_1=t^3/(6T)-Tt/6. Equation (2) proves all these laws
by polynomial integration, endpoint substitution and differentiation.
They are observation vectors, not boundary conditions imposed on f.

Use the complete orthonormal sine basis
 e_n(t)=sqrt(2/T)*sin(omega_n*t), omega_n=pi*n/T, n>=1.
Two integrations by parts, using e_n=0 at both endpoints and the
actual endpoint values in (2), give

 c_n:=<e_n,p_0>=(-1)^(n+1)*sqrt(2/T)/omega_n,
 <e_n,p_k>=(-1)^k*c_n/omega_n^(2k).                         (3)

Indeed for k>=1 the boundary terms involving p_k vanish, so
<e_n,p_(k-1)>=-omega_n^2<e_n,p_k>. This proves (3) inductively.
Direct integration of two sines also gives

 <e_n,v_xi>=c_n*sin(xi*T)/(1-xi^2/omega_n^2),                (4)

with the usual removable value at xi=omega_n. The estimates below
only apply above 2R, so never divide by a removable singularity.

For N>=1 and m>=1 let P be ORTHOGONAL projection onto
 S=span{e_1,...,e_N,p_0,...,p_(m-1)}, Q=I-P.
This is a specified finite-dimensional physical subspace. Its listed
vectors are independent: if a polynomial combination has no sine
coefficients above N, (3) says a polynomial in 1/omega_n^2 vanishes
at infinitely many distinct points; every coefficient is zero.
The remaining sine vectors are independent by orthonormality.
Consequently dim S=N+m. This also provides an exact Gram-matrix
construction of P. One must use that Gram matrix, or an actually
orthonormalized basis, when certifying the head; coordinate Euclidean
norm cannot silently replace the physical norm.
Explicitly, if G is the physical Gram matrix of the listed basis and
C is the matrix of A_b+(6/25)I in that basis, (8) means
C>=(1/250)G. Euler heat must use the corresponding Hermitian
G^(-1/2) C G^(-1/2), not treat C as an orthonormal-coordinate matrix.

## 3. Entire complement, not selected exterior modes

Subtract the explicit lift
 L_xi=sin(xi*T)*sum_(k=0)^(m-1) (-xi^2)^k*p_k.
Since QL_xi=0 and Qe_n=0 for n<=N, (3)--(4) and the exact finite
geometric-series identity imply

 <e_n,v_xi-L_xi>
   =c_n*sin(xi*T)*(xi^2/omega_n^2)^m/(1-xi^2/omega_n^2).

Suppose omega_(N+1)>=2R. For ALL 0<=xi<=R and ALL n>N,
the denominator is at least 3/4 and |sin(xi*T)|<=1. Thus

 |<e_n,v_xi-L_xi>|^2
   <=32*xi^(4m)/(9*T*omega_n^(4m+2)).

Let P_sine project onto e_1,...,e_N. Because Q is a contraction and
annihilates their span,
 ||Qv_xi||<=||(I-P_sine)(v_xi-L_xi)||.
Parseval and integral comparison for the ENTIRE positive decreasing
series give

 sum_(n>N) n^(-4m-2)<=integral_N^infty x^(-4m-2)dx
                         =1/((4m+1)N^(4m+1)),

 ||Qv_xi||^2<=D^2,
 D^2=32*T^(4m+1)*R^(4m)/
             [9*(4m+1)*pi^(4m+2)*N^(4m+1)].                 (5)

This is uniform over the whole source frequency interval, with every
unobserved physical mode included. No smoothness of u or of a sharp
frequency mask was assumed; only the observation vector was lifted.

The signed trace-norm integral (1), ||Pv_xi||<=sqrt(T), and the
rank-one operator norm identity now prove

 ||QA_bQ||<=h=2*B*D^2/pi,
 ||QA_bP||^2<=r^2=4*B^2*T*D^2/pi^2.                       (6)

The source b may have either sign throughout this proof. In particular
no positive reference heat or coverage measure is used to infer (6).

## 4. A genuine full-tail instance and exact forward return

Take N=7000000000 and m=14. Since pi>3 and T=3,
 omega_(N+1)>2R. With B<=100R, (5)--(6) give the strict bounds

 D^2<1/24258639392831176704000000000,
 h<25/2599139934946197504<1/1000,
 r^2<8544921875/1269111296360448<1/10000.                    (7)

The rational equalities and comparisons in (7) are proved below.
This constructs a full-tail estimate on the ORIGINAL annulus source;
it is not a proposed interface whose missing field assumes that tail.

At the inspected baseline the exact missing lemma was the PHYSICAL inequality

 P(A_b+(6/25)I)P >= (1/250)P on S, dim S=7000000014.         (8)

No explicit matrix certificate of dimension N+m is supplied. If (8) holds,
with any entry and
Gram errors, then for x=||Pu||, y=||Qu||, (6)--(7) give

 <u,(A_b+(6/25)I)u>
 >=(1/250)x^2-2*(1/100)xy+(6/25-1/1000)y^2>=0,

because (1/100)^2<(1/250)*(6/25-1/1000). Completing the square
proves the last inequality. Equations (1) and this inequality give
the EXISTING relaxed `finiteAnnulusValue` bound; its existing paid
source comparison then gives `PrimitiveStageLower chi3 hp hn 2`.
Other chi3 stages, every other primitive nonprincipal sector and the
independent zeta cofinal stages remain required by
`DirichletStageChain.dirichletGRH_of_source_chains`.

The head dimension remains far beyond a practical matrix computation.
The endpoint mechanism itself improves the earlier 10^26 sine-only
dimension and proves the complete tail, while leaving (8) unproved.
The later source-return argument below obtains (8) without constructing
that giant matrix. No RH or complete Dirichlet GRH is established.

## 4A. Later packet proof supplies this head by exact domain return

A concurrently authored WeilConductorThreeFiniteAnnulus source snapshot
subsequently supplied a WRITTEN COMPUTER-ASSISTED proof of

 finiteAnnulusValue f>=-a E(f), a=7262543/200000000,             (9)

for EVERY original Admissible chi3 3 f. Its exact source hash, completed
runtime-evidence scope and independent artifact/analytical audits are
recorded in the accompanying static target. It is not a new Lean proof
term, a fresh replay of every packet, or a lossless archive of the
historical transient Gram factors. This paragraph consumes (9) at that
declared evidence level; no header alone is treated as verification.

Here is the COMPLETE domain-return proof from (9) to (8). For a real
u in C_c^infinity(0,3), its odd zero extension f is globally smooth,
compactly supported in (-3,3), and has finite physical L2 mass. Near
zero the gamma shift energy is <=r^2||f'||_2^2; away from zero it is
<=4||f||_2^2 and the parity-one kernel decays exponentially. Thus f
really is Admissible chi3 3, including its gamma-integrability clause.
By (1), (9) gives <u,A_bu>>=-a||u||^2.

Such u are dense in real L2(0,3). The boundedness of A_b proved in
section 1 gives, for u_n->u,
 |<u_n,A_bu_n>-<u,A_bu>|
 <=||A_b||*(||u_n||+||u||)*||u_n-u|| ->0.
The norm squares also converge, so the lower bound holds for every
real u. Since A_b has a real symmetric kernel, writing a complex
u=v+iw makes its quadratic form the sum of those of v,w; the two
imaginary mixed terms cancel by symmetry. The same bound therefore
holds on the EXACT complex physical H used in this module.

Consequently, for ANY physical orthogonal projection P, including
the actual endpoint-augmented projection,

 P(A_b+(6/25)I)P >= (6/25-a)P
                   =(40737457/200000000)P > (1/250)P.        (10)

This supplies (8) at written computer-assisted scope and tests the
meeting point with all original domains, signs and quantifiers intact.
The proof extends ONLY the bounded annulus operator. It does not
silently extend the full unbounded gamma form or a weighted norm.

There is no circular dependency: the packet source imports LowFilter,
PhysicalPackets and RawSourceReturn, not this endpoint construction
or BoundaryJets. It uses actual localized physical matrices and their
complete tails, rather than assuming (8). Both routes share the
original arithmetic source and existing explicit-formula ingredients.
The packet proof already gives the original chi3 j=2 stage, so (10)
is a genuine comparison/return lemma, not an independent second proof
of that stage or GRH. The next chi3 stage is the ORIGINAL j=3, radius
4, allowance1/8, with its enlarged native prime inventory. The full
zeta and every primitive character's cofinal suppliers remain required.

This also constructs a GENUINE spectral-semigroup instance on the SAME
physical H. Put B=A_b+(6/25)I and delta=40737457/200000000. Define
 S_t=exp(-tB) for every t>=0 by its norm-convergent operator power
series. B is bounded self-adjoint with domain ALL of H; no unresolved
unbounded self-adjoint extension or form-domain invariance is hidden.
Absolute norm convergence and the Cauchy product give S_0=I and
S_(t+s)=S_t S_s. Termwise differentiation gives u'=-Bu for u=S_t v.
Equation (10), before compression, therefore gives

 (d/dt)||u||^2=-2<u,Bu><=-2delta||u||^2,
 ||S_t||_(H->H)<=exp(-delta*t), for EVERY t>=0.              (11)

Indeed the derivative of exp(2delta*t)||u||^2 is nonpositive, proving
the estimate for every v and then the operator norm. This is an
all-time analytic estimate, not finitely sampled heat evidence or a
Markov/mass-preservation claim. Its source return is exact: conversely,
if (11) is known on the same H, differentiate
||S_t v||^2<=exp(-2delta*t)||v||^2 at t=0 from the right. Equality
holds there, so <v,Bv>>=delta||v||^2, equivalently
<v,A_bv>>=-a||v||^2. Equation (1) returns precisely (9) on every
original admissible test. Thus the heat law is derived from the
audited arithmetic source, and its converse returns that same source;
it does not hide the sign in an assumed semigroup-interface field.
The finite syntax record retains B, its domain, delta, all-time
quantifier, power-series definition, source pin and evidence status.

## 5. Heat and lossless interfaces of the actual mathematical types

For H, its odd extension, Admissible, A_b, the sine basis, polynomial
jets, finite subspace/projection/Gram matrix and the bounds (5)--(8),
retain finite typed source syntax: binding contexts (T,R,b,u,chi3),
physical L2(dt), angular Fourier normalization, operator domains,
conductor/parity, EXACT source revision/declarations, band masks,
quantifiers, rational N,m/budgets, integral and entire-series syntax,
every approximation allowance, proof text and separate evidence status.
Universal u and arbitrary analytic objects are BOUND VARIABLES of
that syntax, not claimed finite numerical samples or encodable L2
elements. The actual instance (2),(7) is a finite expression record.

A lossless coding instance for such representable data is the finite
tagged-tree interface already described in CompactFilterReturn: use
constructor tags plus lengths and recursively length-delimited children.
Decode reads the same tag/length/context and exactly that many children;
induction on the tree proves decode(encode x)=some x. The dependent
total record retains its context and ALL children. On the encoder
image the successful decode is unique and decodeImage(encode x)=x.
This is a WRITTEN codec instance, not a new Lean implementation of
the syntax datatype, and not a claim that a source token validates
its semantics or that an absent head matrix is reconstructed.

Heat is needed here only for COVERAGE of these finite source records.
Enumerate all records by their lossless natural code, keeping invalid
codes as invalid. With pi_n=2^(-n-1), every represented branch has
positive weight and sum_(n>=J)pi_n=2^(-J). For x in l1(N), m=sum x,
 Kx=(x+m*pi)/2; then sum Kx=m and x=2Kx-m*pi. These follow by
absolute summation and substitution, so give an actual reversible
coverage instance. At k steps the inverse is
 x=2^k*y-(2^k-1)(sum y)*pi.
If y is approximate its l1 error can grow by 2^(k+1)-1; a signed
source readout therefore needs a separately justified full error/tail
allowance. The dyadic reference tail alone bounds no arbitrary x tail.
For example x=delta_0+M(delta_a-delta_(a+1)), a>=J, has fixed mass
and fixed first J heated coordinates but unbounded absolute tail.

More precisely, write d=2^k, Pi x=(sum x)pi. Since Pi^2=Pi,
 K^k=d^(-1)I+(1-d^(-1))Pi,
 L_k=dI-(d-1)Pi, L_k K^k=K^k L_k=I.
The l1 inverse norm is EXACTLY 2d-1: the triangle inequality gives
the upper bound and
 ||L_k delta_a||_1=2d-1-2(d-1)pi_a -> 2d-1
gives the reverse bound. The ENTIRE signed and absolute tails obey
 sum_(n>=J)x_n=d sum_(n>=J)y_n-(d-1)m*2^(-J),
 sum_(n>=J)|x_n|<=d sum_(n>=J)|y_n|+(d-1)|m|*2^(-J).
These statements are in branch-index l1, not physical L2(dt).

For a readout S_a(x)=sum a_n x_n with an ACTUAL bound |a_n|<=A,
let P_a=sum a_n*pi_n. Absolute summation proves
 S_a(x)=d S_a(y)-(d-1)m P_a.
If first-J l1 observation error is eta, the ENTIRE heated absolute
tail is <=tau, mass error <=eps_m, and the P_a approximation error
is <=eps_P, then the finite reconstruction
 S_hat=d sum_(n<J)a_n*y_hat_n-(d-1)m_hat*P_hat
has error at most
 d*A*(eta+tau)+(d-1)*(A*eps_m+|m_hat|*eps_P).
This follows by splitting the absolutely convergent readout and using
mP_a-m_hat P_hat=(m-m_hat)P_a+m_hat(P_a-P_hat). A particular
arithmetic source still needs to supply its own readout identification
and dual bound; neither is inferred for an unbounded source functional.

There is a genuine finite rational state instance x=c*pi+r, c rational
and r finitely supported rational. If s=sum r, the k-step update is
 (c,r)->(c+(1-d^(-1))*s,d^(-1)*r),
with inverse (c',r')->(c'-(d-1)*sum r',d*r'). Substitution proves
both laws, and infinite support of pi proves representation uniqueness.
Encoding the finite coefficient list with no trailing zero, c and the
full source/context record is lossless by length decoding. Its whole
absolute tail is a finite sum plus |c|*2^(-R0), once r vanishes for
n>=R0. This instance does not assume a sign: for
 x=(3/2)delta_0-(1/2)pi,
 Kx=(3/4)delta_0+(1/4)pi is positive at EVERY index, but the
original readout sum_(n>=1)x_n=-1/4. Thus positive heat and exact
coding cannot discharge the missing arithmetic sign even on the
explicitly constructed finite-description family.

No Euler sign heat is used in (5)--(7). If the missing finite sign (8)
is instead checked by Euler heat, its Hermitian physical Gram matrix,
step/count, ordinary unnormalized even-power trace and strict spectral
acceptance law must be established separately on THAT matrix. An
infinite spectral semigroup likewise requires its actual self-adjoint
domain and source-return law; coverage is not an instance of it.

Comparison: direct sine coefficients, geometric remainder and full
series summation give the primary proof. A separate agent recomputed
the integration-by-parts signs and constants. Shared foundations are
the same original b, Fourier identity and physical Hilbert projection.
No independent human review or worldwide novelty claim is made.

During publication, concurrent main commit
6260801741228ab6dcee1a5f84b87395a5d961b5 supplied
WeilConductorThreeBoundaryJets, with m=16 and exact tail-series vectors
s_(N,k). The constructions are NOT independent analytical routes:
 (I-P_sine)p_k=(-1)^k*s_(N,k)
by (3), so their augmented subspaces agree at equal N,m. Both use
the same geometric remainder. Here summing n^(-4m-2) before replacing
the frequency ratio by its worst case retains the factor 1/(4m+1),
and the displayed instance takes m=14 with a different head margin.
The integrated prime bound in PrimeMoment separately repairs the
shared B<=60R input. Neither endpoint construction itself supplies
its head sign; the later, distinct packet-source return (10) does.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeEndpointTail

/-- Exact rational upper envelope in (5), using pi>3 at the actual parameters. -/
def physicalTailSquare : ℚ :=
  32 * 3 ^ 57 * 3500000000 ^ 56 /
    (9 * 57 * 3 ^ 58 * 7000000000 ^ 57)

theorem physicalTailSquare_exact :
    physicalTailSquare = 1 / 24258639392831176704000000000 := by
  norm_num [physicalTailSquare]

/-- Entire signed high block envelope, not an assumed high-floor field. -/
theorem high_envelope_exact :
    (2 / 3 : ℚ) * (100 * 3500000000) * physicalTailSquare =
      25 / 2599139934946197504 := by
  rw [physicalTailSquare_exact]
  norm_num

/-- Entire mixed block squared envelope at the same physical parameters. -/
theorem mixed_square_envelope_exact :
    (4 / 9 : ℚ) * (100 * 3500000000) ^ 2 * 3 * physicalTailSquare =
      8544921875 / 1269111296360448 := by
  rw [physicalTailSquare_exact]
  norm_num

theorem high_envelope_small :
    (25 / 2599139934946197504 : ℚ) < 1 / 1000 := by norm_num

theorem mixed_square_envelope_small :
    (8544921875 / 1269111296360448 : ℚ) < 1 / 10000 := by norm_num

theorem head_high_determinant_margin :
    (1 / 10000 : ℚ) < (1 / 250) * (6 / 25 - 1 / 1000) := by norm_num

/-- Finite margin only; the whole physical density return is written in section 4A. -/
theorem packet_density_head_margin :
    (1 / 250 : ℚ) < 6 / 25 - 7262543 / 200000000 := by norm_num

/-- Actual scalar square completion needed AFTER the still-missing head sign. -/
theorem physical_head_high_square (x y : ℝ) :
    0 ≤ (1 / 250 : ℝ) * x ^ 2 - 2 * (1 / 100) * x * y +
      (6 / 25 - 1 / 1000) * y ^ 2 := by
  have hs := sq_nonneg ((239 / 1000 : ℝ) * y - (1 / 100) * x)
  nlinarith [sq_nonneg x]

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeEndpointTail
