# Categorical degree-one homology of the source-bound polygon chain complex

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED — 2026-10-22.** This note accompanies a Lean source-level proof candidate. It does not report a Lean/Lake run, accepted theorem type, kernel audit, or replay qualification.

Owner: [grwtsk/math#823](https://github.com/grwtsk/math/issues/823). Direct parent: [draft PR #812](https://github.com/grwtsk/math/pull/812), pinned at exact head `0c3b514e595287c1160653557b2d563c8fc4c570`.

New leaf module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean`. This module consumes the exact prior finite candidate chain model, rather than introducing a new chain of coincidentally equal size.

## 1. Source-bound categorical chain complex

The parent work supplies, for every \(k\ge0\), the genuine integer-linear maps

\[
d_2:\mathbb Z\longrightarrow C_1(k),\qquad
d_1:C_1(k)\longrightarrow\mathbb Z,\qquad
C_1(k)=\operatorname{GenusLetter}(k)\to\mathbb Z,
\]

where \(d_2\) was built from the **actual ordered oriented polygon side list** and \(d_1\) encodes the explicit one-vertex candidate convention. The parent separately proved the chain equation

\[
d_1\circ d_2=0.
\tag{1}
\]

The new `sourcedShortComplex k` uses Mathlib `ShortComplex.moduleCatMk` on the identical maps \(d_2,d_1\), *consuming* (1). The new `sourcedChainComplex k` uses Mathlib `ChainComplex.mk` to construct an **actual object** of

\[
\operatorname{ChainComplex}(\operatorname{ModuleCat}\mathbb Z,\mathbb N).
\]

Its degrees \(0,1,2\) are respectively \(\mathbb Z,C_1(k),\mathbb Z\); its higher degrees and higher differentials are zero. The new source includes exact degree-object and differential-identification declarations, rather than merely describing a chain complex in documentation.

The degree-one short complex attached to the genuine chain complex is connected to the independently constructed `sourcedShortComplex` by Mathlib's actual index transport `K.isoSc'`, followed by an isomorphism of the same ModuleCat objects and arrows. This explicitly accounts for `ComplexShape.down \mathbb N`'s predecessor/successor indices.

The finite source chain complex is NOT the chain complex of an authenticated topological CW surface. Constructing that comparison remains open.

## 2. The actual categorical-homology interface in pinned Mathlib

The necessary Mathlib theorem has already been formalized by Joël Riou and Mathlib contributors in `Mathlib/Algebra/Homology/ShortComplex/ModuleCat.lean`. For a short complex of modules

\[
S:\quad C_2\xrightarrow{f} C_1\xrightarrow{g} C_0,\quad gf=0,
\]

`S.moduleCatHomologyIso` identifies the **categorical** homology object `S.homology` with the concrete module quotient

\[
\ker(g)\big/\operatorname{im}(S.\mathrm{moduleCatToCycles}),
\tag{2}
\]

where `S.moduleCatToCycles` is the actual \(\mathbb Z\)-linear map \(C_2\to\ker(g)\) induced by \(f\).

The parent issue #803 constructed

\[
H_1^{\mathrm{candidate}}(k)
=
\ker(d_1)\big/
\Bigl(\operatorname{im}(d_2)
\text{ pulled back into }\ker(d_1)\Bigr)
\tag{3}
\]

as a true `Submodule` quotient, not a set or an alias of \(C_1(k)\).

The new mathematical work is the exact **source-submodule equality**:

\[
\boxed{
\operatorname{range}(S.\mathrm{moduleCatToCycles})
=
\operatorname{comap}_{\ker(d_1)\hookrightarrow C_1(k)}
(\operatorname{range} d_2).
}
\tag{4}
\]

The Lean source `sourcedShortToCycles_range_eq_boundariesInCycles` proposes a proof of (4) in both directions: every source boundary \(d_2(n)\), when regarded as a cycle, has the same underlying chain as \(d_2(n)\) in the ambient one-chain module, and vice versa. Source IDs and the original integer-linear maps are not changed.

The source then composes Mathlib's existing categorical `moduleCatHomologyIso`, its `Submodule.quotEquivOfEq` for (4), and the degree-one short-complex index isomorphism. Its intended result is a **genuine ModuleCat categorical isomorphism**:

\[
\boxed{
H_1\!\left(\operatorname{sourcedChainComplex}(k)\right)
\cong_{\operatorname{ModuleCat}\mathbb Z}
\operatorname{ModuleCat}\!\left(H_1^{\mathrm{candidate}}(k)\right).
}
\tag{5}
\]

The named source theorem-producing definition is `degreeOneCategoricalHomologyIso k`.

## 3. Comparison to the same integer one-cell module

The parent #803 separately established at source-script level the exact \(\mathbb Z\)-linear equivalence

\[
H_1^{\mathrm{candidate}}(k)\cong_{\mathbb Z} C_1(k),
\tag{6}
\]

using the existing one-vertex \(d_1=0\) and the already-derived zero signed polygon incidence \(d_2=0\). Combining (5)–(6) gives the proposed `degreeOneHomologyOneChainsIso`, with exactly the same \(2(k+2)\) generator IDs as #758 and #795.

This does **not** mean every chain complex's homology equals its degree-one chain group; it holds only because the concrete sourced model has these specifically proved zero differentials.

The source retains the prior `signedWordH1Class` and transports its class through the inverse of the categorical isomorphism. The resulting `categoricalSignedWordClass` and `categoricalSignedWordClass_transport` record the commuting source comparison for *every* original oriented signed edge list, not only the full polygon boundary.

## 4. Positive, negative and information-loss controls

- The complete oriented polygon word has degree-one categorical homology class zero, in agreement with its signed incidence cancellation.
- A corrupted first-handle word missing the inverse \(b\)-edge has coefficient \(+1\) at the original \(b\)-source ID. It therefore has a **nonzero** categorical homology class. This rejects a fake chain complex that annihilates the entire one-chain carrier.
- The complete first-handle commutator, despite being nonidentity in the original Mathlib FreeGroup by #722/#734's actual Heisenberg-\(Z\) witness, maps to zero in this categorical homology. This is an exact, legitimate loss of noncommutative information, not a proof the original word equals the identity.
- Genus-two \(k=0\) and genus-three \(k=1\) retain their four and six source-generator IDs.

These hostile checks are authored Lean proof scripts. Their success remains **NOT_RUN**.

## 5. Exact mathematical and epistemic disposition

**Imported, previously formalized Mathlib interfaces:** `ChainComplex.mk`, `ShortComplex.moduleCatMk`, `ShortComplex.moduleCatHomologyIso`, `ShortComplex.homologyMapIso`, `Submodule.quotEquivOfEq`, `LinearEquiv.toModuleIso`, and the ModuleCat abelian structure. The current source *reuses* them; it does not claim to have invented categorical homology.

**New source-level candidates:** actual three-term chain-complex construction from the earlier signed polygon differential, identification of its categorical short complex, proof of source range/comap equality (4), and composed categorical degree-one homology isomorphism (5), with explicit signed-word hostile classes.

**Still open:** successful Lean elaboration, generated theorem types, all imported/transitive axiom checks, and exact-head qualification under #100. A committed module with no textual `sorry` is **not kernel evidence**.

**Independent topological and analytic obligations:** construct the actual genus-\(g\) polygon-quotient surface and its CW attaching map, prove the cellular chain-complex comparison and van Kampen fundamental-group equivalence, identify singular/cellular homology by the relevant topological theorem, and only afterward introduce genuine marked hyperbolic metric/geodesic sources. The Selberg/Weil–Petersson/GUE/sofic, Chowla/growing-shift Möbius, zeta-divisor and RH paths remain separate.

The source adds one isolated Lean module, this mathematical note and one passive verification TOML. It does not edit the parent PR #812, global imports, Lean toolchain, Lake dependencies, CI, native/VM/F06 workers, executor state or caches.

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Do not merge, close the issue or promote accepted mathematical formalization until the source's immutable exact-head Lean/kernel/axiom/hostile replay has passed.
