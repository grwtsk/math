# RH-independent certificates for the actual native Level.Gm analytic constant

**Maintained candidate:** [LogDerivativeCertificate.lean](LogDerivativeCertificate.lean), in the isolated original Alpöge v4.33.1 environment (Mathlib 0df444a360eaa60ab8c11dca51a86af692955474), mathematical consumer math #1850.

**Pinned original sources:** An.logDerivativeAtOne in tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f / Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean, blob 599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1; Level.Nt, Level.wt and Gm in ExplicitFormulaErrorOfHostConditions.lean, blob ed60b4b997cd4703713660b185b9e43fd95559a1.

**Original Mathlib results, not new conjectures:** Mathlib/NumberTheory/LSeries/Nonvanishing.lean at pinned original Mathlib, blob 610bd56365d49c5ffa9ebeb29e0a383c768248e2, theorem DirichletCharacter.LFunction_apply_one_ne_zero for every nonprincipal character (independent of RH). Mathlib/NumberTheory/LSeries/DirichletContinuation.lean blob 9ccc38f52d669a88285a904e59dbb562ade5aba5 supplies LFunction_eq_LSeries on Re(s)>1 and differentiability of the nonprincipal continuation. Mathlib/NumberTheory/Harmonic/EulerMascheroni.lean blob ae2e78cdaa83d243b0e08171da5ed9aa97d3bb8b gives exact Euler constant lower/upper sequences.

## Theorem A: finite q-period character-sum tail certificates

Let χ be any genuine nonprincipal Dirichlet character modulo q≥2, and let N=mq≥3. Define the true finite complex character sums
\[
S_N=\sum_{1\le n\le N}\frac{\chi(n)}n,\qquad
T_N=-\sum_{1\le n\le N}\frac{\chi(n)\log n}{n}.
\]
Nonprincipal character orthogonality gives a zero mean on each q-period. Since \(|\chi(n)|\le1\), every incomplete q-block has partial sum of norm at most q.

**Finite proof, before taking any limit.** Let \(f:\{N,N+1,\ldots\}\to[0,\infty)\) be decreasing to 0. For each complete q-block, insert the zero constant term \(f((j+1)q)\sum_{a=1}^q\chi(a)\) and bound the difference by triangle inequality. Since f decreases:
\[
\left|\sum_{a=1}^q\chi(a)f(jq+a)\right|
\le\sum_{a=1}^q (f(jq+a)-f((j+1)q))
\le q(f(jq)-f((j+1)q)).
\]
Summing the blocks telescopes, giving
\[
\left|\sum_{n>N}\chi(n) f(n)\right|\le q f(N).
\]
This bound is **absolute for the whole signed/complex tail**, and does not require absolute convergence of the individual Dirichlet series. Apply it first to f(t)=1/t, and next to f(t)=log(t)/t, which is positive and decreasing on t≥N≥3.

A standard uniform-Dirichlet-test argument on compact subsets of Re(s)>0 identifies these convergent sums and their differentiated series at s=1 with the **actual analytically continued** LFunction χ and its derivative. The pinned Mathlib continuation identifies them on Re(s)>1; uniqueness extends the equality across the common nonprincipal domain. It follows unconditionally that
\[
\boxed{|L(1,\chi)-S_N|\le q/N,\qquad
|L'(1,\chi)-T_N|\le q\log N/N.}\tag{A}
\]
This mathematical argument is complete at the level of classical analytic number theory; the periodic Abel summation, termwise differentiation in the continued domain and their *Lean kernel implementation* remain explicitly **NOT_RUN**.

## Theorem B: certified L'/L(1,chi) from real/complex rational intervals

Let \(R=q/N\). Replace each genuine log(n) in the derivative partial sum by a rational, rigorously enclosed approximation, obtaining a complex center \(\widetilde T_N\) with weighted finite error \(\epsilon_N\). The adaptive dyadic source gives
\[
\epsilon_N\le\sum_{n=1}^N
\frac{|\chi(n)|(\operatorname{logScale}(n)+1)}{n\,2^b}.
\]
Define \(R'=q\log N/N+\epsilon_N\), bounding log N itself by a rational upper enclosure. Then the true pair satisfies the two complex disk hypotheses
\[
|L(1,\chi)-S_N|\le R,\qquad
|L'(1,\chi)-\widetilde T_N|\le R'.
\]

Set \(d=|S_N|-R\). If \(d>0\), the reverse triangle inequality gives \(|L(1,\chi)|\ge d>0\), and consequently the **actual** source logarithmic derivative obeys
\[
\boxed{\left|\frac{L'(1,\chi)}{L(1,\chi)}\right|
\le\frac{|\widetilde T_N|+R'}d.}\tag{B1}
\]
More strongly, with the rational complex ratio center
\(Z_N=\widetilde T_N/S_N\),
\[
\boxed{\left|\frac{L'(1,\chi)}{L(1,\chi)}-Z_N\right|
\le \frac{R'}d+
  \frac{|\widetilde T_N|R}{d|S_N|}.}\tag{B2}
\]
Proof: write the difference as \((L'-\widetilde T_N)/L+
\widetilde T_N(S_N-L)/(LS_N)\); bound each term using the disk inequalities and the positive denominator lower bound. No assumed Riemann hypothesis appears.

The candidate LogDerivativeCertificate.lean contains original nonprincipal L1 nonvanishing, denominator stability, actual-ratio upper bounds, and full Level analytic-constant center/radius transport. The classical tail bounds (A) and the strengthened ratio-center bound (B2) are mathematically proved in this Markdown record, but still require a separate source-bound Lean port.

## Theorem C: original A_Level enclosure, without a synthetic character family

For the original native Level and its actual, possibly exceptional weights,
\[
A_\Lambda=1+\gamma_E+\sum_{\psi\in\Lambda.Nt}
\Lambda.wt(\psi)\operatorname{Re}\frac{L'(1,\psi.\chi)}{L(1,\psi.\chi)}.
\]
Let a rational γ-center with error ε_gamma and a genuine ratio center z_ψ with error ε_ψ be certified as above for every ψ∈Λ.Nt. Then
\[
\boxed{
\left|A_\Lambda-
 \left(1+\gamma_{\rm ctr}+\sum_{\psi\in\Lambda.Nt}
   \Lambda.wt(\psi)\operatorname{Re}z_\psi\right)\right|
\le
 \epsilon_\gamma+\sum_{\psi\in\Lambda.Nt}
   |\Lambda.wt(\psi)|\epsilon_\psi.}\tag{C}
\]
The proof is the finite triangle inequality; the signed weights and full complex characters are **not** replaced with absolute values until the final error bound.

Mathlib provides the unconditional exact Euler interval
\[
H_M-\log(M+1)<\gamma_E<H_M-\log M.
\]
Both endpoint logs can be enclosed by the original rational dyadic series. At M=256 this gives the exact-rational bounds approximately
0.5752688779220593 < γ_E < 0.5791675183377291.

### Independently checked examples, not a realized native Level

The exact-Fraction source checker [verify_native_gm_log_derivative_certificates.py](../../../../scripts/verify_native_gm_log_derivative_certificates.py) uses the true quadratic character modulo 4 and true order-four character modulo 5, complete conductor periods N=256 and N=250, and bit precision 28. It asserts zero period means, all disk inequalities, finite rational log errors and strict positive L1 lower bounds. For their *genuine* logarithmic-derivative real parts, conservative certified centers/radii are:
- χ4: 0.260045827316 ± 0.118135327307;
- order-four χ5: 0.174036393228 ± 0.136801828503.

A deliberately illustrative weighted family with weights -1/4 and +1/3 gives Acenter ≈1.57021887238 with radius ≈0.077083761536. **These example weights are not asserted to be the original Level.wt of any realized Level.** For a genuine Level, enumerate its Level.Nt and original Level.wt, then run the same character-specific certificates. Mathlib's preexisting L1 nonvanishing implies a sufficiently long finite certificate *exists* for each fixed nonprincipal character; it does not provide a universal conductor-independent cutoff.

The two characters were additionally compared with high-precision external numerical Hurwitz-zeta/Stieltjes constants solely as a hostile sanity check; those floating values were **not** used to certify any interval.

## Source-specific cyclic-level character-group examples

The original source also defines Level.ofSub and Level.cyc in ExplicitFormulaErrorOfHostConditions.lean. In Level.ofSub, the exceptional marker psK is none and the size parameter o is the group cardinality. Hence original Level.wt gives every nonprincipal character weight 1/(3o+1), without arbitrary user-selected weights.

Two concrete **mathematical cyclic character groups** have finite rational certificates:

- The primitive quadratic character modulo 4 has order 2. Its cyclic character group contains exactly the trivial character and χ4, so o=2 and original nonprincipal weight **1/7**. Its \(A_\Lambda\) arithmetic constant is enclosed by \(1.614367602032\pm0.018825795537\).
- A primitive order-four character modulo 5 defined on units by χ5(2)=i, χ5(3)=−i and χ5(4)=−1 has cyclic group \(\{1,\chi_5,\chi_5^2,\chi_5^3\}\), so o=4. Its three nonprincipal weights are all **1/13**. The inverse/conjugate pair has the same real logarithmic derivative. Its source constant is enclosed by \(1.667666797998\pm0.046796870650\).

The character tables, group multiplication, order, all complex rational partial sums, derivative-log interval budgets, and original weight formulas are tested by [verify_native_gm_cyclic_level_certificates.py](../../../../scripts/verify_native_gm_cyclic_level_certificates.py), source blob 4e3258d518ed11f12a9dbd04d2d51af81fba96c5. Its exact rational JSON result is available as a generated conversation attachment, not as a committed mathematical source fixture.

**Formal matching obligation:** in the pinned original Lean environment, prove those tables correspond to genuine primitive DirichletCharacter objects, their PChar.of images form the asserted Level.cyc.KEPT/Nt, the original Nat.card equals 2 or 4, and Level.wt is 1/7 or 1/13. These follow mathematically from the source definitions and exact tables, but the typed Lean realization is **NOT_RUN**.

The interval bounds concern **only** the affine analytic constant \(A_\Lambda\). They are not one-sided \(G_m(n)\) estimates and do not establish EAtH, CoreAtH, LandauWin or RH.

## Important obstruction and trust boundary

The native EAtH.bdL field bounds the logarithmic derivative of characters in H.Bounded(Level.KEPT), **not automatically all** characters in Level.Nt. Therefore EAtH alone cannot be used to fabricate an A_Level interval without a separate character-family inclusion theorem. The per-character finite certificates above avoid that unjustified inference.

A fixed analytic-constant uncertainty radius ε_A contributes x ε_A to the actual Gm(x) error. No fixed positive ε_A can, by absolute-error budgeting alone, certify a sublinear x^θ inequality for all x when θ<1. Its precision must improve with x, or the final inequality must come from a genuine analytic cancellation supplier.

**Lean verification:** all newly authored isolated source proof bodies and their dependencies are **NOT_RUN** for elaboration, fresh kernel and transitive axiom audit in the user's original v4.33.1 environment. The math of periodic cancellation and the finite certificate is independent of Alpöge's final RH/GRH result. Novelty is not claimed for Dirichlet's classical test or Abel summation; the source-specific machine-checkable interval interface is the maintained contribution.
