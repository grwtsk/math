# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.EllipticTorsionGalRepWeil.ellipticTorsionGalRep_card`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiEllipticTorsionGalRepWeil.lean](../TauCetiEllipticTorsionGalRepWeil.lean), line 121.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiEllipticTorsionGalRepWeil.lean#L121).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.EllipticTorsionGalRepWeil.ellipticTorsionGalRep_card` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/Algebra/Module/ZMod/Dual.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Torsion/Structure.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologyComparison.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream copyright and mathematical authors: The Tau Ceti contributors.
Upstream license Apache-2.0; no upstream source copied or modified.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. NOT imported into the grwtsk/math v4.34.1 root.
-/

/-!
# The ORIGINAL E[n] as the Galois representation for local Tate duality

Unlike an abstract rank-two proxy, the coefficient of ellipticTorsionGalRep
is literally W.TorsionCoeff n = E[n](Fsep). The action comes from the
original absolute Galois group via the upstream restriction equivalence.
The module is the actual torsion-by-n ZMod n module.

The source supplies a genuine Galois-equivariant Weil pairing
  W.torsionCoeffWeilPairing n hn : E[n] x E[n] -> KummerCoeff F n.
Transporting it along the ORIGINAL KummerCoeff/μ_n dictionary
constructs a TopPairing of genuine finite Galois representations, and
therefore a source-defined morphism E[n] -> tateDual E[n].
Its injectivity is proved from the original Weil nondegeneracy;
surjectivity as a morphism, local Kummer annihilator orthogonality,
compatibility through n, and global Poitou--Tate remain separate gates.

The finite-coefficient local perfectness is already an upstream
theorem. Here it is specialized to this exact E[n] GalRep with the
original Brauer-normalized H²(F,μ_n) trace. No p-adic/complex BSD
statement or freely assigned regulator occurs in the construction.
-/

/-- All scalars and torsion coefficients carry the original
discrete topology; this is the continuity required by
TauCeti.ofDiscreteModule. -/

/-- No replacement by an isomorphic finite module is performed:
the underlying coefficient type is literally the source E[n]. -/

/-- The original source coefficient at this exact n is finite. -/

/-- The exact explicit proof is stored as the Fact instance consumed
by the real upstream local Tate-duality perfectness theorem. -/

/-- The Galois operator is literally the transported point action;
its argument is the SAME E[n](Fsep) as in the Selmer Kummer source. -/

/-- The ORIGINAL Weil biadditive pairing, transported from the
source KummerCoeff to the upstream canonical μ_n coefficient.
Every additive map is ZMod n-linear on n-torsion modules. -/

/-- The source Galois-equivariant Weil pairing is now a genuine
TopPairing of exactly the GalRep E[n] coefficient and μ_n. -/

/-- Source evaluation, with Weil argument order a then b fixed. -/

/-! ## Genuine Weil coefficient self-duality, including SURJECTIVITY

This uses the source elliptic torsion basis and original finite
ZMod-character cardinality theorem, not an assigned E[n] rank.
The argument never chooses a basis for the Galois representation.
-/

/-- Character cardinality of the SAME elliptic coefficient:
the source cyclic mu_n equivalence and TauCeti's finite ZMod-dual
count show the genuine Tate dual has exactly as many elements. -/

/-- The Weil map is BIJECTIVE: its injectivity came from actual
elliptic Weil nondegeneracy; source finite duality proves its
domain and codomain have equal cardinalities. Nothing here
assumes local Kummer orthogonality or a BSD theorem. -/

/-- Genuine source-defined additive equivalence of elliptic
n-torsion with its Tate dual, preserving the preceding
Weil-character evaluation and Galois-equivariant source morphism.
This does NOT yet identify local Kummer image annihilators. -/

/-! ## Exact ORIGINAL Kummer-H¹ bridge into canonical GalRep cohomology

The source Kummer sequence lives on H¹ of Gal(Fsep/F) with
W.TorsionCoeff n. The named local Tate pairing lives on
continuousCohomology 1 of the ACTUAL GalRep n F.
The canonical group/coefficient equivalences below identify
these exact types; no abstract module may replace the source.
-/

/-- Continuous action on exactly the canonical elliptic
topological representation, using source smooth discreteness. -/

/-- Compare the REAL separable-closure H¹ with the H¹ carrier
of the SAME elliptic GalRep over Field.absoluteGaloisGroup.
This uses TauCeti's existing explicitMap1Equiv and source
Galois action. -/

/-- Canonical continuous degree-one Galois cohomology for the
ACTUAL source E[n] representation. The second equivalence is
TauCeti's original discrete-cochain-to-derived-H¹ comparison. -/

/-- The canonical Kummer map is genuinely injective on the
original point quotient, by the source Kummer exactness. -/

/-- The source image is now a subgroup in the canonical
continuous H¹, not an invented abstract local condition. -/

/-- Membership uses a LITERAL original rational elliptic
point and its transported source Kummer connecting class. -/

/-- The exact source H¹(E[n]) -> H¹(E)[n] map transported
to the canonical continuous H¹. The codomain is the
ORIGINAL Weil-Chatelet n-torsion, not a replacement model. -/

/-- The target of the real Kummer exact sequence is reached:
surjectivity follows from the source's
WeierstrassCurve.torsionCoeffInclH1_surjective. -/

/-- The source quotient Kummer map at a genuine rational point
agrees exactly with the direct canonical Kummer map. -/

/-! The local field theorem is an unconditional specialization
of the EXISTING normalized local Tate duality supplier to this
source-exact finite elliptic representation. It pairs A^dual and
A, not yet A with itself: the separately defined Weil map above
is injective, with full dual isomorphism an open source consumer. -/

/-- Perfectness for the EXACT source elliptic torsion representation,
as a pairing of its true Tate dual with the original E[n].
This does NOT assert Kummer orthogonality or the Weil map's
surjectivity, and does not involve a global rank. -/

/-! ## The SOURCE-defined normalized (1,1) elliptic Weil cup

In the same canonical H¹ category, transport x by the actual
Weil coefficient morphism E[n] -> Hom(E[n],mu_n), then apply the
original TauCeti Tate-duality pairing with its original Brauer
normalized trace. This constructs the exact pairing to which
the missing Kummer orthogonality comparison must refer.
-/

/-- The ORIGINAL normalized Weil cup, now bundled into the
two additive-homomorphism slots required for source Kummer
descent. The two additivity proofs use upstream true
Tate-duality pairing bilinearity. -/

/-- The original Kummer isotropy is a statement about
genuine rational elliptic points and the SOURCE finite
Weil cup, not arbitrary subgroup elements. -/

/-- A SOURCE-TYPED original theta/period-index obstruction
would discharge the remaining Kummer isotropy from TWO
specific geometric identities: vanishing on rational Kummer
classes and its exact Weil-cup polarization identity.
These geometric identities are not yet proved by the pinned
Tau Ceti source and are retained as independent premises.
No chosen theta/regulator is asserted to exist here. -/

/-- An entirely source-defined abelian local cup pairing
`H¹(F,E)[n] × E(F)/nE(F) → ZMod n`.
It uses the genuine H¹(E[n]) quotient and finite cup.
It is CONDITIONAL on the geometric Kummer isotropy and
does not yet claim identification with the independent
divisor/Poincare Tate pairing or its nondegeneracy. -/

/-- The resulting genuine quotient pairing has the EXACT
positive-sign finite-cup Kummer comparison by its
source-derived definition. The independent divisor
Tate identification remains to be proved. -/

/-! ## Local Kummer annihilator: EXACT source-typed arithmetic frontier

The coefficient, canonical H¹, Kummer subgroup, quotient to the
original n-torsion Weil-Chatelet H¹, and normalized Weil-cup pairing
are all concrete source objects. The only external arithmetic
suppliers remaining are:
* the REAL local abelian Tate pairing on that actual Weil-Chatelet
  n-torsion and the ORIGINAL point quotient; and
* the Poincare/Kummer connecting-map cup adjunction with its ONE
  source-fixed global sign (plus or minus).

The following theorem proves the desired membership equivalence
from precisely those supplier statements. Neither supplier is
defined by the desired annihilator equality. They are separate
nontrivial arithmetic proof obligations.
-/

/-- Fully SOURCE-TYPED local annihilator consequence.

The `abelianTate` homomorphism is required on the ACTUAL
Weil-Chatelet torsion and point quotient, not on a chosen vector
space. The source must prove it separates the actual quotient
and that the Kummer connecting-map/cup adjunction holds with
one consistent sign `sign = 1` or `sign = -1`. This theorem
is conditional until those two *arithmetic* proofs are supplied,
and never asserts a completed elliptic local Tate duality. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
