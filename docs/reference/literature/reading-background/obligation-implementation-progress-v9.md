# Finite meromorphic detector and actual completed-zeta poles

New Lean source commit `e48c99296284ec19fb9de21a51add741f0399bee`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Fourteen new theorems. Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations. All seven manuscript-level claims remain open.** These strengthen B3 and E5 with signed meromorphic order and an assistant-proposed actual Riemann completion-pole specialization. No high-rank source identity or manuscript-scope discharge is claimed.

[Structured record](obligation-implementation-progress-v9.json) retains all 36 original specifications, dependencies, acceptance checks, bibliographic fields, exact page anchors and hashes, and complete earlier states. [Previous pass](obligation-implementation-progress-v8.md) remains historical.

Verification: the exact two-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All fourteen `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact lists are recorded. Logs remain outside Git under `MathematicsLibrary/.catalog/obligation-bridges-v9`. This is local Lean verification, not separate whole-environment kernel replay.

Imported suppliers: Mathlib meromorphic factorization/order APIs and the completedRiemannZeta identity with entire completedRiemannZeta₀. Exact upstream source bindings and direct maintained logarithmic-principal-part dependencies are separate in JSON; upstream attribution is retained.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Added actual Riemann completion-pole comparisons: explicit analytic units and local factorizations at 0 and 1, signed meromorphic order -1 and scaled negative-logarithmic coefficient +1. Finite meromorphic-order extraction handles poles without a supplied local unit. No exceptional automorphic transfer, all-factor divisor comparison or target critical-line supplier is constructed. These coefficients concern -logDeriv Lambda, not residues of Lambda itself; the distinct PDF versions stay separate.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_order_of_local_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L11); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L21); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L28); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_nonzero_order_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L36); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.zeroPoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L23); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.onePoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L30); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L38); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L52); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L66); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L73); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L80); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L88); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L96); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L103); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Added actual Riemann completion-pole comparisons: explicit analytic units and local factorizations at 0 and 1, signed meromorphic order -1 and scaled negative-logarithmic coefficient +1. Finite meromorphic-order extraction handles poles without a supplied local unit. No exceptional automorphic transfer, all-factor divisor comparison or target critical-line supplier is constructed. These coefficients concern -logDeriv Lambda, not residues of Lambda itself; the distinct PDF versions stay separate.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_order_of_local_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L11); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L21); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L28); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_nonzero_order_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L36); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.zeroPoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L23); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.onePoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L30); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L38); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L52); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L66); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L73); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L80); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L88); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L96); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L103); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K2 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K2 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** Extended the detector to finite meromorphic germs with signed integer orders. An actual analytic-unit factorization constructs meromorphy and its exact order. For actual completedRiemannZeta, constructed local units at 0 and 1 with values -1 and +1; proved order -1 at both poles, scaled negative-logarithmic coefficient +1, and no continuous logDeriv extension. This is an assistant-proposed Riemann specialization. The manuscript high-rank source and geometric realization remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_order_of_local_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L11); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L21); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_finite_order_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L28); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.meromorphic_nonzero_order_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/Analysis/Complex/MeromorphicLogOrderDetector.lean#L36); blob `6ed0ce7f5d50ba293adeb6239e098d63cc1b4ae4`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.zeroPoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L23); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.onePoleUnit_analytic_value`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L30); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L38); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_factorization`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L52); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L66); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_meromorphic_order`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L73); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L80); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_scaled_coefficient`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L88); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_zero_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L96); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector.completed_one_pole_no_continuous_extension`](https://github.com/grwtsk/math/blob/e48c99296284ec19fb9de21a51add741f0399bee/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L103); blob `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.

**Other obligations retained:** B1 — unresolved; B2 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S3 — kernel-verified-correction-fragment; S4 — kernel-verified-conditional-fragment; S5 — kernel-verified-conditional-fragment; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); original blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact hypotheses and remaining boundaries

**Finite meromorphic detector:** MeromorphicAt f a and meromorphicOrderAt f a≠∞ supply a nonvanishing analytic unit with exponent (meromorphicOrderAt f a).untop₀. The coefficient of scaled -logDeriv is the negative signed order. Nonzero order excludes a continuous logDeriv extension. Infinite order is excluded before integer conversion. Conversely an actual analytic-unit integer-power factorization constructs meromorphy and that exact order.

**Actual pole units:** writing Lambda for completedRiemannZeta and Lambda0 for completedRiemannZeta₀, use u0(s)=s Lambda0(s)-1-s/(1-s), with u0(0)=-1, and u1(s)=(s-1)Lambda0(s)-(s-1)/s+1, with u1(1)=1. These are analytic at their respective centers. The source identity gives Lambda=s^-1 u0 and Lambda=(s-1)^-1 u1 on punctured neighborhoods avoiding the other pole. Signed meromorphic order is -1 at both centers. Assigned totalized center values are irrelevant.

**Signs:** s(-logDeriv Lambda(s)) tends to +1 at 0; (s-1)(-logDeriv Lambda(s)) tends to +1 at 1. Neither logarithmic derivative admits a continuous extension there. These are scaled logarithmic coefficients, not residues of Lambda itself; the unit values -1 and +1 do not change the shared order -1. No global contour identity or infinite residue sum is asserted.

**Manuscript scope:** actual Riemann poles complement the earlier canonical nontrivial-zero detector. They do not identify the boundary outline or exceptional-group versions with an actual high-rank completed source. Automorphic transfers, all extra-factor divisors, geometric zero-to-class and vanishing suppliers remain missing. All seventeen unresolved specifications stay unchanged and version-bound. No historical influence, understanding date or new reading event is inferred.
