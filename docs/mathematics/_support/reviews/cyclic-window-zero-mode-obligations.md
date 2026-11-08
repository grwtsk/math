# Cyclic windows: exact zero mode and the remaining uncentered estimate

Local attribution: grwtsk contributors.
Baseline mathematical review:
`22f9e20885ac2dee753099c9f3c982ad8a0dfa1a`,
`liouville-fejer-window-energy-local-global.md`.
The new Lean candidate is `CyclicWindowZeroMode.lean` and uses the signed
finite-group source at `9fcdd3a98232805b10ea12508f2a2afeb16ae8fe`.

## Exact decomposition and source specialization

For real labels a on ZMod N, N>=1, let S=sum a and
B_H(t)=sum_{r=0}^{H-1}a(t+r). Each label occurs H times, hence
sum_t B_H(t)=H*S. With m=H*S/N, expanding the square gives

    V_N(H)=sum_t B_H(t)^2
          =H²*S²/N + sum_t(B_H(t)-m)^2.                 (1)

The source candidate proves this finite identity and specializes it to the
predecessor's ACTUAL positive-index integer Liouville coefficients. It also
proves H²*S²<=N*V_N(H), using nonnegativity of the second term. No randomness,
independence, coprimality or asymptotic theorem enters. The identity holds
for all natural H; the arithmetic window criterion uses 1<=H<=N.

For lambda, normalized by N*H², equation (1) reads

    V_N(H)/(N*H²)=(L(N)/N)²
                   +[sum_t(B_H(t)-H*L(N)/N)²]/(N*H²). (2)

The global mean and the centered fluctuation are orthogonal summands, BOTH
nonnegative. Centered variance alone cannot upper-bound the left side.
For example constant-one and constant-zero labels both have zero centered
variance, while their uncentered energies are N*H² and zero respectively.
These are logical fixtures for the finite statistic, not claims about lambda.

## What an applicable arithmetic supplier must actually control

A bound V_N(H)<=A*N*H requires the sum of the two normalized terms in (2)
to be <=A/H. Sufficient separate estimates are

    H²*L(N)²/N<=A_0*N*H,
    sum_t(B_H(t)-H*L(N)/N)²<=A_1*N*H,

with A=A_0+A_1. The first is exactly L(N)²<=A_0*N²/H, not a consequence
of the second. At H=ceil(N^(1-eta)), this is already the prefix rate needed
in the established causal-energy transfer. These fields must not be silently
merged under a phrase such as mean-square cancellation.

The published sufficient supplier and its explicit consequence remain

    V_N(ceil(N^(1-eta)))<=A_eta*N*ceil(N^(1-eta))
       => |L(N)|<=sqrt(A_eta)*N^((1+eta)/2)
       => H_lambda(T)<=4*A_eta/eta³*(exp(eta*T)-1),

for 0<eta<1, uniformly over all N and all T>=0. No proof of its first
line is supplied here. The original causal weights and the existing
square-divisor delay transfer are unchanged.

## Cyclic seam cost when importing an ORDINARY interval theorem

Take actual signs of magnitude at most one and 1<=H<=N. Let V_no_wrap
sum B_H(t)^2 only over starts 0<=t<=N-H, where no readout wraps. Then

    V_N(H)=V_no_wrap+sum_(t=N-H+1)^(N-1)B_H(t)^2,
    0<=V_N(H)-V_no_wrap<=(H-1)*H².                    (3)

There are H-1 omitted starts, and each window has magnitude at most H.
Thus a crude boundary treatment costs O(H³), relative to the desired N*H
by a factor of order H²/N. It is harmless at the diffusive scale when
H<=sqrt(N), but is too expensive for H=N^(1-eta) with eta<1/2.

This is a failure of that CRUDE import bound, not a proof that wrap windows
are large for lambda. The exact opposite-gap identity still accounts for
all boundaries without approximation. A successful theorem import must
retain the wrap windows or bound their actual signed components sharply;
ordinary nonwrapping short-interval estimates cannot simply delete them.

## Formal scope and remaining work

New declarations: window, uncentered, mean, centered, zeroMode;
sum_windows; uncentered_eq_zeroMode_add_centered; centered_nonneg;
local_to_global; liouville_window_decomposition. The generic source is under
the existing probability/statistics namespace and subject folder. The
arithmetic supplier, explicit seam bounds and causal-energy transfer above
are mathematical derivations/previous source statements, not newly checked
Lean declarations in this module.

Compilation, fresh kernel replay, expected-type checking and transitive
axiom audit: NOT_RUN. No new arithmetic cancellation, RH result, native
verification job, dependency migration or root import is claimed. New
source publication remains blocked by the separately owned shared Git lock;
the lock is not removed or bypassed.
