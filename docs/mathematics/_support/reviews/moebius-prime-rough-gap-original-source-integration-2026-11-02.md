# Source-exact Möbius prime-rough integration with elliptic, residue and gauge returns

Date: 2026-11-02. grwtsk mathematical research; OpenAI formalization assistance.

STATUS: Mathematical exact identities and unconditional finite degree bounds, with a new additive Lean SOURCE PROOF CANDIDATE. The missing far signed upper bound, actual source-faithful Kakeya comparison, (P), and classical RH remain OPEN. New Lean source has NOT_RUN compiler, kernel, or transitive axiom audit.

## A. Repository-source map

Current source revision inspected before writing: grwtsk/math f0ac0929bde3c8e13c91331681948f74608c1005.

* NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupDyadicEndpoint.lean: actual dyadic logarithmic times, original signed endpoint expression, fixed-scale conditional RH return.
* NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean: complete original integer-sign waveform returned from all residue and parity classes before squaring, including mixed terms.
* HarmonicAnalysisOnEuclideanSpaces/CMKaehlerZQGaugeFullReturn.lean: exact original source recovered by contragredient U(1) gauge and detector; a finite audio gauge is no new arithmetic estimate.
* MoebiusPrimeBlockSignedFrame.lean: finite signed block amplitude and Cauchy diagonal theorem, now actually instantiated in the new original integer-indexed source.
* MoebiusEndpointPutnamSparseGapAllRate.lean and MoebiusEndpointDenseLongGapSource.lean: original signed raw-additive gap sector paid, dense original long-gap bound left open.
* Combinatorics/GraphTheory/SignedIncidenceCongestion.lean: real signed ordered-pair Young/degree lemma, applicable to new rough-label gaps with a proved degree count.
* MoebiusSignedMaskWaveEnergyBridge.lean: original masked low/low signed energy remains quantitatively open; cannot be consumed as an unconditional all-rate cancellation lemma.
* MoebiusEllipticFiberKernelComparison.lean: original signed cross = matched elliptic packet + COMPLETE fullSignedResidual (rough, mixed, matched defect).
* MoebiusStereographicTubeResidual.lean and MoebiusPutnamKakeyaSignedResidual.lean: actual original-indexed tube families and signed overlap ledger; dense budget not paid at every positive rate.
* ArithmeticAlgebraicGeometryDiophantineGeometry/MoebiusProjectivePrimeResiduePort.lean: point counts preserved by projective point-equivalence, without silently claiming original Möbius trace control.
* PhysicalMoebiusBitGramReturn.lean: actual original source decoded from physical bits with full readout defect retained.
* Upstream openai/math pinned 4eaee87548250b2682affda7d05d947c05554bae, lean/OAI/MeasureTheory/Kakeya/Definitions.lean and Main.lean: positive absolute-value maximal operator and all-positive-loss bound. This theorem is not imported into the current GRWTSK module and cannot see the external original Möbius sign by itself.

## B. Genuine original-index prime-rough fiber connection

For positive Q, define g_Q(n) = n/gcd(n,Q). Its actual source fiber at the cutoff N=floor(exp T) is
W_{Q,a,T}(u) = sum_{n<=N, g_Q(n)=a} mu(n) r_n(u)
with r_n(u) the same original causal response. Then, without discarding any integer, zero coefficient, sign or support,
sum_a W_{Q,a,T}(u) = sum_{n<=N} mu(n)r_n(u).
On 0<=u<=T this equals the existing wholePickup(u) exactly.

For Q>0, within a fixed fiber, n |-> gcd(n,Q) is injective into the actual divisors of Q. Indeed n=gcd(n,Q)*g_Q(n). Consequently every fiber contains at most tau(Q) source labels. Applied to the existing finite signed-block frame, the exact pointwise result is
sum_a W_{Q,a,T}(u)^2 <= tau(Q) sum_{n<=N} mu(n)^2 r_n(u)^2.
Integration on [0,T] yields the genuine block diagonal allowance D_Q(T)<=tau(Q) D(T)<=2 tau(Q) T^2 (for T>=0).

If Q is squarefree, then on the nonzero mu(n) support the rough fiber is the earlier unique decomposition n=dm, d|Q, (m,Q)=1. The literal original-index code retains also every squareful zero rather than assuming its absence.

## C. Exact complete original-source ordered-pair partition

Keep the original Gram G_T(m,n)=integral_0^T r_m(u)r_n(u)du and original coefficient mu(m)mu(n). Partition ALL m!=n ordered pairs by:
INTRA: g_Q(m)=g_Q(n);
NEAR: g_Q(m)!=g_Q(n) and 0<|g_Q(m)-g_Q(n)|<=H;
FAR: |g_Q(m)-g_Q(n)|>H.

These are exhaustive and disjoint, and no packet is declared nonnegative. Thus
  X(T) = X_intra(Q,T) + X_near(Q,H,T) + X_far(Q,H,T).
The unchanged signed endpoint correction q(T)=E(T)-X(T) has |q(T)|<=1/4 for T>=0, giving
  E(T) = X_far + X_intra + X_near + q(T).

The existing exact elliptic decomposition now has the same source:
  matchedEllipticPacket(B,T)+fullSignedResidual(B,T)
    = X_intra(Q,T)+X_near(Q,H,T)+X_far(Q,H,T).
No trace proxy is equated to mu(n), and fullSignedResidual is NOT discarded.

The prior complete four-sector residue energy and compensated U(1) gauge detector energy both equal
  pickupDiagonal(T_j) + X_intra(Q,T_j)+X_near(Q,H,T_j)+X_far(Q,H,T_j)
for the original T_j=j log2. These are source-preserving equalities, not new growth estimates.

## D. Unconditional original signed near/internal costs and fixed schedules

For nonnegative T, the already derived original Gram Young inequality is
  2|mu(m)mu(n)G_T(m,n)| <= d_m(T)+d_n(T),
  d_n(T)=mu(n)^2 G_T(n,n).
The source rows in INTRA have at most tau(Q)-1 neighbors, and NEAR have at most 2H*tau(Q) neighbors: every rough-index fiber is at most tau(Q), with at most two neighbor rough indices for each of the H positive distances.

The true ordered signed degree inequality therefore yields the ordinary mathematical bounds
  |X_intra(Q,T)| <= (tau(Q)-1)D(T) <= 2(tau(Q)-1)T^2,
  |X_near(Q,H,T)| <= 2H*tau(Q)D(T) <= 4H*tau(Q)T^2.

Select ALL scales and source-bank parameters independently of a requested exponent:
  T_j=j log2,
  Q_j = product of first floor(log2(j+1)) primes (Q_0=1),
  H_j = floor(2^(sqrt(j))).
Then tau(Q_j)<=j+1, and the exact error from FAR to original endpoint is bounded by
  |E(T_j)-X_far(Q_j,H_j,T_j)|
   <= 1/4+2jT_j^2+4H_j(j+1)T_j^2
   = 2^o(j).

Consequently the original one-sided all-positive-rate statement P is mathematically EQUIVALENT to that same one-sided statement for X_far(Q_j,H_j,T_j). This is a reduction, not a proof of either upper bound. New Lean code includes the exact source decomposition and scalar fiber capacity, but does not yet contain the fully specialized signed row-degree bound as an accepted kernel theorem.

## E. New Lean integration file, what it proves at SCRIPT level

New module: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeRoughGapSourceReturn.lean
Commit 4d2aff68a6580ef0d08141af4278264336938f1b, blob d832f2d6fc021b44a89c8f8c21ff1aca71e3611c.

12 theorem proof scripts include: originalRoughWave_eq_finiteBlock, sum_originalRoughWave, sum_originalRoughWave_eq_wholePickup, originalRoughFiber_card_le_divisors, originalRoughFrame_sq_le_divisor_card, pickupCross_eq_original_rough_partition, endpointSum_eq_far_plus_all_paid, elliptic_complete_eq_original_rough_partition, completeResidueEnergy_eq_original_rough_partition, gauged_energy_eq_original_rough_partition, subexponentialOn_add_same, and riemannHypothesis_of_rough_partition_good_scales.

The last theorem consumes explicit source-specific all-rate bounds on all three components and affine-frequent coverage before calling the existing canonical RH consumer; it does not assert those bounds. No authored sorry, axiom, or unsafe declaration in new source text, but no Lean compilation has occurred.

## F. Finite independent diagnostic and remaining obligations

Recomputed the original exact scalar causal-response Gram at j=0,2,4,6,8,10, retaining all signed ordered source pairs and actual squareful zeros. At j=10, Q=30, H=8:
X_original=-35.964807,
X_intra=-39.512999,
X_near=+0.739725,
X_far=+2.808467.
The arithmetic partition and endpoint comparisons passed finite floating tolerances. These are NOT all-scale evidence or kernel verification. Local reproducible assets: rough_gap_source_preflight.py and rough_gap_source_preflight.json.

Next native obligations: compile and kernel check the new file with pinned Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; audit its transitive declarations and imports; formalize the actual symmetric rough-degree bound with the pinned source GramYoung and signed incidence lemma; connect the fixed Q_j/H_j schedule to an explicit rate majorant; prove the still-missing far rough-index signed all-positive-rate upper estimate using a noncircular arithmetic or signed Kakeya comparison; only then invoke canonical RH.

ACCEPTANCE STATUS: Source published and read back, Lean fresh compilation NOT_RUN, kernel NOT_RUN, transitive axiom audit NOT_RUN, signed FAR bound OPEN, original P OPEN, classical RH OPEN.
