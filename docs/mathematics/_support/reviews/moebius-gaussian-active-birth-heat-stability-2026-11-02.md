# Source-preserving local-birth Gaussian heat and six-way RH observation portfolio

Date: 2026-11-02. Repository: grwtsk/math. Mathematical direction: grwtsk contributors; formalization assistance: OpenAI ChatGPT. Imported mathematical authorship and Mathlib licenses remain intact.

## Preserved arithmetic source

Retain the exact original source from MertensPrimitive: the real Mathlib Möbius coefficient at its original positive integer n, the complete causal response r_n(u), original endpointIndex(T)=Icc 1 floor(exp T), wholePickup(u), its full signed energy pickupEnergy(T), original pickupDiagonal(T), two-orientation signed pickupCross(T) and original endpointSum(T). All squareful zeros, integer n=1 and closed causal births stay present. Artificial Gaussian heat time s, original physical time u and endpoint time T remain different mathematical variables.

Directly inspected current source blobs:
- MoebiusGaussianLogHeatSource.lean e7443337b95b8491492acfa120809f6873f77ef1.
- MoebiusGaussianHeatVanishingSchedule.lean 47291584104530cfdf59475a50c494a821de44a9.
- MoebiusGaussianHeatSharpSourceEnvelope.lean bb74da49d0f69d3accdb43281b67b8a800ea03ee.
- MoebiusGaussianHeatAbsoluteEnergyStability.lean eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf.
- MoebiusUnifiedObservationPortfolio.lean a376a6b30b66893aba7f2038e89b707f5f06ada5.
- DyadicSignedResidueWaveform.lean 07dfdae4a60b05f5da55cc20882411c85444fa82.
- FiniteResponseSum.lean 15402baec3be3c090a23f9ac1943124e16357dd0.
- Mathlib Analysis/SpecialFunctions/Integrals/Basic.lean at pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, theorem intervalIntegral.integral_exp, source blob queried at pinned revision.

## New mathematics: active source inventory and physical-time integral

New module MoebiusGaussianHeatLocalCausalBounds.lean, Git blob d1a3c5de19b7f26bd3ae7322b56a65a23b663e4d, 10 public Lean proof candidates.

At any u<=T, the original coefficient sum over endpointIndex T equals its sum over endpointIndex u: every original integer n outside the active inventory has exactly zero causal response at u. Apply that exact identity separately to the signed heat wave, full original-minus-heat reconstruction error, and positive source-certified error-radius waveform. This is a source identity, not a claim that omitted arithmetic coefficients vanish.

With s>=0 and 0<=u<=T:
  |wholePickup(u)| <=4 sqrt(exp u)
  |sourceHeatWave(s,T,u)| <=4 sqrt(exp u)
  |sourceHeatErrorWave(s,T,u)| <=4 s u^2 sqrt(exp u)
  radiusWave(eta_s,T,u) <=4 s u^2 sqrt(exp u)
  |wholePickup(u)^2-sourceHeatWave(s,T,u)^2| <=32 s u^2 exp u
  radiusWave(eta_s,T,u)^2 <=16 s^2 u^4 exp u

where eta_s(n)=|mu(n)|*(1-exp(-s*(log n)^2)). These are absolute bounds, not positivity of the signed off-diagonal response Gram.

New module MoebiusGaussianHeatIntegratedLocalStability.lean, Git blob 8247bb7caa8943da3a587fbe5d0ff832c0605efa, 14 public theorem candidates, 2 private interval-integration lemmas and one new definition.

The pinned Mathlib integral identity integral_0^T exp(u)du=exp(T)-1 combines with u^2<=T^2, u^4<=T^4. Instead of bounding every physical-time slice by the final exp(T) and multiplying by the whole physical time T, integrate the real exp(u) shape. For every s,T>=0:
  |pickupEnergy(T)-sourceHeatEnergy(s,T)| <=32 s T^2 (exp T-1)
  sourceHeatRadiusEnergy(s,T) <=16 s^2 T^4 (exp T-1).

For the already published real, positive, vanishing schedule s(T)=exp(-2T):
  |pickupEnergy(T)-sourceHeatEnergy(s(T),T)|
       <=32 T^2 exp(-T) <=64
  sourceHeatRadiusEnergy(s(T),T)
       <=16 T^4 exp(-3T).

This is precisely one power of T stronger than the earlier unconditional source bound (32 T^3 exp(-T), 16 T^5 exp(-3T), uniform 192). The new exponential discrepancy converges to zero at infinity by ordinary calculus, without an extra arithmetic theorem. This finite Gaussian smoothing stays near the original source, so it does not establish any all-positive-rate signed energy estimate.

The existing original diagonal remains in heatCorrectedCross(T)=sourceHeatEnergy(s(T),T)-pickupDiagonal(T). The exact original full Gram decomposition implies
  |pickupCross(T)-heatCorrectedCross(T)| <=32 T^2 exp(-T)<=64.
Existing endpoint curvature is charged once:
  |endpointSum(T)-heatCorrectedCross(T)| <=1/4+32 T^2 exp(-T).
The exact complete signed parity/nonunit residueEnergy at dyadic horizons inherits the same improved energy difference. Its 00,01,10,11 mixed terms are retained before squaring.

## Source-bounded six-way observation portfolio

The new heatSharpHybridUpper is the MINIMUM of:
  (1) the predecessor sourcePortfolioUpper, which already conservatively joins five original source upper certificates, and
  (2) heatCorrectedCross(T)+32*T^2*exp(-T).

Under the previous honest full original-index ErrorCertificate, the selected real primes, and T>=0, pickupCross(T) is <= this new hybrid. It cannot worsen the old five-way upper. The same single 1/4 original endpoint curvature is added only after full signed reconstruction. An entirely CONDITIONAL RH consumer uses genuine all-positive-rate SubexponentialOn control of this hybrid on ONE fixed AffineFrequent G. Nothing here supplies that arithmetic premise. The dense original signed long-gap source remains open.

## Attribution and nonclaims

This arithmetic log-frequency Gaussian multiplier is only a signed-heat analogue of negative heat-time deformations; it is NOT proved to coincide with the true Rodgers–Tao xi/theta heat operator, true zeta-zero dynamics, a geometrical Hodge Laplacian, or a physical temperature system. Positivity of its coefficient-space heat operator does not imply contraction of the actual signed response Gram. A genuine finite original-Möbius counterexample has heated source energy above original source energy. The stronger bounds prove closeness, not monotonicity or RH.

## Independent finite diagnostics and native acceptance

A new 60-decimal-digit mpmath script ran 96,700 finite assertions across original positive source indices through N=128, 16 cutoffs with three birth positions and five heat times (0,0.02,0.3,exp(-2T),1). The test checks actual integer Möbius coefficients, all squareful zeros, true original diagonal, complete signed causal two-moment wave, analytically integrated real-square energy on each birth cell, signed source defect, positive radius, the local bounds and new integrated exponential estimates. It is not a Lean test, rigorous interval arithmetic, or an all-height theorem.

Local reproducible script: /mnt/data/moebius_heat_local_causal_preflight_20261102.py; SHA256 e08d26a490a1de3c5d14efbe762632646d19281200db56a933c9c67be9e1ff0b.
Local JSON: /mnt/data/moebius_heat_local_causal_preflight_20261102.json; SHA256 b5117813ecd9a55715732e6524601255a0fa3c7c7cc0ecc517cfcda5f89ee2d4.

Lean native compilation NOT_RUN; fresh kernel replay NOT_RUN; expected-types NOT_RUN; transitive axiom audit NOT_RUN. Pin Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

Acceptance checks: exact Finset Icc inclusion and original future-zero branch; source-index preservation; original n=1, μ(4)=0, birth endpoints, s=0, u=T, nonnegative s,T; integrability of the complete signed waves and positive radius; integral_exp with both orientations of the square difference; source ORIGINAL versus smoothed diagonal; all five preexisting signed residual branches, genuine selected prime bank and certified decoder radii; a single original quarter-unit curvature payment; fixed G before epsilon; clean compilation, independent fresh kernel and full transitive sorryAx/unsafe/opaque/private audit. Do not promote this uncompiled leaf to public root or dispatch unrelated verification infrastructure without separate authority.

The independent all-positive-rate signed arithmetic bound and RH remain OPEN.
