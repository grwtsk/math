# Opposite-oriented polygon side pairing forces one finite vertex

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED — 2026-10-22.** This note describes an additive finite combinatorial source and Lean proof scripts, **not** a kernel-audited Lean result, a constructed topological quotient of a disk, or a genus-\(g\) CW surface.

Owner: [grwtsk/math#834](https://github.com/grwtsk/math/issues/834). Exact parent: [draft PR #829](https://github.com/grwtsk/math/pull/829), head `9ff27b464782871f12e603991c05db3666b85be3`. New source module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean`.

This is the smallest concrete geometric-combinatorial supplier after the earlier true ModuleCat homology of a **candidate** finite chain model. The outstanding geometric program still requires an actual topological disk, boundary side pairing as continuous maps, a CW quotient and an attaching map.

## 1. Complete fidelity to the original polygon word

Fix \(k\ge0\) and \(g=k+2\). The new finite handle set is

\[
\mathcal H_k=\operatorname{Fin}(2)\sqcup\operatorname{Fin}(k).
\]

Each handle has exactly two *distinctly named* generator IDs drawn from the already-used type

\[
\mathcal A_k=\operatorname{GenusLetter}(k)
=\operatorname{Fin}(4)\sqcup(\operatorname{Fin}(k)\times\mathrm{Bool}).
\]

The first two handle pairs are the original \(a_1,b_1\) and \(a_2,b_2\); the \(j\)-th extra handle uses exactly the source generator IDs \((j,\mathrm{false})\) and \((j,\mathrm{true})\) from PR #738.

The new `handleEdges k h` is literally PR #751's `handleBlock k` instantiated with those IDs. Its directed side order is

\[
a_h^+,b_h^+,a_h^-,b_h^-.
\]

The first two blocks are followed by `List.ofFn` on the \(k\) extra handles, retaining their original order. The new source theorem candidate

\[
\boxed{
\operatorname{flatten}(\operatorname{orderedHandleBlocks}(k))
=\operatorname{polygonBoundaryWord}(k)
}
\tag{S1}
\]

connects the complete list to **the same** inherited signed edge word used by the earlier algebraic cellular differential, canonical free-group abelianization and ModuleCat homology. It does not construct a second abstract word unrelated to those results.

## 2. Four corners per handle and authentic edge-pairing relations

Define the source type of polygon corner IDs

\[
\mathcal C_k=\mathcal H_k\times\operatorname{Fin}(4).
\]

Each \((h,i)\) is the starting corner of the \(i\)-th directed polygon edge in the local handle block. The endpoint of local edge \(i=0,1,2\) is the next corner in that block. The endpoint of the fourth edge \(b_h^-\) is the zeroth corner of the *next handle* in the cyclic concatenation. The successor construction covers the two initial handles, every extra handle \(j\), and the final wraparound seam.

The finite signed edge \((a,\sigma)\) is paired with \((a,-\sigma)\). `oppositeSide` preserves the exact generator ID while toggling its direction; it is involutive and **has no fixed points**. The new source proves that the local positions \(0,2\) carry opposite copies of the same \(a_h\) and that positions \(1,3\) carry opposite copies of the same \(b_h\).

Identifying endpoints under these **orientation-reversing** side pairings gives precisely the four generating corner pairs:

| Origin of pairing | Pair of corner IDs |
|---|---|
| \(a_h^+\) against \(a_h^-\), starts | \((h,0)\sim(h,3)\) |
| \(a_h^+\) against \(a_h^-\), ends | \((h,1)\sim(h,2)\) |
| \(b_h^+\) against \(b_h^-\), ends | \((h,2)\sim(h,3)\) |
| \(b_h^+\) against \(b_h^-\), starts | \((h,1)\sim(\mathrm{next}(h),0)\) |

These become the **only** raw constructors of `DirectCornerGluing k`. The actual equivalence relation is their Mathlib `Relation.EqvGen` closure, not a free assumption that all vertices equal one another.

The finite quotient is therefore

\[
V_k=\mathcal C_k/\!\sim,
\qquad
\sim=\operatorname{EqvGen}(\operatorname{DirectCornerGluing}(k)).
\tag{S2}
\]

The source explicitly defines the associated `Setoid` and real Lean `Quotient` on the corner IDs.

## 3. Proof that the corner quotient contains exactly one vertex class

The new theorem candidates establish the quotient's connectivity constructively.

Within one handle, the \(a\)- and \(b\)-edge pairing gives the paths

\[
(h,3)\sim(h,0),\quad
(h,2)\sim(h,3)\sim(h,0),\quad
(h,1)\sim(h,2)\sim(h,3)\sim(h,0).
\]

Thus all four corners of each handle are in the same generated equivalence class.

The fourth generating pairing makes \((h,1)\sim(\mathrm{next}(h),0)\), so **successive handles are connected**, not merely the four corners inside an individual block. The source proves the first-to-second link, the second-to-first-extra link whenever \(k>0\), and connections from extra handle \(j\) to \(j+1\). A finite induction on the genuine extra-handle index then connects every block to the first one. The final extra handle's successor is defined as the first, matching the cyclic polygon closure.

Therefore the intended exact finite theorem is

\[
\boxed{
\forall k\ge0,\quad
\forall u,v\in\mathcal C_k,\quad u\sim v,
\qquad V_k\text{ has exactly one element.}
}
\tag{S3}
\]

The Lean source packages the second statement by constructing a nonempty actual `Quotient`, proving it `Subsingleton`, then obtaining a `Unique` instance. A quotient of a genuinely source-defined equivalence relation is used throughout.

## 4. Positive and negative checks

The genus-two case \(k=0\) contains **two different source handles** yet connects their zero corners. With \(k=1\), a third handle is genuinely present and its zero corner is joined by the second-to-extra seam. The theorem `essential_b_seam_connects_distinct_handles` confirms that the first-to-second seam glues distinct handle identifiers. A model containing only local within-handle pairings would fail that cross-handle assertion.

Other hostile controls require the involution to toggle edge direction while preserving the generator ID, the \(a\)- and \(b\)-endpoint identifications to have the correct orientation, the finite handle successor to preserve the ordered list, and the edge-word flattening to equal the literal original `polygonBoundaryWord k`.

In particular, the argument must not assume the quotient has one point *as an axiom*, nor may it use the trivial everywhere-true relation in place of `Relation.EqvGen` generated by the actual side pairings.

The one-cell generator count remains exactly

\[
|\mathcal A_k|=2(k+2)=2g.
\]

The new quotient concerns **polygon corners only**. It does not identify distinct one-cell generator IDs or collapse the prior \(\mathbb Z^{2g}\) module.

## 5. Precisely what this changes for the existing homology program

The preceding source #758 stipulated one zero-cell, one face and \(2g\) one-cells as a formal algebraic chain profile. Later #823 constructed a genuine `ChainComplex (ModuleCat\mathbb Z)` and categorical degree-one homology for that finite profile.

The corner quotient in (S2)–(S3) is now an independent **finite combinatorial justification** of the one-vertex count. In particular, it is not merely a proof that a pre-selected `PUnit` carrier has one element; the quotient classes arise from the actual finite signed source side pairings.

This is useful but has a strict boundary: the source does **not** construct a continuous quotient of a two-dimensional disk, nor identify its topological vertices or one-skeleton with the finite classes in (S2). Consequently it does not yet give an actual cellular chain-complex comparison, even though its finite vertex count agrees with the prior convention.

## 6. Remaining topological and analytic suppliers

The next genuinely geometric increment must construct a **topological** closed disk with \(4g\) marked boundary edges, maps identifying paired edges with opposite orientations, and the resulting quotient space. It must then show that the space is a closed orientable surface of genus \(g\) with one zero-cell, \(2g\) one-cells and one two-cell; prove the cellular attaching map represents the same boundary word from (S1), and establish a source-preserving equivalence between its actual cellular chain complex and the abstract ModuleCat chain complex already built in #823.

A separate cellular van Kampen theorem must identify the same surface's actual fundamental group with the literal higher-genus presented group from #734, including the distinguished first-handle source loop. Hyperbolic uniformization, length spectrum, primitive closed-geodesic enumeration, twisted Selberg trace, Weil–Petersson and spectral/random-matrix results are downstream independent obligations.

Established external topology: Allen Hatcher, *Algebraic Topology* (2002), §§1.2 and 2.2, including the canonical polygon model and cellular boundary calculations. Official electronic text: https://pi.math.cornell.edu/~hatcher/AT/ATpage.html. Those are **not locally kernel-formalized** in the present increment.

The analogies to Torelli/Johnson filtrations, modular character aliasing (#653), Čech/Hodge (#198), signed Hodge (#205/#545), sofic/GUE (#121/#168), growing-shift arithmetic (#516), and RH (#15) remain nonimplication research comparisons.

## 7. Operational and epistemic boundary

This is one new isolated Lean module, this note, and a passive source-bound TOML on a branch stacked directly on PR #829's immutable head. No existing parent or global root source, pinned Lean dependency/toolchain, Lake manifest, CI/workflow, cache, VM/native worker, executor or held F06 state is changed.

Source-level declaration enumeration and negative-case review do not establish Lean elaboration, imported theorem type correctness, generated declarations, an axiom/unsafe audit, or an accepted proof. The passive target must bind the exact parent and new blobs, all authored declaration kinds, the generated inductive/quotient declarations requiring separate audit, and specific hostile controls for incorrect side orientation, broken cyclic seams and unsupported topology.

**Trust status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Do not promote or merge this increment, close issue #834, or claim a formalized CW surface before an authorized immutable exact-head #100 kernel and trust replay.
