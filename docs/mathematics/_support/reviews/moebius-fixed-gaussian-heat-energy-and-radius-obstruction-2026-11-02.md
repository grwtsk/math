# Fixed strong Gaussian heat and the actual Möbius signed-energy tradeoff

Date: 2026-11-02. Repository: grwtsk/math. Mathematical direction: grwtsk contributors; formalization assistance: OpenAI ChatGPT. Imported mathematics and Mathlib attributions are preserved.

## Exact preserved arithmetic source

The original source is Mathlib's three-valued Möbius coefficient at every original integer n, its causal response pickupResponse(n,u), the closed support Icc 1 floor(exp T), original wholePickup, integrated pickupEnergy, original pickupDiagonal and two-orientation signed pickupCross. Squareful zeros and integer n=1 remain explicit. Heat time s, physical time u and terminal time T remain independent.

Previously published heat source pins inspected:
- MoebiusGaussianLogHeatSource.lean: e7443337b95b8491492acfa120809f6873f77ef1.
- MoebiusGaussianHeatIntegratedLocalStability.lean: 8247bb7caa8943da3a587fbe5d0ff832c0605efa.
- MoebiusGaussianHeatAbsoluteEnergyStability.lean: eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf.
- Original MertensPrimitive.lean: 45e06c371d67bcf8c939d20a95fcbc63570546fa.

Prior s(T)=exp(-2T) heat is near identity; source-minus-heat energy is absolutely close, but no new original RH-strength cancellation estimate is obtained. This increment studies a mathematically different regime: s>=1 at all horizons.

## New source candidate 1: true uniform strong-heat signed observation

New Lean leaf: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianStrongHeatUniformEnergy.lean. Git blob a3dc512aa819b858e603414be345ad2506e5ada7. Seven public theorem source candidates, two private finite sum lemmas and one definition.

The completely finite telescope gives sum_{n=1}^N (1/n)^2 <=2 for every N, using the pointwise 1/n²<=2*(1/n-1/(n+1)). For n>=1 and s>=1, square completion
  (log(n)-1)^2+(s-1)*(log(n))^2 >=0
implies exp(-s*(log n)^2)<=exp(1)/n².

The ACTUAL signed source coefficient a_s(n)=mu(n)*exp(-s*(log n)^2) satisfies |mu(n)|<=1, and original pickupResponse is nonnegative <=2/sqrt(n) at every u. Since 1/sqrt(n)<=1 for n>=1, the original-indexed heated coefficient mass is uniformly bounded by 2*exp(1). Thus the full signed heated waveform has absolute value <=4*exp(1) at every physical u and terminal T; its complete signed-square energy satisfies
  sourceHeatEnergy(s,T) <= 16*exp(2)*T
for all s>=1, T>=0. No conjectural original Möbius cancellation, artificial stochastic independence, changed source cutoff or positive offdiagonal Gram is used. This is a genuinely noncircular strong-HEAT observable bound, NOT an original RH energy bound.

The module also derives SubexponentialOn of the heated energy on ANY fixed scale region G. Its Lean proof scripts remain source candidates until a pinned compiler and kernel replay validates the exact bytes.

## New source candidate 2: complete signed heat evolution and its indefinite mixed term

New Lean leaf: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianHeatSignedEvolution.lean. Git blob ee8bf6ec9238386882c79cde1dc7c2c3f685c285. Six public theorem source candidates and three definitions.

The exact original-source coefficient increment for heat times s,r is:
  a_s(n)-a_{s+r}(n) = a_s(n)*(1-exp(-r*(log n)^2)).
At fixed original horizon T, define the actual signed heat increment waveform D(u)=F_s(T,u)-F_{s+r}(T,u), signed mixed energy M=integral_0^T F_{s+r}(u)*D(u)du, and full signed increment-square energy E=integral_0^T D(u)^2du.

The exact finite source algebra yields
  H_s(T)=H_{s+r}(T)+2*M+E.
Because M can have either sign, the source energy monotonicity condition is exactly
  H_{s+r}(T)<=H_s(T) iff 0<=2*M+E.
A positive coefficient heat metric does NOT imply this inequality. The original signed two-orientation mixed term cannot be replaced by a sum of positive residue sectors.

Finite ordinary differentiation additionally yields
  d/ds H_s(T) = -2 integral_0^T F_s(u) *
    [sum_(n<=floor exp T) (log n)^2*a_s(n)*pickupResponse(n,u)]du.
This source-specific generator formula was checked numerically; it is NOT claimed as a separately Lean-authored theorem in this increment.

A formal conditional implication now isolates the reconstruction debt: if the positive original-source radiusEnergy at fixed s>=1 had SubexponentialOn growth on one fixed AffineFrequent G, then the already-established unconditional H_s bound and existing source return would imply canonical RH. This is a diagnostic, not a viable claimed supplier.

## Crucial ordinary mathematical no-go from classical squarefree density

The classical squarefree counting theorem states
  Q(x)=#{1<=n<=x:mu(n)^2=1}=(6/pi^2)*x+O(sqrt x).
Source for this classical number theory theorem: https://mathworld.wolfram.com/Squarefree.html ; see also https://www.erdosproblems.com/history/969. This is NOT shown to be imported as a pinned Lean theorem.

For each sufficiently large T, the original shell exp(T)/64<=n<=exp(T)/16 contains at least c*exp(T) squarefree integers for some c>0, by the classical density. For any fixed s>=1, these n have |mu(n)|=1, log n>=1 and source heat-reconstruction positive radius eta_s(n)=1-exp(-s*(log n)^2)>=1/2.

For every real physical u in [T-log(4),T], every shell n is already born. The elementary original response satisfies 1/sqrt(n)>=4 exp(-T/2) and exp(-u/2)<=2 exp(-T/2), hence pickupResponse(n,u)>=4 exp(-T/2). Each shell n contributes at least 2 exp(-T/2) to the POSITIVE radiusWave, so its source sum is >=2*c*exp(T/2). Integrate its square across this interval of fixed positive length log 4:
  sourceHeatRadiusEnergy(s,T) >=4*c^2*log(4)*exp(T).

This exponential positive-radius growth is a true ordinary mathematical consequence of the classical squarefree density, independent of RH. It makes a fixed-s>=1 all-positive-rate radius-energy premise IMPOSSIBLE on any unbounded G. The source no-go is currently in this mathematical review, not a Lean-accepted theorem: it needs a matching kernel-verified squarefree shell density producer and exact analytic integration.

This is the practical no-go: strong Gaussian heat has easily bounded HEATED energy, but it erases so much genuinely squarefree original source that the positive radius certificate explodes. The near-identity heat schedule has a tiny reconstruction bill but leaves the RH-sized arithmetic correlation in the heated signal. Neither regime alone proves RH.

## Independent finite arithmetic preflight and verification status

Reproducible local preflight script: /mnt/data/moebius_strong_heat_balance_preflight_20261102.py, SHA-256 906275150b44b4263282790a302555f8a8f0a0d8b111d1b86f810560eafa7eda.
Finite numerical JSON: /mnt/data/moebius_strong_heat_balance_preflight_20261102.json, SHA-256 c50914a6b276f1675945cb758da7658799dc4816445934fd536ff99e80ff7a12.

7,980 high-precision checks PASS at 48 decimal digits, true original trial-division μ through cutoff N=256, heat times 0,0.125,0.5,1,2,5; exact physical causal response integral formulas, true signed source decomposition, strong-heat weighted mass and energy upper, exact two-sided signed heat balance, and finite-difference signed generator covariance. At s=1 and N=256, observed signed heat energy ≈2.5353 while the positive reconstruction-radius energy ≈201.8503. In an actual original-Möbius cutoff N=4, Gaussian damping can INCREASE signed physical energy. Numerical tests are not interval certificates, all-height proofs, or Lean checks.

Pin Lean leanprover/lean4:v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Native Lean/lake/elan not available in the local environment. Compilation, expected type checking, fresh kernel replay and transitive axiom audit: NOT_RUN. No external worker or verification automation dispatched.

Required future native acceptance: exact finite telescope; real-cast denominator positivity, exp/log algebra, 2e source bound; all complete original-index signed heat waveform sums; physical-time 16e²T estimate; heat-time signed increment balance and indefinite mixed term; full original source diagonal and cutoff; fresh independent kernel plus transitive sorryAx/unsafe/opaque/private audit. The classical squarefree counting and radius-energy exponential no-go require an additional genuine arithmetic proof or separately verified imported source, not a new RH assumption.

RH remains open.
