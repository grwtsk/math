# Original signed high/high causal Gram from true P-smooth source count

Research date: 2026-11-01. Local mathematical authorship: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

**Trust classification:** complete ordinary finite and real-integral proof; new Lean SOURCE_PROOF_CANDIDATE. The source and imported earlier candidate modules have **not** undergone pinned Lean v4.34.1 elaboration, expected-type verification, fresh independent kernel replay or transitive axiom/unsafe audit. The new file contains no `sorry` or research `axiom` declaration. This is NOT RH, not an all-positive-rate proof for the complete original signed cross source, and not a kernel-accepted theorem.

## Original source, target and quantifiers

This work supplies a direct source-level proof candidate of the EXISTING proposition

  GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs.HighSmoothDenseFormalizationTarget.

Its original quantification is over every finite true-prime `PrimeBand B`, both arbitrary ordered tags `a b : Bool`, every finite excluded distance mask `A : Finset Nat`, and every original shell `X>=1`. It uses the ORIGINAL cutoff-clipped source inventory

  H_P(X,T)=highSmoothBlock B X T subset balancedBlock X T,

where an original positive integer n belongs to H only if some actual P-smooth divisor d|n satisfies d>Q_X, with Q_X=2X exp(-2 sqrt(log(2X))). The terminal time T is **exactly** log(2X). No source integer is reindexed, no terminal birth is added, and the selected prime bank is not fixed or tuned by this theorem.

The signed original masked high/high source is

  D_HH(B,a,b,A,X,T) =
      sum_(m in H) sum_(n in H)
        if m!=n and Nat.dist m n not in A then
           taggedMoebius B.primes a m *
           taggedMoebius B.primes b n *
           pickupResponseGram T m n
        else 0.

Both source tags are literal `taggedMoebius`, including the original squareful zeros. The physical `pickupResponseGram` is exactly

  integral_(u=0..T) pickupResponse m u * pickupResponse n u du.

The requested statement is

  |D_HH(B,a,b,A,X,T)|
    <= 8*T*exp(2 sqrt T) * (bankSquareRootWeight B.primes)^2,

T=log(2X). This retains the bank's full positive Euler cost V_P: no uniform-in-growing-bank cancellation is claimed.

## Step 1: actual source shell and causal response

From the unchanged source definitions `balancedBlock X T = sourceBlock X T` and `sourceBlock X T = (Ioc X (2X)).filter (n in endpointIndex T)`, any n in H satisfies X<n<=2X. Since X>=1, this gives n>=1 and positive real X.

Pinned existing `LiouvilleDoubleAbelAnalyticGates.pickupResponse_nonneg_positive` proves, for every physical time u and positive n,

  0 <= pickupResponse n u.

Pinned original `QuantitativeMertensAbsoluteAbel.pickupResponse_le_two_inv_sqrt` (blob `b2fe063451f58ff9b892aa164d780bd20279192e`) proves, for EVERY u and positive n,

  pickupResponse n u <= 2/sqrt(n).

With X<n, monotonicity of the real square root and inverse of a strictly positive number yields the exact shell bound

  0 <= pickupResponse n u <= 2/sqrt(X).                    (1)

The new candidate `highSmooth_member_shell` and `highSmooth_response_bounds` prove (1) against the exact original source definitions. The estimate holds before birth, at birth, and after birth, without replacing the response by a static positive Gram.

## Step 2: actual physical Gram integral

For any m,n in H and T>=0, the original pointwise response product is nonnegative and satisfies

  0 <= pickupResponse m u * pickupResponse n u
     <= (2/sqrt X)^2 = 4/X,

for all real u. The last equality uses the positive real identity sqrt(X)^2=X. The product is interval-integrable because the previous physical response continuity theorem applies to both positive original labels, as recorded by the existing `pickupResponse_product_intervalIntegrable` in `LiouvilleCausalPhysicalGramIntegrability` (blob `e23f62fc60ce5867e4c183117162c59ff4989b6f`).

Applying the pinned `intervalIntegral.integral_nonneg` and `intervalIntegral.integral_mono` to the REAL original response product, not any finite surrogate, yields

  0 <= pickupResponseGram T m n <= 4*T/X.                (2)

The new `highSmooth_originalGram_bounds` is a source proof candidate of both clauses. This proof does NOT infer that a masked signed Gram is positive semidefinite. It only uses pointwise nonnegativity of the original *unweighted* response Gram.

## Step 3: original signed pair and arbitrary mask

Previously source-maintained `taggedMoebius_abs_le_one` guarantees |taggedMoebius P rough n|<=1 for both Bool tags and ALL n, including squareful-zero coefficients.

For every selected ordered pair m,n in H, (2) implies

  |taggedMoebius(P,a,m) * taggedMoebius(P,b,n) *
    pickupResponseGram T m n| <= 4*T/X.                 (3)

The proof carries both signed original factors; there is no assumption of source sign independence or arithmetic cancellation. The full literal condition `m!=n and Nat.dist m n notin A` either retains the original term or replaces it with **zero**, so it also satisfies (3) for every finite mask.

Two consecutive finite triangle inequalities and a uniform double sum give

  |D_HH| <= (#H)^2 * (4*T/X).                             (4)

This is valid for any mask, including the empty mask; it does not discard or add the diagonal except through the existing literal m!=n condition. Every ordered mixed pair and both source orientations remain in the exact formula. Source candidates `original_high_high_term_abs_le`, `finite_square_sum_abs_le_card_sq`, and `masked_high_high_abs_le_card_sq` prove these finite reductions.

## Step 4: exact already-published unconditional high count

Previously published `FiniteSmoothEulerMomentsProof.highSmooth_card_unconditional` (blob `f631ff881cc8f96542f286fa33ea008bb71a3d57`) consumes pinned Mathlib Euler product and the original positive-multiple count, supplying the source-candidate inequality for EVERY T:

  #H_P(X,T) <= sqrt(2X)*exp(sqrt(log(2X))) * V_P.       (5)

The earlier additive source `HighSmoothDivisorCount` (blob `0a0274d968ef6398b1ad51896e852892ed3e4fcc`) proves the original positive-divisor multiple count, and `MoebiusFiniteSmoothEulerMoments.lean` supplies both unconditioned finite 1 and 1/2 Euler bounds as script candidates. The present new theorem does NOT add a second Euler-moment hypothesis and does NOT assume an independent all-positive-rate estimate.

At terminal T=log(2X), (4)-(5) give

  |D_HH|
    <= [sqrt(2X)*exp(sqrt T)*V_P]^2 * (4*T/X)
    = 8*T*exp(2 sqrt T)*V_P^2,                           (6)

since sqrt(2X)^2=2X, exp(sqrt T)^2=exp(2 sqrt T), and X>0. The final candidate `highSmoothDenseFormalizationTarget` inhabits the EXACT earlier proposition as a theorem with no explicit proof parameter. This is a Lean SOURCE PROOF CANDIDATE, not yet an elaborated kernel theorem.

## Independent adversarial finite preflight

New script `/mnt/data/moebius_high_smooth_dense_gram_preflight.py` (SHA256 `3a4f3b8c1c0caa5307efa5b28f6bb301e101ac857e4b90a4097799b47acf6f57`) and output `/mnt/data/moebius_high_smooth_dense_gram_preflight_result.json` (SHA256 `c3adbefb394c58ff09ff4f76a29d069ceef7097f6c161d499cd8dbe297aae6d2`) were executed locally.

For each X=1..80, seven finite genuine-prime banks including empty, four original tag orientations, and four original additive gap masks, the script used exact-integer Möbius and genuine P-smooth divisor carriers. It evaluated the ORIGINAL causal Gram from the analytical integral of 4*(m^(-1/2)-e^(-u/2))*(n^(-1/2)-e^(-u/2)) over u>=max(log m,log n). The evaluation uses standard floating arithmetic and is not a certified enclosure.

**PASS:** 173,880 pointwise original physical-Gram checks; 560 original high-count envelopes; 560 cardinal-square-to-target comparisons; 7,012,888 literal signed ordered pair-term checks; and 8,960 complete signed masked rectangle checks. Total: **7,196,848 finite checks** with no observed violation. The maximum signed ratio to the target bound was approximately 1.8582e-5, illustrating that the sufficient upper is not sharp. The maximum observed Gram ratio to 4T/X was approximately 0.00456. These finite values cannot establish the universal theorem or Lean acceptance.

## Acceptance status and remaining mathematical frontier

Pinned Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The new source imports the old finite Euler theorem, original quantitative Mertens response bound and original physical response integrability. This does **not** consume the external quantitative classical Mertens proposition: the response bound is elementary.

Required independently verified facets: exact original source compilation and complete transitive import closure; expected types of every new public theorem, including the final exact `HighSmoothDenseFormalizationTarget`; independent fresh kernel replay; complete transitive axiom, private, opaque and unsafe audit. No native Lean/Lake/elan was available in this session, and no CI, native runner, scheduler, or proof automation was dispatched.

The genuine original low/low and surviving matched high/low long-gap packets remain open. For X with Q_X>=1, the separate `MoebiusHighSmoothRoughCollapse` source reduces the rough-tag high rows/columns exactly, but this does not eliminate matched mixed pair correlations. The present high/high envelope is bank-dependent and subexponential at fixed P or under separately established V_P growth conditions; no claim of bank-uniformity for arbitrary P_X is made. The complete all-positive-rate original signed source estimate, a fixed covering-scale return, and canonical Riemann Hypothesis remain **OPEN**.

**Classification:** ORIGINAL_HIGH_HIGH_ORDINARY_MATHEMATICS_COMPLETE / LEAN_SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / COMPLETE_LOW_LOW_MIXED_LONG_GAP_OPEN / RH_OPEN.
