# A finite primitive-source coverage boundary: three separate trace errors

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22). This note describes a finite mathematical theorem and an authored Lean proof script. It is **not** a kernel elaboration, a certified primitive-geodesic enumeration, or a Selberg trace theorem.

- Owner: [grwtsk/math#674](https://github.com/grwtsk/math/issues/674).
- Exact parent: [draft PR #669](https://github.com/grwtsk/math/pull/669), head `f02af7af84c59f9e19d372ce864c5e82c3ec8eb2`.
- The new child reuses: [#665 / PR #669](https://github.com/grwtsk/math/issues/665) (uniform finite-iterate support), [#661 / PR #664](https://github.com/grwtsk/math/issues/661) (finite cutoff), [#653 / PR #656](https://github.com/grwtsk/math/issues/653) (modular alias identity), and [#649 / PR #650](https://github.com/grwtsk/math/issues/649) (normalized finite characters).
- Source module: `GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean`.
- Related optional-adapter boundary [#159](https://github.com/grwtsk/math/issues/159), spectral gates #121/#168, arithmetic #516, global RH #15, trust #100.

## 1. The actual decomposition

Let \(\Gamma\) be any index type representing **source IDs**, not identified with length or homology classes. The finite selected family \(S\subseteq\Gamma\) and the distinct, still finite candidate universe \(U\subseteq\Gamma\) must satisfy \(S\subseteq U\). A candidate has a supplied length \(\ell_\gamma>0\) (for every \(\gamma\in U\)), a signed integer homology tuple \(h_\gamma\in\mathbb Z^m\), and a Fourier test \(\widehat h:\mathbb R\to\mathbb C\). These values are shared *literally* between \(S\) and \(U\).

The primitive/positive-iterate term is \((\gamma,n)\), \(n\ge1\), with
\[
w_{\gamma,n}=
\frac{\ell_\gamma\,\widehat h(n\ell_\gamma)}{2\sinh(n\ell_\gamma/2)},
\qquad H_{\gamma,n}=n h_\gamma\in\mathbb Z^m.
\]

For modulus \(q\ge1\), target \(b\in\mathbb Z^m\), and \(K\le M\), put
\[
\begin{aligned}
P_q^S(K)&=\sum_{\gamma\in S}\sum_{n=1}^{K}
 w_{\gamma,n}\,\mathbf 1_{\{H_{\gamma,n}\equiv b\pmod q\}},\\
P_{\mathbb Z}^U(M)&=\sum_{\gamma\in U}\sum_{n=1}^{M}
 w_{\gamma,n}\,\mathbf 1_{\{H_{\gamma,n}=b\}}.
\end{aligned}
\]

These remain **finite algebraic sums**: neither is an identified trace of an operator.

Three error coordinates must be kept separate:

\[
\begin{aligned}
E_{\rm alias}^S(K,q)
 &=\sum_{\substack{\gamma\in S,\,1\le n\le K\\
 n h_\gamma\equiv b\pmod q,\ n h_\gamma\neq b}}|w_{\gamma,n}|,\\
E_{\rm iterate}^S(K,M)
 &=\sum_{\gamma\in S}\sum_{K<n\le M}|w_{\gamma,n}|,\\
E_{\rm primitive}^{U\setminus S}(M)
 &=\sum_{\gamma\in U\setminus S}\sum_{1\le n\le M}|w_{\gamma,n}|.
\end{aligned}
\]

The exact *selected* primitive omission identity is
\[
P_{\mathbb Z}^U(M)=
P_{\mathbb Z}^S(M)+
\sum_{\gamma\in U\setminus S}\sum_{1\le n\le M}
 w_{\gamma,n}\,\mathbf1_{\{nh_\gamma=b\}}.
\]

Using the parent's two-error inequality and the triangle inequality gives

\[
\boxed{\displaystyle
|P_q^S(K)-P_{\mathbb Z}^U(M)|
\le E_{\rm alias}^S(K,q)
+E_{\rm iterate}^S(K,M)
+E_{\rm primitive}^{U\setminus S}(M).
}
\tag{1}
\]

The new source `FinitePrimitiveUniverse t` stores \(U\), \(S\subseteq U\) and positivity of all \(U\) lengths. The constructor `fullInput t u` changes **only** the candidate Finset and its positivity proof. Lemmas `fullInput_iterateHomology`, `fullInput_traceShapeWeight`, `selectedSources_subset` and `mem_primitiveMissingSources_iff` protect source labels and prevent an implicit replacement of geometric data.

`primitiveMissingSelected` and `primitiveMissingMass` are separate fields of the mathematical *ledger* (Lean definitions, not execution counters). `integralProjection_full_eq_selected_add_missing`, `primitiveMissingSelected_norm_le`, and `finite_three_error_bound` are source-script candidates for the exact equality and inequality above.

## 2. Conditional two-dimensional support closure

Reuse the parent's explicit support certificate with

\[
B\ge0,\quad\delta>0,\quad
\delta\le\ell_\gamma\ \ (\gamma\in S),\quad
\widehat h(x)=0\ \text{for }x>B,
\quad B\le K\delta.
\]

This controls **positive iterates of already selected candidates**; by itself it says nothing about missing primitive sources. An additional finite-universe coverage premise is

\[
\boxed{\displaystyle
\forall\gamma\in U,\quad
\ell_\gamma\le B\implies\gamma\in S.
}
\tag{2}
\]

For a missing candidate \(\gamma\in U\setminus S\), (2) forces \(\ell_\gamma>B\). Since all \(U\) lengths are positive and \(n\ge1\),

\[
n\ell_\gamma\ge\ell_\gamma>B
\quad\implies\quad
\widehat h(n\ell_\gamma)=0.
\]

Therefore the **finite primitive omission mass** is zero, independently of the already proved finite iterate cutoff. Combining the two named zero theorems with (1),

\[
\boxed{\displaystyle
|P_q^S(K)-P_{\mathbb Z}^U(M)|
\le E_{\rm alias}^S(K,q)
\qquad(M\ge K).
}
\tag{3}
\]

This is the source candidate `finite_full_universe_error_le_alias_of_support`. The term \(E_{\rm alias}\) is **not eliminated** by Fourier support or length coverage.

If the additional **NoAlias** premise from #653 is independently established for the actual retained packet, the right side of (3) is zero and one obtains exact equality of the *finite* projectors. This is `finite_full_universe_exact_of_noAlias`; it does not identify either projector with an infinite Selberg trace, a GUE point process, or a Riemann-zeta divisor.

### What (2) does and does not certify

Within a **known finite universe**, (2) can be checked against a complete list of the finite universe's source IDs and sound length certificates.

But the predicate by itself does NOT establish that \(U\) contains all actual primitive oriented closed geodesics of a real surface with \(\ell_\gamma\le B\). A true surface-level enumeration must supply its own proof of membership, no omissions, no duplicate orientation/conjugacy identity, exact marked homology, sound length bounds and test-function normalization.

A suitable geometric adapter would have to prove

\[
\bigl\{\gamma\text{ primitive oriented closed geodesic of }X:
\ell_\gamma\le B\bigr\}
\subseteq U
\]

using a genuine mathematical model \(X\) and explicit equivalence of its geometric source IDs with the finite \(\Gamma\). This theorem is **not** present here.

## 3. External mathematical sources, including a counting distinction

- **Selberg trace / Marklof–Monk:** Jens Marklof and Laura Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, *International Mathematics Research Notices* **2024(23)**, 14352–14368, DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239), eqs. (1.4)–(1.5) and (7.12). The paper's trace sums index **all oriented primitive closed geodesics** and their positive powers, and assume the particular smooth compact-Fourier-support test. It is an external analytic theorem.
- **Primitive vs simple curves:** A prime-geodesic theorem counts *all primitive* geodesics, including non-simple ones, while Mirzakhani's polynomial/asymptotic counting theorems concern *simple* multicurves. Counting simple curves does not certify the full primitive index set needed by the Selberg trace. See, e.g., [Counting problems from the viewpoint of ergodic theory: from primitive integer points to simple closed curves](https://www.cambridge.org/core/journals/ergodic-theory-and-dynamical-systems/article/counting-problems-from-the-viewpoint-of-ergodic-theory-from-primitive-integer-points-to-simple-closed-curves/C1B5D403B0DBB3F541927D88384836DF).
- **Finite counts do not equal a certificate:** On a fixed compact hyperbolic surface the number of primitive closed geodesics below any fixed positive length is finite; the prime-geodesic asymptotics of Huber/Selberg/Margulis concern counts as length grows. Neither finiteness nor an asymptotic provides a sound, complete, marked **enumeration algorithm** in Lean. Families varying over moduli can develop arbitrarily short closed geodesics, so the selected length-floor certificate must not be promoted to a genus-uniform systole theorem.
- **No random-matrix transport:** Marklof–Monk's GOE/GUE *number variance* limit uses the full trace formula, Weil–Petersson averaging and large-genus estimates. Equation (3) alone contains none of those theorems, and GUE number variance is not a theorem on microscopic zeta-zero spacing.

## 4. Nonvacuity / hostile controls

The source includes small finite-ID fixtures over `Bool`, with selected \(S=\{\mathrm{false}\}\), finite universe \(U=\{\mathrm{false},\mathrm{true}\}\), support radius \(B=2\), selected length \(1\), and the *toy algebraic* Fourier test

\[
\widehat h_{\rm toy}(x)=
\begin{cases}1 & x\le2,\\0 & x>2.\end{cases}
\]

The test is **not** smooth and is **not** offered as an admissible Selberg test. Its purpose is to check logical coverage, not spectral numerics.

- **Positive:** omitted \(\mathrm{true}\) has length \(3\), so (2) holds and its positive-iterate Fourier coefficients vanish.
- **Hostile:** omitted \(\mathrm{true}\) has length \(2\). Then (2) is false; \((\mathrm{true},1)\) is actually missing, and its Fourier test input is nonzero. A supposedly automatic primitive-tail zero must be rejected.
- Distinct source IDs with equal homology or equal length are never merged.
- Missing primitive IDs must not be replaced with an unreported small modulus-alias error, and a finite universe must not be portrayed as a genuinely complete geodesic enumeration.
- \(q=1\), homology rank \(m=0\), cutoff \(K=0\), empty selected families, strict support-boundary equality and \(\delta=0\) rejection retain their exact separate meanings.

## 5. Remaining acceptance and route boundary

`GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean` is a leaf import of `FiniteTraceFourierSupport`, not an additional root import. The passive verification target binds the new source and this note to their exact immutable blobs, with a named declaration inventory, explicit hostile controls and outstanding elaboration/axiom checks.

This proposal does not change #159's optional-adapter disposition. It cannot enter the canonical RH theorem unless an **authentic surface/geodesic source identification**, source-preserving analytic trace theorem, operator/sofic bridge where used, and arithmetic zeta-divisor/RH implication are separately proved.

The geometric task that follows this branch is substantially harder: produce a genuine finite **length-bounded geodesic-enumeration certificate**, not another free finite family record. It must track the actual marked surface and either prove exhaustive primitive conjugacy classes under a certified word/length bound or use an independently trusted covering theorem with a pure checker.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. This note and authored Lean proofs are not kernel checks. No Lean/Lake/native or VM execution, F06 transition, trust replay, merge, root import, toolchain update or workflow operation is claimed.
