# Liouville causal residue fibers, automorphic frames, affine defects, and the still-open long-gap estimate

Local mathematical attribution: grwtsk contributors. Investigation date: 2026-10-31.
Research status: MATHEMATICAL EXACT IDENTITIES and SOURCE PROOF CANDIDATES only.
The RH-facing \`InteriorLongGapAllRate\` remains OPEN. No RH proof is claimed.

## 1. Objective, unchanged source, and comparison with previous methods

The original source is \`LiouvilleCausalEnergyTarget.coefficient\` and \`waveform\`
(blob \`a00aaa07c067b4c88203372870b5d5d151de0de4\`), and
\`CCC.pickupResponse\` (blob \`45e06c371d67bcf8c939d20a95fcbc63570546fa\`).
For every integer n>=1 and real u,

    lambda(n)=(-1)^Omega(n),
    r_n(u)=2 max(n^(-1/2)-exp(-u/2),0),
    F(u)=sum_(n>=1) lambda(n) r_n(u).

Every sum in physical time is finite by r_n(u)=0 for n>exp u,
including exact zero at u=log n.

The unchanged target is \`InteriorLongGapAllRate\` in
\`LiouvilleInteriorLongGapRH.lean\` (blob
\`e9b68f4106b3e2d648ba0803f75dc5e3b4dccbd9\`):
for all eps>0, a constant C_eps>=0 must control

    A_j=sum_(1<=m<m+g<=R_j, g>j^2)
           lambda(m)lambda(m+g)
           integral_0^(T_j) r_m(u)r_(m+g)(u)du

from ABOVE by C_eps exp(eps*T_j), where
N_j=2^(5j), R_j=N_j-2^(4j), T_j=5j log 2.
The associated conditional RH return is the unchanged prior
mathematical argument; it is not a proof of the arithmetic estimate.

The older uploaded "Review RH Proof Paths" concerns a distinct
complete ordered MOBIUS endpoint \`endpointSum\` and its signed
five-moment polynomial. Its quantitative source and cutoff are not
silently identified with the present Liouville long-gap sum.
The radical-logarithm note supplies a prime-support identity,
not a cancellation theorem. The finite-prime sieve source
\`LiouvilleFinitePrimeSieveOperator.lean\` (blob
\`46a61238b137d9265c2f81c6e6b5a964ca4910e7\`)
already studies iterated prime-delay conditioning; it must not be
renamed as if a new arithmetic estimate had been found.

The new contribution is a COMPLETE stratified residue frame,
its exact causal scaled reconstruction, a precise phase defect
under noncommuting affine arithmetic operations, and an application
of established fixed-affine logarithmic Chowla cancellation.

## 2. Exact gcd-stratum causal identity: all residue classes

Fix any modulus q>=1 and representative 0<=a<q. Define

    F_(q,a)(u)=sum_(n>=1,n mod q=a)lambda(n)r_n(u).

Let d=gcd(a,q)>0, Q=q/d and b=a/d. Then gcd(b,Q)=1,
where Q=1 and b=0 use the standard trivial-unit convention.

The incidence equivalence is EXACT:
 n mod q=a  <=> n=d*k with k mod Q=b.
The right side automatically has gcd(k,Q)=1.

Because actual Liouville is completely multiplicative,
 lambda(d*k)=lambda(d)lambda(k).
Because the actual causal response has an exact scaling law,
 r_(d*k)(u)=d^(-1/2)r_k(u-log d),
including birth equality and u<0,
interchanging the finite sum gives

    F_(q,a)(u)=lambda(d)/sqrt d *
                  F_(Q,b)(u-log d).             (R1)

This uses no random signs, no loss of nonunit residues and no
assumption about RH. The zero residue is

    F_(q,0)(u)=lambda(q)/sqrt q * F(u-log q).   (R2)

For instance q=12, a=6: d=6,Q=2,b=1, lambda(6)=1,
F_(12,6)(u)=F_(2,1)(u-log6)/sqrt6.

The additive Lean source \`LiouvilleResidueDefectFrame.lean\`
records \`residuePacket\` and the named OPEN target
\`ResidueStratumScaling : Prop\`. R1 is analytically exact
and finite, but that named Lean target is not yet proved or
compiled; a mathematical derivation is not a Lean receipt.

## 3. A complete orthogonal Dirichlet-character frame

Every class a mod q belongs to exactly one gcd stratum d|q.
Its stratum is canonically the unit group U(Q) for Q=q/d;
the total dimension checks exactly:

   sum_(d|q) phi(q/d)=q.

For every Dirichlet character chi mod Q, define the normalized
stratum amplitude

    A_(q,d,chi)(u) =
      1/sqrt(phi(Q)) *
      sum_(b in U(Q)) conj(chi(b)) F_(q,d*b)(u).

Character orthogonality makes this a unitary transform on the
d-stratum. Via R1 it equals

    A_(q,d,chi)(u)=lambda(d)/sqrt(d*phi(Q)) *
                         F_(conj chi)(u-log d),

where F_chi(t)=sum_n lambda(n)chi(n)r_n(t).
Therefore the COMPLETE source frame identity is

    sum_(a mod q)|F_(q,a)(u)|²
      =sum_(d|q)1/(d phi(q/d)) *
            sum_(chi mod q/d)|F_chi(u-log d)|².    (R3)

This formula includes ALL nonunit and unit strata. It is not a
variance of independent residue packets, and it is not the original
full energy.

The original coherent waveform is the sum of all raw residues:

    F(u)=sum_(a mod q)F_(q,a)(u).

Only the PRINCIPAL character in each quotient stratum survives
after summing all unit residues:

    F(u)=sum_(d|q)lambda(d)/sqrt d *
              F_(chi0_(q/d))(u-log d).           (R4)

All cross terms between different d remain when |F|² is formed.
In particular Parseval of R3 cannot replace the square of R4.
The generic Cauchy bound costs a factor q:

    |F(u)|² <= q *sum_(a mod q)|F_(q,a)(u)|².

If q grows like exp(T), that loss is far too large for an
all-positive-rate RH-facing estimate.

For chi mod Q, absolute convergence on Re z>1/2 gives the
automorphic GL(1) Dirichlet-series source

    Laplace[F_chi](z)=
       L(2*z+1,chi²) /
        (z*(z+1/2)*L(z+1/2,chi)).                (R5)

For the modulus-one principal character this is exactly the
earlier original Liouville zeta quotient. Merely changing to
automorphic frames does not prove a zero-free statement for
any denominator L(z+1/2,chi).

Primary source for character orthogonality:
https://dlmf.nist.gov/27.8
Primary comparison for automorphic GL(1):
https://math.stanford.edu/~conrad/modseminar/pdf/L11.pdf

## 4. Exact prime phase and nonunit mode merging

For every prime p, complete multiplicativity implies

    lambda(p*n)=-lambda(n).
The actual positive-index causal scaling is

    r_(p*n)(u)=p^(-1/2)r_n(u-log p).

For additive Fourier mode k mod q, let

    W_(q,k)(u)=sum_(n>=1) lambda(n)r_n(u) e^(2*pi*i*k*n/q).

The subpacket supported on indices divisible by p satisfies EXACTLY

    W_(q,k)^(p|)(u)=
           -p^(-1/2) W_(q,p*k)(u-log p).         (R6)

When gcd(p,q)=1, multiplication by p permutes Fourier labels
and the mode transfer has a fixed negative phase and delay.
When p divides q, some labels merge; the nonunit defect strata
in R1 are needed for complete reconstruction.

A purely residue-valued periodic model of lambda cannot reproduce
the original source: take q=2, p=3 and n=1. Multiplication by 3
fixes residue 1 mod 2 but reverses lambda(1)=1 to lambda(3)=-1.

The multiplicative graph on actual positive integer labels has
a flat sign connection: edge n->pn carries
lambda(pn)/lambda(n)=-1, which is the coboundary of the vertex
sign lambda(n). Its genuine cycles have trivial holonomy.
After quotienting to residues, p=3 gives a self-loop at residue
1 mod 2 with phase -1. This is NONTRIVIAL quotient-graph
holonomy because the logarithmic height was collapsed;
it is not physical Berry curvature on the original integers.
Restoring u->u-log p resolves the apparent contradiction.

Barry Simon's line-bundle interpretation of Berry holonomy:
https://doi.org/10.1103/PhysRevLett.51.2167
Original optical wave-dislocation / topological-vortex research
provides physical motivation, not an arithmetic proof.

## 5. Prime-two antiphase filter: uniform, but not cancellation

Let O(u)=sum_(n odd)lambda(n)r_n(u) be the unchanged odd-index source.
Every n>=1 decomposes uniquely as 2^r m, m odd. The exact signs
and physical-time delays give

    F(u)=sum_(r>=0)(-2^(-1/2))^r O(u-r log2).    (R7)

The sum is pointwise finite. Inverting the causal geometric filter,

    O(u)=F(u)+2^(-1/2)F(u-log2).                 (R8)

Translation by a nonnegative delay is an L²(0,T) contraction
on zero-extended causal functions. With a=2^(-1/2), both
complete physical-time energies obey

    H_O(T)/(1+a)^2 <=H_lambda(T)
                         <=H_O(T)/(1-a)^2.     (R9)

The constants are independent of T. Thus a p=2
reflection removes all even indices at fixed norm cost,
but controlling the odd-index source at every positive
rate is STILL RH-strength. The existing finite-prime
sieve programme already records the multi-prime analogue
and its rapidly growing inverse conditioning cost.
No new RH estimate follows from R9.

## 6. Precise additive/multiplicative affine defect and Chowla input

Define D_p f(n)=f(p*n), S_h f(n)=f(n+h).
The arithmetic maps themselves satisfy
 D_p after S_h on points n =p*n+p*h,
 S_h after D_p on points n =p*n+h;
they do not commute for p>1,h>0.

On the actual lambda coefficient the operator commutator is

    [D_p,S_h]lambda(n)
      =lambda(p*n+h)+lambda(n+h).              (R10)

Define the sign (an AFFINE defect observable, not an
already-proven topological Chern number)

    kappa_(p,h)(n)=lambda(n+h)lambda(p*n+h).

For p>1 and h>=1 fixed, its two affine forms have slopes
1,p, shifts h,h, nonzero determinant (1-p)h.
Tao's published logarithmically averaged two-point Chowla
theorem therefore yields the unconditional ARITHMETIC result

    sum_(n<=x) kappa_(p,h)(n)/n =o(log x).       (R11)

Consequently, as both lambda signs are ±1,

    |[D_p,S_h]lambda(n)|²
        =2+2*kappa_(p,h)(n),

    lim_(x->infty) (1/log x)
      sum_(n<=x)|[D_p,S_h]lambda(n)|²/n=2.      (R12)

Equivalently, exactly half of the n in normalized logarithmic
density satisfy lambda(p*n+h)=lambda(n+h), and half have
the opposite sign. The mismatch is NOT a sparse bad set:
it is a genuine, statistically nontrivial arithmetic defect.

The source theorem is Terence Tao, "The logarithmically averaged
Chowla and Elliott conjectures for two-point correlations",
Forum of Mathematics, Pi (2016):
https://arxiv.org/abs/1509.05422
https://www.cambridge.org/core/journals/forum-of-mathematics-pi/article/logarithmically-averaged-chowla-and-elliott-conjectures-for-twopoint-correlations/48514F53D73B2C1277BD7232630F0694

Tao proves fixed-parameter logarithmically weighted cancellation.
It does NOT directly give natural/causal-weighted cancellation
uniformly over the exponentially large ranges of p and h required
by the complete signed interior long-gap A_j. A September 2026
effective refinement
https://arxiv.org/abs/2609.28526
has extremely restrictive iterated-log parameter thresholds, not
the uniform macroscopic family. Newer ordinary two-point Chowla
claims require their own independent verification and, even for
fixed affine forms, do not automatically supply uniform all-shift
causal energy control.

The Lean source defines the actual residue packet and proves at
source-script level coefficient_prime_is_neg_one,
coefficient_prime_dilation, affine_commutator, and a scalar
square expansion. Their compilation and kernel verification
have not been run. R11/R12 are a documented APPLICATION of
external published mathematics, not imported local Lean theorems.

## 7. Exact finite additive Fourier lens for the ORIGINAL long-gap P

At the original j-th target set R=R_j,G=j²,T=T_j.
Choose q>2R, e.g. q=2R+1; no primality of q is needed.
For each k mod q define the original signed mode

    W_k(u)=sum_(n=1..R)lambda(n)r_n(u)*e^(2*pi*i*k*n/q),

and its complete nonnegative time energy

    E_k=int_0^T |W_k(u)|² du >=0.

The real Dirichlet kernel is

    D_G(k)=sum_(h=-G..G)e^(2*pi*i*k*h/q)
           =1+2sum_(h=1..G)cos(2*pi*k*h/q).

Finite additive-character orthogonality gives an EXACT,
alias-free identity:

    2*A_j=E_0-(1/q)sum_(k=0..q-1)D_G(k)*E_k.    (R13)

Proof: E_0 is the full bulk Gram including both ordered
offdiagonal orientations. The D_G-weighted average of E_k
picks out exactly |m-n|<=G and the diagonal. Subtracting
leaves exactly the original signed pairs with gap>G;
since q>2R, there are NO wrapped aliases.

The factor D_G(k) can be NEGATIVE: already D_1(pi)=-1.
Hence it is invalid to treat its complete weighted sum as
a positive definite scalar energy. The individual E_k
are nonnegative, but the projection needed for P is signed.

At q<=R, formula R13 requires an explicit alias correction:
the character projector also counts pairs with
m-n equivalent mod q to some |h|<=G, even when
|m-n|>G. Those are exactly additional long-gap signed pairs
and may not be silently dropped. This is an actual
source-information-loss boundary for compressed residue lenses.

Finite independent diagnostics using a closed-form original
causal Gram and independent discrete Fourier reconstruction:
  j=1: N=32,R=16,G=1,q=33,
       E0=0.4241939610927, band=2.6869894216561,
       A_j=-1.1313977302817.
  j=2: N=1024,R=768,G=4,q=1537,
       E0=7.7041521775581, band=-3.5125333654811,
       A_j=5.6083427715196.
The two sides of R13 matched to floating error <3e-15.
These are diagnostic fixtures, NOT estimates at all j.

R13 gives a precise required spectral compensation inequality:

    E_0-(1/q)sum_k D_G(k)E_k
             <=2 C_eps exp(eps*T_j)            (R14)

simultaneously for all eps>0,j>=1.
R14 is mathematically EQUIVALENT to P, not a newly proved
inequality. Any physical/spectral construction must establish
new arithmetic information making R14 true for the literal
Liouville modes. Mode reconstruction alone cannot establish it.

## 8. The Newton–Dirichlet–Riemann–Einstein–Gödel–Bell–topology chain

* Newton: prism dispersion separates components without changing
  their source identity. This is an analogy for residue and Fourier
  filtering, not a proof of any Liouville estimate.
  Original \`Opticks\` primary text:
  https://newtonproject.ox.ac.uk/view/texts/normalized/NATP00045

* Maxwell and Einstein: Maxwell's equations are linear in
  vacuum/linear media, while physical intensity is quadratic and
  contains interference. Relativistic causal cones depend on
  spacetime geometry; the arithmetic birth support n<=exp u is
  only a mathematical analogue of one-way causal support.
  It is NOT a relativistic photon propagation law.

* Dirichlet: characters diagonalize the finite unit-group
  components, but the nonunit residue strata are separate
  source data. R1--R4 provide an exact repair of this omission.

* Riemann: Mellin/Laplace transformation converts the actual
  causal time response into GL(1) L-quotients R5. Poles/zeros
  remain arithmetic; phase filtering does not move them.

* Automorphic/adelic physics: Bost–Connes exhibits a dynamical
  system with zeta as partition function, and the Cuntz
  ax+b semigroup combines additive and multiplicative actions.
  Connes' adelic trace formula interprets critical zeros as an
  absorption spectrum and hypothetical noncritical zeros as
  resonances. These are real mathematical research links.
  They do NOT provide the missing inequality R14.
  https://doi.org/10.1007/s000290050042
  https://arxiv.org/abs/math/0611541
  https://arxiv.org/abs/math/9811068
  https://doi.org/10.1137/S0036144598347497

* Topological defects: Berry/Simon holonomy motivates viewing
  quotient-residue phase mismatch as a Z2 local system. R10--R12
  make one affine defect observable precise. A physical vortex,
  nontrivial Chern number or singular spacetime metric has NOT
  been proved to arise from lambda.

* Bell inequalities: the need to retain all coherent signed
  cross terms resembles the importance of a joint correlation
  structure. However, deterministic Liouville sign functions
  assigned on a single common probability space satisfy the
  classical CHSH bound. No Bell violation, quantum entanglement,
  or quantum advantage follows from R1--R14.
  https://plato.stanford.edu/entries/bell-theorem/

* Gödel: proof theory enforces a distinction between a named
  open arithmetic proposition, a mathematical conditional
  implication, and an accepted proof with no hidden extra
  axioms. Incompleteness DOES NOT imply RH is independent of
  arithmetic or that topological heuristics settle it.
  https://plato.stanford.edu/entries/goedel-incompleteness/

2026 experimental quantum-zeta studies are also part of the
search landscape, but finite spectral experiments do not prove
the required all-j inequality:
https://www.nature.com/articles/s41467-026-74935-8

## 9. Source-independent checks and precise next arithmetic task

Direct finite diagnostics:
- Residue identity R1 for q=6,12,20,37 at u=0.2,
  log(17.3), log(32): maximum error <5e-16.
- Prime-filtered additive phase transport R6 for
  q=6,12,37, p=2,3,5,7, k=5 and u=log51:
  maximum error <1e-12.
- Character-stratum Plancherel R3 for q=4,6,8,12
  at u=log13.1 and log40: maximum error <1e-15.
- 2-adic inverse-delay check R8 for six heights through
  log200: maximum error <4e-16.
- j=1,2 additive Fourier long-gap identity R13:
  error <3e-15.

These tests corroborate exact elementary identities only;
they do NOT establish any uniform cancellation as j->infinity.

The meaningful next theorem to seek is a **noncircular,
quantitative affine mixing estimate for the ACTUAL Liouville
principal coherent modes**, uniformly over macroscopic gaps,
time birth windows and the original signed Gram.
Its result must bound the LHS of R14 for every positive eps,
not just for fixed p,h in a logarithmic average.

A generic spectral gap on the NONPRINCIPAL Dirichlet modes
cannot discharge it: multiplication by each invertible p
leaves the principal character subspace invariant.
Additional additive-shift interactions (or an independent
explicit-formula/trace-formula estimate) must control the
principal coherent component, with every nonunit, boundary,
alias, and mixed sign carried through.

The exact mathematical P and its conditional implication
to canonical RH remain unchanged and OPEN/NOT_RUN in Lean.
No new signed-correlation all-rate estimate, arithmetic
source replacement, research axiom, native verifier job,
schedule, or hidden publication authority is asserted.

Lean source proof candidates require compilation, fresh
kernel replay, expected-interface checking and transitive
axiom audit at the final immutable source commit. The
review's finite diagnostics are not substitutes for them.
