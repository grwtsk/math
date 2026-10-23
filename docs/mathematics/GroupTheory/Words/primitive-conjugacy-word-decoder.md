# Primitive conjugacy, cyclic word splits, and the finite Selberg decoder boundary

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** This document explains two mathematical source scripts. It does **not** assert Lean elaboration, kernel acceptance, or a completed hyperbolic-surface source certificate.

- Owner: [grwtsk/math#694](https://github.com/grwtsk/math/issues/694).
- Exact parent: [draft PR #692](https://github.com/grwtsk/math/pull/692), head `4ac69d197da1874cfa5275a78145289c5115f6e2`.
- Generic reusable module: `GRWTSK/GroupTheory/Words/PrimitiveConjugacy.lean`.
- Consuming module: `GRWTSK/Analysis/Fourier/FiniteGeodesicConjugacyGate.lean`, importing the generic result and #687's `FiniteGeodesicWordCover`.
- Downstream optional interfaces: #674 (finite primitive coverage), #665 (Fourier support), #653 (modular alias mass), #159 (typed optional adapter), #100 (trust), #121/#168 (spectral), #516 (arithmetic), RH #15.

## 1. What the Selberg trace actually indexes

A closed oriented geodesic on a compact hyperbolic surface \(X\) corresponds to a conjugacy class in the torsion-free fundamental group \(\pi_1(X)\). The oriented closed geodesic is **primitive** when its group conjugacy class is not a positive proper power. The geodesic need NOT be simple, and a "primitive" element here means a non-proper-power group element, NOT membership in a free basis.

This is standard geometric group theory and appears explicitly in the Selberg trace discussion of *A random cover of a compact hyperbolic surface has relative spectral gap \(3/16-\varepsilon\)*, Geometric and Functional Analysis (2022), Springer [DOI 10.1007/s00039-022-00602-x](https://doi.org/10.1007/s00039-022-00602-x). The Marklof–Monk twisted geodesic trace context is [The Moduli Space of Twisted Laplacians and Random Matrix Theory](https://doi.org/10.1093/imrn/rnae239), *IMRN* (2024).

The actual surface-group/conjugacy-class ↔ geodesic identification is an **imported mathematical theorem**, not locally formalized in these files.

## 2. A minimal generic group-theoretic supplier

For any group \(G\), define

\[
\operatorname{ProperPower}_G(g)
:\Longleftrightarrow
\exists r\in G,\ \exists n\in\mathbb N,\ n\ge2,\ r^n=g,
\]

and

\[
\operatorname{PrimitiveConjugacy}_G(g)
:\Longleftrightarrow g\ne1\;\wedge\;
\neg\operatorname{ProperPower}_G(g).
\]

These are **Propositions**, not Boolean classifiers or algorithms. In particular, on a general infinite finitely presented group the definitions do not imply `Decidable` instances, bound the root exponent, or decide the conjugacy problem.

Conjugation by \(c\in G\) preserves powers exactly:

\[
(c r c^{-1})^n=c\,r^n c^{-1}.
\]

Therefore both predicates are invariant under Mathlib's **real group relation** `IsConj`. The code consumes Mathlib's `isConj_iff`, `conj_pow`, `IsConj.symm` and `ConjClasses.mk_eq_mk_iff_isConj`, rather than creating a fake source-ID equality.

Two elementary hostile consequences are unavoidable:

\[
\neg \operatorname{PrimitiveConjugacy}_G(1),
\qquad
\forall g\in G,\ \neg\operatorname{PrimitiveConjugacy}_G(g^2).
\]

These hold without a torsion-free assumption, although a torsion-free cocompact Fuchsian group would be needed for an actual primitive-geodesic interpretation.

### Exact cyclic split identity

Let \(A\) be an alphabet, let \(\rho:A\to G\) assign a genuine group element to each letter, and let \(E(w)\) be the **ordered** group product of a finite list of letters. Then

\[
E(u\mathbin{+\!\!+}v)=E(u)\,E(v)
\]

and

\[
E(v\mathbin{+\!\!+}u)
=E(u)^{-1}\,E(u\mathbin{+\!\!+}v)\,E(u).
\]

Hence the two group elements are conjugate and determine the SAME `ConjClasses G` element. This is exactly the one-way relation proved by `evalWord_cyclicSplit_isConj` and `conjugacyClassOfWord_cyclicSplit`. It does **not** assert that cyclic splitting detects all group conjugacies. In particular, a surface group's defining relators can make words conjugate even without any raw cyclic split correspondence.

The repeated list \(w\mathbin{+\!\!+}w\) evaluates to \(E(w)^2\), and therefore can never supply a primitive element. No free-group cancellation or reduced-word test is assumed.

### Orientation is not an innocuous quotient

There is **no universal theorem** identifying a conjugacy class with the conjugacy class of its inverse. In the abelian group \((\mathbb Z,+)\), written multiplicatively, \(+1\) and \(-1\) are distinct conjugacy classes. The generic module includes `inverse_class_ne_of_ne` and this integer fixture. A geometric source decoder must declare the oriented/unoriented convention explicitly; equating a closed oriented geodesic with its reversal without a theorem loses source identity.

## 3. Consume the existing bounded decoder, not a new free oracle

The earlier [issue #687](https://github.com/grwtsk/math/issues/687) source constructed \(\mathcal W_{\le L}(A)\), the genuinely finite family of all letter words of lengths at most \(L\), and an `Option` decoder returning source IDs into a supplied finite universe. Its soundness and short-word completeness premises were already explicit. This increment adds `ConjugacySoundWordGate` without modifying that earlier file:

\[
\begin{aligned}
&\text{actual group }G,\quad \rho:A\to G,\\
&\text{existing finite decoder }D:\mathcal W_{\le L}(A)\to\operatorname{Option}(\gamma),\\
&\text{source mapping }C:\operatorname{ConjClasses}(G)\to\operatorname{Option}(\gamma),\\
&D(w)=C([E(w)]),\\
&D(w)=\operatorname{some}(\gamma)\Longrightarrow
\operatorname{PrimitiveConjugacy}_G(E(w)).
\end{aligned}
\]

The last two statements are **external hypotheses** for a prospective actual surface decoder. The new record does not create a conjugacy classifier, a free-group normalizer, an injective map from conjugacy classes to actual oriented geodesic IDs, or a proof that the letters satisfy any surface-group relators.

From these hypotheses the source proves the following implications:

- If the group evaluation of a code is the identity, the decoder **must** return `none`. In particular, every zero-letter word must be rejected as an actual primitive group class.
- If a bounded code's letter list is \(u\mathbin{+\!\!+}u\), it must also be rejected, because its evaluation is a square in \(G\). A general proper-power decision procedure remains **missing**.
- If two accepted or rejected bounded codes have lists \(u\mathbin{+\!\!+}v\) and \(v\mathbin{+\!\!+}u\), their decoder outputs must agree. This follows from actual `ConjClasses G` equality, not from equal lengths, traces, or homology.
- The earlier finite alias-only bound remains available through `conjugacy_sound_trace_error_le_alias`, but it consumes the **same** short-word, support-radius, positive-length-floor, cutoff, and finite-universe hypotheses from #687/#674/#665. The modular alias mass is not assumed zero.

### Strong hostile fixture exposing the old boundary

The previous [PR #692](https://github.com/grwtsk/math/pull/692) contains a deliberately non-geometric `toyWordGate` that maps the empty word and a nonempty word to the same `PUnit` source ID. This is legal for demonstrating noninjective finite `Option` decoding.

That same toy decoder is **invalid as a primitive-group decoder**: the empty word evaluates to \(1\) in every group, so it fails `IsPrimitiveConjugacy`. The new source `toy_always_accept_word_gate_not_geometrically_sound` makes this incompatibility a theorem for any proposed group and strengthened gate over that toy decoder. It prevents promoting a previously useful algebraic fixture into false geometric evidence.

## 4. Exact remaining theorem dependencies

These source-level results are finite and algebraic. The hard next supplier would have to be bound to a **specific marked compact hyperbolic surface**:

1. Present its genuine cocompact Fuchsian/surface fundamental group and verified finite symmetric generating alphabet, with correct relations.
2. Supply an effective, sound evaluation and conjugacy classification/canonicalization procedure; do not assume raw word equality detects group equality, or that cyclic splitting solves the whole conjugacy problem.
3. Provide a **proper-power/primitivity decision procedure** with a proof of soundness at the actual surface-group scope, including treatment of trivial and nonprimitive elements and orientation.
4. Prove that accepted classes identify real oriented primitive geodesics, with exact source labels, lengths and marked integral homology. Equal traces, lengths, or homology classes alone do not prove conjugacy.
5. Prove a quantitative conjugacy-representative bound \(L(B,X,\mathrm{marking})\) for every primitive closed geodesic of length at most \(B\); verify that the finite selected word space covers all such classes. The Milnor–Švarc lemma supplies qualitative quasi-isometry under a proper cocompact isometric action, but its statement alone is not a machine-checked explicit numeric cutoff at this selected marking and metric.
6. Only then compare the genuinely complete oriented primitive/iterate trace source with the **external** Selberg trace formula and Weil–Petersson averaging, and preserve every analytic normalization, exceptional set, and limit.

The generic group results are unconditional classical algebra at their exact scope; **their acceptance as Lean theorems is not yet established**. The group decoder adapter and the geometric identification remain conditional. No GUE/sine-kernel theorem, sofic operator limit, zeta divisor, Liouville/Möbius growing-shift estimate, Chowla or Riemann hypothesis result follows.

## 5. Verification and scope controls

The intended artifact contains **two Lean modules** (generic GroupTheory producer and direct finite Fourier decoder consumer), this mathematical note, and a passive replay TOML. No root import or existing parent file is modified.

The manifest must list each exact source declaration and its source module, distinct imports, a source-to-consumer dependency edge, and hostile checks for: empty word, double word, conjugacy vs equality, inverse orientation, free-basis primitive confusion, surface-group relators, lack of full conjugacy decision, lack of decidable proper-power detection, many-to-one decoding, unverified geometry, vacuous accepted source population, and impossible RH/GUE upgrading.

Only source review is authorized here. Exact-head Lean elaboration, generated declaration/type inventory, dependency and transitive axiom audit, hostile fixtures, and #100's externally accepted replay receipt are required before accepted proof status.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**
