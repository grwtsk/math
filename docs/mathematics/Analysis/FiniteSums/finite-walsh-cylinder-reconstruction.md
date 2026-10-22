# Finite Walsh cylinder reconstruction: binary blocks, Chowla, and the sofic boundary

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-21).

- Owner: [grwtsk/math#628](https://github.com/grwtsk/math/issues/628).
- Source: GRWTSK/Analysis/FiniteSum/WalshCylinder.lean.
- Source blob at initial review: 025b1e07834831decc69261639cbfff7e6f70daa.
- Parent source revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c.
- Related interfaces: [#121](https://github.com/grwtsk/math/issues/121) (labeled sofic/local limits), [#444](https://github.com/grwtsk/math/issues/444) (arithmetic-to-dynamics), [#453](https://github.com/grwtsk/math/issues/453) (Chowla/maximal energy), [#516](https://github.com/grwtsk/math/issues/516) (averaging/shift mismatch), [#15](https://github.com/grwtsk/math/issues/15) (canonical RH target).

## Exact finite theorem

Fix any finite coordinate set \(I\), any \(N\geq0\), binary observations \(b_{n,i}\in\{-1,+1\}\) for \(0\leq n<N\), and a pattern \(\varepsilon:I\to\{-1,+1\}\). Define

\[
\operatorname{Count}_{N,I}(\varepsilon)
=\sum_{n=0}^{N-1}\prod_{i\in I}{\bf1}_{b_{n,i}=\varepsilon_i},
\qquad
M_N(S)=\sum_{n=0}^{N-1}\prod_{i\in S}b_{n,i}.
\]

The source theorem binaryPatternCount_walsh is intended to prove the exact identity

\[
\boxed{2^{|I|}\operatorname{Count}_{N,I}(\varepsilon)
=\sum_{S\subseteq I}\Big(\prod_{i\in S}\varepsilon_i\Big)M_N(S).}
\]

Here \(M_N(\varnothing)=N\); for \(I=\varnothing\) the pattern matches every sample. The identity also holds at \(N=0\) without division by zero. Its scope is **any finite binary data**, and it does not assert cancellation.

Proof at mathematical level: for each pair of binary signs,
\(2{\bf1}_{b=\varepsilon}=1+\varepsilon b.\)
Multiply this equality over \(I\), expand
\(\prod_{i\in I}(1+\varepsilon_i b_{n,i})=\sum_{S\subseteq I}\prod_{i\in S}\varepsilon_i b_{n,i}\),
then sum over \(n\). The source uses Mathlib Finset.prod_one_add and finite sum transposition. This is a **source-level proof draft**, not an assertion that the Lean kernel has checked the script.

### Deterministic normalized consequence (mathematical note only)

When \(N>0\), put \(P_{N,I}(\varepsilon)=\operatorname{Count}_{N,I}(\varepsilon)/N\) and \(C_N(S)=M_N(S)/N\). Removing the empty subset produces

\[
P_{N,I}(\varepsilon)-2^{-|I|}
=2^{-|I|}\sum_{\varnothing\ne S\subseteq I}
  \Big(\prod_{i\in S}\varepsilon_i\Big)C_N(S).
\]

The finite Walsh orthogonality identity and Cauchy–Schwarz yield

\[
\|P_{N,I}-U_I\|_{\mathrm{TV}}
\leq \tfrac12\Big(\sum_{\varnothing\ne S\subseteq I} C_N(S)^2\Big)^{1/2},
\]

where \(U_I\) is the uniform law on \(\{-1,+1\}^I\). This bound is **not implemented or kernel-accepted in this increment**. It is a precise possible downstream consumer, not an inferred extra Lean theorem.

## Arithmetic source adapter remains open

For Liouville \(\lambda(n)=(-1)^{\Omega(n)}\), a future separately checked adapter may choose \(I\subseteq\mathbb N\), \(b_{n,i}=\lambda(n+1+i)\), and represent the signs by the Boolean encoding in the source. It must prove that the chosen representation equals the actual arithmetic Liouville function, not postulate a free binary sequence and call it Liouville.

With **ordinary Cesàro** convergence \(C_N(S)\to0\) for each *fixed* nonempty \(S\subseteq I\), the fixed finite-cylinder frequency tends to \(2^{-|I|}\). To identify the full Bernoulli measure, the statement must cover every finite coordinate set at a common limiting measure, with the correct genericity/weak-star hypotheses. Neither ordinary fixed-window cancellation nor qualitative Bernoulli genericity supplies a power-saving maximal prefix estimate.

A \(\mathbb Z/N\mathbb Z\) cyclic permutation model is an elementary finite sofic approximation of the \(\mathbb Z\)-action. If the ordinary nonperiodic observation at length \(m\) is compared with cyclic modulo-\(N\) blocks, at most \(\min(m-1,N)\) start positions may be altered by the wraparound seam; for \(N>0\) the relative discrepancy is at most \(\min(1,(m-1)/N)\). A proof and type for this source-labeled seam accounting belong under #121 and are **not** in the source module. An arbitrary labeled approximation need not converge to a Bernoulli law, and ergodicity of finite cycles does not ensure ergodicity of a weak limit.

The Möbius function takes values in \(\{-1,0,1\}\). Reuse at the Möbius interface therefore requires a distinct ternary or squarefree-support adapter; no unproved Liouville-to-Möbius conversion is permitted.

## External theorem boundary and priority

- N. Frantzikinakis, *Ergodicity of the Liouville system implies the Chowla conjecture*, **Discrete Analysis** 2017:19, DOI: [10.19086/da.2733](https://doi.org/10.19086/da.2733): imported arithmetic-dynamical theorem, not proved by this finite identity. Preserve the exact hypotheses and the distinctions among ordinary, logarithmic, and subsequential averaging.
- The qualitative fixed-block conclusion does **not** supply the dyadic growing-shift, all-depth, maximal-prefix or signed harmonic-weight estimates required by #453/#516 and RH-E02.
- No local-to-global ergodicity, measure-entropy, GUE universality, zeta-zero correspondence, or RH theorem follows from the identity alone.

## Hostile proof controls and acceptance

The exact-head external replay must test missing empty-subset mass, an empty sample, an empty coordinate set, reversed Boolean sign factors, dropped correlations, source-label mismatches, and invalid promotion from fixed shifts to growing shifts. A separate import/declaration/axiom audit must check the elaborated theorem types and generated declarations; absence of textual sorry/axiom is not sufficient.

As authored: no root import, toolchain, dependency, workflow, cache, or executor modifications. The mathematical source is **NOT_RUN / NOT_KERNEL_AUDITED**, and the passive target is not a replay result. This note does not close #628 or assert any arithmetic cancellation.
