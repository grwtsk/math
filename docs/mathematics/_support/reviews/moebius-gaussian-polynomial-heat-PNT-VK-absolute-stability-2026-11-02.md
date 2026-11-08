# Original Möbius Gaussian: polynomially amplified heat is absolutely PNT-stable; classical VK gives stretched-exponential relative balance

Research date: 2026-11-02, America/Los_Angeles.
Mathematical direction and source attribution: grwtsk contributors. Analysis, cross-source comparison and Lean source candidates: OpenAI ChatGPT.
Ordinary mathematical status: complete conditional-to-classical-analysis derivation; PNT log-power and Vinogradov–Korobov Mertens are established classical facts, not RH. All these classical analytic imports and the source-level physical Cauchy transfer are explicit UNPORTED pinned-Lean obligations. Canonical RH and original signed FAR all-positive-rate OPEN.

## 1. Current sources, exact original arithmetic, and what this is NOT

Original unmodified GRWTSK.RiemannHypothesis.CCC arithmetic:
 M(x)=sum_(n<=floor x)mu(n), all n>=1, μ(1)=1, μ(n)=0 squareful;
 pickupVelocity(u)=exp(-u/2)*M(exp u);
 P(T)=wholePickup(T)=int_0^T pickupVelocity;
 E(T)=pickupEnergy(T)=int_0^T P(u)^2du;
 r_n(u)=pickupResponse(n,u)=2*(n^-1/2-exp(-u/2))
   after REAL birth u>=log n, zero before.
There is NO changed coefficient, birth gate, time horizon,
dyadic grid T_J=J log2, original Gram, pair orientation, or FAR mask.

At genuine original Gaussian log-frequency heat s>=0:
 c_s(n)=μ(n)*exp(-s*(log n)^2);
 sourceHeatWave(s,T,u)=sum_(n<=floor exp T)c_s(n)*r_n(u);
 H_s(T)=sourceHeatEnergy(s,T)=int_0^T sourceHeatWave^2;
 η_s(n)=|μ(n)|*(1-exp(-s*(log n)^2));
 radiusWave(η_s,T,u)=sum η_s(n)*r_n(u);
 R_s(T)=sourceHeatRadiusEnergy(s,T)=int_0^T radiusWave^2.

The exact original source formula is
  wholePickup(u)=sourceHeatWave(s,T,u)
                 +sourceHeatErrorWave(s,T,u),
  for 0<=u<=T, with
  |sourceHeatErrorWave(s,T,u)|<=radiusWave(η_s,T,u).
This is the fundamental source preservation requirement:
all squareful zero coefficients, original physical births and BOTH
signed error cross orientations survive before taking the L2 bound.

Previous relevant exact Git blobs (unmodified):
- MoebiusGaussianLogHeatSource.lean:
  e7443337b95b8491492acfa120809f6873f77ef1;
- MoebiusGaussianHeatLocalCausalBounds.lean:
  d1a3c5de19b7f26bd3ae7322b56a65a23b663e4d;
- MoebiusGaussianHeatIntegratedLocalStability.lean:
  8247bb7caa8943da3a587fbe5d0ff832c0605efa;
- MoebiusCausalMertensSquareBridge.lean:
  be156509d9679a22b52b32d087f87d8449a047ef;
- MoebiusGaussianRelativePolarityPNT.lean:
  2c2f43961d3c822e7d6d0a6b0b77d72cbdf38cfd;
- MoebiusGaussianHalfRootMassImprovement.lean:
  972679fba73136eca8dc152e89c1f225db1ca0ae;
- MoebiusGaussianHeatAbsoluteEnergyStability.lean:
  eb3d30a9b103fe8a26e1f1448c6f9d8d44fd86cf;
- MoebiusFarPrimeBoxForcedCompensation.lean:
  23ea28d68153eff6ebbfbc0269d8249473b98549;
- MoebiusOriginalLaplaceZeroBarrier.lean:
  1a66b83553886e96fc227fa9eeb8b92f4bc8a6a8.

The earlier absolute signed heat-stability proof used the WEAKER,
LESS ACTIVE artificial schedule exp(-2T), for which its L2
error tends exponentially to zero WITHOUT PNT.
It did not give the all-log-power ABSOLUTE stability of the MORE ACTIVE
exp(-T) multiplied by arbitrary fixed polynomial factors.
Neither result proves RH, because closeness of two unknown signed
energies is not an independent upper bound on them.

## 2. NEW source Cauchy/Schwarz energy DIFFERENCE identity

Write F(u)=wholePickup(u),
G(u)=sourceHeatWave(s,T,u), δ(u)=F(u)-G(u)
on the actual [0,T]. Because the source exact identity and pointwise
radius bound give
  int_0^T δ(u)^2du <= R_s(T),
the ordinary real L2 Cauchy-Schwarz inequality proves
  |E(T)-H_s(T)| =
    |int_0^T (F-G)(F+G)du|
    <=sqrt(int δ²)*[sqrt(int F²)+sqrt(int G²)].
Since ||G||_2<=||F||_2+||δ||_2, we obtain
  |E(T)-H_s(T)|
     <=2*sqrt(E(T)*R_s(T))+R_s(T), T>=0,s>=0. (C1)
The nonnegative-square and interval-integrability statements are
straight real analysis; there is NO Mertens/zero-free input at (C1).
For this turn the pinned-Lean L2/Cauchy physical source port remains
an explicit Prop OriginalGaussianL2SquareDifferenceTarget, NOT an axiom.
The source mathematical proof (C1) is complete in ordinary analysis.

## 3. NEW local causal radius with polynomial amplification

The CURRENT repository's active-horizon source has the STRONGER
genuine integrated estimate
  R_s(T)<=16*s²*T⁴*(exp T-1), s,T>=0,        (C2)
because the source heat error at active physical time u depends only
on original indices n<=exp u, not the larger terminal exp T inventory.
This has ONE FEWER power T than the earlier global 16T^5 term.

For ANY fixed nonnegative integer k choose the more active
artificial heat parameter
  s_k(T)=exp(-T)*(1+T)^k.
It is nonnegative for every T>=0, tends to zero, and leaves physical
time and original arithmetic unchanged. Substitute (C2) and use
exp T-1<=exp T:
  R_{s_k(T)}(T)
     <=16*T⁴*exp(-T)*(1+T)^(2k).             (C3)
This is ordinary-mathematical and completely arithmetic-free.
For k=0 it uses s=e^-T, MUCH more heat than the old e^-2T
for every T>0; k>0 allows any fixed polynomial amplification.

## 4. Classical PNT yields ALL-LOG-POWER ABSOLUTE energy stability

The OLD pinned source exposes the genuine classical proposition
  OriginalBalancedPNTLogPowerTarget,
which, for each integer A>=1, gives SOME C_A>=0 and
  pickupCross(T)<=C_A exp T/(1+T)^A for all T>=0.
This is an ORDINARY classical PNT/Mertens log-power consequence
but is NOT an accepted theorem in the pinned Lean source.
The unchanged actual nonnegative diagonal is <=2T², so
  E(T)=pickupDiagonal+pickupCross
       <=2T²+C_A exp T/(1+T)^A.             (C4)

Combine (C1),(C3),(C4), writing H_k(T)=H_{s_k(T)}(T):
  |E(T)-H_k(T)|
   <=8*T²*exp(-T/2)*(1+T)^k*
      sqrt(2T²+C_A exp T/(1+T)^A)
      +16*T⁴*exp(-T)*(1+T)^(2k).           (C5)

Use sqrt(a+b)<=sqrt(a)+sqrt(b) on nonnegative a,b:
  |E-H_k|
   <=8*sqrt2*T³*exp(-T/2)*(1+T)^k
     +8*sqrt(C_A)*T²*(1+T)^(k-A/2)
     +16*T⁴*exp(-T)*(1+T)^(2k).           (C6)
Each term is valid at every T>=0 (at T=0, all terms 0).

For arbitrary fixed integers k,B>=0 select the ORIGINAL
classical PNT exponent
  A=2*(k+B+3), >=1.
The middle term is at most 8sqrt(C_A)/(1+T)^B because
T²<=(1+T)². The first and last terms are bounded by
K_1/(1+T)^B and K_2/(1+T)^B using the ordinary
exp-Taylor factorial inequality and (1+T)^m exp(-aT)=O_m(1)
for every fixed m and a>0.

Therefore the true original physical signed energies satisfy:
  forall k,B in Nat, exists K_{k,B}<infinity,
  forall T>=0,
    |pickupEnergy(T)
      -sourceHeatEnergy(exp(-T)*(1+T)^k,T)|
       <=K_{k,B}/(1+T)^B.                 (C7)

This is a mathematically UNCONDITIONAL CLASSICAL-PNT
source-specific improvement beyond the prior a=2-only absolute
stability and beyond all-rate-class equivalences.
For k=0, the difference at s=e^-T tends to ZERO faster than
every inverse polynomial in T. Any fixed polynomial heat
amplification has the same asymptotic stability.

The new additive source proof candidate
 MoebiusGaussianPolynomialHeatPNTStability.lean
includes four proof bodies:
 - polynomialNearIdentityHeat_nonneg,
 - polynomialNearIdentityHeat_radius_le,
 - original_energy_le_of_classical_PNT,
 - all_log_power_absolute_signed_energy_stability.
Two unported PINNED Lean Props are kept independent:
 - OriginalGaussianL2SquareDifferenceTarget:
   standard true-source real L2 Cauchy identity (C1);
 - GaussianPolynomialHeatScalarAbsorptionTarget:
   ordinary real sqrt/exponential/factorial absorption (C6)->(C7).
Neither is RH-strength arithmetic; the old classical PNT
quantitative input remains explicitly unported in Lean.

## 5. NEW Vinogradov–Korobov stretched exponential connection

The pinned original source FarPrimeBoxForcedCompensation.lean already
names the genuine CLASSICAL Vinogradov–Korobov Mertens input:
 |M(e^u)|<=C exp(u-c φ(u)),
 φ(u)=u^(3/5)/(log(3+u))^(1/5), u>=0,
with suitable fixed positive constants C,c.
This is a standard UNCONDITIONAL zero-free-region estimate,
NOT RH; the literature includes the classical Mertens form
M(x)≪x exp[-c(log x)^(3/5)/(log log x)^(1/5)].
The pinned Lean source does not prove or independently import
this analytic theorem.

The ORIGINAL physical pickup velocity is exactly exp(-u/2)M(e^u).
For large T split u∈[0,T/2] and [T/2,T]. Since φ is eventually
increasing, φ(T/2)>=2^(-3/5)φ(T) (the logarithmic denominator
decreases for T/2), and φ(T)=o(T):
  |wholePickup(T)|<=C' exp(T/2-c_1 φ(T))
for a suitably reduced c_1>0.
Split the NONNEGATIVE energy integral once more at T/2:
  E(T)=int_0^T wholePickup(u)^2du
       <=A exp(T-c_2 φ(T)),                 (VK1)
for some fixed A>=0,c_2>0, all T>=0 after adjusting A to
pay the finite initial interval.

This standard ORIGINAL classical Mertens->physical double-integral
supplier is a distinct explicit unported Lean Prop:
  ClassicalVKOriginalPhysicalEnergyTransferTarget.
It assumes the already named classical Mertens VK input and
never assumes a zero-free half-plane Re>1/2, an all-rate signed
FAR estimate, or a secretly solved RH statement.

### 5a. Sharper genuine relative signed Gaussian compensation

At the original critical near-identity heat s=exp(-T/2)
the already available PNT-free squarefree terminal-band
lower gives, for J>=9,T_J>=32,
  U_J=unsignedHeatEnergy(s,T_J)>=exp(T_J)/65536.
The TRUE active-horizon positive radius (C2) now gives
  R_s(T)<=16*T⁴   (one power better than old 16*T^5).
Source heat-energy reverse triangle:
  H_J<=2E(T_J)+2R_s(T_J)
       <=2A exp(T_J-c_2φ(T_J))+32*T_J⁴.
Divide by the positive original U_J:
  0<=1-4O_J/U_J=H_J/U_J
    <=131072*A exp(-c_2 φ(T_J))
       +2097152*T_J⁴ exp(-T_J).             (VK2)
This is a NONCIRCULAR classical VK relative balance, stronger
than the previously published PNT all-log-power H/U estimate.
Since φ(T)→infinity and log T=o(φ(T)), (VK2) is
  H_J/U_J=O(exp(-c_3φ(T_J)))
for any 0<c_3<c_2 (constant adjusted).
But φ(T)=o(T), so this is still EXPONENTIAL RATE ONE.
It does NOT imply the RH-facing exponential relative
precision H/U=O_r(exp(-(1-r)T)) for every r>0.

### 5b. Absolute Gaussian energy stability at VK strength

For the polynomially amplified s_k(T)=exp(-T)(1+T)^k,
combine (C1),(C3),(VK1):
  |E(T)-H_k(T)|<=
      8sqrt(A)*T²*(1+T)^k*exp(-c_2 φ(T)/2)
      +16T⁴*(1+T)^(2k)*exp(-T).             (VK3)

Because log(1+T)=o(φ(T)), for each fixed k and any c_4 in
(0,c_2/2) equation (VK3) is O(exp(-c_4 φ(T))).
This is a stretched-exponential ABSOLUTE stability result for
a substantially more active smoothing schedule than e^-2T,
using only the classical unconditional VK Mertens saving
and source-exact physical error accounting.

The second new Lean source
 MoebiusGaussianVKRelativeAndAbsolute.lean
provides source theorem proof candidates for:
 - criticalHalfRoot_radius_le_quartic,
 - classical_VK_relative_gaussian_polarity_explicit,
 - classical_VK_polynomial_heat_absolute_stability_explicit.
Its one new source Prop is the separately unported
ClassicalVKOriginalPhysicalEnergyTransferTarget (VK1).
The classical Mertens-VK source proposition and
PNT-free squarefree, causal response and interval
positive integral Lean gates remain unproved in pinned Lean.

## 6. Independent finite diagnostics, not certification

Using an independent deterministic true Mobius sieve through N=2^15,
the exactly born original response formula
 F(u)=2Σ_(n<=e^u) μ(n)/sqrt n -
      2exp(-u/2)Σ_(n<=e^u) μ(n)
and the same original-index heat and radius coefficients,
5001-point deterministic Simpson quadrature on [0,T_J]
gave the following NONCERTIFYING numerical illustrations:

  J     k     T=Jlog2  original E     heated H    |E-H|
  9     0      6.2383     3.343188     3.299242   0.043946
  12    0      8.3178     6.642787     6.631611   0.011176
  14    0      9.7041     9.074797     9.070967   0.003830
  15    0     10.3972    10.329296    10.327102   0.002194

At the stronger k=1 schedule (heat exp(-T)*(1+T)),
the finite absolute differences were 0.305785,0.103480,
0.040922,0.024975 for the same J values respectively.
All direct absolute differences obey the numerical Cauchy
bound 2sqrt(E R)+R. The TRUE positive R remains much larger
than the signed error norm; these samples are NOT rigorous
interval enclosures, Lean kernel checking, asymptotic
RH evidence, or substitutes for the ordinary proofs.

## 7. Source relationships and serious limitations

- Classical PNT all-log => (C7), but the pinned Lean
  OriginalBalancedPNTLogPowerTarget is not imported/proved.
- Classical VK Mertens => (VK1),(VK2),(VK3) in ordinary
  mathematics, but its original source transfer is unported.
- The stronger k>0 Gaussian smooths the ACTUAL original
  integer-indexed coefficients without any physical-time
  smoothing or dropped squareful zero, and still has
  absolute signed-energy error o(1).
- Gaussian heat signed source cross terms can have both
  signs, so no coefficientwise heat monotonicity is claimed.
- The genuine positive reconstruction radius is NOT the
  signed source error. Its absolute majorant may be much
  larger; the Cauchy bound remains valid.
- The Dirichlet mean over growing q(T), finite-variance
  low-gcd dense sampler, exact physical-bit and geometry
  ports in the previously pinned 226-module v6 atlas are
  distinct source representations or family averages.
  Their estimates cannot automatically replace
  OriginalBalancedPNTLogPowerTarget/VK or prove a fixed
  original Möbius FAR allrate upper.
- The new stronger energy DIFFERENCE bound does not
  imply a new bound on E(T), because E(T) itself can grow
  at classical exponential rate one, nor does it imply
  an all-positive-rate bound for H_k(T).
- VK has phi(T)=o(T); even relative stretched exponential
  polarity precision is far weaker than RH strength.

The needed independent arithmetic advance is still a
bound on the original actual complete signed FAR or fixed
compensated low-gcd dense core at EVERY positive exponential
rate, equivalently an RH-strength original square-energy
or signed Gaussian H allrate bound under the already
separately paid source defects.

## 8. Verification trust and no automated execution

New source files are additive only; no original arithmetic,
signed Gram, root import, Lean/Mathlib pin, physical time,
low/high mask or prior worker source was modified.
Git blob SHA readback and guarded non-force main ancestry
will be checked independently on publication.

Source static delimiter/placeholder checks are NOT parser,
Lean elaboration, theorem expected type validation, kernel
replay, full transitive axiom, opaque/native, or CI acceptance.
Per user instruction, all such native Lean compilation
facets remain explicitly DEFERRED/NOT_RUN. No Noe worker,
scheduled automation, CI, or external repo change was
authorized or attempted.

References:
- Independent academic exposition and Mertens estimates:
  https://www.fieldsinstitute.ca/talks/Explicit-Mertens-estimates
  https://mathoverflow.net/questions/293738/best-estimate-of-the-mertens-function-without-assuming-the-riemann-hypothesis
- Primary GRWTSK source files and old trust statuses
  pinned by exact source blobs above.

RH and complete original signed all-positive-rate
FAR/fixed-core/relative Gaussian energy upper: OPEN.
