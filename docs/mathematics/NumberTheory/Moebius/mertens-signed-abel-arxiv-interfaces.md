# arXiv interfaces: sliding-origin sampling and the prime-band obstruction

Contribution: grwtsk.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED. No analytic arXiv theorem is imported, axiomatized or claimed locally accepted. The four new leaves contain 10 definitions and 42 theorem scripts. They depend on base grwtsk/math@f231fb54bc413556aa8f79adb1a00079cff7688e and the unchanged four-file dyadic overlay of #1395, tree 2a6ab0be9ed6ab4af56bd33e86951c13b37192fe. Lean 4.33.0; Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. Integration commit UNASSIGNED. A delta tree is not a complete repository and must never replace main.

## Exact finite transfer

For S_f(o,H)=sum_{r<H}f(o+r), the actual endpoint identity gives
S_f(o+r,H)-S_f(o,H)=S_f(o+H,r)-S_f(o,r).
If |f|<=B, translation is bounded by 2Br. Counting the first ceil(|S|/(4B)) neighboring origins proves

S_f(o,H)^2 <= 8B sum_{r<H}|S_f(o+r,H)|.

B=0 and H=0 are included. The constant eight is not asserted optimal. The input is the same sequence at every origin; an unrelated spiky family cannot replace it.

For Q consecutive parents of length 2H, L=2QH, define contrast C_q as left child sum minus right child sum. A common center c cancels in C_q, not in the retained root mean. Put B=1+|c| and A_c=sum_{r<L}|S_f(o+r,H)-Hc|. For |f|<=1 and H>0:

sum_{q<Q} C_q(f)^2/(2H) <= 8B A_c/H.

All origin sampling cells are disjoint and cover L consecutive origins. If A_c<=rho L H, the level energy is <=8B rho L. If the centered normalized error is <=eta outside b actual integer origins, it is <=8B(eta L+B b). The fixed dyadic origins may all belong to the bad set; no density-to-grid inference is used.

The source proves exact equality with the old recursive detailPairing at parent-height k+1: H=2^k, Q=2^(m-k-1), k<m. For the already combined row ell=w1-w2-w3, the omitted level R satisfies R^2<=E_row E_input. At Y=2^(j+1), f(n)=mu(n+1), this gives

R^2 <= E_row * [8(1+|c|) A_j,k(c)/H].

If the product is <=epsilon^2, epsilon>=0, the unchanged full packet and the model retaining every other level satisfy |P-Model|<=2+epsilon/6. The root and signed unsifted/one-prime/two-prime head remain. The existing collar costs two once. The analytic average and the retained-model bound are not supplied.

Origins are 0,...,Y-1; short windows read actual mu values through Y+H-1. No zero padding. Shell decomposition and initial-region allowances are needed to use papers stated on [X,2X]. Real-origin measure statements need a separate discrete conversion. An inclusive endpoint is explicitly charged by ShortIntervalSampling.centered_half_open_of_closed. No free all-scale uniformity is inferred.

## Exact expansion obstruction

The unchanged band is P_j={p prime:Q_j<p<=2Q_j}, Q_j=2^floor((j+1)/3). Existing support and card(P_j)<=Q_j give

0<=sum_{p in P_j}1/p<=Q_j/(Q_j+1)<1.

MertensPrimeBandExpansionObstruction.not_expansion_mass_gate therefore rules out a lower gate of one, and not_expansion_mass_gate_of_one_le rules out every stronger gate. This is an obstruction to direct use of the cited expander statements with THIS prime band, not to expansion methods generally. A wider band requires rechecking the old multiplicity-three and short-cofactor reductions. Sum log p=log rad(q) is a different invariant and does not pay reciprocal-prime mass.

## Versioned paper provenance and missing analytic bridges

1. Kaisa Matomäki and Maksym Radziwiłł, Multiplicative functions in short intervals, arXiv:1501.04585v4, 15 October 2017 (original 2015). https://arxiv.org/abs/1501.04585v4 . Theorem 1: real one-bounded multiplicative f, 2<=h<=X, delta>0; centered short/long averages at integer origins in [X,2X]. Good error delta+Cprime loglog(h)/log(h); exceptional count C X[(log h)^(1/3)/(delta^2 h^(delta/25))+1/(delta^2(log X)^(1/50))]. The actual long mean and inclusive endpoints are retained. The new local finite sampling proofs are independent comparisons, not a port of its analytic proof.

2. Kaisa Matomäki, Maksym Radziwiłł, Xuancheng Shao, Terence Tao and Joni Teräväinen, Higher uniformity of arithmetic functions in short intervals II. Almost all intervals, arXiv:2411.05770v2, 23 January 2026. https://arxiv.org/abs/2411.05770v2 . Theorem 1.1(i),(iv) include Möbius nilsequence estimates: log-power bounds for H>=X^(1/3+epsilon) and fixed-tolerance bounds for H>=X^epsilon, retaining the upper restriction, nilmanifold/Lipschitz complexity and all parameter dependence. Exceptional real-origin measure is not silently an integer bad-set count. Constant tests are prospective suppliers; no nilsequence representation of our full operator is claimed.

3. Kaisa Matomäki, Mayank Pandey, Javier Pliego, Joni Teräväinen and Mengdi Wang, Higher order uniformity of the primes and cancellation of the Möbius function in shorter intervals, arXiv:2610.09567v1, 7 October 2026. https://arxiv.org/abs/2610.09567v1 . Theorem 1.4: X>=3, X^(19/35+epsilon)<=H<=X, sum mu=O_epsilon(H/log^(1/3-epsilon)X). This all-interval input can feed eligible child-block estimates; it is not a zeta-line exponent. Corollary 1.3 separately requires fixed polynomial degree and its 3/5+epsilon length range. Neither theorem is imported here.

4. Cédric Pilatte, Improved bounds for the Fourier uniformity conjecture, arXiv:2604.26564v1, 29 April 2026. https://arxiv.org/abs/2604.26564v1 . Theorem 1.2 concerns Liouville, average-origin Fourier uniformity at H>=exp((log X)^(2/5+epsilon)), with the frequency supremum inside the origin sum. This is a contextual spectral neighbor, not an admitted Möbius supplier. General multiplicative versions retain their nonpretentiousness hypotheses.

5. Harald Andrés Helfgott and Maksym Radziwiłł, Expansion, divisibility and parity, arXiv:2103.06853v2, 13 April 2021. https://arxiv.org/abs/2103.06853v2 . The Main Theorem requires reciprocal mass at least e; Corollary 1.3 requires at least one. Prime-scale/origin-scale constraints, exceptional vertices and operator normalization remain essential. The new local obstruction applies to these exact mass gates only.

## Declaration and source identity

GRWTSK.Analysis.FiniteSums.ShortIntervalSampling, blob c71be9947306597a8a614f59ee8bcfacea332b47: principal declarations shortSum_translation, shortSum_square_le_sliding, centeredSlidingL1_le_exceptional, centered_half_open_of_closed.

GRWTSK.Analysis.FiniteSums.DyadicSlidingMean, blob d0499efa9ede40871e80557a558c74294d1f85b1: principal declarations gridEnergy_le_centeredSliding, gridEnergy_le_of_centered_mean, gridEnergy_le_of_exceptional_origins, level_pairing_eq_grid.

GRWTSK.NumberTheory.Moebius.MertensSignedAbelSlidingMean, blob 925039a4a9ed27e54c1f43727da6e7c8d5c5589c: remainder_eq_grid, remainder_sq_le_sliding, full_packet_level_sliding_comparison, full_packet_level_mean_comparison, full_packet_level_exception_comparison.

GRWTSK.NumberTheory.Moebius.MertensPrimeBandExpansionObstruction, blob e86101aa2d576fc662d9d565db9e48487e71dd31: bandReciprocalMass_le, bandReciprocalMass_lt_one, not_expansion_mass_gate, not_expansion_mass_gate_of_one_le.

The complete 52-name roster, exact commands, source hashes and paper ledger append are supplied in the conversation bundle and passive verification request. Central paper-to-formalization index integration is PENDING, not claimed done.

## Classification

Imported mathematics: pinned Mathlib finite sums, ceilings, inequalities and existing GRWTSK finite-source identities. Kernel-verified new bridges: NONE CLAIMED. Source candidates: 42 new theorem scripts. Conditional interfaces: actual averaged-origin mass, coefficient-row energy product and retained signed model bounds. Finite evidence: separately reported exact rational diagnostics, not Lean or asymptotic acceptance. Analogy-only neighbors: higher-uniformity and spectral constructions without source-identifying proofs. Missing premises: analytic theorem admission, interval/measure/shell transport, all-scale row/model budgets, compilation and complete kernel/axiom custody.

For each new module, lake build <module> and lake env lean <path> are NOT_RUN; exit UNAVAILABLE. Fresh independent checker and complete transitive axiom audit are NOT_RUN; no receipt. Full prior detached and inherited RH dependencies must be audited. Source scans and finite checks do not constitute kernel acceptance. Runners and execution receipts belong outside math. Preserve upstream authorship/licenses; no historical influence is inferred from a mathematical match.
