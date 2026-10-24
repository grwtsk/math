# Finite Selberg-shaped primitive-iterate packets: separating modular aliases and cutoff mass

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22). The Lean text is a source-level proof candidate. No elaboration, generated declaration audit, mathematical qualification or allowed-axiom audit has been performed.

- Owner: [grwtsk/math#661](https://github.com/grwtsk/math/issues/661).
- Exact parent: [draft PR #656](https://github.com/grwtsk/math/pull/656), head \`6ce062764afff69749e69888830096d5e3b17897\` (previous modular-homology alias correction, #653).
- Earlier finite character parent: [PR #650](https://github.com/grwtsk/math/pull/650) (#649), stacked on [PR #632](https://github.com/grwtsk/math/pull/632) (#628).
- New source: \`GRWTSK/Analysis/Fourier/FiniteTraceIteratePacket.lean\`; source blob at initial review \`0b95f35524b4b297e7d80328528fb65641f12232\`.
- Downstream scope gates: [#121](https://github.com/grwtsk/math/issues/121), [#168](https://github.com/grwtsk/math/issues/168), [#516](https://github.com/grwtsk/math/issues/516), canonical RH [#15](https://github.com/grwtsk/math/issues/15).

## 1. Literature statement being modelled — not proved

Jens Marklof and Laura Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, **International Mathematics Research Notices** 2024(23):14352–14368, DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239), equations (1.5), (6.4)–(6.5), (7.6), (7.12), consider the geometric side of the twisted Selberg trace formula. In one convention, it contains

\[
\sum_{\substack{\gamma\ \mathrm{primitive}\\ \gamma\ \mathrm{oriented}}}
\;\sum_{n=1}^{\infty}
\frac{\ell_\gamma\,\widehat h(n\ell_\gamma)}
     {2\sinh(n\ell_\gamma/2)}
e^{2\pi i\,n\langle\theta,[\gamma]\rangle}.
\]

Here \(\ell_\gamma>0\) is the primitive geodesic length, \(n\) is the positive **iterate**, and \([\gamma]\in H_1(X,\mathbb Z)\) is its marked, oriented homology class. Its iterate contributes \(n[\gamma]\). **The Fourier test normalization is source-specific**: the paper uses \(h(r)=\int_{\mathbb R}\widehat h(u)e^{iru}\,du\); it also introduces a separate \(f,\widehat f,L,\tau\) scaling. This module takes \(\widehat h\) as an explicit input and does not silently identify different conventions.

The paper proves random-matrix **number-variance** asymptotics after averaging over its extended Weil–Petersson moduli space and taking the specified large-genus/scaling regime. Neither these asymptotics nor a Selberg trace identity is reconstructed from the formal finite packet.

### Imported geometry is not a Lean input certificate

The current \`TraceShapedInput γ m\` contains a finite collection of **candidate source IDs** \(\Gamma_{\mathrm{candidate}}\), a signed integer tuple \(h_\gamma\in\mathbb Z^m\), a positive length \(\ell_\gamma\), a function \(\widehat h:\mathbb R\to\mathbb C\), and a target \(b\in\mathbb Z^m\).

The field \`primitiveCandidates\` **does not assert** that elements of \(\gamma\) are geodesics, primitive conjugacy classes, embedded loops, marked surface data or a complete length-bounded enumeration. Distinct candidate IDs remain distinct even if they have equal lengths or equal homology classes.

The statement that a real compact hyperbolic surface has only finitely many primitive closed geodesics below a fixed length, and the analytic hypotheses for the trace formula, are **external mathematical facts**. The current Lean module does not import these facts or use them to assert completeness of its candidate set.

## 2. Exact finite supplier

For any finite candidate set \(\Gamma\) and an iteration cutoff \(K\ge0\), define

\[
S_K=\{(\gamma,n):\gamma\in\Gamma,\;1\le n\le K\}.
\]

The source index is the **pair** \((\gamma,n)\), not the homology tuple. Set

\[
H_{\gamma,n}=n h_\gamma\in\mathbb Z^m,\qquad
w_{\gamma,n}
=\frac{\ell_\gamma\,\widehat h(n\ell_\gamma)}
 {2\sinh(n\ell_\gamma/2)}\in\mathbb C.
\]

The Lean source defines \`iterateSources\`, \`iterateHomology\`, \`traceShapeWeight\`, and a \`tracePacket\` of the exact type \`FiniteHomologyPacket (γ × ℕ) m\` already consumed by #653. The theorem \`torsionProjection_eq_trace_double_sum\` explicitly rewrites the finite Fourier projection as a nested sum over candidate IDs and **positive** iterate indices.

The positivity premise \(\ell_\gamma>0\) is required on selected candidates. For \(n\ge1\), it proves \(2\sinh(n\ell_\gamma/2)>0\), hence the displayed coefficient has nonzero real denominator on every selected term. The totalized formula at nonselected data does not certify geometric validity. The homology-additivity law is simply \((n+k)h_\gamma=nh_\gamma+kh_\gamma\), not a theorem about a fundamental group or an actual surface.

**Edge cases:** \(K=0\) selects no terms; an empty candidate set selects no terms; rank \(m=0\) has one homology tuple; modulus \(q=1\) is allowed and may alias distinct integer labels when \(m>0\); \(q=0\) cannot enter a character average since \`NeZero q\` is required.

## 3. Two-error finite cutoff theorem

Let \(1\le q\), \(0\le K\le M\). Define the finite torsion projector at cutoff \(K\)

\[
P_q(K)=\sum_{(\gamma,n)\in S_K}
  w_{\gamma,n}\,
  \mathbf1_{\{H_{\gamma,n}\equiv b\pmod q\}},
\]

and the exact *integer-homology selected* finite sum at cutoff \(M\)

\[
P_{\mathbb Z}(M)=
\sum_{(\gamma,n)\in S_M}
  w_{\gamma,n}\,
  \mathbf1_{\{H_{\gamma,n}=b\}}.
\]

These are not declared to be actual spectral traces or normalized expectations.

There are two fundamentally different possible errors:

\[
E_{\mathrm{alias},q}(K)=
\sum_{\substack{(\gamma,n)\in S_K:\\
H_{\gamma,n}\equiv b\pmod q\\
H_{\gamma,n}\ne b}}
|w_{\gamma,n}|
\]

and

\[
E_{\mathrm{omit}}(K,M)=
\sum_{(\gamma,n)\in S_M\setminus S_K}
|w_{\gamma,n}|.
\]

The central finite theorem candidate is

\[
\boxed{\big|P_q(K)-P_{\mathbb Z}(M)\big|
\le E_{\mathrm{alias},q}(K)+E_{\mathrm{omit}}(K,M).}
\tag{FINITE-TRACE-ERROR}
\]

The source proof consumes #653's \`torsionProjection_error_le\` and separately proves the finite selected-sum partition \(P_{\mathbb Z}(M)=P_{\mathbb Z}(K)+P_{\mathrm{omit,selected}}(K,M)\), using \`Finset.sum_sdiff\`. The complex triangle inequality then yields the displayed two-error conclusion. The cutoff \(K\le M\) is an explicit theorem hypothesis: replacing it with a silent set convention would lose the intended interpretation.

\`E_{\mathrm{omit}}\` is intentionally a **stronger absolute-mass bound** than the omitted *selected* sum: it cannot hide cancellations or missing homology matches. No value of \(E_{\mathrm{omit}}\) or \(E_{\mathrm{alias}}\) is supplied for an actual surface.

### Genuine finite support as a separate premise

If the caller supplies

\[
\widehat h(n\ell_\gamma)=0
\quad \text{for every }(\gamma,n)\in S_M\setminus S_K,
\]

then \`traceShapeWeight_zero_of_fourier_zero\` and \`omittedMass_zero_of_fourier_zero\` prove \(E_{\mathrm{omit}}(K,M)=0\). In that case

\[
|P_q(K)-P_{\mathbb Z}(M)|\le E_{\mathrm{alias},q}(K).
\]

This removes only the **finite omitted-term** budget. To apply it to an actual compactly supported Fourier test, an external adapter must prove that its selected cutoff includes every primitive/iterate term capable of contributing. One cannot replace this with the unsupported statement “the infinite tail is zero”; completeness of the primitive-geodesic enumeration, test support and any interchange of sums are separate obligations.

## 4. Geometric and arithmetic supplier boundaries

For a real compact marked hyperbolic surface and test function, a later adapter must establish:

- \`γ\` actually indexes **oriented primitive closed geodesics** or primitive conjugacy classes, with independently certified primitivity, orientation convention, multiplicity and no accidental double-counting;
- the marking gives exact \(H_1(X,\mathbb Z)\cong\mathbb Z^{2g}\) coordinates, with \(m=2g\), and iteration maps to \(n[\gamma]\) by the actual homological functor;
- \(\ell_\gamma\) is the actual geometric length and \(\widehat h\) has precisely the trace formula's normalization and regularity;
- every retained trace term carries exactly the source coefficient, while omitted terms have an explicit error certificate or are shown to vanish by support;
- infinite trace sums, Weil–Petersson averages, large-genus limits and their exchange are justified by **independent analytic theorems**, not by this finite algebra.

The corresponding **arithmetic** source still requires its own Liouville/Möbius source binding, ordinary-vs-logarithmic averaging reconciliation and a growing-shift, all-depth harmonic/maximal supplier under #453/#516. There is no map in this module from a geodesic trace to the divisor of Riemann's zeta function. #121 and #168 still hold the sofic operator and microscopic gap/zero-divisor gates.

The reusable result is a **two-component error ledger**, not a proof of GUE universality, Chowla, a sofic limit, or RH.

## 5. Proof audit and hostile controls

The passive verification target lists every source declaration and proof obstruction. In particular it must reject: \(n=0\) being counted as an iterate; reverse-oriented curves being collapsed into one source; identification of distinct primitive sources from equal homology; missed hyperbolic-sine denominator or missing positive-length premise; an unsupported \(1/n\) prefactor; a q-ary character factor without q-normalization; \`K>M\` being used as an ordinary extension; ignored \`E_{\mathrm{omit}}\`; an alias budget substituted for an infinite Fourier support estimate; an unsupported Selberg or Weil–Petersson identity; numerical GUE evidence treated as proof; an implicit zeta-divisor/RH edge.

One new Lean module, this mathematical note and a passive replay TOML are the only intended changes. No public root import, pinned toolchain, dependency graph, executor, CI workflow, native or VM environment is modified.

**Acceptance:** exact-head Lean elaboration, generated declaration/type inventory, full transitive import and axiom audits, hostile fixtures, and policy-compliant qualification under #100. Until then the state is strictly **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.
