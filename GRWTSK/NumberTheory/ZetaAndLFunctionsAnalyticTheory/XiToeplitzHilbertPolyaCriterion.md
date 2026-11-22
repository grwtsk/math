# Exact coefficient-to-Hilbert–Pólya theorem for the true Riemann Xi function

**Mathematical consumer:** [prime-only Jacobi and independent Hilbert–Pólya #1849](https://github.com/grwtsk/math/issues/1849), [Fredholm divisor #124](https://github.com/grwtsk/math/issues/124), [native Gm #1850](https://github.com/grwtsk/math/issues/1850), [RH/GRH blueprint #1828](https://github.com/grwtsk/math/issues/1828). **Maintained Lean SOURCE_PROOF_CANDIDATE:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean). This work does not import or consume Alpöge's final RH theorem. No unconditional independent RH proof is claimed.

**Exact root source:** grwtsk/math@0993601d4adb415cba783190e8e0779b89a05786, Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The original source completed zeta is Mathlib.NumberTheory.LSeries.RiemannZeta.completedRiemannZeta₀, whose functional equation is completedRiemannZeta₀_one_sub. Original arithmetic Jacobi source [PrimeKnotJacobiArithmetic.lean](../../Combinatorics/GraphTheory/PrimeKnotJacobiArithmetic.lean), Git blob 2759dc76c224e3214e8a1c8d9abd054f37edacab. Previous [Hilbert–Pólya faithfulness audit](../../Combinatorics/GraphTheory/PrimeJacobiHilbertPolyaFaithfulComparison.md), Git blob 966f9345bed1b4fef7b754490a00a04dafb6f9ab. The original Alpöge interim CoreGm is tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean Git blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d. The source's FINAL Main.riemannHypothesis is not a premise here.

**Primary mathematical reference:** Konstanze Rietsch, [Totally Positive Toeplitz Matrices: Classical and Modern](https://doi.org/10.1137/25M1806727), Proceedings ICM 2026, Vol. 3, pp. 229–249, Theorem 1.1, states the exact Edrei/Schoenberg classification of normalized totally nonnegative infinite upper Toeplitz matrices. The ICM article also explains Schur-function and representation-theoretic positivity. Original theorem lineage: Aissen–Schoenberg–Whitney (finite sequences), Edrei (1952, infinite sequences). For the xi entire-function order and Hadamard product see [standard zeta entire-function analysis](https://openmaths.org/courses/NT-ZETA/NT-ZETA-05.html). Those are classical RESULTS, not results invented by this project.

## 1. Actual analytic source and coefficient square array

Use the precise completed Riemann xi function

\[
\xi(s)=\frac{s(s-1)}2\pi^{-s/2}\Gamma(s/2)\zeta(s),\qquad
\Xi(z)=\xi\left(\frac12+iz\right).
\]

The Mathlib entire version used in the Lean source avoids both pole divisions:
\[
\xi(s)=\frac{1+s(s-1)\,\mathrm{completedRiemannZeta}_0(s)}2.
\tag{1}
\]
For s outside {0,1}, Mathlib's completedRiemannZeta_eq establishes (1) by algebra; since both sides are entire, the equality is valid at 0 and 1 by continuation. Mathlib's completedRiemannZeta₀_one_sub proves \(\xi(1-s)=\xi(s)\). Therefore
\[
G(t):=\frac{\xi(1/2+t)}{\xi(1/2)}=\sum_{n=0}^\infty a_n t^{2n},
\quad
a_n=\frac{\xi^{(2n)}(1/2)}{(2n)!\,\xi(1/2)},
\qquad a_0=1.
\tag{2}
\]
The source \(\xi(1/2)\) is **nonzero**, unconditionally: the known sign \(\zeta(1/2)<0\), and all factors in the exact definition give \(\xi(1/2)>0\). Numerically it is about 0.4971207781883141, but the inequality is mathematical, not inferred from that decimal.

Because \(\xi\) is entire of order one AND even about 1/2, the unique square-variable function
\[
F(w)=\sum_{n=0}^\infty a_n w^n
=\xi(1/2+\sqrt w)/\xi(1/2)
\tag{3}
\]
is single-valued entire of order **one-half**. The square-root notation in (3) means the even power series; no branch or zero ordinate is chosen. The actual xi function in height coordinates satisfies
\[
\boxed{\Xi(z)/\Xi(0)=F(-z^2).}
\tag{4}
\]

Now define the exact integer-indexed *upper Toeplitz coefficient square array*:
\[
T_{ij}=\begin{cases}a_{j-i},&j\ge i,\\0,&j<i.\end{cases}
\quad i,j\in\mathbb N.
\tag{5}
\]
A genuine all-minor Pólya-frequency (PF∞) certificate asserts:
\[
\boxed{
\det(T_{r_i,c_j})_{i,j=1}^k\ge0
\quad \forall k\ge1,\quad
r_1<\cdots<r_k,\quad c_1<\cdots<c_k.}
\tag{PF-XI}
\]
**Crucial:** leading principal minors are all exactly one (T is upper unitriangular). Checking only those is VACUOUS. Shifted, nonprincipal and arbitrary-index minors are indispensable, at every rank.

## 2. Complete conditional Hilbert–Pólya equivalence (primary analytical proof)

**Theorem (Xi–PF∞–positive trace-class Hilbert–Pólya).**
The following statements for the *actual* xi are equivalent:

(A) Every finite Toeplitz minor (PF-XI) is nonnegative.

(B) There exists a nonnegative summable sequence \((\lambda_j)\) such that
\[
F(w)=\prod_{j\ge1}(1+\lambda_jw)
\]
with normal convergence on every compact subset of \(\mathbb C\). The nonzero eigenfactor sequence, including repetitions, is unique as a multiset.

(C) On a positive-sector Hilbert space \(\mathcal H_+\) there is a positive self-adjoint invertible operator \(H_+\) whose inverse square \(K=H_+^{-2}\) is positive trace class, such that
\[
\boxed{\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2 K)}
\quad\forall z\in\mathbb C.
\tag{HP-EXACT}
\]

(D) The actual Riemann hypothesis holds: all zeros of \(\Xi(z)\) are real, counted with their analytic multiplicity.

**Proof A⇒B.** Apply the precise Edrei theorem (Rietsch 2026, Thm. 1.1) to the normalized PF∞ coefficient sequence. It gives
\[
F(w)=e^{\gamma w}\prod_i\frac{1+\beta_i w}{1-\alpha_i w},
\quad \gamma,\alpha_i,\beta_i\ge0,\ 
\sum_i(\alpha_i+\beta_i)<\infty.
\]
F is entire, and numerator zeros lie on the *negative* real axis while denominator poles lie on the *positive* real axis. Hence all nonzero denominator parameters must vanish: \(\alpha_i=0\). Because F has order 1/2, its growth on w>0 cannot dominate \(e^{\gamma w}\) for any γ>0; thus \(\gamma=0\). The resulting \(\lambda_i=\beta_i\ge0\) are summable, and (B) follows. No RH theorem was used.

**Proof B⇒C.** Discard zero λ values (they contribute factors 1). On \(\mathcal H_+=\ell^2(\{j:\lambda_j>0\})\), define \(K e_j=\lambda_j e_j\); it is compact, positive and trace class with
\[
\mathrm{Tr}(K)=\sum_j\lambda_j=a_1<\infty.
\]
Define \(H_+ e_j=\lambda_j^{-1/2}e_j\) on the maximal domain
\[
\mathcal D(H_+)=\{u:\sum_j|u_j|^2/\lambda_j<\infty\}.
\]
This positive diagonal operator is self-adjoint, is bounded below by \(1/\sqrt{\sum\lambda_j}>0\), and has \(H_+^{-2}=K\). Its Fredholm determinant is the normally convergent product:
\[
\det_{\rm Fr}(I-z^2K)=\prod_j(1-\lambda_jz^2)=F(-z^2)=\Xi(z)/\Xi(0).
\]
Thus (C), with **E(z)=1**, is established. The multiplicity of a zero z=±1/√λ is its repeated-eigenfactor multiplicity; no zero divisor or spectral data were supplied to construct K.

**Proof C⇒D.** The spectral theorem makes every nonzero eigenvalue λ of positive K strictly positive. A zero of det(I−z²K) requires \(z^2=1/\lambda>0\), forcing z∈ℝ. The exact nonvanishing prefactor \(\Xi(0)\) and entire source identity therefore force EVERY actual nontrivial zeta zero onto the critical line, with no lost analytic multiplicities.

**Proof D⇒B.** Under RH, zeros of the even \(\Xi\) occur as real ±γ (with multiplicity). As \(\Xi(0)\ne0\), none is γ=0. The entire function F(w) of order 1/2 has only negative zeros \(w=-\gamma^2\). Its genus-zero Hadamard factorization has no positive-order exponential and converges normally:
\[
F(w)=\prod_{j\ge1}(1+w/\gamma_j^2).
\]
The exponent of convergence implies \(\sum_j\gamma_j^{-2}<\infty\), so take \(\lambda_j=\gamma_j^{-2}\). **This direction uses RH only to establish equivalence, and is NOT used to prove A or to construct a purported new independent RH proof.** The direct source-zero construction is prohibited as evidence for the independent direction.

**Proof B⇒A.** Each factor \((1+\lambda w)\) has a totally nonnegative bidiagonal Toeplitz array; matrix multiplication/convolution and locally bounded finite factor limits preserve every finite minor's nonnegativity. This is also the reverse direction of Edrei. QED.

**Fidelity:** This realizes the *actual* completed xi, not an auxiliary substitute. It has exact entire equality, compact-resolvent positive H, the inverse-square trace ideal, no spurious exponential prefactor, all zero heights and all analytic multiplicities. Its only missing independent input is (PF-XI), which is EQUALLY STRONG AS RH. The equivalence itself is complete classical mathematical reasoning, NOT an unconditional independent solution.

## 3. Trace identities, moment square arrays and a possible constructive Jacobi connection

If PF-XI is proved independently, its positive trace class K has
\[
\frac{F'(w)}{F(w)}
=\operatorname{Tr}(K(I+wK)^{-1})
=\sum_{m\ge0}(-w)^m\,\operatorname{Tr}(K^{m+1})
\quad(|w|<\|K\|^{-1}).
\tag{6}
\]
Thus its Newton trace moments are determined by the **true source coefficients**:
\[
\operatorname{Tr}K=a_1,\quad
\operatorname{Tr}K^2=a_1^2-2a_2,\quad
\operatorname{Tr}K^3=a_1^3-3a_1a_2+3a_3.
\tag{7}
\]
These moments yield a positive Hankel square array:
\[
S_{ij}=\operatorname{Tr}K^{i+j+1}
=\sum_r\lambda_r^{i+j+1}\ge0\text{ as a quadratic form}.
\tag{8}
\]
But a generic positive Hankel moment array does NOT prove PF-XI. It may come from a continuous measure and does not automatically carry integer eigenvalue multiplicities. A Stieltjes-Jacobi realization from these moments must separately preserve the **weights and multiplicity count**: collapsing equal eigenvalues into one moment-measure atom without recording weight/λ loses multiplicity. The direct Edrei diagonal construction avoids that failure.

The source original arithmetic prime-Jacobi root moments are NOT the same:
\[
\langle e_0,J_Ne_0\rangle=0
\quad\text{for every zero-diagonal source section},
\]
whereas the candidate \(\operatorname{Tr}K=a_1\approx0.023104993115419>0\). There can be no identity of those two raw sequences. One must exhibit and verify an **explicit nontrivial arithmetic transform** from the original prime knot/moment data to (2), with all infinite prime powers, gamma, pole, conductor, character and tail corrections. This is the missing prime-built bridge, and finite prime reconstruction does not supply it.

The previous source obstruction also holds: every odd-dimensional real prime-Jacobi characteristic polynomial has a forced zero at z=0, unlike Xi(0)>0. Full unmodified odd-section determinant limits cannot be Xi. Even sections or a genuinely new operator still need an independently proved determinant identity.

## 3A. Theta-kernel and existing 2026 Xi positivity literature

The original completed xi admits Riemann's positive Fourier-cosine kernel representation. In the standard normalized cosh-coordinate presentation, after dividing by \(\Xi(0)\),

\[
F(w)=\frac{\int_0^\infty \Phi(u)\cosh(u\sqrt w)\,du}
{\int_0^\infty\Phi(u)\,du},\quad
a_n=\frac{\int_0^\infty\Phi(u)u^{2n}\,du}
{(2n)!\int_0^\infty\Phi(u)\,du}.
\]

For the explicit positive theta-derived kernel, see E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, §3.12, or the review in Suvrit Sra (2026) below. This is an **independently sourced representation**, not a fitted Hilbert-space formula. It proves \(a_n\ge0\), and the RAW even moments \((2n)!\,a_n\) form a positive Hankel moment array. It does **not** prove that the normalized \(a_n\) form a PF∞ Toeplitz array. The hostile positive-measure example in §4 has exactly this type of cosh transform but a negative 3×3 Toeplitz minor.

Relevant dated prior art: Suvrit Sra, *On some positivity properties of the Riemann Xi function*, v3 released **2 November 2026**, [arXiv:2611.02944](https://arxiv.org/abs/2611.02944) / [author source](https://suvrit.github.io/papers/riem-xi/). This establishes PF2/log-concavity and a very large but **finite** PF order for two positive densities whose Laplace transforms are reciprocal Xi variants; it also surveys **PF∞ equivalences to RH** through earlier Schoenberg, Roynette–Yor and Gröchenig results. The paper's reciprocal-density sequence is NOT our direct original even-Taylor coefficient sequence; their finite-order positivity does not immediately imply (PF-XI). Neither finite PF positivity nor theta-kernel log-concavity is an all-order Hilbert–Pólya determinant theorem. The PF∞/Laguerre–Pólya equivalence is prior classical mathematics; this source-specific operator construction is not asserted to be a globally novel RH equivalence.

The ICM 2026 [Rietsch survey](https://doi.org/10.1137/25M1806727), Theorems 1.1 and 1.3, connects Toeplitz PF∞ minors to Schur and representation-theoretic positivity. This offers a legitimate *alternative expression* of the universal proof supplier: positivity of all ordinary Schur evaluations at the xi elementary-coefficient specialization, because skew Schur minors are nonnegative Littlewood–Richardson combinations. The geometric Langlands papers do **not** prove these evaluations positive without an exact source-defined specialization or functor. Merely naming a Schubert-positive cone is not an arithmetic return.

## 4. Concrete hostile counterexamples against false positivity and false determinant approximations

**Ordinary positive coefficients are insufficient.**
\(1+w+w^2\) has every coefficient nonnegative, but the shifted 3×3 Toeplitz minor with rows (0,1,2) and columns (1,2,3) equals −1. Its zeros are nonreal.

**Positive Fourier/kernel moments are insufficient.**
The positive measure \(\mu=\tfrac34\delta_0+\tfrac14\delta_1\) has a positive cosh transform
\[
F_\mu(w)=\tfrac34+\tfrac14\cosh\sqrt w
=1+\sum_{n\ge1}\frac{w^n}{4(2n)!}.
\]
Every even-derivative moment is positive, and the associated Hankel form is nonnegative, but the SAME shifted 3×3 Toeplitz minor is
\[
\boxed{-\frac7{23040}<0.}
\]
Thus theta-kernel positivity, Weil-adjacent positive norms, and a prime-Jacobi Gram certificate do NOT establish PF-XI without an exact source comparison.

**Taylor truncations are not spectral factor truncations.**
The genuine real-rooted polynomial \(F(w)=(1+w)^3\) has only negative roots. Its degree-two Taylor truncation \(1+3w+3w^2\) has discriminant \(9-12=-3\), so its zeros are nonreal. An algorithm that factors successive Taylor truncations and claims finite Hilbert–Pólya spectra is invalid; truncate the Edrei EIGENFACTORS only after those factors are proved.

**Nonvanishing factors are indispensable.**
Multiplying an exact determinant by \(1+z^2\) adds imaginary zeros. An arbitrary entire comparison factor cannot be silently discarded: it must be proved nowhere zero.

## 5. Tested finite source evidence (strictly limited)

An independent exact-rational test used positive eigenfactors \(\lambda=(1/2,1/3,1/5)\). The resulting finite F coefficients are \((1,31/30,1/3,1/30)\). All 8,884 distinct rank≤4 Toeplitz minors with row and column indices from 0..7 were computed with **exact Python fractions** and are nonnegative. The two hostile examples above were detected exactly.

An exploratory independent numerical calculation of the ACTUAL completed xi coefficients used two high-precision Cauchy circles, radius 4/64 nodes and radius 3/96 nodes, using genuine zeta/gamma evaluations. They agreed with relative discrepancy below \(3\cdot10^{-57}\) for coefficients \(a_0,\ldots,a_7\). The same 8,884 low-rank minor positions showed no robustly negative determinant. This is **NOT an interval proof, not a zero-free theorem, and not proof of universal PF-XI**. It cannot certify any arbitrary-rank minor.

The numerical first source coefficients are approximately
\[
a_1=0.0231049931154189708,\qquad
a_2=0.000248334053789144176,\qquad
a_3=0.000001674352627984949861.
\]
These exploratory decimals are not constants hardcoded into the maintained Lean source and do not determine the operator without universal PF positivity.

The executable report is the generated conversation attachment xi_toeplitz_hilbert_polya_checks_2026_11_22.json; this text does NOT claim that a local file is a Lean kernel receipt.

## 6. What the external RH proof may and may not provide

External source **direction only**: Levent Alpöge's exact pinned Main.lean in tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f delegates RH through rhOfAll and allChi, with intermediate original CoreGm, EAtH/CoreAtH and Landau sources. The Lean and Mathlib communities' joint November 21, 2026 [verification statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) reports that the external proof has been verified. This does not supply an independent spectral representation in the new construction: **do not import Main.riemannHypothesis, allChi, everyCharacter, a theorem equivalent to RH, or zero coordinates to prove PF-XI.** The logical implication RH⇒PF-XI above is a comparison, not a source proof acceptable for the user's independent target.

The original geometric Langlands references on functor construction, localization, Eisenstein induction, ambidexterity and multiplicity one provide organizational analogies for an arithmetic-to-spectral functor and trace preservation. They do not imply that (5) is totally nonnegative. Rietsch's ICM 2026 article connects positive Toeplitz minors with Schur functions and quantum Schubert positivity, suggesting a targeted investigation of **all Schur-specialization inequalities** for (2); a geometric positivity theorem does not transfer without an exact evaluation map from the actual Xi coefficients to that geometry.

## 7. Mathematical completion checklist and exact trust boundary

1. Prove source XiTaylorSourceFaithful in pinned Mathlib, including center nonzero, real even Taylor coefficients, actual entire series, and order 1/2. The isolated source defines these properties explicitly but does not supply their Lean proofs yet.
2. Prove **ActualXiToeplitzPositivity** for all ranks and all increasing row/column index arrays by genuine arithmetic, a source-faithful trace/Weil identity, or another fully independent argument. THIS IS RH-EQUIVALENT AND CURRENTLY OPEN AS AN INDEPENDENT PROOF.
3. Formalize the Edrei/PF∞ factorization and its no-exponential/order-1/2 argument in the exact Lean source; build \(K,H_+\) with Hilbert operator domains, trace-class inverse square and Fredholm identity.
4. Verify the original xi determinant's complete zero-divisor/multiplicity equality and no spurious entire prefactors. Construct a genuine prime-to-Xi coefficient transport, not merely a fitted finite spectrum.
5. Connect the complete spectral source to original signed Weil tests and original EAtH/CoreAtH/Level.Gm with explicit gamma, pole, conductor, parity, ramification, and prime-power terms. Do not turn a positive Gram or heat norm into signed Weil positivity without an exact equality.
6. Run pinned Lean 4.34.1 elaboration, transitive axiom audit, fresh kernel replay; retain provenance per source revision. None was run in this session. Existing external verification is not a local kernel receipt.

**Disposition:** The exact conditional Hilbert–Pólya realization theorem, uniqueness of its positive-sector spectrum, trace-class normalization and full square-array PF∞ criterion are mathematically established by combining genuine xi source properties with Edrei's theorem. An unconditional independent operator realization is NOT established, because all-index Toeplitz total nonnegativity is precisely the remaining RH-strength supplier. No worldwide theorem novelty is claimed for this classical equivalence; the source-specific coefficient-gate implementation and hostile falsifiers are project contributions.
