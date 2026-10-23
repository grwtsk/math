# Signed polygon incidence as an actual free-group abelianization coordinate

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** The mathematical facts here are standard group theory. The new Lean source is a proof candidate that has not been elaborated or audited by the Lean kernel.

Owner: [grwtsk/math#774](https://github.com/grwtsk/math/issues/774). Exact parent: [draft PR #767](https://github.com/grwtsk/math/pull/767), source head 23b4fe218348f5831ac74a13c7bfeaa4e965fda2.

New source: GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean.

Upstream inputs: #758 supplies the literal signed incidence over the oriented polygon word, #745 supplies the exact free-group polygon evaluation, #734 supplies its specific ordered relator and the Heisenberg letter map, and #722 proves that the integer Heisenberg central element Z is nonidentity and non-proper-power.

## 1. Source-specific free-group characters

Fix k≥0, set g=k+2, and let A be the exact generator type GenusLetter k. The source from #745 represents each oriented edge by a pair (a, direction), where a∈A is the original one-cell source ID.

For every named generator x∈A, define a genuine group homomorphism

\[
\epsilon_x:F(A)\longrightarrow(\mathbb Z,+)
\]

by the universal property of the **actual Mathlib free group**, with ε_x(a)=1 when a=x and 0 otherwise. The Lean codomain is Multiplicative ℤ, and the map is built by FreeGroup.lift. Therefore it preserves every product and inverse in the complete free group, not just in the polygon test word.

The prior module #758 defines a literal signed integer coefficient c_x(w), by summing +1 for each forward x-edge, -1 for every reverse x-edge, and zero for other source IDs. The new theorem candidate exponentCharacter_polygonWord establishes the general identity

\[
\boxed{
\epsilon_x(\operatorname{eval}(w))=c_x(w)
\quad\text{for EVERY finite oriented source-edge word }w.
}
\tag{1}
\]

This is proved by list induction and the actual homomorphism law. It is stronger than rechecking c_x(W_g)=0 only for the one polygon.

## 2. Factor through the genuine canonical abelianization

Because Multiplicative ℤ is abelian, Mathlib's actual Abelianization.lift factors ε_x through

\[
F(A)\xrightarrow{\operatorname{Abelianization.of}}F(A)^{\mathrm{ab}}
\xrightarrow{\bar\epsilon_x}(\mathbb Z,+).
\]

The source name abelianCoordinate denotes that actual quotient homomorphism. For every oriented word,

\[
\bar\epsilon_x(\operatorname{Abelianization.of}(\operatorname{eval}(w)))=c_x(w).
\tag{2}
\]

No new unconstrained "homology coordinate" is introduced.

The earlier exact signed-incidence theorem shows c_x(W_g)=0 for all source generators x; hence every authentic integer coordinate vanishes on the complete polygon boundary.

The new module INDEPENDENTLY proves a stronger statement:

\[
\boxed{
\operatorname{Abelianization.of}(\operatorname{eval}(W_g))=1
\quad\text{in }F(A)^{\mathrm{ab}}.
}
\tag{3}
\]

Proof of (3) uses the full ordered product of real free-group commutators and the commutativity of the genuine abelianization quotient. It does **not** infer (3) from the vanishing coordinate family, because the joint injectivity of that family is a separate theorem not proved here. The source name is canonicalAbelianization_polygonBoundary_eq_one. The proof also consumes the exact #745 evaluation identity between the source polygon word and the #734 higher-genus relator.

## 3. An actual negative source fixture

The three-edge word a b a^{-1}, obtained by deleting b^{-1} from the first handle, has coefficient +1 on the original b source ID. The new theorem candidate missingInverseEdge_character_one gives its value under the genuine integer character ε_b, not a fabricated test number.

Because any homomorphism takes the identity to identity, this nonzero integer character implies

\[
\boxed{
\operatorname{Abelianization.of}(\operatorname{eval}(a b a^{-1}))\ne1.
}
\tag{4}
\]

Thus the source can distinguish a corrupted polygon side list from a legitimate four-edge handle block. This rejects an always-zero "cellular boundary checker."

## 4. Strict information loss: complete handle block versus Heisenberg

For a complete single handle block w=a b a^{-1} b^{-1}, every ε_x value is zero, and its image under actual canonical abelianization is one. Nevertheless, for the **first handle's exact named generators**, the real free-group word evaluates under #734's genuine FreeGroup.lift map to the integral Heisenberg central element Z=(0,0,1).

The parent #722 proved Z≠1. Therefore

\[
\boxed{
w\ne1\text{ in }F(A),
\qquad
\operatorname{Abelianization.of}(w)=1.
}
\tag{5}
\]

This is the source level firstHandleBlock_in_kernel_nontrivial theorem candidate. It makes a precise connection to the nonabelian obstruction, unlike a general analogy about projections losing information.

Equations (1)–(5) provide the exact group-algebraic comparison missing between issue #758's finite incidence vector and issue #722's Heisenberg kernel witness. This does not assume a closed surface exists.

## 5. What remains mathematically OPEN

Mathlib has an established FreeAbelianGroup construction and a general abelianization universal property. The present Lean module does NOT yet prove a joint coordinate equivalence

\[
F(A)^{\mathrm{ab}}\simeq\mathbb Z^{A}
\]

or instantiate categorical degree-one homology from the candidate chain maps. Those would be additional, smaller algebraic suppliers.

More importantly, no actual topological genus-g polygon quotient, CW attaching map, cellular van Kampen proof, Hurewicz equivalence, marked fundamental-group isomorphism, topological H1 or compact hyperbolic metric/geodesic length is constructed. The abstract free-group quotient in (3) is not, by itself, a geometric surface.

Allen Hatcher, *Algebraic Topology* (2002), §1.2 and §2.2 provides the external classical geometric and cellular-homology constructions; the source proof consumes only existing algebraic Mathlib results. Official text: [Hatcher's Algebraic Topology](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html).

## 6. Distinct program obstructions

- #722/#734: noncommutative Heisenberg information can detect a primitive commutator invisible to abelianization. This module provides a genuine algebraic witness of the corresponding kernel in the literal original free-group source.
- #758: the source-specific candidate cellular differential is zero; the new homomorphisms explain exactly how its coefficients arise as genuine free-group character values. Neither result proves a topological H1 comparison.
- #653: modulo-q character aliasing is a different quotient that can conflate distinct integral coordinates; the present integer characters cannot repair finite-q aliasing without another theorem.
- #198, #205 and #545: Cech and signed Hodge consumers need their own chain maps, pairings and metrics; no Hodge operator is supplied.
- #121/#168: sofic macroscopic spectral approximations and GUE microscopic gaps are still separated by genuine operator and statistic gates.
- #516, RH #15: no growing-shift Möbius/Chowla supplier, zeta divisor identification or Riemann criterion is produced.

All these comparisons remain precisely limited to the theorem statements shown.

## 7. Qualification boundary

The isolated child PR adds one Lean source module, this note and a passive source-bound verification specification. It modifies none of its parent files, toolchain pins, root imports, CI/workflows, cache/native-VM/F06 executor inputs or mathematical dependencies.

The passive target must inventory exact declaration names/kinds and import dependencies, require proper signed inverse handling, a positive deleted-inverse-edge fixture, the complete relator's actual quotient identity, the first-handle nonidentity via Heisenberg, and all missing topological, spectral and arithmetic obligations.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** A source script is not a proof certificate. Exact-head authorized Lean elaboration, generated declaration/type reconciliation, transitive axiom/unsafe/import audits, hostile fixtures and the policy-compliant #100 replay receipt are necessary before accepting, merging or closing.
