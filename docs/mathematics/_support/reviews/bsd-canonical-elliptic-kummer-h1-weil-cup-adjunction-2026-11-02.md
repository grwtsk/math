# Original elliptic Kummer sequence in canonical continuous H¹ and the normalized Weil-cup adjunction frontier

**Date:** 2026-11-02. **Repository:** grwtsk/math (original main head must be
re-read immediately before publication). **Upstream pin:**
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
original authors The Tau Ceti contributors, Apache-2.0,
Lean `leanprover/lean4:v4.36.0-rc1`.
The independent grwtsk/math root retains `leanprover/lean4:v4.34.1`.

## Acceptance and authorship boundary

**SOURCE_PROOF_CANDIDATE, NOT KERNEL-VERIFIED.** New declarations are
uncompiled isolated Lean scripts under `documentation/adapters`, not
imports into the root. Parsing NOT_RUN; elaboration NOT_RUN;
Lean compilation NOT_RUN; independent fresh kernel replay NOT_RUN;
transitive axiom audit NOT_RUN; compatible upstream build NOT_RUN;
native CI/Noe dispatch NOT_RUN. No `sorry`, `admit`, or
new `axiom` declarations were introduced in the amended candidate.
Source mathematics and Lean definitions from Tau Ceti retain their
original attribution and license. Source readback and finite tests
cannot substitute for a successful compiler/kernel receipt.

The amended source is
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiEllipticTorsionGalRepWeil.lean`,
blob `93970624d0100b0f32a6158267104af25899eb35`;
the blob identity will be updated in this review if the final
source requires another syntax correction before publication.
The previous source is retained in Git history; the original Weil
argument orientation is unchanged:
  `Phi_E,n(a)(b) = e_n(a,b)`.

## 1. Exact pinned upstream suppliers

All content below is source-grounded in the immutable Tau Ceti pin.

- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean`,
  blob `3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b`.
  Its ORIGINAL `W.kummerMap n hn` uses the genuine
  `W.TorsionCoeff n=E[n](Fsep)`; `W.kummerClassMap n hn` has source
  `E(F)/nE(F)`; `W.kummerClassMap_injective`,
  `W.torsionCoeffInclH1_surjective` and
  `W.exact_kummerClassMap_torsionCoeffInclH1` establish the
  three actual maps in the full finite-level Kummer exact sequence.
  The final map targets the SOURCE `AddSubgroup.torsionBy
  (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n`, not an arbitrary
  H¹ cohomology space or a prescribed rank.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean`,
  blob `589ba4d163c40ae0b20dc8de1a3911a6a334c530`:
  `TauCeti.ContCohomology.explicitMap1Equiv` transports H¹
  through a genuine continuous Galois equivalence and equivariant
  coefficient equivalence.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologyComparison.lean`,
  blob `7d37c1f58a2084255f5da4e8625e9622e716f573`:
  `TopRep.explicitH1AddEquivContinuousCohomologyOfDiscrete`
  identifies the actual explicit H¹ with the canonical
  `continuousCohomology 1` of the original smooth discrete `GalRep`.
- `TauCeti/NumberTheory/ClassFieldTheory/MuNRep.lean`,
  blob `2d14af1616e26ccee0e04b9897a467ab8bd994f8`:
  original `GalRep n F` type and Galois restriction equivalence.
- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean`,
  blob `d54088b59839bf055f1670006127a4d854adaa50`:
  the real Weil pairing on `W.TorsionCoeff n`, its Galois
  equivariance and nondegeneracy.
- `TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Basic.lean`,
  blob `f3fd4468aeca0e6f3001054fcfcedfef8f0fd6e4`:
  `tateDualityPairing`, the canonical evaluation cup with
  `tateDual` coefficients, and its bilinearity.
- `TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean`,
  blob `f2a94093d03c3be0d1b2c048b4f516d773cbe6ba`:
  `tateDualityPairing_perfect_mixed` for finite smooth discrete
  `GalRep n F`. This proves finite-coefficient perfectness,
  NOT the independent local **abelian-variety** Tate pairing.
- `TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean`,
  blob `7d21171a7372904ae7c8a715aa74f389aebd7cae`:
  the original normalized `h2MuEquivZMod`, sending a class of
  local Brauer invariant `a/n` to `a mod n`.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/Functoriality.lean`:
  `TauCeti.ContinuousCohomology.coeffMap`, which applies
  the exact source-defined morphism `ellipticWeilToTateDual`
  on canonical continuous H¹.

No root `grwtsk/math` import or source pin was altered.

## 2. The SOURCE Kummer short exact sequence, transported without replacements

The finite-level arithmetic statement already proved in pinned
Tau Ceti is, for nonzero n invertible in F:

  0 → E(F)/nE(F) --delta_n--> H¹(Gal(Fsep/F), E[n])
    --q_n--> H¹(Gal(Fsep/F), E(Fsep))[n] → 0.

The new canonical transport uses the ORIGINAL Galois isomorphism
`absoluteGaloisGroupRestrictEquiv F` and the previously built
`ellipticTorsionGalRep W n` with its literal source carrier.
Two source theorems then give the canonical equivalence

  e_n : H¹(Gal(Fsep/F),W.TorsionCoeff n)
     ≃+ continuousCohomology 1 (ellipticTorsionGalRep W n).

The new Lean candidates name `ellipticExplicitHOneEquiv`,
`ellipticCanonicalHOneEquiv`,
`ellipticCanonicalKummerMap`,
`ellipticCanonicalKummerClassMap`,
`ellipticCanonicalKummerImage`, and
`ellipticCanonicalWeilChateletQuotient`.
They also contain:
- `ellipticCanonicalKummerClassMap_injective`,
  transporting the genuine quotient Kummer injection;
- `ellipticCanonicalWeilChateletQuotient_surjective`,
  transporting the original surjection to H¹(E)[n];
- `ellipticCanonicalKummerClassMap_mk`,
  comparing the exact original point and quotient maps;
- `ellipticCanonicalKummerImage_eq_classMapRange`,
  identifying the two **actual** images, not choosing a subgroup;
- `ellipticCanonicalKummerClassMap_range_eq_ker` and
  `ellipticCanonicalKummerImage_eq_ker`,
  transporting Tau Ceti's original short exact sequence to
  canonical continuous H¹.

Thus the intended exactness theorem, if the source scripts
elaborate and replay, returns the *same* Kummer image used in the
local Selmer condition and the same original Weil–Châtelet
n-torsion obstruction; degree-zero and the full untruncated
local cone's H² are not suppressed by this H¹ comparison.

## 3. Genuine normalized Weil-cup pairing on canonical H¹

The source candidate defines

  B_(E,n)(x,y)
    := tateDualityPairing (ellipticTorsionGalRep W n)
         (ellipticNormalizedTrace W n) 1 1
         (ContinuousCohomology.coeffMap
            (ellipticWeilToTateDual W n) 1 x)
         y.

In mathematical notation, with the original Weil character
`Phi_E,n(a)(b)=e_n(a,b)`:

  B_(E,n)(x,y)
    = inv_(F,n)(Phi_E,n,*(x) cup_eval y) ∈ Z/n.

This is a named consumer of the genuine Tau Ceti cohomology
morphism, evaluation cup, and Brauer normalization. It does
not select a perfect pairing as data, fit a Gram matrix, or
replace E[n] by a vector-space proxy.
The source candidate `ellipticNormalizedWeilCup_annihilatesKummer_iff`
identifies vanishing against all elements of the actual Kummer
image with vanishing against each real Kummer class of a rational
point, not with vanishing against an abstract test family.

For the canonical principal polarization of an elliptic curve,
the coefficient Weil pairing is alternating and the degree-(1,1)
cup is graded-antisymmetric. Their composition has the expected
symmetric behavior. A separate cochain theorem using the
source `TopPairing.cup_gradedComm` and the actual Weil
alternation is still required before applying the symmetric
`FiniteBilinearModule` Lagrangian machinery in Lean.

## 4. Source-exact arithmetic criterion, not an assumed conclusion

The new theorem `ellipticKummer_orthogonal_iff_of_localAbelianTate`
is now typed entirely on the real canonical source. Its inputs are
the ORIGINAL groups

  H = continuousCohomology 1 (ellipticTorsionGalRep W n),
  Q = AddSubgroup.torsionBy (H1(Gal(Fsep/F), W.PointCoeff)) n,
  P = E(F)/nE(F),
  Z = ZMod n,

and the ACTUAL maps `q_n : H →+ Q`,
`delta_n : E(F) →+ H`, and `B_(E,n)`.

Only these two independent arithmetic suppliers remain:

(1) **Actual abelian local Tate pairing and separation.**
Construct from the Poincaré biextension/dual elliptic variety
a biadditive map

  `abelianTate : Q →+ P →+ ZMod n`

such that for `q ≠ 0` there is some actual point class
`P` with `abelianTate q P ≠ 0`.
The carrier `Q` must be exactly `H¹(F,E)[n]`, not an
abstract dimensionally equivalent vector space. The source
original Weil pairing on finite coefficients does NOT by
itself prove this abelian-variety pairing.

(2) **Signed Kummer connecting-map adjunction.**
Prove on the actual source cocycles and the chosen local
invariant that ONE source-fixed `sign : ℤ`, equal to +1 or
-1, satisfies for all x and all rational points P

  B_(E,n)(x,delta_n P)
    = sign • abelianTate(q_n(x), P mod n).

The sign must be fixed by the ORIGINAL Poincaré/Weil and
inhomogeneous coboundary conventions, not chosen post hoc
to make a BSD statement hold. The proof is the comparison
of cup products and the Kummer connecting homomorphism,
not an identity following just from finite Weil perfectness.

**Unconditional algebra after these arithmetic suppliers:**
The Kummer exact sequence identifies `im(delta_n)=ker(q_n)`.
The adjunction and separation then yield

  x ∈ im(delta_n)
    ↔ (∀ P, B_(E,n)(x,delta_n P)=0).

This is precisely the exact annihilator of the real local
Kummer image after principal-polarization identification.
The theorem derives it from the two independently meaningful
arithmetic premises; it never assumes the desired
orthogonal-complement equation as a hypothesis. Both
source-typed premise proofs remain OPEN in Lean.

## 5. Classical mathematical supplier and the proved/unproved boundary

**Primary published source:** J. S. Milne,
*Arithmetic Duality Theorems*, second edition,
Chapter I, §3, Theorem 3.2 and Corollary 3.4
(https://math.stanford.edu/~conrad/BSDseminar/refs/MilneADT.pdf).
The theorem identifies the dual abelian variety's local
points with the Pontryagin dual of `H¹(F,E)` over
characteristic-zero nonarchimedean fields; the proof
uses a commutative finite-Kummer/Ext/cohomology diagram
and local finite-module duality. On n-torsion this yields
the required separation of `H¹(F,E)[n]` by
`E^vee(F)/nE^vee(F)`. The same diagram explains the
compatibility with finite Kummer connections.
Mathematical validity of Milne's theorem does not imply
this exact source integration has already been verified
by the Lean kernel.

**Pinned Tau Ceti status:** I inspected the original finite
smooth `GalRep` Tate-duality API and the elliptic Kummer
descent files. The original pinned source has the finite
module and elliptic Kummer proofs above, but I did not
locate a source-typed Lean construction of the Poincaré
biextension local abelian Tate pairing and its adjunction
for `W.PointCoeff`. This is a search-bound negative
finding, not a corpus-wide nonexistence theorem.

## 6. Next exact kernel acceptance, distinct from source publication

1. In an isolated Tau Ceti v4.36.0-rc1 import context,
   compile `TauCetiEllipticTorsionGalRepWeil.lean`
   with `lake env lean --wfail`. It is NOT part of the
   incompatible grwtsk/math Lean v4.34.1 root.
2. Independently prove/import the Poincaré biextension
   `abelianTate` on actual `H¹(F,E)[n]` and `E^vee(F)/n`,
   its perfectness, and the signed Kummer/cup adjunction.
   This is not a finite-dimensional Gram-matrix axiom.
3. Replay all relevant exact source declarations freshly
   through the Lean kernel and audit transitive axioms,
   including local/generated/private declarations and
   `#print axioms`; record exact source commit, paths,
   imported module closure, toolchain and receipts.
4. Preserve original point-corrected good truncation,
   higher `H²(U_v)=H¹(F,E)` Weil–Châtelet residue,
   real p=2 Tate correction, reverse outside-S
   unramified/Kummer inclusion and derived
   `Rlim`/Poitou–Tate comparisons.
5. A source-faithful derived p-adic regulator and any
   comparison with real Néron–Tate heights or the
   **COMPLEX** Hasse–Weil central L-jet remain
   independent OPEN noncircular BSD obligations.

No timer, queue, runner, CI, GitHub Actions job, automation
schedule or issue closure has been dispatched by this
review. Repository publication is not formal acceptance.

## 7. Independent additive exactness-transfer implementation in pinned grwtsk Mathlib

`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/KummerExactTransport.lean`
(Git blob `cd66696af8c129502926d1ed1faad12e48f834c7`)
is a standalone `import Mathlib` source candidate for the original
math root Lean v4.34.1. It proves, for source maps
`f:P→+H`, `g:H→+Q`, a genuine additive equivalence
`e:H≃+H'` and the original exactness `f.range=g.ker`,
that
`(e∘f).range=(g∘e⁻¹).ker`. It also returns injection,
surjection and `Function.Exact` transport. No arithmetic
structure or hypothetical rank is chosen in its statement.
Its imported original exactness premise must be the
Tau Ceti `W.exact_kummerClassMap_torsionCoeffInclH1`
at the exact source module, not an assertion of the
new annihilator equality. This separate Mathlib source
has NOT_RUN compilation, kernel and axiom facets.
