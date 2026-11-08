# Uniform smooth-birth comparison for all original ordered Möbius sectors

Local attribution: grwtsk contributors. Date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Exact source for this increment: commit to be read back from guarded main
publication, with source and target blobs. New Lean declarations are
SOURCE_PROOF_CANDIDATE, compilation and independent kernel NOT_RUN.

## Objective, source comparison, and scope

Preserve the original integer-indexed Möbius coefficients, causal responses
r_n, kernel K_T(m,n)=int_0^T r_m r_n, original support
I_T={1,...,floor(exp T)}, and ALL ordered pair orientations. Preserve
the source's original Putnam short additive-gap set A_epsilon(T),
the unchanged denseLongGapSource(ε,T)=pickupCross(T)-
endpointGapSetCross(A_epsilon(T),T) and its RH-facing all-positive-rate
quantifiers on one fixed affine-frequent G.

The previous smooth adapter already defines s_n and smooth Gram L_T.
This increment adds exact arbitrary finite ordered-sector maps and signed
error, a coefficient-independent finite signed-envelope lemma, the actual
smooth image of the existing Putnam gap packet, its signed defect, and a
quantifier-exact comparison of the dense criteria.

## Uniform error for EVERY oriented sector, independent of its size

Fix 0<κ<=1 and any C-infinity right-flat cutoff η with η=0 on (-∞,0],
η=1 on [1,∞) and 0<=η<=1 everywhere. Set h_n=κ/n² for n>=1.
Define s_n(u)=2(n^-1/2-exp(-u/2))*η((u-log n)/h_n).
For u in [log n,log n+h_n] the original difference
Δ_n=r_n-s_n satisfies
0<=Δ_n(u)<=h_n/sqrt(n), while Δ_n=0 outside the interval.
For each u>=0, the full positive response sum over source integers
with birth <=u obeys
Σ_m r_m(u)<=4 exp(u/2).
Whenever Δ_n(u)≠0, u<=log n+h_n<=log n+1,
so this sum is <=4 sqrt(e*n). Therefore

    ∫_0^T Δ_n(u) [Σ_m r_m(u)]du
       <= 4 sqrt(e) h_n².

Since 0<=s_n<=r_n and both responses are nonnegative,
K_T(m,n)-L_T(m,n)
 = ∫_0^T [Δ_m(u)r_n(u)+s_m(u)Δ_n(u)]du >=0.
All terms are nonnegative; summing over the FULL ORIGINAL ordered
square I_T × I_T, including its diagonal only in this dominating
UNSIGNED error envelope, gives

  Σ_(m,n in I_T) (K_T(m,n)-L_T(m,n))
      <= 8 sqrt(e) Σ_(n>=1) h_n²
      <= (32/3) sqrt(e) κ².

The last bound uses Σ n^-4 <= 1+∫_1^infty x^-4 dx=4/3.
This is a paper proof, not a new native Lean theorem.

Let E_T be ANY subset of (I_T × I_T), whether chosen by roughness,
prime residue, mixed orientation, sparse/long distance, a fixed
prime-ratio edge, or dependent on T, epsilon, or κ. Then

  |Σ_((m,n) in E_T, m != n)
    μ(m)μ(n)(K_T(m,n)-L_T(m,n))|
      <= Σ_(m,n in I_T) (K_T(m,n)-L_T(m,n))
      <= (32/3) sqrt(e) κ².

This is a *single* uniform certificate simultaneously covering
every selected sector. It does not assert any sector is intrinsically
small before smoothing or that its original signed correlations cancel.
The uniform comparison is valid because |μ|<=1; it is not
a Kakeya maximal-operator estimate.

## Exact dense-sector return and the factor-two budget

Define smoothGapSetCross(A,T) using the original I_T, m!=n,
Nat.dist m n in A, original μ(m)μ(n), and the smooth kernel L.
Define smoothDenseLongGapSource(ε,T) as smoothBirthCross(T)
minus smoothGapSetCross(A_epsilon(T),T). The source identities give

  denseLongGapSource(ε,T)
   = smoothDenseLongGapSource(ε,T)
      + signedSmoothBirthDefect(T)
      - signedGapSmoothDefect(A_epsilon(T),T).

For the concrete flat cutoff, each signed defect has absolute
value <= K_κ:=(32/3)sqrt(e)κ². Thus the immediate formal
difference allowance is <=2K_κ, uniformly in epsilon and T>=0.
This is conservative. Applying the arbitrary-sector theorem to
the exact complementary ordered-edge set E_dense would improve
2K_κ to K_κ once that explicit complementary-pair reindexing is
formalized for this smooth adapter; NO such stronger bound is
claimed by the new Lean declarations.

For a fixed set G define SmoothDenseLongGapAllRateOn by
replacing denseLongGapSource with the named smooth kernel, preserving
its epsilon quantifier, constants, cutoff and time. The new Lean
source proves conditional equivalence of the original and smooth
all-positive-rate assertions under the explicitly named uniform
complete and gap bounds. The paper calculation supplies those
bounds without RH, but their real interval-integral/finite-sum
formal verification is still OPEN. Neither all-rate assertion
is proved by this comparison. Affine coverage of G remains an
INDEPENDENT requirement of the RH-facing consumer.

## Hostile checks and relation to Kakeya

- At original birth u=log n, r_n is continuous but the left and
  right derivatives are 0 and n^-1/2. This is not globally C1.
- A flat eta makes each individual smoothed response C-infinity,
  but the derivatives are not uniformly bounded as n grows
  because 1/h_n=n²/κ. No hidden all-index smoothness.
- Arbitrary E_T may contain both orientations; the factor two
  in the global envelope pays them. The diagonal is not added
  to the ORIGINAL signed off-diagonal sum: it appears only in
  the larger nonnegative comparison sum.
- If κ>1, the numerical constant derived using h_n<=1 is not
  established. If eta changes sign or exceeds 1, the
  nonnegative kernel-difference argument is unavailable.
- The gap threshold depends on epsilon*T, but the uniform
  comparison constant and fixed G do NOT. No epsilon-dependent
  coverage is smuggled into the equivalence.
- The old ratio-two/three negative Möbius packets are already
  present in grwtsk/math. This increment is not a new arithmetic
  cancellation or geometric Kakeya theorem.
- OpenAI's October 25 local-smoothing manuscript and the
  release's all-dimension Kakeya consequences (pinned to
  openai/math 4eaee87548250b2682affda7d05d947c05554bae)
  address Euclidean wave propagation and directional tubes,
  not the original Möbius energy. No direct Lp-to-integer-Gram
  transport is asserted. That scope comparison is separately
  recorded in the prior smooth-birth review and grwtsk/math#119.

## Lean declarations and formal verification boundary

Source:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSmoothBirthSectorTransport.lean

New declarations:
originalOrderedSector, smoothOrderedSector,
signedOrderedSectorDefect, originalOrderedSector_eq_smooth_add_defect,
arbitrary_signed_sector_envelope, smoothGapSetCross,
signedGapSmoothDefect, gapSetCross_eq_smooth_add_defect,
smoothDenseLongGapSource, denseLongGapSource_eq_smooth_add_defects,
AllPositiveRateOn, allPositiveRateOn_transport,
allPositiveRateOn_iff_of_uniform_error,
SmoothDenseLongGapAllRateOn,
denseLongGapAllRateOn_iff_smooth.

The exact conditional Lean theorem consumes hfull and hgap,
which are specific numerical source error bounds; it does not
assert them as axioms. Establishing their unconditional concrete
instances in Lean is the next bounded proof task.

Current Lean pin v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation NOT_RUN, expected types NOT_RUN, fresh kernel NOT_RUN,
transitive axiom audit NOT_RUN. No native scheduler or Noe proof
job was authorized or dispatched. Complete source dense-sector
all-positive-rate estimate OPEN; RH OPEN.

Nearest prior: elementary nonnegative-kernel perturbation
bound, existing signed Gram reconstruction, previous smooth
birth adapter, and already-developed double/triple negative
Möbius packets. No originality is asserted for triangle
inequality or the factorization-based Möbius generator.
The specific new contribution is an explicit original-source
ordered-sector uniform envelope and fixed-G dense smoothing
return, rather than an independent arithmetic cancellation theorem.
