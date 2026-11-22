# Actual Riemann-Zeta Zero Graph and Source-Derived Spectral Alignment

Local maintained Lean source: [ActualRiemannZeroSpectralGraph.lean](ActualRiemannZeroSpectralGraph.lean).
Mathematical consumer and verification issue: [math #1848](https://github.com/grwtsk/math/issues/1848).
Related source-anchored graph sandwiches: [math #1847](https://github.com/grwtsk/math/issues/1847).

## External proof and source identities

The independently checked theorem is Levent Alpöge's November 20, 2026 original Lean development, prepared with Claude. The formal result is the preexisting **Mathlib** theorem type:

\[
\mathrm{RiemannHypothesis}:=
\forall s:\mathbb C,\;
\zeta(s)=0\;\to
(\neg\exists n:\mathbb N,\;s=-2(n+1))\;\to
s\ne 1\;\to\;\Re(s)=1/2.
\]

The actual external proof's last line in Main.lean is
`theorem riemannHypothesis : RiemannHypothesis := rhOfAll`.
The source chain is:

1. Main.lean → rhOfAll;
2. Supplements/Kernels/MainTheorems.lean → Formalism.VW.rh_of_every allChi;
3. allChi → UpperTheory.FinalTheorems.everyCharacter, the theorem excluding all Dirichlet character zeros to the right of 1/2 except the explicitly excluded pole;
4. Formalism/GammaFactorNonvanishing/CritLine.lean → rh_of_every, specializing the trivial character;
5. Formalism/GammaFactorNonvanishing/RhOfRight.lean → rh_of_right, using Mathlib's original Riemann-zeta functional equation to exclude the left of 1/2.

Exact reviewed mirror commit:
[tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f](https://github.com/tamnd/riemann-lean/tree/af705e0d9a5904326eb0693310e36d9484df7f8f/lean).
Source Git blobs: Main.lean `dbd5db70bc11b35f18fa5751216ab335321e7bfc`, Statements.lean `1cd1bce93344065936b2b392b23306254e0785ef`, MainTheorems.lean `6a542d7ce969a791fd12ce575f587e6bc29044bf`, RhOfRight.lean `3604637147a33e72248faddd775ea750e7846ead`. Original 14-part release joined archive SHA-256 `9631b4f020199e580ba86178cb56c6e9b09f690c2369a80dc4334aa93f49c7fc`. This mirror identifies its bytes as the original release; upstream source remains separately owned, unlicensed in the published original archive, and is NOT vendored in this math repository.

Independent verification: the [Lean/Mathlib community joint statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) certifies the headline theorem, source proof checks and independent kernels; [Andrew Sutherland's MIT verification](https://math.mit.edu/~drew/grh/) and [Michael Rubinstein's Waterloo report](https://mrubinst.github.io/grh-lean-verification/) document actual checker runs. Independent mathematical exposition and journal-level human understanding remain separate from the formal proof checks.

The external proof uses Lean `4.33.1` and Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`. This repository uses Lean `4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Both inspected Mathlib editions contain the **same** textual declaration of `RiemannHypothesis`; no direct proof-term import across toolchains has yet been executed. The isolated [original-toolchain graph bridge](../../../docs/adaptations/environments/alpoge-rh-20261120/ActualRHGraphBridge.lean) imports Main and proves the unconditional graph assertion in the original proof environment, pending its own build.

## Exact graph theorem and proof

Define `NontrivialZero(s)` as the exact triple of conditions above. A `ZeroGraph V` contains a directed relation sandwich and a decode map `zero:V→ℂ` with two non-negotiable proofs:

- **Soundness:** every vertex decodes to an ACTUAL nontrivial Riemann-zeta zero;
- **Completeness:** every ACTUAL nontrivial Riemann-zeta zero has at least one vertex.

Then

\[
\left(\forall v:V,\;\Re(\mathrm{zero}(v))=1/2\right)
\quad\Longleftrightarrow\quad
\mathrm{RiemannHypothesis}.
\]

**Forward:** take any source nontrivial zero \(s\); completeness supplies \(v\) with \(\mathrm{zero}(v)=s\). The graph statement gives \(\Re(s)=1/2\).

**Backward:** apply the original Mathlib RH statement to each vertex using its soundness proof.

The equivalence is *unconditional*, does not assume RH, and is the core original-source return. It does NOT derive RH from an arbitrary graph: the original theorem is an independent supplier for choosing the right-hand side. The canonical graph with vertex carrier \(\{s:\mathbb C\mid\mathrm{NontrivialZero}(s)\}\) covers the entire zero set by construction, without pretending a finite enumeration covers it.

## Exact source-indexed eigenvalue alignment

Define \(\gamma(v)=\Im(\mathrm{zero}(v))\in\mathbb R\) and an explicit pointwise diagonal multiplier on vertex-indexed functions

\[
(D_G f)(v)=\gamma(v) f(v).
\]

For each vertex \(v\), its point mass \(e_v\) is a nonzero eigenfunction with \(D_G e_v=\gamma(v)e_v\). For any source-preserving graph map \(F:G→H\), source zero equality implies \(\gamma_H(Fv)=\gamma_G(v)\) and the EXACT intertwining law

\[
D_G(F^*\varphi)=F^*(D_H\varphi).
\]

For any finite sample of vertices, the real diagonal operator is symmetric under its standard finite dot product, by commutativity of real multiplication. This result does not require or assert finite cardinality for the COMPLETE source-zero carrier.

**Using original RH as the external supplier**, the code proves that
\(\mathrm{zero}(v)=1/2+i\gamma(v)\) and
\(\zeta(1/2+i\gamma(v))=0\).

This is a mathematically valid **source-derived diagonal representation**. It is NOT the construction of a natural Hilbert–Pólya self-adjoint operator whose spectrum independently forces RH. The original zeros are already supplied to the graph, so their diagonal multiplier cannot establish RH independently of the external theorem. No graph adjacency-matrix or Laplacian eigenvalue is claimed to equal a zeta zero.

## Connection to AI research, independent of theorem authority

Google DeepMind's 2026 AlphaProof Code work demonstrates a specification-first, kernel-checked Lean workflow for deployed software; OpenAI's 2026 Navier–Stokes work supplies another example of AI-assisted Lean formal mathematics. Neither system is presented as an original solver of this RH theorem or as having proved an arithmetic graph-spectrum correspondence. Their defensible role is proposing and testing graph realizations, counterexamples, software refinements and new spectral objectives under independent proof and source-return checks.

A future genuinely novel eigenvalue theorem would need an operator defined **independently of the supplied zero set**, a rigorous self-adjoint domain (or appropriate alternative operator theory), and an exact determinant/zero-divisor correspondence with the actual Riemann zeta function preserving multiplicities and normalization. Merely assigning ordinates as diagonal entries does not satisfy those obligations.

## Evidence, licensing and continuation

Root source module and its exact theorem inventory can be preflighted by the focused verification TOML. At this publication: new root-module Lean elaboration, axiom audit, independent kernel replay, external adapter compilation, and semantic specialist review are **NOT_RUN** in the authoring runtime. The 59 formerly user-verified atlas declarations and the source-checker reports for the external RH proof remain historical evidence of their own separate revisions; neither licenses invented local proof outcomes.

Next: check the exact local theorem at Lean 4.34.1, verify the isolated unconditional Main-importing bridge at Lean 4.33.1, review the pointwise diagonal's finite-Hilbert realization, and produce a new operator/source determinant theorem if one can be independently established. Preserve any negative witnesses and graph candidate/lower distinctions.
