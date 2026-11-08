# Original Möbius all-k signed tuple moment: exact finite source reduction

Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
Date: 2026-11-02. New Lean leaves: SOURCE_PROOF_CANDIDATE.
Compilation, expected types, fresh kernel, transitive axiom/native audit: NOT_RUN.
Original RH arithmetic supplier: OPEN.

## Original source and exact signed tuple construction

At dyadic stage j let N=2^j, T=j log 2, and take the ORIGINAL
mu(n) and the explicitly compensated adaptiveResponse n u:
 b_n(u)=moebiusReal n*adaptiveResponse n u, n in 1..N.
The scalar wave B_j(u)=sum_(n=1..N)b_n(u) is literally
CMAdaptiveDisjointBirth.adaptiveSmoothWave, and the original pickup is
B_j+adaptiveErrorWave, with the entire mixed signed square retained.

For k>=1, tuples v:[Fin k] -> {1,...,N} retain every original integer n_i.
Address a(v)=sum_i(n_i-1), lying in 0..k(N-1).
The coefficient of address s is the FULL SIGNED sum
 c_(k,j,s)(u)=sum_{a(v)=s} product_i b_(n_i)(u).
The number of possible addresses is q_(k,j)=k(N-1)+1.

The finite power expansion (pinned Mathlib Finset.sum_pow') and exact address
partition give
 B_j(u)^k = sum_(s=0..q-1)c_(k,j,s)(u).
The pinned finite Cauchy theorem sq_sum_le_card_mul_sum_sq consequently gives
 (B_j(u)^k)^2 <= q_(k,j) sum_(s=0..q-1)c_(k,j,s)(u)^2.     [FINITE]
This is an all-k statement, unconditional at the level of original signed
finite algebra, and requires no Fourier integral, tensor positivity
assumption or source-invented residual.

Set A_(k,j)(u)=sum_s c_(k,j,s)(u)^2 >=0 and
I_(k,j)=integral_(0..T) A_(k,j)(u) du.
For k=1, A_1=sum_n b_n^2 is the diagonal, known to have polynomial integrated
energy. For k=2, exact finite algebra gives the two equivalent forms
 A_2=sum_(s=2..2N)(sum_(m+n=s)b_m b_n)^2
    = C_0^2+2sum_(h=1..N-1)C_h^2,
 C_h=sum_(1<=n,n+h<=N)b_n b_(n+h).
All original signs appear within C_h before the square. The L4 circle
orthogonality identification is another representation, not a premise
for the finite Cauchy estimate.

## Exact finite cyclic sampling and winding

Define P_j(u,x)=sum_(n=1..N)b_n(u)exp(2pi i n x),
q=k(N-1)+1, and x_a=a/q, a=0..q-1.
The frequencies of |P_j|^(2k) are differences of two k-fold sums,
hence integers from -k(N-1) to +k(N-1). By the root-of-unity identity
  (1/q)sum_(a=0..q-1)exp(2pi i r a/q)=1 if q|r, else 0,
only r=0 remains in that range. Thus the exact finite identities are
 (1/q)sum_a |P_j(u,x_a)|^(2k)
   = integral_0^1 |P_j(u,x)|^(2k) dx
   = A_(k,j)(u).
At a=0, P_j(u,0)=B_j(u) and point positivity gives
 |B_j(u)|^(2k)<=sum_a|P_j(u,x_a)|^(2k)=q*A_(k,j)(u).
The two orthogonality identities are mathematically derived but are
explicit unproved Lean Props in the new finite cyclic leaf. In particular,
the finite signed Cauchy theorem does NOT require those props.

## Physical-time passage and a strictly weaker supplier

Time Holder (the still-unformalized functional-analytic gate) gives
  [H_sm(T)]^k
     <= T^(k-1) integral_0^T |B_j(u)|^(2k) du
     <= T^(k-1) q I_(k,j).
Thus
  H_sm(T) <= T^(1-1/k)*q^(1/k)*I_(k,j)^(1/k).
For each fixed k>=1, q=k(2^j-1)+1<=k exp(T) for T=j log 2.

A STRONG sufficient supplier is: for EVERY fixed k>=1, there exist
C_k>=0 and A_k>=0 such that I_(k,j)<=C_k(1+T)^A_k for every j.
A STRICTLY WEAKER sufficient supplier is FlexibleSignedTupleMomentProfile:
for each requested epsilon>0 choose *one* k>=1, eta>=0, C>=0, A
with (1+eta)/k<epsilon and
  I_(k,j)<=C exp(eta*T)*(1+T)^A for all j.
Then q^(1/k) and the moment cost contribute growth exponent
(1+eta)/k, strictly smaller than epsilon; absorb time polynomials
uniformly into the surplus epsilon. Existing adaptive error payment,
once both analytic gates have Lean proofs, gives
  H_original(T) <= 2 H_sm(T) + 1/6.
The original dyadic good-scale return then reaches the canonical RH
CONDITIONALLY on the genuinely new arithmetic supplier.
No arithmetic moment bound has been derived from generic Parseval,
wave-packet/Schwartz periodization, or modular lattice movement.

Hostile comparison: replace mu(n) by +1 while retaining the original
positions and causal amplitudes. Coherent power moments are then
exponentially large for k>=2, so neither lattice injectivity nor
spatial L2 controls the requested high moments automatically.

## Source identities and acceptance

- GRWTSK/.../CMAdaptiveDisjointBirth.lean: unaltered original source,
  disjoint windows, exact signed error wave and mixed square.
- GRWTSK/.../CMAdaptiveBirthEnvelope.lean: exact finite 1/12 reciprocal
  payment, with AtomicBirthCellEnvelope and OriginalErrorCellReturn OPEN.
- GRWTSK/.../CMAdaptiveFourierMoments.lean: signed shifts, L4 ledger and
  physical-circle even moment, with polynomial arithmetic supplier OPEN.
- GRWTSK/.../CMAdaptiveSignedTupleMoments.lean (new): all-k original signed
  tuple address, source power expansion, finite Cauchy, flexible rate Prop.
- GRWTSK/.../CMAdaptiveFiniteCyclicTrace.lean (new): cyclic samples, zero
  coherent readout, positive sample bound, orthogonality Props OPEN.

Pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 directly contains
Finset.sum_pow' and sq_sum_le_card_mul_sum_sq. Lean toolchain v4.34.1.
There is no local lean/lake executable in this conversation environment.
Do not declare proof acceptance, dispatch CI/native execution, edit root
imports or change dependencies on this evidence. Compile, inspect expected
types, fresh kernel replay, source-bound full axiom audit and the original
analytic supplier remain separate gates.
