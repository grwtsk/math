# Heisenberg primitive witness: a separating genus-two commutator invisible to homology

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** This is a mathematical specification and two authored Lean source scripts; it is **not** an elaboration or kernel proof receipt.

- Owner: [grwtsk/math#722](https://github.com/grwtsk/math/issues/722).
- Exact stacked parent: [PR #712](https://github.com/grwtsk/math/pull/712), head `0678ec3ff744eab8a19f9c7d9efa4dded7ea6836`.
- Generic producer: `GRWTSK/GroupTheory/Words/IntegralHeisenbergPrimitive.lean`.
- Exact presented-group consumer: `GRWTSK/GroupTheory/Words/GenusTwoHeisenbergWitness.lean`.
- Existing producer consumed: `GRWTSK.GroupTheory.Words.PrimitiveConjugacy.IsPrimitiveConjugacy` (#694).
- Explicitly contrasted producer: `GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive.isPrimitiveConjugacy_of_unit_integerValue` (#704).
- Mathlib imports: `GroupTheory.PresentedGroup`, `GroupTheory.Abelianization.Defs`, group commutator/conjugacy and integer arithmetic.
- Optional research connections: #198 (Čech/Hodge), #205/#545 (positive versus signed form), #653 (finite modular vs integer-character projection), #168 (macroscopic vs microscopic spectrum), #516 (fixed-average versus growing-shift arithmetic), #159 (optional-adapter controls); canonical RH #15.

## 1. Exactly what the ordinary homology certificate misses

Issue #704 supplies a valid sufficient theorem for a genuine group homomorphism \(h:G\to(\mathbb Z,+)\):

\[
h(g)\in\{+1,-1\}
\quad\Longrightarrow\quad
g\ne 1,\quad
\neg\exists r\in G,\ n\ge 2:\ r^n=g.
\tag{A}
\]

But it is not a necessary characterization. A group element may belong to the **kernel of abelianization** and nonetheless be primitive (nonidentity and not a proper positive power). The purpose of #722 is to construct such an element *with a real, proof-bearing nonabelian representation*.

### The integral Heisenberg group

Use triples \(H(\mathbb Z)=\mathbb Z^3\) with multiplication

\[
(a,b,c)\cdot(a',b',c')=
(a+a',b+b',c+c'+ab').
\tag{H1}
\]

Its inverse is

\[
(a,b,c)^{-1}=(-a,-b,-c+ab).
\tag{H2}
\]

All the group operations are explicitly constructed in `IntegralHeisenberg.lean`, rather than assumed as uninterpreted data.

Define \(X=(1,0,0)\), \(Y=(0,1,0)\), and \(Z=(0,0,1)\), with the **fixed** commutator convention

\[
[u,v]=uvu^{-1}v^{-1}.
\]

Then, directly from (H1)–(H2),

\[
\boxed{
[X,Y]=Z,\qquad [X,Y^{-1}]=Z^{-1},
\qquad [X,Y][X,Y^{-1}]=1.
}
\tag{H3}
\]

The source lemmas `comm_X_Y`, `comm_X_Y_inv` and `genusTwo_relation` express these identities.

### No power can produce the central unit

For an arbitrary \(r=(a,b,c)\in H(\mathbb Z)\),

\[
r^n =
\left(na,\,nb,\,nc+\binom{n}{2}ab\right).
\tag{H4}
\]

The source proof does **not** need to formalize the binomial third coordinate in full. It proves the first two power coordinates are \(na,nb\), and that if \(a=b=0\), the third is \(nc\). If \(r^n=Z\) with \(n\ge2\), then \(na=nb=0\) forces \(a=b=0\), and the final coordinate would demand

\[
nc=1,\quad c\in\mathbb Z,\quad n\ge2,
\]

which is impossible. Thus

\[
\boxed{Z\ne1,\quad \neg\exists r\in H(\mathbb Z),\ n\ge2:\ r^n=Z.}
\tag{H5}
\]

The generic reusable theorem is:

\[
\boxed{
\phi:G\longrightarrow H(\mathbb Z)\ \text{a group homomorphism},
\quad \phi(g)=Z
\quad\Longrightarrow\quad \operatorname{PrimitiveConjugacy}_G(g).
}
\tag{H6}
\]

This is `primitive_of_hom_maps_to_Z`. Unlike an unverified numerical witness, the theorem requires a **literal group homomorphism** and equality of the actual image to \(Z\).

## 2. The genus-two one-relator group is constructed, not postulated

Let

\[
\Gamma_2=
\left\langle a_1,b_1,a_2,b_2
\ \middle|\
[a_1,b_1][a_2,b_2]=1
\right\rangle .
\tag{G1}
\]

This is the standard abstract presentation of the fundamental group of a closed orientable genus-two surface. In Lean, `GenusTwoPresentedGroup` is **literally** `Mathlib.PresentedGroup` applied to the singleton relator in `FreeGroup (Fin 4)`—a quotient by the normal closure of that relator. Thus it is a real group object.

The source defines the generator assignment

\[
a_1\mapsto X,\qquad
b_1\mapsto Y,\qquad
a_2\mapsto X,\qquad
b_2\mapsto Y^{-1}.
\tag{G2}
\]

By (H3), the image of the exact defining relator is one. The source `heisenbergLetter_respects_relator` is intended to discharge the exact premise of `Mathlib.PresentedGroup.toGroup`. It then constructs

\[
\phi:\Gamma_2\longrightarrow H(\mathbb Z)
\]

as an actual group homomorphism—not as an arbitrary mapping of four source labels.

For the first-handle separating commutator \(s=[a_1,b_1]\), the source shows

\[
\phi(s)=Z.
\]

Combining this with (H6),

\[
\boxed{
s\ \text{is nonidentity and not a proper power in }\Gamma_2.
}
\tag{G3}
\]

The source theorem is `separatingCommutator_primitive`.

**Geometric status:** Mathlib's exact *presented group* is formalized at source level. The theorem identifying this abstract presentation with \(\pi_1(X)\) for a specific **marked compact hyperbolic genus-two surface**, together with the correspondence of \(s\) to its oriented separating geodesic, remains an independent external geometric input. No actual geodesic length, length-spectrum completeness or certified primitive closed-geodesic enumeration is constructed.

## 3. The same primitive class is invisible to genuine abelianization

Because \(s\) is a group commutator, the canonical Mathlib map

\[
\operatorname{Abelianization.of}:
\Gamma_2\to\Gamma_2^{\mathrm{ab}}
\]

sends \(s\) to the identity:

\[
\boxed{\operatorname{Abelianization.of}(s)=1.}
\tag{G4}
\]

This is source theorem `separatingCommutator_abelianization_eq_one`. It uses the **actual quotient** by the commutator subgroup, rather than an invented vector of zero coordinates.

For any actual group homomorphism \(h:\Gamma_2\to(\mathbb Z,+)\), the Mathlib universal property of abelianization forces

\[
\boxed{h(s)=0.}
\tag{G5}
\]

Thus **every** integer-unit homology witness of type #704 fails to detect this particular \(s\), even though the Heisenberg representation proves \(s\) primitive. The source theorem `separatingCommutator_integerCharacter_zero` makes this failure explicit.

A reusable `HomologyInvisiblePrimitiveWitness` retains the exact element, the group-level primitive proof, and its abelianization-to-one equation. Its `no_integer_unit` theorem shows that *no* integer character can give a unit-valued witness on that same element.

This yields a mathematically exact obstruction rather than just the absence of a computed certificate:

\[
\boxed{
\operatorname{PrimitiveConjugacy}_{\Gamma_2}(s)
\quad\land\quad
\operatorname{Abelianization.of}(s)=1.
}
\tag{G6}
\]

## 4. Relations to recently resolved problems and outstanding conjectures

The following are **research comparisons, not implication arrows**.

| Result/interface | Shared loss of information | Exact mathematical disposition |
| --- | --- | --- |
| Torelli/Johnson filtration | First homology action is blind to separating twists and deeper group-level data | Analogous filtration strategy; no Torelli action or Johnson homomorphism formalized here |
| Surface-group Magnus-type embeddings | Noncommutative representations can retain information lost by simple H₁ tests | Closest external methodological connection; our specific Heisenberg proof uses elementary finite algebra and the standard presentation |
| #653 finite character orthogonality | Reduction modulo \(q\) forgets integer congruence aliases | Distinct obstruction, not solved by Heisenberg. A genuine source-map from the presented group to a q-character trace packet remains open |
| #198 Čech/Hodge filling | Missing higher gluing/curvature information can survive a lower-degree projection | Structural analogy only; there is no chain map from (G6) to the filled Čech complex |
| #205/#545 Hodge/signed forms | A positive metric does not control the sign of an independent consumer | Structural analogy only; neither the Hodge form nor the Weil functional is constructed by (G6) |
| #168 GUE/sofic | Local/macroscopic spectral data do not determine microscopic gap statistics | Structural analogy only; no operator or zeta-zero source identified |
| #516 Chowla/growing shifts | Fixed shifts or a different averaging operator cannot supply the required uniform weighted maximal packet | Structural analogy only; no arithmetic input follows from (G6) |

Recent relevant primary literature includes Michael Klukowski, *Simple closed curves, non-kernel homology and Magnus embedding*, *Journal of Topology* (2025), DOI [10.1112/topo.70023](https://doi.org/10.1112/topo.70023), on richer surface-group representations; and the independent Heisenberg-quotient perspective in *Heisenberg homology on surface configurations*, *Mathematische Annalen*, DOI [10.1007/s00208-025-03242-2](https://doi.org/10.1007/s00208-025-03242-2). **The latter concerns surface configuration/braid groups, not the present quotient of \(\pi_1(\Sigma_2)\); their groups must not be identified.**

The exact standard genus-two surface presentation and its separating-curve interpretation are classical imported background. The calculations (H1)–(H6) and the one-relator group map (G1)–(G6) are the selected mathematical increment.

## 5. What it does not prove

- It does not give a complete decision algorithm for proper powers in a surface group. A quotient witnessing the primitive status of **one** element does not classify all source words.
- It does not prove that every homology-zero primitive class is detected by this fixed Heisenberg representation, or by any specified nilpotent quotient. A different homologically invisible element may require a deeper lower-central-series or nonnilpotent invariant.
- It does not construct a marked hyperbolic surface, a complete length-bounded primitive conjugacy enumeration, authentic Selberg weights, Weil–Petersson integration or any random-matrix limit.
- It does not imply GUE spectral gaps, de Bruijn–Newman estimates, arithmetic Möbius/Chowla correlation bounds, a zeta-divisor identification or the Riemann hypothesis.

## 6. Source and verification obligations

The intended changes are exactly two new generic GroupTheory modules, this mathematical note and one passive source-bound TOML target. No root import, source mutation of parent #712, pinned dependency/toolchain, native execution, VM, workflow, cache or F06 action is authorized.

The passive target should enumerate every source-level declaration in both modules, verify all source blob identities, require an exact-head generated declaration/type and axiom/import audit, and check hostile fixtures:

1. \(Z\ne1\), central x=y=0 but central z=1, and no n≥2 root despite abelianization triviality;
2. correct commutator orientation and Y-inverse sign, genuine genus-two relator equality;
3. the genuine `PresentedGroup.toGroup` relator proof rather than a four-generator table;
4. integer-unit homology witness **fails** for \(s\) while a nonabelian primitive witness **succeeds**;
5. no unsupported surface-group/hyperbolic length/geodesic enumeration or RH implication;
6. explicit distinctions from finite modular alias, Hodge positivity, and spectral gaps.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Static repository inspection and a GitHub commit do not qualify as Lean-kernel acceptance. The math-owned #100 target and externally approved immutable replay receipt are still required.
