# Rate-one cancellation for the COMPLETE signed strong Möbius pickup packet

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Disposition: classical PNT-level quantitative analytic deduction at the exact original Möbius source, with source-proof-candidate Lean modules. The external PNT / Mertens theorem is already established in classical mathematics but is **NOT proved or imported in the pinned Lean environment**. Neither this argument nor this source asserts RH.

## 1. Exact original source and retained packet

The immutable original GRWTSK source is
\`GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean\` and its existing exact returns:
- \`moebiusReal(n) = ArithmeticFunction.moebius(n)\` in the real coefficient channel;
- \`mertensPrefix(x) = sum_{1<=n<=floor(x)} moebiusReal(n)\`;
- \`wholePickup(t) = integral_0^t exp(-u/2) * mertensPrefix(exp u) du\`;
- \`pickupEnergy(T) = integral_0^T wholePickup(u)^2 du\`;
- \`pickupCross(T)\` is the COMPLETE original signed ordered off-diagonal response Gram, \`pickupDiagonal(T)=D(T)\`, with exact existing identity \`pickupEnergy(T)=D(T)+pickupCross(T)\` for T>=0, and \`0<=D(T)<=2*T^2\`.
- \`endpointIndex(T)=Icc 1 floor(exp T)\` and all original squareful/rough/matched source IDs and pair orientations survive.

Previous published source \`MoebiusEndpointPutnamSparseGapAllRate\` pays, for any fixed ε>0, the ORIGINAL signed short-gap packet at H=floor(exp(ε*T/2)):

  |G_ε(T)| <= (32/ε²)*exp(ε*T).                        (G)

Previous \`MoebiusEnergyMatchedWeakResidual\` proves the original near-angular long-gap packet empty for the integer stereographic directions, and the COMPLETE signed weak-overlap packet W_ε(T), with q_N=(N+1)^(-6), bounded by

  |W_ε(T)| <= N^2*sqrt(q_N*D(T))
           <= sqrt(2)*T/(N+1)
           <= sqrt(2)*T*exp(-T),                         (W)

where N=floor(exp T). The sqrt(2) simplification is established in the earlier mathematical review, while its final Lean normalizer remains NOT_RUN / not separately written.

The TRUE source-labelled strong physical-overlap signed packet of this source is

  S_ε(T) := angularFarCross (shortGapSet H)
                (originalEnergyFamily T)
                (sourceCollarSigma H T)
                (weakPhysicalThreshold T),

with no sign positivity, no source coefficient change, and no replacement of an actual pair by a positive geometric mass.

## 2. A SOURCE identity, not a free source estimate

Using the previous genuine original ordered-four-packet theorem and its zero near-angle result:

  pickupCross(T) = G_ε(T) + W_ε(T) + S_ε(T).

The original physical-time signed Gram identity then yields, WITHOUT ABSOLUTE VALUES FIRST,

  S_ε(T) = pickupEnergy(T) - D(T) - G_ε(T) - W_ε(T).

Because pickupEnergy(T)>=0 and D(T)>=0, BOTH original signs of the strong packet are paid:

  |S_ε(T)| <= pickupEnergy(T)+D(T)+|G_ε(T)|+|W_ε(T)|.     (1)

The new source \`MoebiusStrongPacketEnergyReturn.lean\` contains proofs of this complete identity and the absolute estimate, with all original sign sectors, including the 2T² diagonal and both orientations. This is not RH: it still requires an actual bound on pickupEnergy.

## 3. Exact ORIGINAL Mertens-Abel arithmetic transfer

Rather than introducing a surrogate prefix, reuse the repository's exact existing
\`LogarithmicPickupSeries.sampleResidue\` and \`PickupMertensAbel.sampleResidue_abel\`:

  sampleResidue(N+1) =
    sum_{k=0}^{N-1} M(k+1)*
      (1/sqrt(k+1) - 1/sqrt(k+2)).                       (2)

The weight Δ_k =1/sqrt(k+1)-1/sqrt(k+2)>=0. It satisfies the genuine exact finite identities

  sum_{k=0}^{N-1} Δ_k = 1-1/sqrt(N+1),

  sum_{k=0}^{N-1} (k+1)Δ_k
       = sum_{k=0}^{N-1} 1/sqrt(k+1) - N/sqrt(N+1)
       <= 2 sqrt N.                                       (3)

The last comparison follows from
  1/sqrt(k+1) <= 2*(sqrt(k+1)-sqrt k)
and telescoping. No PNT, RH, or cancellation is used in (2)–(3).

For each δ>=0 and fixed threshold K, assume the ACTUAL finite Mertens tail (not an endpoint-energy proxy),

  |M(n)| <= δ*n for all n>=K.                            (PNT_Kδ)

The earlier unconditional coefficient bound |M(n)|<=n covers the finite head n<K. Splitting (2) at K, and using Δ_k>=0, (3) gives

  |sampleResidue(N+1)| <= K + 2δ sqrt N.

The repository already proves \`wholePickup(log n)=2 sampleResidue(n)\` (including n=1), and the exact sampling error

  |wholePickup(u) - sampledPickup(u)| <= exp(-u/2)
for u>=0, with sampledPickup(u)=wholePickup(log floor(exp u)).

Therefore, for EVERY real u>=0, without changing the floor convention,

  |wholePickup(u)| <= 2K+4δ exp(u/2)+exp(-u/2)
                   <= (2K+1)+4δ exp(u/2).               (4)

The new \`MoebiusStrongMertensAbel.lean\` proves the finite Abel steps, genuine prefix-tail transfer, and pointwise original pickup bounds under (PNT_Kδ). The mathematical analysis is elementary and complete at its conditional scope; the Lean proof candidates are NOT_RUN.

## 4. Rate-one strong packet theorem

Write A_K=2K+1. From (4), by (a+b)^2<=2a^2+2b^2,

  wholePickup(u)^2 <= 2*A_K^2 + 32δ² exp u.

Integrate over the ORIGINAL physical time interval 0<=u<=T:

  pickupEnergy(T) <= 2*A_K²*T + 32δ²*(exp T-1).          (5)

This is a genuine integral of the ORIGINAL nonnegative cumulative energy, not an assumed packet upper bound. The new \`MoebiusStrongPNTEnvelope.lean\` uses the pinned continuous waveform, actual interval-integral normalization, and (1), (G), (W) to prove the finite source formula:

  |S_ε(T)| <= 2(2K+1)^2 T
            +32δ²(exp T-1)
            +2T²
            +(32/ε²) exp(ε T)
            +N² sqrt(q_N*D(T)).                          (6)

All quantifiers remain explicit: T>=0, ε>0, δ>=0, K natural, (PNT_Kδ) the actual Mertens tail. No strong signed packet bound is itself a hypothesis. The weak term is the genuine published source rather than a guessed or fitted threshold.

The PRIME NUMBER THEOREM in classical mathematics implies

  ClassicalPNTMertensTail:
    ∀ δ>0, ∃ K, ∀ n>=K, |M(n)|<=δ*n.

This is the standard exact equivalence \`M(x)=o(x) iff PNT\`. The present pinned Lean program has not imported its proof. **Conditional on this external classical fact**, fix 0<ε<1 and divide (6) by exp T. For any fixed δ>0 (with its K) all other terms tend to zero:

  limsup_{T→∞} |S_ε(T)|/exp T <= 32δ².

As δ is arbitrary, the nonnegative ratio tends to 0:

  **|S_ε(T)| = o(exp T)** for every fixed 0<ε<1.         (7)

This is an actual signed strong-packet cancellation result at exponent ONE, genuinely stronger than an O(exp T) positive-degree bound, and independent of RH. It is **not** RH-strength: \`o(exp T)\` does not imply \`O(exp(ε' T))\` for every ε'>0.

## 5. Stronger unconditional classical Korobov–Vinogradov corollary (not Lean formalized)

Ethan S. Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141, versions 2022–2026, prove an explicit unconditional inequality of Korobov–Vinogradov form:

  |M(x)| << x * exp(-c (log x)^(3/5) (log log x)^(-1/5))

for sufficiently large x, some c>0. This does not use RH. It is NOT yet imported into this pinned Lean source and is NOT asserted as a kernel theorem.

Set Φ(t)=t^(3/5)/(log t)^(1/5), for sufficiently large t. The ACTUAL source pickupVelocity is exp(-t/2) M(exp t), so the classical estimate gives

  |pickupVelocity(t)| << exp(t/2)*exp(-c Φ(t)).

Split the original pickup integral at t/2. Its lower half is O(exp(t/4)); its upper half is O(exp(t/2)*exp(-c1 Φ(t))) because Φ(t/2) is comparable to Φ(t). After reducing c1>0 as needed,

  |wholePickup(t)| << exp(t/2)*exp(-c2 Φ(t)).

Square and split the ORIGINAL positive energy at T/2 again:

  pickupEnergy(T) << exp(T)*exp(-c3 Φ(T)).

Put this into (1) with (G) and (W), fixing any 0<ε<1. Exponential-scale separation absorbs \`exp(εT)\`, \`T²\` and the decaying weak term, leaving

  **|S_ε(T)| << exp(T)*exp(-c4 T^(3/5)/(log T)^(1/5))**
  for sufficiently large T and some c4>0.                (8)

This is a *mathematically derived classical analytic corollary* using Lee–Leong's imported-by-citation external result, not a fresh deep theorem, not a quantified explicit constant from their paper, and **NOT a Lean-verified bound**. It implies for every fixed B>0 an \`O_B(exp T/T^B)\` bound. Despite its strong subexponential factor relative to exp T, its leading rate remains one: it cannot yield the \`exp(ε'T)\` RH-facing estimate for arbitrary ε'<1.

## 6. Countertests, fidelity, comparisons and next arithmetic frontier

- **Classical PNT versus RH.** PNT→M(x)=o(x) is established mathematics, not an RH assumption; RH requires square-root-plus-epsilon Mertens growth. The two propositions are not exchanged or confused.
- **Original source.** The endpoint set is 1..floor(exp T); all Möbius signs, squareful zeros, birth windows, both orders and genuine response Gram are preserved. The strong packet's signs remain signed through (1).
- **No geometric positive fraud.** Physical tubes define the strong pair selection but never supply signed cancellation by their positivity. The original square energy is used only through the *already proved* original finite Gram identity.
- **Finite input versus global external fact.** (6) is a Lean proof candidate with explicit actual tail (PNT_Kδ); (7) is the classical corollary using a proven external theorem, whose formal proof term is unavailable in the pinned Mathlib closure.
- **No fake novelty.** Abel summation, PNT-Mertens cancellation, and the zero-free-region bound are classical; the addition is a source-exact strong-packet return and its independently identified PNT-level limit. The Korobov–Vinogradov gain is NOT a new mathematical result of this contribution.
- **Scaling no-go.** Even exp(T)*exp(-cΦ(T)) vastly exceeds exp(ε'T) for every fixed 0<ε'<1, so the dense strong-packet RH-strength supplier is still OPEN. The earlier geometric no-go still applies to positive row upper bounds.
- **Independent finite tests.** A deterministic local Python preflight completed **40,716 assertions**, including exact rational Mertens-Abel telescoping and synthetic-rational signed Gram four-packet identity/budgets, plus 10 actual causal response kernel/energy numerical cross-checks at 75 decimal digits. The synthetic rational Gram is expressly NOT the original pickupResponseGram, and the numerical kernel fixtures are NOT interval-certified real arithmetic or Lean execution.
- **Native assurance.** New source code is a SOURCE_PROOF_CANDIDATE. Lean parsing/elaboration NOT_RUN, compilation NOT_RUN, expected theorem types NOT_RUN, fresh kernel NOT_RUN, transitive axiom/unsafe/sorry audit NOT_RUN. No native/remote runner or CI was authorized or dispatched. No existing mathematical source, toolchain or root import is modified.

The next honest arithmetic obligation is a signed large-pair estimate that improves the classical PNT rate ONE to every positive rate, perhaps by a genuinely two-point/square-root cancellation supplier for the **unchanged full strong source**. Merely choosing a different tube shading or using PNT cannot close this gap.

## 7. References and provenance

1. Original GRWTSK source \`MertensPrimitive.lean\`, \`LogarithmicPickupSeries.lean\`, \`PickupMertensAbel.lean\`, \`LogarithmicPickupSampling.lean\`, \`MoebiusEndpointPutnamSparseGapAllRate.lean\`, and \`MoebiusEnergyMatchedWeakResidual.lean\` on the pinned parent commit.
2. The proved **Prime Number Theorem**, in the standard equivalent form M(x)=o(x). For a formal PNT precedent in Isabelle/HOL see Manuel Eberl and Lawrence C. Paulson (2018), *The Prime Number Theorem*, Archive of Formal Proofs, https://isa-afp.org/entries/Prime_Number_Theorem.html. Isabelle/HOL is NOT the local Lean proof.
3. Ethan S. Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141, https://arxiv.org/abs/2208.06141, see Introduction Eq. (1), Theorem 1.2 and Corollary 1.3 (2022 paper; subsequent versions through 2026). The exact provided KV estimate is classical external input and has NOT been translated into the pinned Lean environment.
