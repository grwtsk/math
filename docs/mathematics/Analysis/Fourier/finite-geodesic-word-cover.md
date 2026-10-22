# Bounded word enumeration and the unresolved primitive-geodesic decoding gate

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22). This records finite mathematical algebra and source-level Lean proof candidates, not an elaborated Lean theorem or an authenticated geodesic enumeration.

- Owner: [grwtsk/math#687](https://github.com/grwtsk/math/issues/687).
- Parent: [draft PR #677](https://github.com/grwtsk/math/pull/677) at exact head f508f376bad1558440c755003ff65e19c5648612.
- Upstream exact error interface: #674 (three-error finite trace), #665 (Fourier support), #661 (iterate cutoff), #653 (modular alias), #649 (finite character).
- New module: GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean, initially reviewed source blob d5cab0de6fceccc806cc3337c5aad1627acecd3a.
- Optional route gate: #159. Replay/trust: #100. Spectral and arithmetic targets: #121, #168, #516, RH #15.

## 1. An actual finite search space rather than a free finite set

For a *finite* alphabet \(A\) of \(a\) letters and a declared nonnegative integer word-depth bound \(L\), use the dependent finite type

\[
\operatorname{Words}_{\le L}(A)
:=\coprod_{n=0}^{L}A^n
=
\sum_{n:\operatorname{Fin}(L+1)}
\bigl(\operatorname{Fin}(n)\to A\bigr).
\]

This type contains the empty word and EVERY letter sequence of lengths \(0,\ldots,L\), without postulating an arbitrary selection of codes. Its exact cardinality is

\[
\boxed{
\left|\operatorname{Words}_{\le L}(A)\right|
=\sum_{n=0}^{L}a^n.
}
\tag{W1}
\]

Source declarations \`BoundedWord\`, \`wordLength_le_bound\`, \`emptyWord\`, \`letters\` and \`card_boundedWord\` explicitly expose the finite universe and search cost. A code is only a word of letters. It is NOT necessarily a reduced word, cyclically reduced word, conjugacy representative, word in a particular fundamental group, or primitive closed geodesic.

For a declared finite candidate source universe \(U\) of \(\gamma\) IDs, a caller supplies

\[
\operatorname{decode}:
\operatorname{Words}_{\le L}(A)\longrightarrow
\operatorname{Option}(\gamma).
\]

The actual selected finite set is

\[
S_{\rm decoded}
=
\{s\in\gamma:\exists w\in\operatorname{Words}_{\le L}(A),
\operatorname{decode}(w)=\operatorname{some}(s)\}.
\tag{W2}
\]

The source constructs this as the image of all bounded words *into* \(\operatorname{Option}(\gamma)\), then removes \(\operatorname{none}\) using \`Finset.eraseNone\`. Importantly, Mathlib's \`Finset.filterMap\` demands injectivity of successful preimages and is **not** suitable for this decoder: many different words can legitimately represent a single conjugacy/geodesic source ID. \`Finset.image\` deliberately removes duplicates in the resulting \(\gamma\) **source identities**, while the later trace packet still retains different positive iterate IDs for each accepted primitive. If the geometric source distinguishes reverse orientations, its decoder must output correspondingly distinct IDs; this module does not manufacture that distinction.

The source proposes the exact membership theorem (W2), sound finite inclusion \(S_{\rm decoded}\subseteq U\), and the quantitative bound

\[
\boxed{|S_{\rm decoded}|\le\sum_{n=0}^{L}a^n.}
\tag{W3}
\]

This is a bound on the *number of decoded source IDs*, not a prime-geodesic asymptotic or a complexity bound for conjugacy reduction and geometric proof checking. Concrete execution of the finite enumeration additionally needs computable finite instances, exact equality/decoding and effective source data; the Lean source may choose classical decidable equality for proof purposes.

## 2. A typed boundary from finite words to geometry

The \`BoundedWordGeometricGate\` record separates three **external and currently unproved** obligations:

1. **Decoder soundness:** if \(\operatorname{decode}(w)=\operatorname{some}(\gamma)\), then \(\gamma\in U\). Being in \(U\) is still not evidence that \(\gamma\) is an actual geodesic: an external surface-source predicate/model must certify primitivity, conjugacy, length and homology.
2. **Bounded representation of short classes:** an encoder \(\operatorname{encode}:\gamma\to\operatorname{Option}(\operatorname{Words}_{\le L}(A))\) must have a successful output for every source in the **supplied** \(U\) whose length is at most a specified Fourier support radius \(B\).
3. **Exact round trip:** if \(\operatorname{encode}(\gamma)=\operatorname{some}(w)\), then \(\operatorname{decode}(w)=\operatorname{some}(\gamma)\). A mere equality of matrix trace, hyperbolic length, or homology is NOT an exact same-conjugacy/source-ID proof.

From these hypotheses, \`decodedCandidates_cover_short_sources\` proves

\[
\boxed{
\{\gamma\in U:\ell_\gamma\le B\}
\subseteq S_{\rm decoded}.
}
\tag{W4}
\]

This is now a *derived* finite coverage conclusion, rather than simply postulating \`CoversContributingCandidates\` from #674. It is not an unconditional geometric completeness theorem: the meaningful hard premise is precisely that **every relevant primitive conjugacy/geodesic class has an accepted short word with a correct decoder**.

The hostile theorem \`always_reject_incompatible_with_short_source\` proves that a decoder returning only \`none\` is incompatible with the supplied encoder/round-trip obligations when \(U\) contains an actual source of length at most \(B\). An empty length-bounded part of \(U\) may legitimately make this condition vacuous; therefore nonvacuity of the relevant geometric source population must also be established where claimed.

## 3. Exact consumption by the previous finite trace ledger

Let \(t\) be the supplied finite universe input from #661 with \(\operatorname{primitiveCandidates}=U\), and let \(g\) be the gated decoder above. The constructor \`selectedInput t g\` changes **only** the selected source IDs to \(S_{\rm decoded}\), retaining \(t\)'s homology, candidate lengths, Fourier test and integral target. \`originalUniverse t g\` constructs a valid finite extension to \(U\).

The derived statement (W4) supplies the **exact** finite coverage predicate required by PR #677. If an independent #665 certificate supplies \(B\ge0\), a positive selected-candidate length floor \(\delta>0\), one-sided Fourier vanishing above \(B\), and a selected positive-iterate cutoff \(K\) with \(B\le K\delta\), then for any \(M\ge K\) and \(q\ge1\),

\[
\boxed{
\left\|
P_q^{S_{\rm decoded}}(K)-P_{\mathbb Z}^{U}(M)
\right\|
\le
E_{\rm alias}^{S_{\rm decoded}}(K,q).
}
\tag{W5}
\]

The source-level theorem \`bounded_word_trace_error_le_alias\` consumes #674's \`finite_full_universe_error_le_alias_of_support\` directly. It **does not discharge** modular aliases and **does not identify** the finite sum with a Selberg trace. Exact equality also needs the independent \`NoAlias\` input already described in #653.

### Finite positive/hostile decoding fixture

The source also supplies a deliberately **non-geometric** example. For its one-element abstract source type `PUnit`, with finite Bool word codes of maximum length \(L=1\), `toyWordGate` decodes *every* word to the same source ID. The codes for the empty word and a nonempty one-letter word are distinct, but their decoded outputs coincide. `toy_distinct_codes_same_output` records this noninjectivity, and `toy_decodedCandidates_eq_univ` checks that the finite candidate image contains that one ID exactly once. This is a real positive test of the correct `image/eraseNone` construction, not a primitive-geodesic example. It must not be used to certify a surface group: the empty word in a genuine torsion-free hyperbolic surface group represents the identity, not a primitive closed geodesic.

## 4. What a genuine compact-surface supplier must still prove

Fix an actual **marked compact hyperbolic surface** \(X\) with chosen finite generators of \(\pi_1(X)\). To replace the abstract \(\gamma\) IDs with actual oriented primitive closed geodesics and make (W4) a genuine surface-level completeness theorem, future source work must establish:

- The geometry/representation: an exact finitely generated torsion-free cocompact Fuchsian group or equivalent marked surface model; a verified word-to-group map respecting the actual surface relation, orientation and inverse generators.
- The source identity: a proven correspondence between nontrivial **primitive conjugacy classes** of the actual surface group and oriented primitive geodesics. Here **primitive means not a proper power of another group element**, NOT necessarily a primitive member of a free generating basis, and NOT synonymous with a simple curve.
- The canonicalization: a sound algorithm that maps potentially many group words to one correctly identified oriented conjugacy/source class, with validated equality and no erroneous identification of inverse/orientation-reversed classes. Hyperbolic trace or length equality does not prove conjugacy.
- The length-to-code bound: an effective \(L=L(X,\mathrm{marking},B)\) such that **every** oriented primitive conjugacy class with hyperbolic length at most \(B\) has an accepted representative word of at most \(L\) letters. The needed conjugacy-representative bound must be supplied at exact metric/generator scope. An abstract Milnor–Švarc quasi-isometry is not automatically a numerical certified value of \(L\), nor is a fixed-surface estimate automatically uniform over moduli or genus.
- The numeric verification: exact or proved interval bounds for holonomy matrices, traces, hyperbolic lengths, and integer homology; care with \(\mathrm{PSL}_2(\mathbb R)\) sign and orientation. For a hyperbolic group element represented by \(M\), \(\ell=2\operatorname{arcosh}(|\operatorname{tr}(M)|/2)\) in the appropriate hyperbolic \(\mathrm{PSL}_2\) setting, **provided** \(|\operatorname{tr}(M)|>2\) and all representation hypotheses hold.
- The ambient-source completeness: proof that the universe \(U\) used in #674 contains all real primitive oriented geodesics in the declared length range, with no missing classes. A finite list, asymptotic prime-geodesic count, or bare proof record with no authentic group/surface provenance cannot establish that by itself.

There are relevant **external**, nonformalized research results. Marklof–Monk, *The Moduli Space of Twisted Laplacians and Random Matrix Theory*, *International Mathematics Research Notices* **2024(23)**, 14352–14368, DOI [10.1093/imrn/rnae239](https://doi.org/10.1093/imrn/rnae239), equation (1.5), identifies the sum over primitive **conjugacy classes** (not necessarily simple geodesics) and positive powers. David Epstein and Derek Holt, *The Linearity of the Conjugacy Problem in Word-Hyperbolic Groups*, *International Journal of Algebra and Computation*, DOI [10.1142/S0218196706002986](https://doi.org/10.1142/S0218196706002986), studies a possible group-algorithm component, but is not a Lean implementation for the selected surface. Moira Chas, *Relations between Word Length, Hyperbolic Length and Self-Intersection Number of Curves on Surfaces*, *Recent Advances in Mathematics*, RMS Lecture Notes Series 21 (2015), provides background on distinct word-length, geometric-length and self-intersection notions; it does not automatically deliver our quantified verified cutoff.

The difference between Mirzakhani's simple-multicurve counts and the full primitive oriented Selberg index set is preserved: using her simple counts for (W4) would omit nonsimple primitive geodesics.

## 5. Hostile fixtures, source boundaries and trust

The passive replay target must demand independent acceptance or rejection of: empty word decoded as a genuine geodesic without soundness; \`none\` outputs creating IDs; accidentally requiring decoder injectivity; duplicate conjugacy encodings being counted as distinct oriented primitive geodesics; improper power classes accepted as primitive; reverse-orientation identifications without a theorem; a finitely presented surface group treated as free; a word-code count mistaken for a length-spectrum bound; a finite bound \(L\) asserted without an actual metric/marking-dependent theorem; a vacuous always-reject decoder accepted while short sources exist; a false zero of modular alias mass; and any infinite Selberg, Weil–Petersson, GOE/GUE, Chowla or RH conclusion from (W1)–(W5).

Changes are additive on a dedicated branch directly stacked on PR #677: the new Lean source, this mathematical note, and a **passive** verification TOML. No root imports, toolchain pins, dependency manifests, workflows, native/VM executors, held F06, or parent PR content are changed.

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The word-code and finite-coverage proof scripts require exact-head Lean elaboration, generated declarations, transitive axiom/unsafe/import review, hostile fixtures and the authorized #100 trust/replay receipt. No number-variance theorem, geodesic coverage certificate for a real surface, zeta-divisor identification, Chowla, or Riemann hypothesis proof is claimed.
