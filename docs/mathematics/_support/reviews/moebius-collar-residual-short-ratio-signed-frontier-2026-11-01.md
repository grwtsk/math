# Actual Möbius collar residual: exact low-wave energy, negative odd-ratio credit, and an all-rate short-ratio payment

Research date: 2026-11-01 (America/Los_Angeles).
Attribution: grwtsk contributors; formalization assistance OpenAI ChatGPT.
**Status:** ordinary mathematical proof of the statements explicitly established below; Lean source proof candidates, compilation user-DEFERRED. **No all-positive-rate upper estimate for the complete collar residual is established; RH remains open.**

## Sources and fixed observation

This continuation uses the EXACT source declarations in:
- \`MoebiusTerminalHighSmoothCrossShellCollar.lean\`: \`terminalInventory\`, \`terminalHighCollar\`, \`collarResidualCross\`, \`collarIncidentCross\`, \`dyadicTime\`;
- \`MertensPrimitive.lean\`: original real \`moebiusReal\`, \`pickupResponse\`, \`pickupResponseGram\`, \`pickupDiagonal\`, \`pickupEnergy\`, \`pickupCross\`;
- \`MoebiusPrimeDilationStarCompensation.lean\`: \`restrictedWaveform\`, \`restrictedEnergy\`, \`restrictedFullGram\`, finite Fubini;
- \`MoebiusStrongOddCoprimeDilation.lean\`: \`oddCoprimeRatio\` and \`oddCoprime_source_nonpos\`, **actual** squarefree coprime Möbius multiplicativity;
- \`GramDiagonalBound.lean\`: \`pickupDiagonal(T) ≤ 2T²\` for \`T≥0\`.

Let J≥1, T=J log2, N=2^J, B any genuine finite prime bank, A any finite additive-gap mask. The source low set is **exactly**
  L_(B,J) = terminalInventory(J) \ terminalHighCollar(B,J).
It includes all original indices not selected by the literal high-smooth collar, including all squareful zero Möbius coefficients. Nothing is assumed about B or its growth in the short-ratio estimate.

The complete residual is the unchanged signed, ordered off-diagonal Gram restricted to L×L and, when given, dist(m,n) not in A:
  R_(B,J;A) = sum_(m,n∈L, m≠n, dist(m,n)∉A) μ(m)μ(n) K_T(m,n).
Both orientations are retained.

## 1. Positive low-wave energy isolates the actual open upper supplier

Define the genuine source wave and its complete diagonal
  W_L(u) = sum_(n∈L) μ(n) pickupResponse(n,u),
  E_L(T) = integral_0^T W_L(u)² du,
  D_L(T) = sum_(n∈L) μ(n)² K_T(n,n).

Finite Fubini for exactly the original source gives
  E_L(T) = D_L(T) + R_(B,J;empty).             (1)

In particular, E_L≥0, 0≤D_L≤pickupDiagonal(T)≤2T², hence
  **R_(B,J;empty) ≥ -2T²**                      (2)
at every J and every bank, without RH, Mertens power assumptions, independence, or a positivity fiction for the **signed cross**.

This is a genuine bound on the entire negative side. It does NOT control the positive low-wave square. Indeed, since the original full pickup is W_L+W_H, and the previously published collar incident signed packet is absolutely exp(o(T)), the missing all-positive-rate upper statement for R is precisely an RH-equivalent square-energy assertion. An upper bound on E_L cannot be deduced from its nonnegativity.

More generally, the exact full-source identity gives
  **|R_(B,J;empty)| ≤ pickupEnergy(T)
                      + pickupDiagonal(T)
                      + |collarIncidentCross(B,empty,J)|.**  (3)
This directly transfers any INDEPENDENT genuine original Mertens-power/energy estimate to the actual residual, without treating a conditional analytic bridge as a proved new arithmetic input.

For instance, IF an externally justified |M(x)|≤C x^theta is available at some theta>1/2, the actual velocity is bounded by C exp((theta-1/2)u) and the real integral gives
  pickupEnergy(T) ≤ C²/[2(theta-1/2)^3] *
                   (exp((2theta-1)T)-1).
Equation (3) then gives the original signed R a corresponding fixed positive exponent 2theta-1 after paying polynomial diagonal and subexponential collar. It does NOT give every epsilon>0 unless theta is available arbitrarily close to 1/2, the RH-strength missing input.

## 2. A genuinely signed finite multiplicative-ratio subpacket inside R

Fix the single rate-INDEPENDENT cutoff
  K(T) = floor(exp(sqrt T)).
For original positive m≠n, let \`shortRatioPair(J,m,n)\` mean
  n=k*m OR m=k*n
for at least one integer 2≤k≤K(T).

Define S_(B,J;A) as the sum of all original signed terms of R with this true multiplicative ratio. Let L_(B,J;A) be the exact complementary signed source with no such ratio. Then *identically for every finite B,A and J*,
  R_(B,J;A) = S_(B,J;A) + L_(B,J;A).          (4)
This partition has no probabilistic premise and does not discard squareful-zero positions or either pair orientation.

Further split the short-ratio source by the ALREADY DEFINED \`oddCoprimeRatio\`:
  S_(B,J;A) = S_odd(B,J;A)+S_other(B,J;A).    (5)
The original Möbius identity μ(mk)=μ(m)μ(k) when gcd(m,k)=1 gives, whenever μ(k)=-1,
  μ(m)μ(mk) = -μ(m)² ≤ 0.
The unchanged Gram K_T(m,mk) is nonnegative, and the reverse orientation has the same sign. Thus
  **S_odd(B,J;A) ≤ 0**.                      (6)
Every actual term in S_other (including positive comparable ones) is retained. This is a genuine Möbius-specific signed credit, not an asserted positivity of a multivariate prime orbit. No previously published odd packet is subtracted again.

## 3. Quantitative ALL-POSITIVE-RATE estimate for the COMPLETE short-ratio packet

The original causal response r_n(u) is nonnegative and ≤2/sqrt(n), so
  0≤K_T(m,n)≤4T/sqrt(mn)                    (7)
for m,n≥1, T≥0. Original |μ(n)|≤1.

A pair with n=k*m, k≥2, has original summand magnitude
  |μ(m)μ(km)K_T(m,km)| ≤4T/(m*sqrt(k)).
No ordered pair has two different integer multipliers k in the same orientation. The selected ratio mask, bank and any additional chosen submask can only REDUCE its absolute sum. Paying both orientations gives
  |S_selected(B,J;A)|
    ≤ 8T ∑_(2≤k≤K(T)) k^(-1/2)
            ∑_(1≤m≤N/k) m^(-1)
    ≤ 8T (1+T) ∑_(2≤k≤K(T)) k^(-1/2)
    ≤ 16T(1+T) sqrt(K(T))
    ≤ **16T(1+T) exp(sqrt(T)/2)**.           (8)

The harmonic sum bound H_n≤1+log n follows by the decreasing integral test; the half-power sum bound ∑_(k≤K)k^-1/2≤2√K follows by the same positive integral comparison. This proof is valid for ANY finite set of original selected indices and ANY submask inside the short comparable ratio relation. No Mertens theorem, PNT, zero-free estimate, RH, sign independence, or bank-cardinality hypothesis is used in (8).

The explicit **every-positive-rate** constant can be chosen, for each ε>0, as
  C_ε = (64/ε)*(1+4/ε)*exp(1/(8ε)).          (9)
Indeed set δ=ε/4; e^(δT)≥1+δT yields
  T(1+T)≤δ^-1(1+δ^-1)e^(2δT),
while the square (2ε sqrt T - 1)²≥0 yields
  sqrt T/2≤εT/2+1/(8ε).
Substituting into (8) proves for ALL T≥0
  **|S_selected(B,J;A)|≤ C_ε exp(εT_J)**    (10)
uniformly in J, B, A, the selected submask, and both orientations.

In particular, BOTH the genuinely nonpositive Möbius S_odd and the complementary positive/zero S_other have all-positive-rate absolute bounds. This is a strictly source-actual all-rate PROPER SUBPACKET result, not the requested all-rate estimate of the FULL collar residual.

## 4. Exact remaining arithmetic frontier

Equations (4) and (10) give the precise **equivalence**:
  one-sided R_(B,J;empty)=O_ε(exp(εT_J)) for every ε>0
    iff
  one-sided L_(B,J;empty)=O_ε(exp(εT_J)) for every ε>0,
where B may be a fixed or scale-dependent bank family. Constants for the bounded short packet are UNIFORM in B and do not depend on a new choice of good scales.

The earlier collar incident is also mathematically absolute exp(o(T_J)) for the admitted bank families. Under that independently counted collar estimate, an all-positive-rate upper for L on the SAME fixed dyadic grid would return the original complete pickup and then canonical RH by the existing energy abscissa / good-scale criterion.

**L remains unbounded at every positive rate by this work.** It contains all ORIGINAL pair orientations between incomparable low indices and all comparable ratios k>exp(sqrt T), including potential positive RH-strength correlations. The sign saving S_odd cannot be extrapolated to those pairs. Known published partial zero-free bounds give at most certain fixed positive physical-time exponents. Nothing here removes the gap toward exponent zero.

## 5. Hostile control and noncircularity

For a fictitious constant-sign coefficient sequence a(n)=1, with the SAME positive physical response, the cumulative waveform has size ≫ exp(u/2) for large u (the n≤exp u/4 terms already suffice). Thus its square energy grows ≫exp(T). Pure causal Gram positivity, short-ratio counting, or finite partition alone cannot produce all-positive-rate upper bounds. This control is NOT a replacement for μ: it is a counterexample to a source-independent argument.

The genuine arithmetic input in (6) is \`oddCoprimeRatio\` from the ORIGINAL Möbius source. Equation (8) is a geometric absolute allowance and could hold for any coefficient sequence bounded by one. Neither can replace an upper estimate of the unpaid dense incomparable signed packet. Every original pair is present in exactly one final component, so no earlier negative credit may be subtracted again without proving disjointness.

## 6. Lean source and independent finite diagnostics

Two additive Lean modules are proposed:
- \`MoebiusCollarResidualLowWave.lean\`: exact original low-index waveform, restricted Fubini/Gram, positive energy minus diagonal identity, unconditional full residual lower bound (2), and honest absolute transfer (3);
- \`MoebiusCollarResidualShortRatio.lean\`: original short ratio and its complementary low/low masks, odd-coprime Möbius sign theorem using existing source lemma, exact three-sector decomposition, and conditional all-rate equivalence.

The elementary quantitative inequalities (8) and (10), while proved mathematically above, are EXPLICIT formalization targets \`ShortRatioQuantitativeTarget\` and \`ShortRatioUniformAllRateTarget\`. No assumption of their proof is used as an unconditional theorem in Lean. The low-wave and sign/partition theorem bodies are SOURCE PROOF CANDIDATES, not accepted declarations until checked.

Independent local finite diagnostic preflight:
- **6,500 exact integer** Möbius sign tests on original m≤500, genuine multipliers 2≤k≤40 with μ(k)=-1.
- **160 original, physically computed signed Gram fixtures** (J=1..8, five genuine banks, four additive masks) verified the complete source R=S+L identity, the negative S_odd sign, the bound (8), D_L≤2T² and R≥-2T². These use floating analytic integral formulas, not interval-certified enclosures or universal proofs.

Pinned: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
At the user's explicit request, **compilation is DEFERRED**. Parsing/elaboration, exact expected types, fresh independent kernel replay and transitive axiom/sorry/opaque/native/unsafe audit are NOT_RUN. Do not promote publication, theorem scripts, or finite diagnostics to kernel acceptance. The complete collar residual every-rate upper estimate and RH are OPEN.
