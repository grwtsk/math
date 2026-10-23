# Source-indexed candidate H₁: a genuine quotient of cycles by boundaries

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED** (2026-10-22). The definitions and Lean proof scripts are committed source candidates; they have not been elaborated or accepted by the Lean kernel.

- Owner: [grwtsk/math#803](https://github.com/grwtsk/math/issues/803).
- Exact parent: [draft PR #797](https://github.com/grwtsk/math/pull/797), head `1115b50e2c207e1a9b8498b2af03567401ffc3f9`.
- New source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean`.
- Consumes: #758's exact signed polygon incidence and integer-linear `differentialOne`, `differentialTwo`; #795's full source-preserving FreeAbelianGroup and canonical abelianization coordinate equivalence; #774's integer characters; #745's literal oriented edge lists; #734/#722's actual noncommutative Heisenberg witness.
- Mathlib facts used: `LinearMap.ker`, `LinearMap.range`, `Submodule.comap`, `Submodule.mkQ`, `Submodule.quotEquivOfEqBot`, `LinearEquiv.ofBijective`, and `AddEquiv.toMultiplicative`. These are **imported definitions and theorems**, not re-created local axioms.

## 1. The quotient is genuine, not a renamed one-chain module

Fix genus \(g=k+2\ge2\) and retain exactly the prior source-generator type

\[
A_k=\operatorname{GenusLetter}(k)
=\operatorname{Fin}(4)\sqcup(\operatorname{Fin}(k)\times\mathrm{Bool}).
\]

The parent #758 defines an explicitly sourced finite algebraic chain profile

\[
C_2=\mathbb Z,\qquad C_1=A_k\to\mathbb Z,\qquad
C_0=\mathbb Z
\]

and *actual* integer-linear differentials \(d_2:C_2\to C_1\) and \(d_1:C_1\to C_0\).

The differential \(d_2\) is constructed from the exact literal oriented polygon edge list, not freely asserted to vanish. It was shown at source-script level that each generator's signed incidence is zero, hence \(d_2=0\). The map \(d_1=0\) comes from the **declared combinatorial one-vertex convention**, not an unproved property of an arbitrary surface.

The new Lean source defines the honest submodules

\[
Z_1(k)=\ker(d_1)\subseteq C_1,\qquad
B_1(k)=\operatorname{im}(d_2)\subseteq C_1.
\]

It first proves \(B_1(k)\subseteq Z_1(k)\) by consuming the actual parent identity \(d_1\circ d_2=0\). It then makes the boundary submodule *within cycles* precise by pulling \(B_1(k)\) back through the cycle-submodule inclusion:

\[
B_1^{Z}(k)
=\operatorname{comap}\bigl(Z_1(k)\hookrightarrow C_1\bigr)(B_1(k)).
\]

The central new type is the **actual Mathlib module quotient**

\[
\boxed{
H_1^{\mathrm{candidate}}(k)
:=Z_1(k)\big/B_1^{Z}(k).
}
\tag{H1}
\]

This is `CandidateFirstHomology k`. Its carrier is not definitionally `OneCellChains k`, and its equality relation is not an ad hoc equality or a plain Set. It is the genuine `Submodule` quotient of the actual kernel by the actual range regarded inside that kernel.

## 2. Proof that the quotient is free of rank 2g

The exact sourced parent maps give, for **this candidate model only**,

\[
d_1=0,\quad d_2=0.
\]

Consequently the new source derives

\[
Z_1=\top,\qquad B_1=\bot,\qquad B_1^Z=\bot.
\tag{H2}
\]

These are named `oneCycleSubmodule_eq_top`, `oneBoundarySubmodule_eq_bot`, and `oneBoundariesInCycles_eq_bot` proof candidates, not hidden assumptions.

The quotient by a zero submodule is handled with pinned Mathlib's `Submodule.quotEquivOfEqBot`. The entire cycle submodule is linearly equivalent to \(C_1\) using a proved bijection of the literal `Submodule.subtype` map. Their composition is a genuine \(\mathbb Z\)-linear equivalence:

\[
\boxed{
H_1^{\mathrm{candidate}}(k)
\ \cong_{\mathbb Z}\
C_1=A_k\to\mathbb Z.
}
\tag{H3}
\]

The central source declaration is `candidateH1EquivOneChains k`. It also defines `cycleClass k` as the genuine quotient projection `Submodule.mkQ` from cycles, and records that it is surjective and corresponds to the original one-chain coordinates through (H3).

Because #758 already gives \(|A_k|=2(k+2)=2g\), the candidate homology has the expected finite algebraic rank \(2g\). Genus two and genus three retain respectively four and six distinct one-cell generator IDs.

Importantly, the new Lean source is **not** yet an instantiated Mathlib categorical `HomologicalComplex.homology` object; it constructs and calculates a literal cycle/range module quotient. That is the full selected bounded obligation. The categorical construction would be another, independent increment.

## 3. Exact comparison with the genuine canonical free-group abelianization

The preceding #795 branch composes two existing Mathlib equivalences to give

\[
\operatorname{FreeAbelianGroup}(A_k)
\cong_+
(A_k\to\mathbb Z).
\]

The new `candidateH1EquivFreeAbelian k` composes that with (H3):

\[
\boxed{
H_1^{\mathrm{candidate}}(k)
\ \cong_+\
\operatorname{FreeAbelianGroup}(A_k).
}
\tag{H4}
\]

Since Mathlib's `FreeAbelianGroup` is literally an additive version of the canonical `Abelianization(FreeGroup A_k)`, the new source further constructs an honest group equivalence

\[
\boxed{
\operatorname{Abelianization}\bigl(\operatorname{FreeGroup}(A_k)\bigr)
\ \cong_*\
\operatorname{Multiplicative}\bigl(H_1^{\mathrm{candidate}}(k)\bigr).
}
\tag{H5}
\]

The important *new* theorem is not merely that the two abstract groups happen to be isomorphic. Their original **source generators, signed edge lists and character maps agree**. For every literal oriented polygon edge word \(w\), it derives

\[
\operatorname{coord}^{-1}\!\left(
\operatorname{canonicalCoordinates}\bigl(
\operatorname{Abelianization.of}(\operatorname{polygonBoundaryEval}(w))
\bigr)
\right)
=
\operatorname{signedWordH1Class}(w).
\tag{H6}
\]

The declaration `abelianizationEquivCandidateH1_signedWord` is the commuting-source theorem. It consumes the already authored full word-coordinate equation of #795 and the quotient equivalence (H3). There is no source rebinding or invented group homomorphism.

For the full canonical genus-\(g\) polygon boundary, the signed incidence vector from #758 vanishes, hence its candidate homology class is zero. No torsion, missing cell, unknown relation, or unsourced kernel is silently discarded.

## 4. Positive and hostile controls

Two source-matched examples prevent overinterpretation and vacuous acceptance.

**Corrupted polygon:** Start from the first handle's directed four-edge list and omit its inverse \(b^{-1}\). Parent #758 proves the resulting three-edge word has incidence coefficient \(+1\) at \(b\), rather than zero. The new `missingInverseEdgeH1Class_ne_zero` proves the resulting candidate homology class remains **nonzero in the actual quotient**, so the entire one-chain module has not been incorrectly quotiented out.

**Full first handle:** The correctly oriented first-handle commutator has zero signed incidence at every generator and thus gives a zero class in \(H_1^{\mathrm{candidate}}\). Nevertheless, parent #774 proves the **same word** remains nonidentity in the original free group using #734/#722's explicit Heisenberg homomorphism and central element \(Z=(0,0,1)\ne1\).

That gives the exact paired obstruction

\[
w\ne1\text{ in FreeGroup}(A_k),\qquad
[w]=0\text{ in }H_1^{\mathrm{candidate}}(k).
\]

It is not a contradiction: passage to the abelian quotient intentionally forgets noncommutative commutator information. **The homology quotient cannot be used as a group identity or primitive-conjugacy decision procedure.**

## 5. Topological and analytic frontier remains distinct

This module proves **candidate algebraic homology** of a specified *formal chain profile*. It does not construct an actual closed orientable genus-\(g\) CW surface or identify its cellular chain complex with that profile.

The following remain open and require separate genuine source/transport theorems:

- Construct the oriented polygon quotient topological space with the expected cell structure and prove that its actual attaching map has the source-identical boundary word from #745.
- Prove the cellular van Kampen theorem for the quotient, matching \(\pi_1\) to the true #734 presented group and the specific first-handle loop to its commutator.
- Construct the actual cellular chain complex and a chain equivalence with this candidate profile; then prove cellular/singular homology comparison or Hurewicz to identify a *topological* \(H_1\).
- Supply the marked compact hyperbolic metric, the oriented primitive closed-geodesic source, authentic length and any complete length-bounded enumeration required for the geometric Selberg trace.
- Separately satisfy any Weil–Petersson/GUE, sofic operator, Möbius/Chowla growing-shift, zeta divisor or Riemann hypothesis source bridge.

External classical topology context: Allen Hatcher, *Algebraic Topology*, §§1.2 and 2.2, [official electronic edition](https://pi.math.cornell.edu/~hatcher/AT/ATpage.html). Nothing in the Lean source represents Hatcher's topological theorems as already imported formal evidence.

## 6. Review boundary

The change adds one isolated Lean module, this note and a passive exact-source verification manifest on a child of PR #797. It does not modify parent PRs or the global root imports, pinned toolchain, Lake package manifest, CI, workflows, cache, VM/native workers or held F06 state.

The passive manifest must reconcile all authored and generated declaration identities, literal parent source blobs, the correct quotient construction, kernel/range inclusion, quotient-by-zero isomorphism, source-matched comparison to canonical abelianization, genus-two/three fixtures, a genuine nonzero corrupted-edge homology class, and the nontrivial Heisenberg handle with zero class.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Static absence of `sorry` does not establish elaboration or a sound Lean proof. Exact-head #100 kernel/type/import/unsafe/axiom audit, hostile verification and an accepted immutable replay receipt remain mandatory before merge or issue closure.
