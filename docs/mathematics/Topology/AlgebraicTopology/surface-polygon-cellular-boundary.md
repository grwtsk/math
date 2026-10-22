# Oriented genus-g polygon: exact integral incidence and finite cellular chain ledger

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-22). This document records source-level Lean proof candidates, not a completed Lean kernel audit, authenticated CW surface, or formal singular-homology calculation.

Owner: [grwtsk/math#758](https://github.com/grwtsk/math/issues/758). Parent: [draft PR #751](https://github.com/grwtsk/math/pull/751), exact head d5fc75717c806cc1587cdaceb123437ee39b6e12. Consumer of #745 oriented polygon word and #734 literal surface relator. Trust gate: #100.

## 1. The actual oriented source word

For \(g=k+2\ge2\), the generator ID type is

\[
\mathcal A_k=\mathrm{Fin}(4)\sqcup(\mathrm{Fin}(k)\times\mathrm{Bool}).
\]

It is exactly the source type inherited from #734 and #745. A signed polygon edge is a pair of a generator ID and a Boolean direction. For every generator \(x\), define

\[
\varepsilon_x(a,+)=\mathbf1_{\{a=x\}},
\qquad
\varepsilon_x(a,-)=-\mathbf1_{\{a=x\}},
\qquad
c_x(w)=\sum_{\mathrm{side}\in w}\varepsilon_x(\mathrm{side}).
\]

The implementation derives each coefficient by summing the entire actual source list, rather than postulating that the boundary vanishes. The source proves additivity over concatenation and an ordered-list flatten identity.

The full polygon word is the ordered product of handle blocks

\[
W_g=[a_1,b_1]\,[a_2,b_2]\cdots[a_g,b_g].
\]

Every handle contributes the signed four-edge list \(a,b,a^{-1},b^{-1}\), so for **every** generator ID \(x\), including when the selected letters \(a,b\) coincide,

\[
c_x(a\,b\,a^{-1}\,b^{-1})=0.
\tag{1}
\]

The same cancellation applies to the first two handle blocks and to the flattened ordered list of further blocks. It follows directly from the #745 polygon source that

\[
\boxed{c_x(W_g)=0\quad\text{for every }x\in\mathcal A_k.}
\tag{2}
\]

The name of this new source theorem is signedWordCoefficient_polygon_zero.

### Noncommutativity cannot be deleted

The coefficients in (2) are additive invariants and forget word ordering. But the true free-group relator in #745 is noncommutative and generally is not the identity, even though every generator has exponent sum zero. This is the same kind of lost information exploited by #722's nonabelian Heisenberg witness. This module does not equate zero signed incidence with the relator being trivial.

A hostile fixture deletes the inverse b-edge in the first handle. The remaining three-edge word has signed coefficient **+1** at b, not zero, preventing a vacuous always-zero checker.

## 2. Finite candidate cellular chain data

Build the source-indexed groups

\[
C_2=\mathbb Z,\quad C_1=(\mathcal A_k\to\mathbb Z)
\cong\mathbb Z^{2g},\quad C_0=\mathbb Z.
\]

The chosen combinatorial profile has one face, one vertex and one oriented one-cell per true generator ID. It is not asserted to be the cellular chains of a constructed topological quotient.

Define the actual signed incidence vector from the inherited word:

\[
v_k(x)=c_x(W_g).
\]

The new differentialTwo is a genuine integer linear map \(C_2\to C_1\) defined by \(d_2(n)=n\,v_k\). DifferentialOne is the zero integer linear map \(C_1\to C_0\), reflecting the explicitly chosen one-vertex convention.

The source derives \(v_k=0\) first, and only then obtains

\[
\boxed{d_2=0,\qquad d_1d_2=0.}
\tag{3}
\]

It further proves exact **set** equalities for the finite candidate chain data:

\[
\ker d_1=C_1,\qquad
\operatorname{im}d_2=\{0\}.
\tag{4}
\]

The corresponding elementary algebraic homology quotient is

\[
\ker d_1/\operatorname{im}d_2\cong\mathbb Z^{2g}.
\tag{5}
\]

Equation (5) is an elementary mathematical consequence. The new Lean module proves (3) and the sets in (4), not an instantiated categorical ChainComplex homology quotient. The actual topological homology of a surface is also not constructed.

At the combinatorial counting level, the source proves that the generator type has cardinality \(2(k+2)=2g\), and that the formal cell-count Euler ledger is

\[
1-2g+1=2-2g.
\]

This is a source-bound finite count, not an authenticated topological Euler characteristic.

## 3. External topology and the hard still-open bridge

In classical topology, the closed orientable genus-g surface can be presented by attaching one two-cell along the standard product of commutators to a wedge of 2g circles. Its topological cellular boundary has the same zero signed incidence, and its H1 is free abelian of rank 2g.

Reference: Allen Hatcher, *Algebraic Topology* (2002), §1.2 Proposition 1.26 and §2.2, official [electronic text](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). Those results are imported mathematical context, **not** Lean theorems established by this source increment.

To upgrade the finite ledger, a new producer must construct an actual closed genus-g polygon quotient and one-vertex CW structure, prove that its attaching map is the identical word Wg, establish an isomorphism from its actual cellular chain complex to this finite source model, and separately prove its fundamental-group presentation by cellular van Kampen. A genuine hyperbolic metric, correctly oriented separating loop and geodesic length require still further geometric suppliers.

In particular, a finite boundary computation does not establish the attaching map, Hurewicz theorem, cellular/singular homology comparison or a marked-surface pi1 equivalence.

## 4. Related information-loss interfaces, without false implications

- #722/#734: the Heisenberg quotient detects a primitive element killed by abelianization. The signed boundary models a compatible additive loss of information but does not yet implement an exact free-group abelianization map.
- #198: the filled Cech/Hodge obstruction also distinguishes edge information from a genuinely supplied filled two-cell; no chain equivalence has been constructed.
- #205/#545: the positive Hodge metric and signed consumer forms remain independent; this module has no metrics or Laplacians.
- #653: finite q-character reduction forgets integer equality without a no-wrap theorem; not repaired by the cellular calculation.
- #121/#168: spectral macrolimits do not control microscopic GUE gaps; no operator is built.
- #516 and canonical RH #15: no growing-shift Mobius/Chowla supplier, zeta divisor, or RH conclusion is produced.

Next mathematical suppliers: (i) a literal comparison from these signed coefficients to the free group's canonical abelianization, and (ii) the more difficult construction and verification of the actual topological CW surface and its van Kampen fundamental group.

## 5. Verification boundary

One new isolated Lean source, this mathematical note and a passive verification TOML are the only intended additions to the exact parent PR #751. No existing sources, toolchain, Lake dependencies, root imports, CI, native/VM/F06, workflows or caches are modified.

Hostile controls include wrong inverse signs, deleted edges, wrong source IDs, noncommutative order, k=0 and k=1, source-bound differential linearity, cycles and boundaries derived rather than assumed, and blocking all unsupported surface/spectral/RH upgrades.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Source text and source inventory are not proof qualification. Exact-head Lean elaboration, generated declarations/types, transitive import/axiom audit, hostile fixture replay and #100 immutable acceptance receipt are required before proof acceptance, merge or issue closure.
