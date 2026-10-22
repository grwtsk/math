# A finite holonomy-alias correction for source-labeled integral homology

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).

Owner: [grwtsk/math#653](https://github.com/grwtsk/math/issues/653). Parent: [draft PR #650](https://github.com/grwtsk/math/pull/650), exact head \`5a4121ba23273cdb3edc9aec555e70a9416f5c72\`, which is stacked on [Walsh draft PR #632](https://github.com/grwtsk/math/pull/632). The candidate is **not** on main and is **not** a verified Lean theorem.

Proposed module: \`GRWTSK/Analysis/Fourier/FiniteHolonomyAliasing.lean\`. New module blob at initial review: \`4e74242dceb742c168636e9c7c80ea1ffa06f88d\`. This module imports only the previous \`GRWTSK.Analysis.Fourier.FiniteCharacterCylinder\` at the source level. It does not alter either parent.

## 1. Finite source-bound algebra

Fix a finite set \(S\) of **source-term identities**, a rank \(m\ge0\), a modulus \(q\ge1\), a map of actual source labels \(h:S\to\mathbb Z^m\), complex amplitudes \(w:S\to\mathbb C\), and a target \(b\in\mathbb Z^m\).

**Term identities are not homology classes.** Two distinct \(s,t\in S\) are allowed to have \(h(s)=h(t)\); they remain distinct summands and their weights are not silently merged. If the future geometric source is an oriented primitive geodesic and a positive iterate, these belong in the term identity, while the homology label can be \(n[\gamma]\). The present module has **no geometric surface object**.

Use the canonical finite character projector \(\Pi_q\) proved at source level in PR #650:

\[
\Pi_q(u,v)
=\frac{1}{q^m}\sum_{\theta\in(\mathbb Z/q\mathbb Z)^m}
\prod_{i=1}^{m}\chi_q\big(\theta_i(u_i-v_i)\big)
=\mathbf1_{\{u\equiv v\pmod q\}},
\quad u,v\in\mathbb Z^m.
\]

Define the genuinely finite projections

\[
P_q(S,h,w;b)
=\sum_{s\in S} w(s)\Pi_q(h(s),b),\qquad
P_{\mathbb Z}(S,h,w;b)
=\sum_{s\in S}w(s)\mathbf1_{\{h(s)=b\}}.
\]

Let the source-indexed collision set be

\[
A_q=\{s\in S:h(s)\equiv b\pmod q,\;h(s)\ne b\}.
\]

The exact **finite alias decomposition** is

\[
\boxed{P_q=P_{\mathbb Z}+\sum_{s\in A_q}w(s).}
\tag{A}
\]

The immediate error inequality is

\[
\boxed{
|P_q-P_{\mathbb Z}|
\le \sum_{s\in A_q}|w(s)|.
}
\tag{B}
\]

\`FiniteHomologyPacket\` carries \`sources\`, \`homology\`, \`amplitude\`, and \`target\`, using the full integer signed tuple \`Fin m → ℤ\`. \`residueTuple\` explicitly reduces each coordinate. \`torsionProjection\`, \`integralProjection\`, \`aliasSources\`, \`aliasCorrection\`, and \`aliasMass\` implement the displayed expressions. \`weighted_character_projection_split\` is the pointwise algebra, consumed by \`torsionProjection_eq_integral_add_alias\`; \`torsionProjection_error_le\` consumes the finite norm-sum triangle inequality.

This is a **candidate Lean proof script**, not kernel evidence. Equations (A) and (B) are valid finite mathematical identities without assumptions about arithmetic randomness, ergodicity, spectral statistics or geometric probability.

The inequality is an upper bound and may be very poor due to cancellations. Without a proven estimate on \(A_q\) and actual \(|w(s)|\), it supplies **no rate** and no convergence.

## 2. Explicit sufficient non-aliasing theorem

\`NoAlias q p\` states the precise consumer premise:

\[
\forall s\in S,\quad h(s)\equiv b\pmod q\implies h(s)=b.
\]

It implies \(A_q=\varnothing\) and thus \(P_q=P_{\mathbb Z}\).

The finite-source module additionally proposes \`FundamentalBox q p\`:

\[
\forall s\in S,\;\forall i<m:
0\le h_i(s)<q,\qquad 0\le b_i<q.
\]

Under this **extra, restrictive** hypothesis, equal residues imply equal integer tuples by Mathlib's \`ZMod.intCast_eq_intCast_iff'\` and \`Int.emod_eq_of_lt\`. The source candidate \`torsionProjection_eq_integral_of_fundamentalBox\` then gives exact equality. The theorem retains signed \(\mathbb Z\) coordinate types, but the hypothesis selects a nonnegative representative box. It does *not* assert that arbitrary geometric homology coordinates lie in that box or that a fixed \(q\) suffices for growing collections.

With \(m=0\) there is only one integral homology tuple, and the no-alias condition holds automatically, including \(q=1\). Empty source sets have zero weighted projections and zero alias mass. The source is designed to respect these degenerate cases.

**Hostile fixture:** \(h=(2)\) and \(b=(0)\) are different in \(\mathbb Z^1\) but have equal residues in \((\mathbb Z/2\mathbb Z)^1\). This is represented by \`two_modulus_nontrivial_alias\`. Taking this single source term with weight \(1\) gives \(P_2=1\), \(P_{\mathbb Z}=0\): no unqualified finite-torsion/Haar identification can be valid.

## 3. Correct geometric provenance and theorem scope

**Imported external source (not Lean-formalized here):**

Jens Marklof and Laura Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, **International Mathematics Research Notices**, 2024(23):14352–14368, published 29 October 2024; DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239).

- Section 3 constructs invariant measures on extended moduli space, permitting **discrete \(q\)-torsion twists** and continuous twists (\(q=\infty\)); the associated fiber is a unitary-character torus over Teichmüller space.
- Lemma 7, equation (6.1), distinguishes integral homology-zero selection for continuous twists from the discrete \(q\)-selection of geodesic iterates.
- In Section 7, equation (7.6) identifies the mod-\(q\) homology matching condition for pairs of oriented primitive geodesics and their positive iterates when computing the second moment.
- Theorem 1 obtains **GOE-type spectral number variance for \(q=1,2\)** and **GUE-type number variance for \(3\le q\le\infty\)** after the paper's Weil–Petersson averaging, large-genus limit and chosen test-function/scaling hypotheses.

Consequently **finite \(q\) and \(q=\infty\) are not equivalent Fourier selectors**, even though the published geometric theorem can yield the same limiting GUE-type number variance for \(q\ge3\). The equality of selected *variance functionals* is a theorem that uses the complete geometric and analytic argument, not a statement of pointwise equality of finite and continuous holonomy projections.

Maryam Mirzakhani's integration formulas and Weil–Petersson volume estimates are distinct imported theorems used downstream of the geometry and Selberg trace formula. They do not follow from finite character algebra. References to the Witten–Kontsevich intersection-number model, Alexander surgery, or the zeta values \(\zeta(2k)\) are *context*, not assumed numerical or spectral identifications.

## 4. Actual interface and missing suppliers

The intended future source adapter may supply a finite cutoff of oriented primitive geodesics with iteration labels, length-weighted amplitudes, homology coordinates and a chosen marking. The first-moment packet chooses target \(0\), whereas a second-moment comparison of iterated geodesics may represent the difference of two homology vectors or use one as a target. A finite sum over arbitrary \(\alpha\) **does not automatically implement the spectral trace formula**.

The exact outstanding dependency path is:

1. **Real source model (OPEN):** supply an actual genus \(g\ge2\) surface, marking, oriented primitive geodesic source IDs, iterate multipliers, exact signed integral homology maps, and trace-formula amplitudes; do not relabel arbitrary finite data as geodesics.
2. **Finite truncation (OPEN):** prove compatibility of source truncation with the trace-formula test function, including normalization, multiplicity and an explicit omitted-tail estimate.
3. **Modular alias mass (OPEN):** bound the **actual** finite \(\ell^1\) alias amplitudes or prove a no-alias result at the required \(g,q,L\) scaling; a box bound for a fixed finite packet is not uniform in genus.
4. **Geometric integration (OPEN):** import/verify the exact Marklof–Monk trace/Haar/WP results, and preserve the distinction between \(q=1,2\), \(q\ge3\) and \(q=\infty\); an \(L^1\) packet estimate is not a variance or sine-kernel theorem.
5. **Sofic operator limit (OPEN):** #121 still requires source-labeled operator models, chosen convergence mode, boundary and sector fidelity, and quantitative defects.
6. **Arithmetic and RH frontier (OPEN):** #453/#516 demand a growing-shift, all-depth, harmonic-kernel Möbius supplier. The finite alias theorem contains **no such estimate**. #168 separately requires a microscopic spectral seam/zero-divisor identification; RH #15 remains entirely open.

Mathematical dependencies must not be silently converted from **RELEVANT_ONLY** or **CANDIDATE_ADAPTER** into **PROVES** or **IMPLIES**.

## 5. Qualification and hostile review

The passive verification TOML for #653 records the exact import, new module and attributed source note, with enumerated source declarations and hostile obligations:

- no \`q=0\` case; \(q=1\), \(m=0\) and empty source set remain represented correctly;
- the q-ary mean's \(q^{-m}\) normalization is inherited unchanged from #649;
- distinct source terms with identical homology cannot disappear from the packet;
- \(0\ne 2\) in \(\mathbb Z\), although \(0\equiv2\pmod2\);
- signed homology remains signed; a nonnegative fundamental box is a **premise**;
- \(\ell^1\) alias mass is not assumed small, vanishing or uniform in any parameter;
- no interchange of finite torsion average and continuous Haar average without a theorem;
- no GUE universality from complex characters and no full point process from variance;
- no unverified geodesic, WP, Selberg, Chowla, Bernoulli, sofic or RH implication.

Only a new isolated Lean source module, this mathematical note and a passive verification specification are added on a branch stacked directly on PR #650. No public root import, toolchain, dependency pins, native execution, workflow or cache are changed.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Static source review is not Lean elaboration, the allowed-axiom report, or a policy-compliant replay receipt. Those are explicit future requirements for acceptance.
