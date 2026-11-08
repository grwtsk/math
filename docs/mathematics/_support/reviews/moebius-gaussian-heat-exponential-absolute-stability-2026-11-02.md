# Sharpening the actual signed Möbius Gaussian heat: exponentially small absolute energy discrepancy

Date: 2026-11-02. Repository: grwtsk/math. Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Existing imported Mathlib and arithmetic research attributions remain unchanged.

## Exact source, inspected revision and preserved data

The previous published heat program at main commit 5e652a3869f967ce5ca8a9f3aa977f98dd945cf2 (issue #1614) adds the original-integer Gaussian multiplier, its signed complete reconstruction, a positive causal error-radius energy, and the positive vanishing heat schedule s(T)=exp(-2T).

Source modules read directly at current repository head during this investigation:
- MertensPrimitive.lean, original signed moebiusReal, physical response, complete energy and ordered offdiagonal cross: blob 45e06c371d67bcf8c939d20a95fcbc63570546fa.
- MoebiusGaussianLogHeatSource.lean, original-index sourceHeatCoeff, sourceHeatWave and exact errorWave: blob e7443337b95b8491492acfa120809f6873f77ef1.
- MoebiusGaussianHeatStabilityReturn.lean, two-way complete signed physical-time energy vs original error radius: blob 6ada761844e06d099811f06fea89db897ca1290e.
- MoebiusGaussianHeatVanishingSchedule.lean, s(T)=exp(-2T), original frequency/cutoff bounds, old coarse M<=2 and B<=16T: blob 47291584104530cfdf59475a50c494a821de44a9.
- MoebiusDecoderPositiveResponse.lean, source-indexed original response radius and integral-square bound: blob 35686a42c743827cad84898acd5e08f9e1fd6c37.
- MoebiusQuantitativeMertensAbsoluteAbel.lean, theorem invsqrt_range_sum_le_two_sqrt(N), 1..N sum 1/sqrt(n)<=2sqrt(N): blob b2fe063451f58ff9b892aa164d780bd20279192e. This particular FINITE theorem has no arithmetic cancellation hypothesis; other classical quantitative Mertens propositions in the module remain independently unproved in pinned Lean.
- Original dyadic class waveform, all parity and nonunit residues summed BEFORE squaring, DyadicSignedResidueWaveform.lean: blob 07dfdae4a60b05f5da55cc20882411c85444fa82.

All original integers n (including 1), complete squareful zero symbols, original causal birth response r_n(u), original closed support endpointIndex(T)=1..floor(exp T), both mixed signed pair orientations, true physical time u, actual integrated signed pickupEnergy and original \`_root_.RiemannHypothesis\` remain UNCHANGED.

The source research does not identify a Tao/Rodgers xi zero-flow operator with this separate arithmetic Gaussian multiplier. In the distinct Dobner-type logarithmic frequency model s>=0 corresponds to negative arithmetic heat-deformation parameter t=-4s. The actual de Bruijn–Newman theta kernel and entire xi deforming integral require independent source and normalization maps, not present here.

## New source proof candidates

1. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianHeatSharpSourceEnvelope.lean (Git blob bb74da49d0f69d3accdb43281b67b8a800ea03ee, 8 public theorem candidates; one private finite range conversion helper).
2. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianHeatAbsoluteEnergyStability.lean (Git blob eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf, 9 public theorem candidates, one definition and two private universal inequalities).

The earlier proof candidate only paid M_s(T)<=T^2 exp(-T)<=2 by the crude number of indices. The sharper result imports the actual earlier inverse-root population theorem:

    sum_(n=1)^N n^(-1/2) <= 2 sqrt(N)

and uses N=floor(exp T)<=exp T. At nonnegative T and s>=0, original source coefficient radii have the literal bound
    eta_s(n) = |mu(n)|*(1-exp(-s*(log n)^2)) <= s*T^2
at EACH original n in the closed endpoint support. Consequently

    M_s(T) = sum_(n<=floor(exp T)) eta_s(n)/sqrt n
           <= 2*s*T^2*sqrt(exp T).

For the already published positive schedule s(T)=exp(-2T), the elementary sqrt(exp T)=exp(T/2) identity yields

    M_s(T) <= 2*T^2*exp(-3T/2),

    radiusEnergy(s(T),T) <= 4*T*M_s(T)^2
                          <= 16*T^5*exp(-3T).

This is an UNCONDITIONAL source-arithmetic-independent estimate for the error of a heat multiplier that itself becomes exponentially small. It is not cancellation in the original Mobius sequence.

The new source also controls the signed physical-time waves individually without asserting their mutual cancellation:

    |wholePickup(u)| <= 4*sqrt(exp T),
    |sourceHeatWave(s,T,u)| <= 4*sqrt(exp T),  0<=u<=T,s>=0,

and the complete original-minus-heat wave by

    |sourceHeatErrorWave(s(T),T,u)| <= 4*s(T)*T^2*sqrt(exp T).

Both signed wave bounds rely on positive individual CAUSAL responses, not on positivity of the signed response Gram. Their exact source algebra yields the pointwise signed-square difference inequality:

    |wholePickup(u)^2 - sourceHeatWave(s(T),T,u)^2|
      <= 32*T^2*exp(-T),   0<=u<=T.

The new physically INTEGRATED signed result is

    |pickupEnergy(T) - sourceHeatEnergy(s(T),T)|
      <= 32*T^3*exp(-T), for every T>=0,

and the universal scale-independent comparison

    |pickupEnergy(T) - sourceHeatEnergy(s(T),T)| <= 192,

using 0<=T^3<=6 exp T. The explicit exponential envelope tends to zero as real T tends to infinity; the Lean source candidate states the inequality and global cap, while the asymptotic limit is recorded here as a standard ordinary-calculus consequence, not a new Lean-declared \`Tendsto\`.

At dyadic T=dyadicTime(j), the old exact all-parity and nonunit-class residueEnergy equals pickupEnergy(T). Hence the same exponential absolute heat-energy discrepancy bound applies to the COMPLETE original residue/parity waveform, without omitting 01/10 mixed terms or separately squaring each class.

## Direct original signed Gram cross return and original-diagonal correction

The second new source ALSO defines a specifically labeled heat-corrected cross readout:

    heatCorrectedCross(T) =
        sourceHeatEnergy(exp(-2T),T) - ORIGINAL pickupDiagonal(T).

The *original* diagonal is intentionally subtracted. It is NOT the heat-modified diagonal; an uncorrected "heat cross" would have an additional diagonal difference and could not be called the same source.

The existing exact complete source square decomposition, only for T>=0, says

    pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T).

Therefore the total-energy mismatch is EXACTLY the cross mismatch:

    pickupCross(T)-heatCorrectedCross(T)
      =pickupEnergy(T)-sourceHeatEnergy(exp(-2T),T),

and the source candidates give

    |pickupCross(T)-heatCorrectedCross(T)|
      <= 32*T^3*exp(-T) <=192.

The original source endpoint estimate is paid ONCE and AFTER the complete signed reconstruction:

    |endpointSum(T)-heatCorrectedCross(T)|
      <= 1/4+32*T^3*exp(-T).

The original and heat-corrected cross have equivalent SubexponentialOn upper control at EVERY positive rate on any ONE fixed set G, because the difference is uniformly <=192. A separate conditional theorem consumes AffineFrequent G and the all-positive-rate heatCorrectedCross bound to conclude the ORIGINAL _root_.RiemannHypothesis through the existing original signed-cross criterion.

This reduction is a very strong exact-source stability comparison, NOT a constructive bound on the heat-corrected arithmetic cross itself. Any claim that bounded heat discrepancy proves RH would be circular: the heat readout is arbitrarily close to the original still-open signed correlation.

The finite preflight also tests the heat-corrected cross with the genuine original source diagonal integrated coefficient-by-coefficient, rather than substituting the heat diagonal. It passed another 144 assertions (three per horizon) for exact cross identity and absolute bounds, bringing the total to 14,493.

## Why this is a meaningful stability refinement and not RH

The previous symmetric Young return gives only

    H(T)<=2 H_s(T)+2 B_s(T),
    H_s(T)<=2 H(T)+2 B_s(T),

which need not control |H-H_s| by a tiny number if either full energy is large. The new quantitative absolute result directly controls |H-H_s| despite no signed cancellation estimate, by paying each source multiplier difference and using the full original inverse-square-root population. It therefore proves that the vanishing heat schedule changes the total signed energy by an exponentially decaying ABSOLUTE amount, not just a subexponential allowance.

This mathematical proximity is expected: as T grows, s(T)=exp(-2T) becomes extremely small even for the largest allowed log frequency log n<=T. An independent all-positive-rate upper on H_s(T) is still RH-strength and remains OPEN. The new estimate does not prove such an upper, and it does not prove RH. It also does not claim that Gaussian coefficient damping makes the signed physical Gram energy monotone or contractive. Actual finite original Mobius sources can have H_s(T)>H(T) for s>0.

A more aggressive heat schedule s(T)=exp(-aT) obeys the analogous ordinary estimates B_s(T)<=16*T^5*exp((1-2a)T) and |H-H_s|<=32*T^3*exp((1-a)T). Such variants may be useful in future source experiments, but only a=2 has been authored as Lean proof candidates in this increment; no untested formal theorem is claimed.

## Independent finite preflight

A NEW original-source 65-digit mpmath diagnostic executed successfully at finite indices N=1,2,3,4,5,7,8,11,16,23,29,40,64,80,110,128 with three physical endpoint positions, including exact closed births, all squareful zeros, and original two-moment causal response integral evaluation.

PASS: 14,493 assertions for source cutoff, inverse-sqrt summation, uniform heat-radius mass, exponential reconstruction error, absolute physical signed square differences, complete original heat/error/residual decomposition, original and heat wave bounds, positive error-energy and exact integrated signed-energy differences, both original Young energy inequalities, and the 192 uniform total-energy discrepancy allowance.

The numerical formula integrates each signed whole waveform square analytically on each original birth cell; this is NOT interval arithmetic, Lean proof checking, a growing-N asymptotic theorem, or a novel arithmetic cancellation certificate.

Reproducible local conversation artifacts:
- /mnt/data/moebius_heat_exponential_stability_preflight_20261102.py, SHA256 5c8b2e2f6fc4056f4dae0b42ccf5904cbadd1cd68399a1ac48c9a777a9916fa6.
- /mnt/data/moebius_heat_exponential_stability_preflight_20261102.json, SHA256 cb30865897d45774c5c88e4b05c929041e30162fad31134570f25efb8c644958.

Do not infer a source theorem from numerical samples.

## Native acceptance and trust boundaries

Pinned repository toolchain: leanprover/lean4:v4.34.1; pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Local lean/lake/elan binaries are not installed. No verified Lean run or remote verifier dispatched. Both new modules remain SOURCE_PROOF_CANDIDATE, NOT_RUN for compilation, expected types, fresh kernel, and all transitive axioms.

Verification tasks:
1. Build both new leaves with pinned toolchain and full imported closure. Check names, universe resolution, all exact expected types, finite closed-range Icc->range conversion, inverse-root summation, Real.sqrt(exp T), Real.exp_add, positivity and all sign factors.
2. Verify integral-square absolute comparison using genuine intervalIntegral.integral_mono_on and finite interval hypotheses, each signed mixed term and both upper/lower orientations.
3. Hostile cases: T=0, N=1, squareful n=4 (μ=0 but still present), final closed birth, heat time s=0, s(T)>0, physical-time versus heat-time, both negative and positive real Mobius signs, noncontractive signed Gram, complete all-residue four parity sectors.
4. Fresh independent kernel and full transitive #print axioms audit, private/generated declarations, imported opaque axioms and \`sorryAx\`. A source lexical scan or finite mpmath test is not proof acceptance.
5. No new arithmetic assumptions, no changes to original source, previous heat modules or canonical RH consumer, no root import GRWTSK.lean, no toolchain/Mathlib pin changes, no force push or remote CI/scheduler/Noe automation authority.

This additive source contribution is a quantitative robustness result. The actual Möbius signed observed-energy every-positive-rate estimate and the complementary dense signed long-gap arithmetic source remain OPEN. RH remains OPEN.
