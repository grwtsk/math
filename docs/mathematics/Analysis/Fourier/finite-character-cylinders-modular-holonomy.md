# Finite character cylinders: Walsh, modular holonomy, and the GUE scope boundary

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-21). This note documents a source-level candidate and imported literature, **not** an elaborated Lean theorem or a verification receipt.

- Owning issue: [grwtsk/math#649](https://github.com/grwtsk/math/issues/649).
- Additive-character upstream: \`GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean\` (on main; theorems \`characterAverage_eq_indicator\` and \`characterAverage\`).
- Finite Walsh parent: [issue #628](https://github.com/grwtsk/math/issues/628), [draft PR #632](https://github.com/grwtsk/math/pull/632), module \`GRWTSK/Analysis/FiniteSum/WalshCylinder.lean\`. The present child is stacked on **#632 only**, not Liouville-specific PR #647.
- New candidate: \`GRWTSK/Analysis/Fourier/FiniteCharacterCylinder.lean\`, source blob \`d161b49c157cae4e66a1d56c7613a36336b04987\`.
- Related gates: [#121](https://github.com/grwtsk/math/issues/121) (labeled sofic/local limit), [#168](https://github.com/grwtsk/math/issues/168) (macro/micro spectral distinction), [#444](https://github.com/grwtsk/math/issues/444) (arithmetic-to-dynamics), [#453](https://github.com/grwtsk/math/issues/453) (all-scale maximal supplier), [#516](https://github.com/grwtsk/math/issues/516) (averaging mismatch), [#15](https://github.com/grwtsk/math/issues/15) (canonical RH).
- Selected background is imported mathematics with independent attribution, not repository-proved geometry.

## I. Exact finite result

Let \(q\geq1\), \(m\geq0\), and \(G_q=(\mathbb Z/q\mathbb Z)^m\). Let \(u,v\in G_q\), with \(m=0\) understood as the one-element product. Write \(\chi_q(x)\) for Mathlib's canonical standard additive character on \(\mathbb Z/q\mathbb Z\). Then

\[
\boxed{
\frac{1}{q^m}\sum_{\theta\in G_q}
  \prod_{i=1}^{m}\chi_q(\theta_i(u_i-v_i))
   = {\bf1}_{u=v\text{ in }G_q}.
}
\]

The module's \`tupleCharacterMean\` encodes the **complete finite-frequency sum** with normalization \((q:\mathbb C)^{-m}\), and \`tupleCharacterMean_eq_indicator\` is the source-level proof candidate. Its dependencies are:

1. Mathlib's canonical cyclic-character orthogonality, already wrapped by \`FiniteAdditiveProjector.characterAverage_eq_indicator\`.
2. Mathlib's finite Fubini / product-of-sums theorem \`Fintype.prod_sum\`.
3. Exact equality of finite tuples from equality of each coordinate.

\`coordinateAverage\` extends the factorized projector to an arbitrary finite set of positions \(s\), and \`coordinateAverage_eq_factored_sum\` preserves every normalization factor. For any actual observations \(a_{n,i}\in\mathbb Z/q\mathbb Z\), \(0\le n<N\), and a prescribed pattern \(\varepsilon\),

\[
\boxed{
\sum_{n=0}^{N-1}\prod_{i\in s}
  \left(\frac1q\sum_{k\bmod q}
    \chi_q\bigl(k(a_{n,i}-\varepsilon_i)\bigr)\right)
 =
\sum_{n=0}^{N-1}\prod_{i\in s}{\bf1}_{a_{n,i}=\varepsilon_i}.
}
\]

This is \`finiteCharacterMatches_eq_qaryPatternCount\`. Neither side is divided by \(N\): **\(N=0\)** gives zero on both sides, and **\(s=\varnothing\)** gives \(N\) on both sides. The count is embedded into \(\mathbb C\), but every indicator product is exactly 0 or 1.

### The q = 2 Walsh boundary

The Boolean encoder in the new source sends \`false ↦ 0\` and \`true ↦ 1\` in \(\mathbb Z/2\mathbb Z\). The parent \`WalshCylinder.bitSign\` sends \`false ↦ -1\` and \`true ↦ +1\` in \(\mathbb R\).

For any Boolean \(b,c\), after the canonical real-to-complex coercion,

\[
\boxed{
2\left(\frac12\sum_{k\bmod2}\chi_2(k(b-c))\right)
=1+\operatorname{bitSign}(b)\operatorname{bitSign}(c).
}
\]

The source declarations \`characterAverage_two_eq_walsh_factor\`, \`coordinateAverage_two_scaled\`, and \`finiteCharacterMatches_two_scaled\` lift this pointwise identity through finite products and finite sample sums. The last theorem states equality with the **complexified Walsh cylinder numerator**. The original parent theorem \`WalshCylinder.binaryPatternCount_walsh\` separately expands that numerator as a sum over subsets and sign-correlation moments; the child does not reprove that expansion.

**What is proved at the mathematical level:** the formulas are deterministic, valid for arbitrary actual finite data, and require no probabilistic independence.

**What is not proved:** Chowla cancellation, uniform cylinders at growing widths, Bernoulli genericity, ergodicity, maximal prefix energy, and any Möbius/Liouville estimate.

## II. Imported geometric connection: two different averages

For a marked closed oriented surface of genus \(g\ge2\), its abelianized fundamental group is \(H_1(X;\mathbb Z)\cong\mathbb Z^{2g}\). Unitary rank-one holonomy characters are parametrized by a continuous torus \((\mathbb R/\mathbb Z)^{2g}\). For integral vectors \(a,b\),

\[
\int_{(\mathbb R/\mathbb Z)^{2g}}
  e^{2\pi i\langle\theta,a-b\rangle}\,d\theta
   ={\bf1}_{a=b \text{ in }\mathbb Z^{2g}}.
\]

A finite \(q\)-torsion sampling of the same torus instead gives

\[
\frac1{q^{2g}}\sum_{k\in(\mathbb Z/q\mathbb Z)^{2g}}
  e^{2\pi i\langle k,a-b\rangle/q}
   ={\bf1}_{a\equiv b\;(\mathrm{mod}\;q)}.
\]

**These equations have different right-hand sides.** For \(q\ge1\), \(a=0\) and \(b=qe_1\) are distinct integral classes but identical modulo \(q\). In particular, no choice of fixed finite \(q\) supplies continuous-Haar orthogonality for arbitrary unbounded homology labels. An exhaustion or tail/no-aliasing condition would have to be stated and proved separately.

Marklof and Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, **International Mathematics Research Notices** (2024), DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239), work with moduli spaces of hyperbolic surfaces equipped with unitary-character twists. Their trace-formula/geometric-integration/large-genus argument yields **GOE/GUE-type spectral number variance in a specified limit**, including GUE behavior for the selected time-reversal-breaking twisted Laplacian setting. Their theorem is an **imported analytic theorem**, not implemented by this finite projector.

Mirzakhani's Weil–Petersson integration and volume polynomials provide a geometric integration mechanism, not an implication from finite character projection. The WP volume coefficients involving powers of \(\pi\), and the values of \(\zeta(2k)\) arising in integration kernels, do **not** identify nontrivial zeta zeros. The Alexander trick, Dehn twists, and rank-one unitary holonomy twists must likewise remain distinct constructions.

### Symmetry-class boundary

- At \(q=2\) every phase of the canonical finite cyclic character is real (\(\pm1\)); this reproduces Walsh sign algebra.
- For \(q\ge3\), complex phases are possible, but they are **not sufficient to imply** a GUE law.
- Marklof–Monk obtain a restricted number-variance statement under geometric and spectral hypotheses, **not** general GUE nearest-neighbor spacing or full sine-process convergence.
- A finite modular character average is not a proof of spectral convergence, source-preserving boundary gluing, or zeta-zero identification.

## III. Consumption and exact open interfaces

1. **Finite arithmetic/dynamical adapter:** #628 / PR #632 supplies Walsh reconstruction, and #649 supplies its finite \(q\)-ary Fourier generalization. Actual Liouville source identity is independently owned by #635 / draft PR #647; no arithmetic input is smuggled into the new theorem.
2. **Geometric holonomy adapter (OPEN):** construct an actual surface, marked homology class source, character pushforward, geodesic weighting, finite \(q\) truncation, and a quantified no-aliasing/tail theorem. Then, separately, supply the Selberg trace formula, Weil–Petersson integration, and the hypotheses of any large-genus limit.
3. **Sofic boundary (OPEN):** supply source-labeled finite approximants, the chosen mode of operator convergence, sector and boundary data and error budgets under #121. Residual finiteness of a surface group or the existence of a character family does not provide the desired labeled operator convergence.
4. **Arithmetic-to-RH bridge (OPEN):** #516 identifies the unsupplied transfer from available logarithmic/fixed-shift two-point results to the exact harmonic-shift, growing-scale, all-depth Möbius packet. Nothing in the finite character identity estimates that packet.
5. **Spectral microstatistics (OPEN):** #168 requires a separately justified microscopic seam theorem, unfolding normalization, source-preserving zeta-divisor identification, and independent model universality. A macroscopic spectral distribution or GOE/GUE-type variance does not supply them.

A proposed comparison may only be called an implication when every premise is represented as an exact source-bound theorem, with its relevant averaging convention, truncation and errors.

## IV. Hostile review and verification

The passive TOML target records checks for: \(q=0\) rejection; a missing \(q^{-m}\) factor; \(m=0\); \(s=\varnothing\); \(N=0\); Boolean sign reversal; integer-class aliasing after mod-\(q\) reduction; confusing finite torsion averages with torus Haar averages; claiming GUE from complex phases; claiming microscopic spacing from variance; and claiming Chowla or RH from character identities.

The candidate changes **one new Lean module, one mathematical note, and one passive verification target**. It does not modify public roots, lake pins, dependencies, workflows, native tooling or executors. The candidate proofs have only been source-authored and require exact-head Lean elaboration, module/declaration inventory reconciliation, axioms/import review and policy-compliant replay under #100 before promotion.

Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**. No finite calculation, static inspection, branch commit or GitHub PR substitutes for a Lean kernel check.
