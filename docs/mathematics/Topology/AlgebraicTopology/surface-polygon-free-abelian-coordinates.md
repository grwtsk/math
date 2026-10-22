# Full canonical polygon abelianization coordinates

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22). The mathematical equivalence is imported from the pinned Mathlib sources, but these new Lean declarations and their source-pairing proofs have **not** been elaborated or kernel-audited.

- Owner: [grwtsk/math#795](https://github.com/grwtsk/math/issues/795).
- Exact parent: [draft PR #785](https://github.com/grwtsk/math/pull/785), head `6530b6815b9ce6f5383b64cd4207892e8c016675`.
- New source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean`.
- Consumed sources: #774 / PR #785, real FreeGroup exponent characters and real canonical Abelianization; #758 / PR #767, signed source incidence and one-cell chains; #745, oriented polygon evaluation; #734, actual ordered genus-g relator; #722, real Heisenberg nonidentity witness.
- Trust/optional-route references: #100 and #159. No new arithmetic or RH dependency.

## 1. Imported, pre-existing algebraic equivalences

For any type A, pinned Mathlib already has

\[
\operatorname{FreeAbelianGroup}(A)
\ \cong_+\ (A\to_0\mathbb Z).
\tag{M1}
\]

This is `FreeAbelianGroup.equivFinsupp`, implemented in Mathlib/Algebra/FreeAbelianGroup/Finsupp.lean. That file attributes the free-abelian/Finsupp equivalence to Johan Commelin and Mathlib contributors. Its input group itself is Mathlib's *literal additivization* of the canonical Abelianization of FreeGroup A, rather than a new unrelated group model.

For **finite** A, the existing Mathlib `Finsupp.addEquivFunOnFinite` provides

\[
(A\to_0\mathbb Z)\ \cong_+\ (A\to\mathbb Z).
\tag{M2}
\]

Both are real AddEquiv values; neither result is novel to grwtsk/math. This increment directly composes (M1)–(M2) with **A = GenusLetter k**, where #758 proves

\[
|A|=2(k+2)=2g,\quad g=k+2\ge2,
\]

and `OneCellChains k := A→ℤ` is the *same* existing cell-indexed integer vector type, not a newly invented coordinate space.

The resulting exact equivalence is

\[
\boxed{
\operatorname{FreeAbelianGroup}(A)
\ \cong_+\
\operatorname{OneCellChains}(k)
}.
\tag{E1}
\]

Using Mathlib's additive-to-multiplicative type-tag equivalence, the source further constructs the genuine group equivalence

\[
\boxed{
\operatorname{Abelianization}(\operatorname{FreeGroup}(A))
\ \cong_*\
\operatorname{Multiplicative}(A\to\mathbb Z).
}
\tag{E2}
\]

The source names are `freeAbelianCoordinates` and `canonicalAbelianizationCoordinates`; the latter does NOT postulate an isomorphism. It is composed from the trusted upstream Mathlib isomorphisms, with the existing canonical group quotient as its actual domain.

## 2. What the new source pairing must prove

The genuinely new obligation is not (E1), but that (E2) agrees with the **literal source generator and edge word** already formalized in #745/#758/#774.

Each source generator a maps to the actual Kronecker basis vector

\[
e_a(x)=\begin{cases}1 & x=a,\\ 0 & x\ne a.\end{cases}
\]

Source-level `canonicalAbelianizationCoordinates_generator` proves this on `Abelianization.of(FreeGroup.of a)`.

The existing #774 `exponentCharacter k x` is a true group homomorphism

\[
\varepsilon_x:\operatorname{FreeGroup}(A)\to
\operatorname{Multiplicative}(\mathbb Z)
\]

whose generator value is that same Kronecker integer. The new `canonicalProjectedCharacter k x` projects the **actual full canonical quotient equivalence** onto coordinate x, then composes with `Abelianization.of`. Both are bona fide group homomorphisms from the SAME FreeGroup source.

The proof script uses Mathlib's `FreeGroup.ext_hom` on their generator images, not a finite list of experiments or an unverified source map, to establish equality of those complete homomorphisms:

\[
\varepsilon_x(w)
=
\operatorname{coordinate}_x\big(
\operatorname{Abelianization.of}(w)\big),
\qquad
\text{for every }w\in\operatorname{FreeGroup}(A).
\tag{E3}
\]

Through #774's `exponentCharacter_polygonWord`, this upgrades the result to a **full vector equation for every literal oriented signed edge list** w:

\[
\boxed{
\operatorname{coordinates}(
\operatorname{Abelianization.of}(\operatorname{polygonBoundaryEval}(w)))
=
(x\mapsto\operatorname{signedWordCoefficient}(x,w)).
}
\tag{E4}
\]

No conditional completeness premise remains *within the algebraic free-group quotient*: (E2) is an actual isomorphism, so (E4) relates the entire canonical abelianization object, not only a selection of its projections.

In particular, the exact #758 `polygonFaceBoundaryVector k`, whose coordinates were computed from the **full original polygonBoundaryWord k**, is the coordinate image under (E2) of the same #734 higher-genus relator:

\[
\operatorname{polygonFaceBoundaryVector}(k)
=
\operatorname{coordinates}(
\operatorname{Abelianization.of}(R_k)).
\tag{E5}
\]

Both sides equal zero, and the proof candidate supplies the **source-preserving equality** (E5) rather than arguing equality merely because both sides have a vanishing norm.

## 3. Exact new kernel criterion

The earlier #774 showed that all actual character coordinates vanish for the complete polygon and separately proved that its canonical abelianization is trivial by the group commutator identity. It did **not** establish the converse for arbitrary words.

The full equivalence (E2) now supplies that missing reverse implication:

\[
\boxed{
\operatorname{Abelianization.of}(w)=1
\quad\Longleftrightarrow\quad
\forall x\in A,\ \varepsilon_x(w)=0
}
\quad
\text{for ALL }w\in\operatorname{FreeGroup}(A).
\tag{E6}
\]

This is `abelianization_eq_one_iff_all_characters_zero`. It is a genuine group-algebraic statement, based on **injectivity of the complete canonical quotient equivalence**, rather than an unsupported assumption that finitely many tests detect group equality.

**Important:** E6 characterizes the *abelianization kernel*, not the identity of the original noncommutative free group. It does not say

\[
(\forall x,\ \varepsilon_x(w)=0)\Longrightarrow w=1.
\]

That false implication is explicitly rejected by the existing Heisenberg witness.

## 4. Positive and hostile source fixtures

The new source retains the negative fixture from #758/#774: omit the inverse b-edge of the first four-edge handle block. The resulting three-edge word has b-coordinate +1 under the true character, so its full canonical quotient coordinate vector is nonzero.

In contrast, the complete first-handle commutator has **every** coordinate zero and lies in the abelianization kernel, yet the true Heisenberg map sends it to the nonidentity central element Z=(0,0,1). Therefore the original FreeGroup word remains nontrivial:

\[
\boxed{
w\ne1 \text{ in FreeGroup}(A),\qquad
\operatorname{coordinates}(\operatorname{Abelianization.of}(w))=0.
}
\]

This same-source fixture demonstrates exactly which information the passage to abelianization loses. Explicit genus-two (four source IDs) and genus-three (six source IDs) controls prevent a vacuous all-empty basis family.

## 5. Open topological and analytical suppliers

The complete algebraic equivalence (E2) does NOT construct the authentic homology of a topological genus-g surface. There remain separate, nontrivial obligations:

1. Instantiate a categorical or module homology quotient from the candidate `differentialOne` and `differentialTwo` of #758, with an actual chain complex and the correct cycles/boundaries source maps.
2. Construct a real compact connected orientable genus-g CW surface with polygon side pairings, one-vertex 1-skeleton and the exact attaching word from #745.
3. Prove the actual van Kampen/fundamental-group equivalence and cellular/singular H1 comparison, including basepoint, attaching-map and source-identity transport. The Mathlib `FundamentalGroup` consumer from #745 remains *conditional*.
4. For a hyperbolic/geodesic interpretation, supply an actual marked hyperbolic metric, oriented primitive geodesic source, true lengths and a complete length-bounded enumeration.
5. Selberg trace, Weil–Petersson integration, random matrix/GUE limits, growing-shift Möbius/Chowla, a zeta divisor and RH remain independently OPEN.

As an external source for the geometry, see Allen Hatcher, *Algebraic Topology*, §§1.2 and 2.2, [official electronic edition](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). Nothing in the new module imports Hatcher's topological theorems into Lean.

## 6. Epistemic and operational boundary

Only one new Lean source, this mathematical note and a passive verification TOML are added on a branch stacked at the exact PR #785 head. No parent source modifications, root import, pinned dependency/toolchain, native VM, F06, workflow, cache or executor actions are authorized.

The replay target must inventory exact source declarations and flags:
- total canonical abelianization equivalence is imported from pinned Mathlib (not newly conjectured);
- source generators, edge signs, incidence coefficients and quotient coordinates agree;
- a single missing inverse edge produces a nonzero quotient coordinate;
- the full first handle has zero coordinates but remains nonidentity in FreeGroup;
- coordinate **kernel detection** does not imply a word is trivial before abelianization;
- no fake categorical CW/topological H1, surface van Kampen, GUE or RH theorem is implied.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Exact-head Lean elaboration, generated-declaration/axiom and full transitive import/unsafe audit, hostile proof replay and accepted #100 trust receipt are prerequisites to merge or theorem promotion.
