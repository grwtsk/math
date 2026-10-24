# Positive primitive-conjugacy certificates from signed integral homology

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22). This note documents generic mathematical facts and candidate Lean source scripts. The new declarations have NOT undergone exact-head Lean elaboration or a transitive axiom audit.

- Owner: [grwtsk/math#704](https://github.com/grwtsk/math/issues/704).
- Exact parent: [draft PR #700](https://github.com/grwtsk/math/pull/700), head `2949a153ebb8553284757687ac83d45d64aac01e`.
- New reusable producer: `GRWTSK/GroupTheory/Words/IntegralHomologyPrimitive.lean`.
- New direct consumer: `GRWTSK/Analysis/Fourier/FiniteGeodesicHomologyPrimitive.lean`.
- Consumes [#694](https://github.com/grwtsk/math/issues/694) (group primitive/conjugacy), [#687](https://github.com/grwtsk/math/issues/687) (bounded-word source), [#674](https://github.com/grwtsk/math/issues/674) (finite primitive coverage), [#665](https://github.com/grwtsk/math/issues/665) (support radius), [#653](https://github.com/grwtsk/math/issues/653) (modular alias budget). Optional route discipline #159; trust #100; RH target #15.

## 1. Exact generic algebra, not a root enumeration

Let \(G\) be any group and let \(h:G\to\mathbb Z\) be a **genuine group homomorphism into the additive integers**. Lean encodes the same map as

\[
h:G\longrightarrow{}^{*}\operatorname{Multiplicative}(\mathbb Z).
\]

For every \(r\in G\) and natural \(n\ge0\), homomorphism preservation of powers yields

\[
h(r^n)=n\,h(r)
\]

in the additive integer notation. Consequently, if \(g=r^n\) and \(n\ge2\), then \(n\) divides \(h(g)\). This implication is exact and holds for **all** group roots \(r\), not merely roots in a bounded search space.

Therefore, if \(h(g)=1\) or \(h(g)=-1\), no proper positive power representation is possible. Since \(h(1_G)=0\), the same unit value also forces \(g\ne1_G\).

The source candidate proves

\[
\boxed{
\exists\,h:G\to\mathbb Z,\quad |h(g)|=1
\quad\Longrightarrow\quad
g\ne1_G\ \land\
\neg\exists r\in G,\ n\ge2:\ r^n=g.
}
\tag{H1}
\]

The actual theorem `isPrimitiveConjugacy_of_unit_integerValue` accepts a proved `IsUnit ((h g).toAdd)`; separate lemmas handle the exact \(+1\) and \(-1\) values. `exponent_dvd_integerValue` retains the root exponent and actual homomorphic source. The proof uses the existing Mathlib `MonoidHom.map_pow`, `Multiplicative.toAdd_pow`, `Int.nsmul_eq_mul`, `isUnit_of_dvd_unit` and `Int.isUnit_iff`. No arithmetic or geometric hypothesis is concealed.

Because the codomain is abelian, the integer character is invariant under the *actual Mathlib* `IsConj` relation. The producer includes `integerValue_eq_of_isConj`. Positive concrete group examples are the elements \(+1,-1\in(\mathbb Z,+)\), viewed through the multiplicative type tag. No surface interpretation of those examples is implied.

**Important distinction:** equation (H1) is a *sufficient* positive certificate, not a complete proper-power or conjugacy decision procedure. Failure to find an integer-unit homomorphism does not imply the group element is a proper power. A genuine primitive separating closed geodesic on an oriented hyperbolic surface can have zero ordinary homology. This limitation prevents this new theorem from incorrectly accepting or rejecting all primitive terms in a full Selberg trace.

## 2. Signed linear functionals see more than coordinate \(\pm1\)

The trace packet from #661 records signed integer homology labels

\[
H(a)=(H_1(a),\ldots,H_m(a))\in\mathbb Z^m
\]

for a supplied candidate source identifier \(a\). Choose signed coefficients \(c_i\in\mathbb Z\) and define the finite scalar

\[
\langle c,H(a)\rangle_{\mathbb Z}=\sum_{i=1}^{m}c_iH_i(a).
\]

This is `signedHomologyPairing` in the new consumer. The coefficients are unrestricted integers, so a Bezout combination can provide a unit even when no single coordinate is \(\pm1\).

For instance,

\[
H=(2,3),\quad c=(-1,1),\quad
\langle c,H\rangle=-2+3=1.
\]

`toyBezout_pairing_one`, `toyBezout_pairing_unit` and `toyBezout_coordinates_nonunit` supply positive and hostile finite arithmetic checks. This example is **not** claimed to come from a particular geodesic or group homomorphism.

The group theorem can use this pairing only if a separate source theorem verifies that the actual group homomorphism value of the decoded word equals **the same** packet pairing. A textual match of numbers does not provide that theorem.

## 3. Exact source-preserving decoder adapter

The new `SignedHomologyWordGate` consumes the earlier #687 `BoundedWordGeometricGate`, and retains #694's actual group \(G\), alphabet-to-group letter evaluation, and quotient-source map from Mathlib's `ConjClasses G\) into optional source IDs.

For each successful decode \(D(w)=\operatorname{some}(a)\), it requires

\[
\boxed{
h(E(w))=\sum_i c_i\,H_i(a)
}
\tag{H2}
\]

in signed integer notation, where \(E(w)\) is the genuine ordered group evaluation from #694 and \(H(a)\) is the exact source-bound integral label already used by the finite trace packet.

It separately requires that this **same integer** is a unit:

\[
\operatorname{IsUnit}\!\left(\sum_i c_iH_i(a)\right).
\tag{H3}
\]

Under (H2)–(H3), the generic theorem (H1) proves that every accepted word is a nonidentity non-proper-power element of the selected **actual group \(G\)**. The source declaration `accepted_isPrimitive_of_signedHomology` discharges #694's formerly supplied primitive-acceptance premise, and `toConjugacySoundWordGate` constructs the exact already-defined consumer record.

Existing source-level conclusions can then be reused without new proof assumptions:

- Empty-word rejection, since the empty product has homology value \(0\), never an integer unit.
- Repeated-word rejection, since an evaluated doubled word is a square.
- Equality of decoded optional source IDs under valid cyclic word splits, because of actual Mathlib conjugacy class factorization.
- The previous #687 finite trace projection inequality, with all **unchanged** support-radius, length-floor, cutoff, finite-universe, source-identity and modular alias-error hypotheses.

The new `signed_homology_trace_error_le_alias` is therefore a **conditional transport**, not a new spectral trace identity or an arithmetic RH supplier.

## 4. What this does NOT solve

**Primitivity:** The procedure detects only decoded words supported by a unit-valued signed integral functional. It cannot classify null-homologous primitive curves (such as separating simple closed geodesics). Nor does it provide a complete group-root search or a decision algorithm for nonprimitive classes.

**Source authentication:** The record holds an actual typed homomorphism \(h:G\to\mathbb Z\) and a proof of (H2), but it does not construct the fundamental group of a marked hyperbolic surface, identify \(G\) with it, authenticate the chosen homomorphism as the surface's H₁ class, or prove the packet length and homology data come from real geodesics. A caller might instantiate an abstract group and formal records; that alone cannot be promoted to geometric reality.

**Finite completeness:** The base decoder's `short_has_code` premise still quantifies over every relevant source in a named *finite* universe. This branch does not prove a metric-dependent word-length bound or supply a complete primitive oriented conjugacy class enumeration. Indeed, restricting acceptance to unit-valued homology cannot exhaust **all** primitive geodesics, because separating primitive geodesics are null-homologous.

**Trace and Riemann hypothesis:** Marklof–Monk's geometric side, Weil–Petersson integration and GOE/GUE number variance remain external mathematical inputs (Jens Marklof and Laura Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, *IMRN* 2024, DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239)). Neither a Fourier alias bound nor a primitive-source witness identifies zeta zeros, supplies the growing-shift Möbius packet of #516 or proves RH #15.

## 5. Hostile tests and exact trust boundary

The passive verification target should require these tests:

- A root exponent \(n\ge2\) makes the integer homology value divisible by \(n\); it cannot be \(+1\) or \(-1\).
- The identity maps to \(0\), not an integer unit; nonidentity must be separately proved.
- The actual integer character is a group homomorphism; an arbitrary numeric lookup table does not qualify.
- The actual packet pairing matches the group word image for **each accepted source identity**, not another row, shifted label, modulo-\(q\) residue or a numerically similar class.
- The \((2,3)\) Bezout fixture has pairing \(1\), but no coordinate has unit magnitude.
- Zero homology yields zero pairing for every coefficient choice; this does not refute primitivity.
- Failure to find a unit pairing is not failure of group primitivity, and the unit-witness subroute cannot be called a complete Selberg index enumeration.
- Previously held empty/repeated word and cyclic-conjugacy controls must survive adapter construction.
- All earlier Fourier, length, source-coverage and q-alias terms remain explicit; no GUE, Chowla, zeta-zero or RH promotion is allowed.

The new module is an isolated GroupTheory supplier with a direct Analysis/Fourier consumer, plus this note and a **passive** replay target. No public root import, parent branch, pinned dependency, workflow, VM, native cache, or held F06 state may change.

**Evidence state:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. A static declaration inventory is not a Lean kernel proof; exact-head elaboration, generated declaration/types, transitive trust/axiom review, hostile fixtures and policy-compliant #100 replay are mandatory before acceptance.
