# Genuine scale-dependent prime banks for the original signed Möbius source

Date: 2026-11-02. Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Status: mathematical derivations plus Lean SOURCE_PROOF_CANDIDATES.
COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / FULL_IMPORT_CLOSURE_NOT_RUN.
No RH/GRH proof is claimed.

## 1. Exact source, not a new coefficient model

The existing grwtsk/math highSmoothBlock B X T selects each ORIGINAL
integer n from the unchanged sourceBlock (X,2X], clipped at
T=log(2X), provided there exists an actual divisor d|n with
bankSmooth B.primes d and nearSquareRootCut(2X)<d.
Its cutoff is exactly
  Q(N)=N*exp(-2sqrt(log N)).
The original integer n, original moebiusReal n, and
pickupResponse n u remain unchanged. Squareful zeros are retained.

The fixed-bank result in CMOriginalHighSmoothSquarefreeCutoff says
that for fixed B the selected NONZERO Möbius source is finite,
because any bank-smooth divisor of a squarefree n divides the
fixed bank prime product. A changing bank B_s can avoid this
fixed-product obstruction while still being a genuine PrimeBand
at every shell.

## 2. Explicit genuine high prime in EVERY dyadic shell

Pinned Mathlib/NumberTheory/Bertrand.lean (blob
25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa) contains
  Nat.exists_prime_lt_and_le_two_mul:
  for every nonzero X, exists prime p with X<p<=2X.

Set X_s=2^s, choose p_s with 2^s<p_s<=2^(s+1),
and define the ACTUAL moving PrimeBand B_s={p_s}.
Its only listed bank prime is genuine and unchanged.
The source response still has original mu(p_s)=-1.

The source high-smooth condition is satisfied at d=p_s:
  p_s | p_s and bankSmooth {p_s} p_s.
It remains to verify the exact Q threshold. For N=2^(s+1)>=2,
let a=log 2 and T=log N. Elementary
  0<a<=1, T>=a, a^2<=a<=T
implies sqrt(T)>=a and therefore 2sqrt(T)>a.
Thus
  Q(N)=N*exp(-2sqrt(T))
       < N*exp(-log2)=N/2=X_s<p_s.
The endpointIndex condition is exact because
  T_s=log(2^(s+1))=dyadicTime(s+1)
and floor(exp T_s)=2^(s+1).
Therefore p_s is a genuine member of the unchanged
highSmoothBlock B_s X_s T_s.

Distinct half-open dyadic shells force all p_s distinct.
Every p_s has mu(p_s)=-1, so this is an explicitly INFINITE
collection of NONZERO source atoms. It does NOT use probabilistic
Möbius signs, a synthetic sieve or a redefined high predicate.

The new CMScaleDependentPrimeBankWitness Lean source contains
proof candidates for the exact Bertrand witness, cutoff inequality,
real high-shell membership, original negative Möbius coefficient,
injectivity and infinite range.

## 3. A simple subsequence with a UNIFORM bound 4

To get a quantitative bound from arithmetic-free geometry alone,
select only even dyadic shells. Put
  q_s = p_(2s),    4^s < q_s <= 2*4^s,
  C_s = {q_s} = B_(2s).
The actual original signed causal prime subsource is
  H_j(u)=sum_(0<=s<j) mu(q_s)*pickupResponse(q_s,u).
Every term is an ORIGINAL squarefree Möbius source atom from
the actual highSmoothBlock C_s (4^s) T_(2s+1).

The original response has, at EVERY u,
  0<=pickupResponse(n,u)<=2/sqrt(n).
Since q_s>4^s, it follows that
  |mu(q_s)*pickupResponse(q_s,u)|<=2/2^s.
Pinned Mathlib Analysis/SpecificLimits/Basic.lean provides
  sum_geometric_two_le: sum_(s<j)(1/2)^s<=2.
Consequently
  |H_j(u)|<=2*sum_(s<j)2^-s<=4,
simultaneously for ALL j and ALL physical times u.
This uses no source cardinal counting result and no
Mertens/PNT/RH assumption. It is an absolute, not statistical,
budget for infinitely many nonzero source atoms.

The selected finite original index set at horizon j is
  I_j={q_s:s<j},  I_j subset Icc 1 (2^(2j)),
since q_s<=2^(2s+1)<=2^(2j).
The map s|->q_s is injective, so the original source HIGH is the
ordinary finite sum over I_j without multiplicity. Define the exact
LOW as F_(2j)(u)-H_j(u). The new source candidate proves the exact
filtered low expression, retaining ALL other original signs,
squareful-zero coefficients, nonunits, original parity sectors,
full integer labels and physical birth times.

The algebraic signed source identity is exactly
  F_(2j)^2=H_j^2 + 2 H_j L_j + L_j^2.
The mixed term is neither zeroed nor declared nonnegative.
The two-square inequality gives the UNCONDITIONAL pointwise bounds
  F_(2j)(u)^2 <= 2 L_j(u)^2+32,
  L_j(u)^2 <=2 F_(2j)(u)^2+32.
Using the EXISTING source-exact energy identity
pickupEnergy(T_(2j))=integral_0^T F_(2j)(u)^2 du,
the PhysicalEnergy source candidate derives
  pickupEnergy(T_(2j)) <=2 H_low(T_(2j))+32 T_(2j),
  H_low(T_(2j)) <=2 pickupEnergy(T_(2j))+32 T_(2j).
Hence the all-positive-rate original energy and true sparse-LOW
energy have exactly the same asymptotic difficulty, on this
affine-frequent sequence of source observation scales.
NO low arithmetic estimate is claimed or supplied.

## 4. Whole moving highSmoothBlock, not just a handpicked subsource

Independently, define the TRUE moving high support at every shell as
  H^move_s=highSmoothBlock B_s (2^s) T_(s+1).
This includes p_s but also faithfully retains any other selected
integers (and their squareful zeros) allowed by the exact source
predicate. The bank sizes are all ONE. The EXISTING source count
highSmoothCofactorCount_target gives
  |sum_(n in H^move_s) mu(n)*pickupResponse(n,u)|
    <=2/sqrt(2^s)*exp(2sqrt(T_s))*(1+T_s/log2),
which is the SAME scalar cost as the fixed reference singleton bank
B_0={p_0}. Because that scalar sum was previously bounded by
CMOriginalHighSmoothScalarClosure.globalHighEnvelope_proof,
the full moving high source also has a fixed uniform bound
independent of time and cutoff.

That deduction is source-bound to the PREEXISTING original
highSmoothCofactorCount_target, which itself remains an uncompiled
Lean proof candidate. The new FullHigh module includes proof
candidates for the genuine varying-bank disjoint union,
source-filtered complement, original exact signed square and
uniform high-wave bound.

## 5. The infinite correction is analytic, but not entire

For the even-shell selected primes, let
  D(z)=-sum_(s>=0) q_s^(-z).
This is a genuine original Möbius subseries, since mu(q_s)=-1.

For every REAL sigma>0 and every s,
  2^(-sigma)*(4^(-sigma))^s <= q_s^(-sigma)
                                  <= (4^(-sigma))^s.
Hence, by TWO nonnegative geometric series,
  2^(-sigma)/(1-4^(-sigma))
   <= -D(sigma) <= 1/(1-4^(-sigma)).
The source DirichletBound source candidate proves the finite
positive-real squeeze and the upper cutoff-uniform mass;
the global complex analytic statement remains an OPEN Lean Prop.

For any compact K in Re(z)>0, choose epsilon=min_(z in K)Re(z)>0.
Then |q_s^(-z)|<=4^(-epsilon*s) on K. The Weierstrass M-test gives
absolute locally uniform convergence and holomorphy on Re(z)>0.

As sigma approaches 0 from the positive side,
  (1-4^(-sigma))/sigma -> log4,
  2^(-sigma)->1.
Thus the two-sided bound gives the SHARP radial limit
  lim_(sigma->0+) sigma*(-D(sigma))=1/log4 >0.
In particular D cannot extend as an entire function across z=0.
This is a *radial pole-like divergence*, NOT a proof that D admits
a meromorphic continuation or has a pole at zero.

This contrasts with the FIXED-bank high correction, which was a
finite Dirichlet polynomial and hence entire. Both corrections
are holomorphic on Re(z)>0 and cannot cancel poles of the
meromorphic original reciprocal zeta in that open half-plane.

## 6. The moving selected causal high wave has a nonzero limit

At each fixed u, only finitely many q_s have been born
(q_s>4^s). The infinite-time original subsource is therefore the
genuine finite-at-each-time causal wave
  H(u)=-2 sum_(q_s<=exp u) q_s^(-1/2)
          +2 exp(-u/2)*#{s:q_s<=exp u}.
The number of born selected primes is O(1+u/log4), while the
inverse-root series converges absolutely. Consequently
  H(u)->-2 A,   A=sum_(s>=0)q_s^(-1/2).
The true dyadic bounds on q_s give
  sqrt2<=A<=2.
Therefore the source high energy has an actual nonzero linear
asymptotic:
  lim_(T->infty) (1/T)integral_0^T H(u)^2 du
    =4 A^2 in [8,16].
Thus the LINEAR high-energy allowance has the correct order;
the selected high source does NOT fade to zero. This is a
mathematical derivation, not yet a Lean theorem.

## 7. Precise remaining arithmetic frontier

The variable-bank family defeats the fixed-bank finite-support
obstruction: infinitely many original nonzero Möbius indices
are selected, while the full high source is uniformly bounded.
But this still removes only one prime per even shell in the
quantitatively simplest variant. Its complement has full density
and retains the unresolved signed correlations.
The source comparison alone does NOT prove an all-positive-rate
bound for that LOW coherent energy or RH.

Most productive next steps: compile/replay the source candidates;
formalize the global Dirichlet analytic and radial boundary from
the two-sided finite squeeze; investigate a more substantial
moving-bank support whose high amplitude is paid but whose LOW
arithmetic exhibits new cancellation. Growing bank cardinality
requires an explicit independent summation cost; fixed-B constants
cannot be silently reused.

## 8. Provenance and acceptance

Source identities (before this additive publication):
- CMOriginalHighSmoothSquarefreeCutoff.lean
  blob 2b0525ed4dc9a6fc906b318dd9150a294a309201.
- CMOriginalHighSmoothEntireCorrection.lean
  blob da003b21c837f999eda9a2f5c9f21ab498888bd1.
- CMOriginalHighSmoothDirectEnergy.lean
  blob a8156c9b950db4800224c7a5112f5bc9d3ec15c1.
- CMOriginalHighSmoothScalarClosure.lean
  blob f0a8417a66658a9d5e02689c36e656201e934a03.
- MoebiusHighSmoothCofactorCountProof.lean
  blob 6899657e4ad54cf56fd7e907966d4d9bc2f7f3f8.
- Mathlib/NumberTheory/Bertrand.lean
  blob 25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa.

Pinned Lean toolchain v4.34.1 and Mathlib commit
d13f23b723b8a846827a245b89c10fc7d3f11612.
This conversation runtime has no accessible lean/lake compiler.
The new sources are NOT_RUN, expected declaration types NOT_RUN,
fresh kernel replay NOT_RUN, transitive axiom/opaque-helper audit NOT_RUN.
The included passive acceptance #check/#print source is NOT a receipt.
No scheduler, CI, root imports, dependencies or foreign repo edits.

Any future native work must go through actual reviewed Noe owners,
pinned source identities, resource holds, and complete accepted receipts;
the Noe proof-automation skill does not confer standalone host authority.
