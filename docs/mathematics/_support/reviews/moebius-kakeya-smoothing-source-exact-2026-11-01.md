# All-birth smooth regularization of the original Möbius response

Local attribution: grwtsk contributors. 2026-11-01.
Formalization assistance: OpenAI ChatGPT. Source proof candidate.

## Primary external research and exact scope

OpenAI, *Local smoothing for the Euclidean wave equation*,
2026-10-25, https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/preprints/Local-smoothing-for-the-Euclidean-wave-equation-October-25-2026.
Announcement 2026-10-26:
https://openai.com/index/building-scientific-understanding-with-academic-communities/.
The reported theorem concerns d-dimensional Euclidean half-wave operators
for all spatial d>=2, p>=2 and epsilon-regularity loss, with Sobolev
threshold max(0,(d-1)/2-d/p)+epsilon. The claimed consequences are
Kakeya/Nikodym maximal bounds, full Kakeya Hausdorff dimension and
strict-range Fourier restriction. The actual OAI Lean
`lean/OAI/Analysis/Fourier/LocalSmoothing/Comparator.lean`, blob
6def181857b8148d9dbaed288876a225ca9ddbfb at
4eaee87548250b2682affda7d05d947c05554bae, contains proof calls
to other OAI declarations and no authored `sorry`; distinct standalone
`lean/ComparatorChallenges/LocalSmoothing.lean` contains `sorry`
challenge holes. We did not reproduce the OAI compilation, kernel
verification or transitive axiom audit, nor review the manuscript's
full derivation or fidelity of the formal target.

**No transfer of an external Kakeya theorem to an integer-indexed
Möbius Gram is asserted here.** Spatial dimension d, tube radius delta,
Lebesgue/sphere L^p norms and Hausdorff measure do not equal the
source index n, arithmetic birth T, residue q or signed pair energy.
The imported mathematical inspiration is the need to make smoothing
quantitative at ALL levels, with explicit scale loss and return.

## Original response is only C0 at the birth

For n>=1, original r_n(u)=0 if u<log n and
r_n(u)=2(n^(-1/2)-exp(-u/2)) for u>=log n.
At u=log n, both sides give 0. The left derivative is 0,
whereas the right derivative is exp(-log n/2)=n^(-1/2).
Thus r_n is continuous but NOT differentiable at its birth,
even though it is analytic on each open side. This is a concrete
obstruction to calling the original source C-infinity at each n.

## Smooth generator with arbitrarily small uniform signed defect

Fix 0<kappa<=1. Choose ANY smooth monotone step eta:R->R
with 0<=eta<=1, eta(x)=0 for x<=0, eta(x)=1 for x>=1.
Such a step exists, e.g. set a(x)=exp(-1/x) for x>0 and 0
otherwise, eta(x)=a(x)/(a(x)+a(1-x)).
The denominator is positive everywhere; eta is C-infinity and
flat at the two endpoints.

Set h_n=kappa/n^2 and define

  s_(n,kappa)(u) =
    2 (n^(-1/2)-exp(-u/2)) eta((u-log n)/h_n).

The response s is globally C-infinity in real u for EACH n>=1.
It is exactly 0 for u<=log n and agrees EXACTLY with the original
r_n for u>=log n+h_n. On the transition interval
[log n, log n+h_n], 0<=s<=r and
0<=r_n(u)-s_n(u)<=h_n/sqrt(n). The latter follows from
r_n(u) = 2n^(-1/2)(1-exp(-(u-log n)/2))
<= (u-log n)/sqrt(n).
The missing response therefore has integral at most
h_n^2/sqrt(n) over every interval [0,T].

For u in the support of Delta_n=r_n-s_n and n>=1,
e^u<=n exp(h_n)<=e n. The complete unweighted positive
source response mass at that time satisfies

  sum_(m>=1) r_m(u)
  <= 2 sum_(m<=e^u) 1/sqrt(m)
  <= 4 exp(u/2)
  <= 4 sqrt(e n).

Write S_kappa(T) for the full ordered off-diagonal Gram with
the same μ(m)μ(n), same m,n<=floor(exp T), same original
indices and exclusion m!=n, but smoothed responses s.
For any T>=0, using |mu(n)|<=1, 0<=s_n<=r_n and
r_m r_n-s_m s_n=(r_m-s_m)r_n+s_m(r_n-s_n),

  |X_mu(T)-S_kappa(T)|
  <= 2 sum_n int_0^T (r_n-s_n)(u) [sum_m r_m(u)] du
  <= 8 sqrt(e) sum_(n>=1) h_n^2
  = 8 sqrt(e) kappa^2 sum_(n>=1) n^(-4)
  <= (32/3) sqrt(e) kappa^2.

The last inequality uses sum_(n>=1)n^-4<=1+int_1^infty x^-4 dx=4/3.
This is UNIFORM IN T and handles all ORIGINAL ordered
pair orientations with no loss from rough/mixed/squarefree
strata or endpoint truncation. At T=0 both packets are zero.
It does not assume or establish Möbius cancellation. It is
an analytic estimate; its Lean proof is NOT included.

## Exact return, source defects, and RH-facing equivalence

The added Lean source defines smoothBirthResponse, smoothBirthGram,
smoothBirthCross and the literal signedSmoothBirthDefect(T) as
original-minus-smoothed double sum, and provides a candidate
finite-sum identity

  pickupCross(T)
   = smoothBirthCross(eta,kappa,T)
     + signedSmoothBirthDefect(eta,kappa,T).

This is exactly the original μ-weighted ordered Gram, with
its original diagonal excluded. Every real observation time T
and the q*pi clock specialization can be used without changing
q, ZMod q, n or prime-power valuations. For the chosen eta and
0<kappa<=1 the proved mathematical estimate above bounds
the actual signed defect by (32/3)sqrt(e)kappa^2.

For any FIXED scale set G and FIXED kappa>0, the source
subexponential-on-G upper estimate holds iff the smoothed
one holds: the constant uniform defect is absorbed into
C_epsilon exp(epsilon T) for T>=0. The same fixed affine
coverage of G remains required. Choosing kappa small can
approximate the original source uniformly but cannot make
an unsupplied signed dense estimate true. The source
elliptic identity becomes
smoothBirthCross + signedSmoothBirthDefect =
matchedEllipticPacket + fullSignedResidual;
all rough, mixed and source-minus-trace terms remain.

The existing q=2 and q=3 negative ratio pairs and their
complements are already considered in
MoebiusOddSquarefreeDoublingPacket and
MoebiusSquarefreeTriplingNegativePacket. No new arithmetic
negative-pair discovery or global cancellation is claimed.

## Hostile checks and outstanding bridges

- Original r_1 has derivative jump 1 at u=0; no C-infinity
  claim for unsmoothed responses.
- C-infinity for each n does not provide uniform-in-n
  derivative bounds: h_n ->0, and cutoff derivatives grow.
- The cutoff is a smooth real-time regularization, NOT a
  Kakeya directional averaging operator, prime-residue
  isomorphism, or experimentally measured observer dynamics.
- Only the original real T changes response regularity.
  A q*pi time coordinate must be converted back to T.
- A non-unit prime power remains μ=0, not an omitted sample.
- The uniform defect is an additive constant, not
  cancellation of the actual signed dense long-distance packet.
- The actual original positive-rate estimate on fixed
  affine-covering G remains OPEN; RH OPEN.

## Verification, provenance, required consumer

Source candidate:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSmoothBirthGramRegularization.lean.
Formalized declaration intentions:
smoothBirthResponse_before, smoothBirthResponse_after,
smoothBirthResponse_contDiff, pickupCross_eq_smoothBirthCross_add_defect.
No checked claim that the uniform analytic estimate compiles
in Lean. Compilation NOT_RUN, expected types NOT_RUN, fresh
kernel NOT_RUN, transitive axiom audit NOT_RUN.
No new axioms/sorries deliberately authored; that source
observation does not establish transitive trust.

The direct consumer is original pickupCross, its existing
physical-observer and elliptic signed returns, the fixed
affine-cover good-scale criterion and grwtsk/math#119
dimension-indexed Kakeya-style tube interface. For #119
a distinct typed map to Euclidean directional tube
families and a quantitative L^p-to-original Gram adapter
would be needed to import OpenAI's claim; no such map
is constructed. No source modification of upstream
OpenAI/math or of the previously pinned GRWTSK modules.
