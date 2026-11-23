# The exact inertial Fourier projector in Alpöge's arithmetic prime source

**Attribution:** grwtsk contributors. **Disposition:** complete elementary finite-group/analytic local-factor derivation, with actual Lean *candidate* lemmas and an exact executable finite model. This is a component of the source arithmetic, **not** an independent proof of inequality (M), RH, or positive Hilbert–Pólya. **Local source HEAD inspected:** grwtsk/math@35586812480e9b02f280ea54f9611fa485446503, root Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. **Lean status:** elaboration NOT_RUN, kernel replay NOT_RUN, transitive axiom audit NOT_RUN. Independent mathematical review NOT_RUN.

**Actual local consumers:** [math #1850](https://github.com/grwtsk/math/issues/1850) (independent Alpöge arithmetic), [math #1819](https://github.com/grwtsk/math/issues/1819) (complete signed Weil prime window), [math #124](https://github.com/grwtsk/math/issues/124) and [math #1849](https://github.com/grwtsk/math/issues/1849) (exact original-Xi Hilbert–Pólya target). Related local source [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md) (four signed prime-cell terms and error normalization), [AlpogeWindowSourceTransport.md](AlpogeWindowSourceTransport.md), [AlpogeXiSmoothedTrace.md](AlpogeXiSmoothedTrace.md) (signed original prime/gamma/pole resolvent), [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) and [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) (coefficient-defined positive-operator criterion and **unconditionally non-self-adjoint** exact Fredholm linearization).

**Primary external source used for direction, not as a proof premise:** Levent Alpöge, *A remark*, 20 November 2026, https://alpo.ge/remark.pdf, and its pinned Lean archive mirrored at [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005), particularly:
- \`src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean\`, **blob 18deb7cb85d6f650a69f01fda6e0c789b9f04d89**, declarations \`ArithData\`, \`HostFacts\`, \`cosetMean\`, \`primVal\`, \`GPsi\`, \`AskMainBalance\`, \`PrimValPow\`, \`OrthoUnram\`. These are the original finite-group, conductor, and signed-cell objects.
- \`src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean\`, **blob 0ba3621036f19146e7e67fa9c0e8a1c38661a097**, \`HostAddCharCompatible\` and complete \`CoreAtH\` source assumptions.
- \`src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean\`, **blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d**, \`core_gm\` requiring \`EAtH\` and \`CoreAtH\`; the final all-character/RH theorem is **not imported**.
- **Exact pinned Mathlib lemma** \`AddChar.sum_apply_eq_ite\`, \`Mathlib/Analysis/Fourier/FiniteAbelian/PontryaginDuality.lean\`, **blob 58bd84ccac8ac366e0c35745471db38ea7474381**, from the root Mathlib revision above.

**Independent mathematical comparisons:** Robin Zhang, *A Preliminary Note on Alpöge's Proposed Proof of the Generalized Riemann Hypothesis*, arXiv:2611.08092v2, Section 3.1 Eq. (3.1), https://hexagonmath.org/pdf/2611.00809v1; and Siniša Slijepčević, *Outline of Alpöge's proof of the generalised Riemann hypothesis*, 21 November 2026, Sections 3–4 and 6, https://hexagonmath.org/pdf/2611.00812. Both are expositions, not independent full checks of the deep (M) suppliers.

## 1. Source-local inertia and Frobenius: the complete finite theorem

Let \(\Gamma\) be a **finite abelian group**, written additively, \(I_p\le\Gamma\) the actual inertia subgroup of a chosen abelian Galois extension at \(p\), and \(F_p\in\Gamma\) a Frobenius lift. Let \(\chi\in\widehat\Gamma\) be a complex character. For each \(j\ge1\), define the **original inertia-coset mean**
\[
a_\chi(p^j)=\frac{1}{|I_p|}
  \sum_{h\in I_p}\chi(jF_p+h). \tag{1}
\]
A finite-group character always takes values of unit modulus. It follows directly from \(\chi(jF_p+h)=\chi(jF_p)\chi(h)\) that
\[
a_\chi(p^j)=\chi(jF_p)\frac1{|I_p|}\sum_{h\in I_p}\chi(h).
\]
If \(\chi|_{I_p}=1\), each summand is one. If not, choose \(h_0\in I_p\) with \(\chi(h_0)\ne1\). Translation \(h\mapsto h+h_0\) permutes \(I_p\), so the sum \(S=\sum_{h\in I_p}\chi(h)\) obeys \(S=\chi(h_0)S\), hence \(S=0\). Therefore
\[
\boxed{a_\chi(p^j)=
  \begin{cases}
   \chi(F_p)^j&\text{if }\chi|_{I_p}=1,\\
   0&\text{otherwise}.
  \end{cases}}\tag{2}
\]
No positivity axiom, RH, ideal-lattice hypothesis, or conjectural Euler factor is used. Equation (2) proves \(|a_\chi(p^j)|\le1\) and, with \(a_\chi(1):=1\), multiplicativity of the **abstract source coefficient** obtained by multiplying these prime-power factors.

In the actual Lean source \`primVal D ψ n\` is explicitly the product of \`cosetMean (D.inertia p) (n.factorization p • D.frob p) ψ\` over all prime factors. Equation (2) explains the **full ramified/unramified distinction** of that definition. In particular, at a ramified prime \(p\), \(\chi|_{I_p}\not=1\) gives local coefficients ZERO, not an accidentally retained Euler factor. The source's \`HostFacts\` explicitly distinguishes exceptional \(2,q,d\) from other unramified primes, and gives a two-element inertia subgroup at \(d\). Those conditions are NOT discharged by this abstract finite-group lemma.

## 2. Exact Fourier inversion and its normalization

For \(x=jF_p\), \(g\in\Gamma\), use the orthogonality identity in the pinned Mathlib source,
\[
\sum_{\chi\in\widehat\Gamma}\chi(y)
=|\Gamma|\,\mathbf1_{\{y=0\}}.
\]
Since \(\overline{\chi(g)}=\chi(-g)\), finite interchange yields
\[
\begin{aligned}
\sum_{\chi\in\widehat\Gamma}
   \overline{\chi(g)} a_\chi(p^j)
&=\frac1{|I_p|}\sum_{h\in I_p}
  \sum_{\chi\in\widehat\Gamma}\chi(x+h-g)\\
&=\frac{|\Gamma|}{|I_p|}
   \#\{h\in I_p:x+h=g\}\\
&=\frac{|\Gamma|}{|I_p|}
  \mathbf1_{\{g-x\in I_p\}}.
\end{aligned}\tag{3}
\]
The second equality counts **one** inertia element if \(g-x\in I_p\), zero otherwise. Thus the fully normalized inversion is
\[
\boxed{
\frac1{|\Gamma|}\sum_{\chi\in\widehat\Gamma}
   \overline{\chi(g)} a_\chi(p^j)
=\frac1{|I_p|}\mathbf1_{\{g-jF_p\in I_p\}}.}\tag{4}
\]
This is the exact complex inverse character readout at every prime, including its sign/phase. Where the original argument normalizes by \(f=|\Gamma|/2\) rather than \(|\Gamma|\), its right side is instead \(2|I_p|^{-1}\mathbf1_{\{\cdots\}}\), exactly the factor in Zhang's Eq. (3.1). The cardinalities/normalizations must be checked in the **actual** \(\Gamma=E_0\times H\) and \(\Phi\)-cell source before importing (4) into \`AskMainBalance\`.

The adjacent \`AlpogeInertiaFourier.lean\` defines the genuine finite-group \`inertiaCosetMean\` and proves **source proof candidates** for the character twist and the unnormalized \(\sum_{\chi,h}\) identity via the actual pinned \`AddChar.sum_apply_eq_ite\`. The full division, the \(\Phi\) normalization, and the source-specific \`OrthoUnram\` transport are **not** established by a checked local Lean declaration in this iteration.

## 3. Local factors and absolute source Euler control

Let \(b_{\chi,p}:=a_\chi(p)\). Equation (2) gives, for **every** \(j\ge1\), \(a_\chi(p^j)=b_{\chi,p}^j\), since the coefficient is either a root of unity raised to \(j\) or zero. For \(\operatorname{Re}s>0\), the individual local Euler factor is the absolutely convergent geometric series
\[
\boxed{
\sum_{j=0}^\infty a_\chi(p^j)p^{-js}
=\frac1{1-b_{\chi,p}p^{-s}}
=\begin{cases}
(1-\chi(F_p)p^{-s})^{-1}&\chi|_{I_p}=1,\\
1&\chi|_{I_p}\ne1.
\end{cases}}\tag{5}
\]
Here \(a_\chi(p^0):=1\) is a **separate unit coefficient**. It is NOT defined by averaging over inertia at \(j=0\) when the character is nontrivial on \(I_p\).

Define the source's abstract Euler product from these coefficients,
\(L_{\mathrm{loc}}(s,\chi):=\prod_p(1-b_{\chi,p}p^{-s})^{-1}\). Since \(|b_{\chi,p}|\le1\), the product is absolutely convergent for \(\operatorname{Re}s>1\). Standard differentiation gives
\[
-\frac{L_{\mathrm{loc}}'}{L_{\mathrm{loc}}}(s,\chi)
=\sum_p\sum_{j\ge1}(\log p)\,a_\chi(p^j)p^{-js},
\quad \operatorname{Re}s>1, \tag{6}
\]
and for real \(\sigma>1\),
\[
\left|-\frac{L_{\mathrm{loc}}'}{L_{\mathrm{loc}}}(s,\chi)\right|
\le -\frac{\zeta'(\sigma)}{\zeta(\sigma)}. \tag{7}
\]
Equation (7) is a *genuine unconditional absolute bound in the Euler region*. It does not continue to \(\operatorname{Re}s>\frac12\); claiming otherwise would simply assume the missing result.

**Identification boundary:** Equation (6) concerns the Euler product defined by the abstract \(I_p,F_p\). The precise Artin-reciprocity/conductor correspondence identifying it with an **original primitive Dirichlet L-function** is a **separate** hypothesis. So is \`HostAddCharCompatible\`, which identifies the original \(\ell(\psi)\) with the corresponding \(L'/L(1,\chi)\). Retain that logarithmic-derivative correction and exceptional factors in \`GPsi\`/the centered \`MAIN\`; do NOT substitute \(-\zeta'/\zeta\) for a twisted character or drop the gamma/poles of the full Weil source.

## 4. A canonical positive local projection which is NOT Hilbert–Pólya

Let \(V=\ell^2(\Gamma)\) and for any subgroup \(I\) define the finite arithmetic averaging operator
\[
(P_If)(g)=\frac1{|I|}\sum_{h\in I}f(g+h). \tag{8}
\]
It is constructed solely from inertia, without zeros, automorphic spectra or theta coefficients. By twice averaging and counting \(|I|\) pairs for each group sum, \(P_I^2=P_I\). Reversing \(h\mapsto-h\) in the standard finite inner product shows \(P_I^*=P_I\). Thus \(P_I\) is a positive semidefinite orthogonal projection with
\[
\operatorname{rank}P_I=\operatorname{Tr}P_I=\frac{|\Gamma|}{|I|}.
\tag{9}
\]
Its character eigenvectors have exactly the eigenvalues in (2): 1 if trivial on \(I\), 0 otherwise. Equations (3)–(4) are the **matrix coefficient/frequency inversion** for this projection.

**Important hostile comparison:** this locally positive \(\ell^2(\Gamma)\) projector is NOT a self-adjoint Hilbert–Pólya operator: its spectrum lies in \(\{0,1\}\), and no determinant equality to the original \(\Xi\) has been proved. Positive local Fourier projections cannot be substituted for the complete signed Weil source, whose prime/gamma/pole sum remains an RH-equivalent positivity problem.

## 5. Exact executable hostile controls

The standard-library checker [verify_alpoge_inertia_projector.py](../../../scripts/verify_alpoge_inertia_projector.py) runs the **same** source projector on \(\Gamma=(\mathbb Z/2)^2\times\mathbb Z/4\), with characters in the exact Gaussian rationals \(\mathbb Q(i)\). It exercises seven genuine subgroups, including the trivial group, two-element ramified inertia, order-four inertia, and all of \(\Gamma\). The source fields, actual Artin maps and theta lifts are NOT simulated or assumed.

Executed deterministic results (exact, no floating point):
- **1,792/1,792** inertia character factors match (2), including nontrivial ramification;
- **1,792/1,792** fully normalized Fourier inversions match (4);
- **1,792/1,792** entries of the self-adjoint, idempotent finite projectors match (8)–(9);
- all selected positive prime-power exponents preserve the zero-at-ramified-prime rule.
These finite checks corroborate the local algebra; they are not global L-function, lattice, or RH verification.

## 6. Independent (M) and exact positive Hilbert–Pólya remain OPEN

The genuine primary \`CoreAtH\` bundles the source-specific \`HostAddCharCompatible\`, \`IdentU\`, \`SizeData₂\`, \`ErrWindows\`, \`BNBoundsU\`, \`SizesA\`, \`ThinScales\`, \`CostWindows\`, \`RestSize\` and map/lattice data. The primary \`core_gm\` theorem supplies the relevant \(G_m(x)\) bound **only after** \`CoreAtH\` and \`EAtH\` are supplied. The Rubinstein 21 November exposition explicitly quotes (M) and identifies as missing an independent proof of the actual theta-lift local-coordinate integrality and valuations, the inner-product/local-factor and lattice-covolume estimates, the relative trace/rank estimates, the Galois-cohomology denominator bound, and the globally consistent map/weight assembly.

This iteration closes **only the finite abelian inertia/Fourier/local Euler interface** mathematically. It does not establish the original \(\mathrm{ASK}-\mathrm{MAIN}\) inequality, any uniform critical-line zero-free region, or original \(\Xi\) Newton positivity. The existing [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) constructs an unconditional zero-independent-of-zeros **non-self-adjoint trace-class** operator with the true \(\Xi\) determinant; it does not become a positive self-adjoint Hilbert–Pólya operator from (8). The true source coefficient-defined positive operator in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) remains **conditional** on all-rank Newton Hankel positivity, an RH-equivalent unproved independent premise.

**Formal checks outstanding:** Lean elaboration NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN, independent mathematical review NOT_RUN. No source-independent proof of (M), RH or the self-adjoint Fredholm equality is claimed. No external RH theorem, \`rhOfAll\`, \`everyCharacter\`, or RH-strength positivity hypothesis was imported to establish the local results.
