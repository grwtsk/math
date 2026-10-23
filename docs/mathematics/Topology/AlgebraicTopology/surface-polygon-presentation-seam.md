# Surface polygon boundary seam: exact free-group relator and conditional fundamental-group transport

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-22). This note accompanies an authored Lean source, not a kernel proof or an authenticated geometric surface.

Owner: [grwtsk/math#745](https://github.com/grwtsk/math/issues/745). Parent: [draft PR #738](https://github.com/grwtsk/math/pull/738), exact head 8cc8520b210bfc5ae2d119fbe9ac5be81bb33002. Group algebra producers: #734 (higher-genus presented groups), #722 (integral Heisenberg root witness), and #704 (homology-unit sufficiency).

## 1. Actual finite polygon boundary identity

For \(g=k+2\ge2\), reuse the **same** source generator type

\[
\mathcal A_k=\operatorname{Fin}(4)\sqcup
(\operatorname{Fin}(k)\times\mathrm{Bool}).
\]

A signed polygon side is an element of \(\mathcal A_k\times\mathrm{Bool}\). The final Boolean sign determines whether that side is interpreted as the original free-group generator or its inverse. No side is a genuine geometric curve or topological path in this module.

A handle block is the *literal ordered four-edge list*

\[
B(a,b)=((a,+),(b,+),(a,-),(b,-)).
\]

The source gives a concrete evaluator into Mathlib's actual \(\operatorname{FreeGroup}(\mathcal A_k)\) and proves the candidate identity

\[
\operatorname{eval}(B(a,b))
=(\operatorname{of}(a))(\operatorname{of}(b))
(\operatorname{of}(a))^{-1}(\operatorname{of}(b))^{-1}
=[a,b]. \tag{P1}
\]

It uses `List.ofFn` for all additional handle blocks, `List.flatten` for their directed edges, and a noncommutative `List.prod` under the exact original ordering. The basic concatenation and flatten identities are stated separately.

The resulting word \(W_g\) is the ordered concatenation of all \(g\) four-edge blocks. Its evaluation is the **identical relator** consumed by Mathlib's `PresentedGroup` in #734:

\[
\boxed{\operatorname{eval}(W_g)=
R_g=\prod_{i=1}^g[a_i,b_i].} \tag{P2}
\]

The named source theorem is `polygonBoundaryWord_eval_eq_relator`. The boundary cases \(g=2\) and \(g=3\) are explicit, and the two initial blocks have eight directed edges.

**Scope:** P1–P2 are finite free-group algebra identities, NOT a topological quotient, a polygon attaching map, a van Kampen theorem, or a marked surface's fundamental-group presentation.

## 2. Imported topology — exactly what remains missing

Allen Hatcher, *Algebraic Topology* (2002), §1.2, Proposition 1.26, gives the effect of attaching 2-cells on fundamental groups and computes the orientable genus-\(g\) surface presentation from one 0-cell, \(2g\) 1-cells, and one 2-cell. Official edition: [Hatcher Algebraic Topology](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). The relation is the ordered word in P2.

Mathlib has the TRUE `FundamentalGroup X x` as a basepoint automorphism group in a fundamental groupoid, and it has general CW-complex foundations. The inspected Mathlib search did **not** locate an already accepted genus-\(g\) polygon quotient plus the precise cellular van Kampen/presentation equivalence needed here. This is a statement about this review's search, not a global assertion of absence from all libraries.

For an actual topological space \(X\), the source therefore introduces a conditional record `MarkedFundamentalGroupAdapter X x k` containing:

1. a literal group equivalence \(e:\pi_1(X,x)\simeq\Gamma_g\), where \(\Gamma_g\) is the presented group from #734;
2. a chosen oriented loop homotopy class \(\ell\in\pi_1(X,x)\);
3. a proof \(e(\ell)=[a_1,b_1]\) for the **same exact** oriented first-handle element.

The record is *not instantiated* with any genus-\(g\) hyperbolic surface by this source. It cannot convert an arbitrary space to a surface by its name.

## 3. Exact conditional consumption and source identity

The new consumer first proves that the identified loop itself is the commutator of the inverse images of the initial handle generators:

\[
\ell=[e^{-1}(a_1),e^{-1}(b_1)]. \tag{T1}
\]

It then composes \(e\) with the source-authored Heisenberg homomorphism \(\Gamma_g\to H(\mathbb Z)\) from #734. The loop maps to \(Z=(0,0,1)\). Since #722's central element \(Z\) has no proper root of exponent \(n\ge2\), the **actual** \(\pi_1(X,x)\) element \(\ell\) is nonidentity and non-proper-power.

Independently, T1 identifies that same loop as an actual commutator, so Mathlib's canonical abelianization kills it. The resulting conditional theorem is

\[
\boxed{
\operatorname{PrimitiveConjugacy}_{\pi_1(X,x)}(\ell)
\;\land\;
\operatorname{Abelianization.of}(\ell)=1.
} \tag{T2}
\]

A further source theorem constructs the same reusable `HomologyInvisiblePrimitiveWitness` on the **real FundamentalGroup type**, and another proves that all genuine integer characters of \(\pi_1(X,x)\) vanish on that same loop.

This is an exact theorem conditional on a presentation equivalence and loop matching. It is NOT proof those objects exist for a chosen surface, and not a hyperbolic geodesic or trace coefficient construction.

## 4. Open topological and geometric suppliers

A genuine topological next step needs:

- construct the closed orientable genus-\(g\) surface via an oriented 4g-gon side-pairing quotient (or an equivalent authenticated space), including a basepoint and exact boundary attaching map;
- prove its 1-skeleton's actual \(\pi_1\) is free on the selected \(2g\) oriented 1-cells, preserving generator identity;
- prove a cellular van Kampen / attaching-2-cell theorem and use **the exact boundary word P2** to obtain the normal-closure quotient group equivalence;
- prove the selected oriented first-handle loop matches the presented first-handle commutator, including basepoint and orientation transport;
- only afterward supply a marked compact hyperbolic metric, unique closed-geodesic representative, positive length, primitive-source enumeration, twisted Selberg test coefficients, and any Weil–Petersson/GUE analysis.

These are NOT satisfied by defining an arbitrary group, an uninhabited record, or an unsupported geometric axiom.

## 5. Connections retained without unjustified upgrades

The exact information-loss theorem #722/#734 is that abelianization kills a primitive group commutator detected by a nonabelian Heisenberg representation. The new polygon identity supplies a finite algebraic seam needed to relate this statement to a genuine surface. It does **not** connect the theorem to the following independent consumers:

- Torelli/Johnson filtration: mapping-class invariants are distinct from a specific surface fundamental-group element.
- #653: modular character aliases are distinct from homology-invisible commutator data; neither fixes the other.
- #198: filled Čech cochains demand an explicit chain map, not a shared word such as cell or boundary.
- #205/#545: positive Hodge and signed consumer forms remain separate; no form or Hodge Laplacian is defined by P2.
- #121/#168: local sofic operators and microscopic GUE spectra require separate actual operator and zeta-source maps.
- #516: the ordinary-prefix, harmonic-shift, growing-depth Möbius packet is unrelated to P2 without a new theorem.
- RH #15: no zeta divisor identification or Riemann criterion has been supplied.

## 6. Audit

The intended change is exactly one added isolated Lean source module, this note, and a passive verification manifest. The prior PR #738 source, global roots, toolchain, dependency manifests, CI, native/VM/F06 executors, and caches remain untouched.

Source inventory and hostile controls cover orientation reversal, noncommutative edge order, base and extra blocks, genus 2/3, missed inverse edges, false free-group-to-fundamental-group promotion, uninhabited topology adapter, wrong source loop, missing van Kampen, and any unsupported spectral/RH claim.

**Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** An exact-head Lean elaboration, declaration/type/axiom and transitive import audit, and authorized #100 replay are required before formal proof promotion.
