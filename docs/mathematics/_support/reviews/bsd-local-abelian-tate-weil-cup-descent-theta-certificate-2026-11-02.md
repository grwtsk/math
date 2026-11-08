# Local abelian Tate pairing: constructive Weil-cup descent and geometric theta/divisor certificate

**Date:** 2026-11-02 (America/Los_Angeles).
**Original mathematics and source:** TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors, Apache-2.0,
`leanprover/lean4:v4.36.0-rc1`.
**Local source authorship:** grwtsk contributors, MIT. Do not copy
upstream mathematics into unrelated files without attribution.
**Root math toolchain:** `leanprover/lean4:v4.34.1`; unchanged.

**IMPORTANT STATUS: SOURCE_PROOF_CANDIDATE, NOT FULL LOCAL ARITHMETIC ACCEPTANCE.**
The two source families below are isolated. No Lean executable or
compatible upstream checkout is present in the current authoring
environment. Parsing NOT_RUN; elaboration NOT_RUN; compilation
NOT_RUN; independent fresh kernel replay NOT_RUN; transitive
axiom audit NOT_RUN; compatible Tau Ceti adapter build NOT_RUN.
No native Noe, CI, scheduler or verification dispatch, and no
new Lean `axiom`, `sorry`, or `admit` declaration.
Git source publication/readback is NOT a kernel proof.
The actual geometric theta obstruction/Poincare divisor
cocycle, Weil-cup Kummer isotropy in Lean, nondegeneracy of the
constructed abelian pairing and the global derived BSD bridge
remain unproved in Lean.

## 1. Exact local arithmetic target

Fix a characteristic-zero nonarchimedean local field F, an elliptic
curve E/F, and n>0 (in particular any p-power, including p equal
to the residue characteristic). The original cohomology and point
quotient are

  H := H¹(F,E[n]), Q := H¹(F,E)[n], P := E(F)/nE(F).

Pinned Tau Ceti
`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean`,
Git blob `3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b`,
already proves the exact genuine Kummer row

  0 → P --δ_n--> H --q_n--> Q → 0.

The previous isolated
`TauCetiEllipticTorsionGalRepWeil.lean`
constructs `A=ellipticTorsionGalRep W n` with carrier
literally `W.TorsionCoeff n`, actual Galois action, the
injective and source-candidate bijective Weil-to-Tate-dual
map `a↦(b↦e_n(a,b))`, the canonical H¹ transport,
`ellipticCanonicalKummerClassMap` and
`ellipticCanonicalWeilChateletQuotient`.
The genuine finite pairing is

  B_n(x,y) = h2MuEquivZMod_F(
       cup_eval( H¹(Φ_E,n)(x), y ))
    ∈ ZMod n,

not a chosen Gram or abstract rank-two pairing.
The finite original Tau Ceti local perfectness is in
`NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean`,
blob `f2a94093d03c3be0d1b2c048b4f516d773cbe6ba`.
That theorem DOES NOT alone construct the abelian local
Tate pairing or prove isotropy of the original Kummer image.

## 2. The exact continuous Weil/Kummer 2-cocycle, now named

New isolated upstream-version source proof candidate
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiWeilCupKummerCocycle.lean`,
Git blob `6bf0968ea8dcccba01b39ae6491d2daeee976651`.

It invokes the literal original
`W.torsionCoeffWeilPairing` (source
`GaloisCohomology/WeilPairing/Basic.lean`,
blob `d54088b59839bf055f1670006127a4d854adaa50`),
`W.kummerCocycle hQ` and `W.kummerMap_eq_H1pi`
(source Descent), and
`ContCohomology.explicitCup11_mk` / `cup11_mem_Z2`
(source `RepresentationTheory/Homological/ContCohomology/Cup/Product.lean`,
blob `a751b639bb5818ab0c133b2234c0e50bf66dbf70`).

For a genuine source cocycle a : Z¹(G_F,E[n]) and
Q in E(Fsep) with nQ=P in E(F), it constructs the actual
continuous μ_n-valued 2-cocycle

  z_(a,Q)(σ,τ) =
       e_n(a_σ, σ(τQ−Q)).

The original source cup is the cohomology class of this
cocycle, with the exact action on the second argument.
New declarations include:
`sourceWeilBiadditive`,
`sourceWeilBiadditive_equivariant`,
`sourceWeilBiadditive_skew`,
`continuous_sourceWeilBiadditive`,
`originalWeilCup`,
`originalKummerClass_eq_cocycle`,
`originalWeilCupKummerCocycle`,
`originalWeilCupKummerCocycle_apply`,
`originalWeilCup_kummer_eq_class`, and
`originalWeilCup_eq_divisorClass_of_continuousWitness`.

The LAST theorem reduces the geometric comparison to exactly
one continuous 1-cochain t satisfying

  σt(τ) − t(στ) + t(σ)
     = z_(a,Q)(σ,τ) − z_divisor(σ,τ).

The original source `ContCohomology.H2pi_eq_iff` and
`mem_B2_iff'` (LowDegree.lean,
blob `9596754d63dfddae05765acc47fab267df58da7e`)
then prove equality in the actual continuous H².
The cochain z_divisor and t must still be BUILT from the
original elliptic function field, divisors, and evaluation.
They are not supplied by a source theorem, and the witness
is not presented as already constructed.

## 3. Signed geometric compatibility from published mathematics

Tom Fisher, *The Cassels–Tate Pairing and the Platonic Solids*,
§2.1, Proposition 2.1, gives a concrete divisor/function
proof that the finite local Weil cup and abelian local Tate
pairing are compatible with the isogeny Kummer sequence:
https://www.dpmms.cam.ac.uk/~taf1000/papers/ctp.pdf

Fisher's finite convention is
  finite(a,b) = inv{ e_φ(a_σ, σ b_τ) };
his abelian convention is
  Tate(P,ξ) = −inv f_ξ(D_P),
where the rational divisor D_P sums to P and f_ξ is the
divisor/cohomology connecting class. Proposition 2.1
identifies finite(δ_φ(P),b) with Tate(P,q_φhat(b)).
Proposition 2.2 gives nondegeneracy and Lemma 2.4
establishes exact local Kummer annihilators for dual
isogenies. These are classical mathematical sources,
NOT already source-typed Lean theorems.

For the original self-dual elliptic coefficient e_n,
the Weil pairing is alternating, so reversing its
arguments introduces a minus sign. The degree-(1,1)
cup is graded-anticommutative, introducing the SECOND
minus sign. Their product is symmetric on H¹.
The source original
`ContCohomology.explicitCup11_eq_neg_flip`
(above pinned Cup/Product), or
`TopPairing.cup_gradedComm`
(pinned `Cup/Graded/Comm.lean`,
blob `ab27b658e99daf3a2c6a7a27fe288beaa15e7eb7`),
supplies graded commutativity; the source Weil skew
comes from `torsionCoeffWeilPairing_self`.
Therefore with Fisher's SOURCE orientation one expects

  B_n(x,δ_n P) = Tate(P,q_n x)

(positive sign when the abelian pairing's arguments are
ordered `(point,Weil–Chatelet class)` and includes
Fisher's indicated minus in divisor evaluation).
The *entire* sign reconciliation has NOT been compiled
in the combined Lean source; avoid silently replacing
the prior explicit ±1 by a proved +1 theorem.
A different convention can reverse the reported sign,
which does not affect the annihilator but DOES affect
the demanded source-faithful pairing.

A second mathematical source is Clark–Sharif,
*Period, index and potential, III*, Algebra & Number Theory
4(2), 2010, §2.2, Theorem 5 (attributing the theorem
to O'Neil): the original period-index theta obstruction
Δ_n satisfies a polarization identity along Kummer classes,
and it vanishes on the image of rational points:
https://msp.org/ant/2010/4-2/ant-v4-n2-p02-p.pdf

This gives an additional noncircular geometric route
to the missing source Kummer–Kummer isotropy without
postulating the final orthogonal-complement equality.

## 4. Construct an abelian pairing instead of assuming one

New root-Mathlib-only source
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalAbelianTateCupDescent.lean`,
blob `58f627fb5fd990bb881ab46c7102e26789d1914b`.

Let q:H→+Q be surjective, δ:P→+H, and
B:H→+H→+Z a genuine biadditive finite cup.
With source Kummer exactness `im δ=ker q`
and actual Kummer isotropy

  B(δP,δQ)=0   for all P,Q,

the source proves:
- `kernel_vanishing_of_kummer_isotropy`;
- `abelianCupDescentOfKummerIsotropy` *constructing*
  the unique additive pairing `T:Q→+P→+Z`;
- `abelianCupDescentOfKummerIsotropy_lift` proving
  `T(qx,P)=B(x,δP)`;
- `abelianCupDescent_unique` proving independence
  of every chosen lift in H.

This construction does not assume a preexisting abelian
Tate pairing or an arbitrarily chosen perfect bilinear form.
It still requires a GEOMETRIC proof of isotropy and a
separate proof that this descended pairing is perfect and
coincides with Fisher/Milne's divisor/Poincare pairing.

The amended actual Tau Ceti adapter
`TauCetiEllipticTorsionGalRepWeil.lean`,
blob `ae6befcfa1ecac42e15ce90ee1ed21a9e1c224e8`,
now also contains `ellipticNormalizedWeilCupHom`,
`OriginalKummerCupIsotropic`,
`quotientKummerCup_isotropic`,
`ellipticAbelianCupDescent`,
`ellipticAbelianCupDescent_lift` and
`originalThetaPolarization_implies_KummerIsotropy`.
These use the LITERAL source
`continuousCohomology 1 (ellipticTorsionGalRep W n)`,
its actual `H¹(F,E)[n]` quotient and
`E(F)/nE(F)` rather than anonymous proxy modules.
The source-exact quotient-pairing is conditional ONLY
on real Kummer isotropy; the independent geometric
theta/divisor source has not yet been constructed.

## 5. Isotropy reduced to genuine theta identities

Another new native-Mathlib proof candidate
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ThetaKummerIsotropy.lean`,
blob `114feb6743fb7caacd26034c3261e510e132156a`.

The `ThetaKummerData` predicate records the two actual
geometric requirements of the source theta obstruction:
  Δ_n(δ_n P)=0;
  B_n(x,δ_n P) = Δ_n(x+δ_n P)−Δ_n(x)−Δ_n(δ_n P).

Its `kummer_isotropic` theorem proves, for any P,Q,
  B_n(δ_n P,δ_n Q)
   = Δ_n(δ_n(P+Q))−Δ_n(δ_n P)−Δ_n(δ_n Q)
   = 0.
It also proves `kernel_cup_vanish` for the actual
original Kummer exact row once instantiated.
The two theta identities are **not** invented source
proofs: producing `Δ_n` from the genuine elliptic
theta group/period-index obstruction and proving
its polarization/vanishing is the next precise
noncircular geometric Lean supplier.

The amended external adapter links those two
hypotheses directly to the source
`OriginalKummerCupIsotropic` through
`originalThetaPolarization_implies_KummerIsotropy`.

## 6. Real missing mathematical/Lean acceptance steps

1. Construct the ORIGINAL theta-group central extension
   `1→G_m→G(L)→E[n]→1` for the symmetric
   degree-n elliptic line bundle (or the Poincare
   divisor/function-field construction). Implement the
   period-index obstruction `Δ_n` as an authentic
   H¹(E[n])→Br(F)[n] boundary. Do not invent
   a scalar quadratic map with the desired values.
2. Prove `Δ_n∘δ_n=0` on original rational point
   Kummer classes, and O'Neil's polarization along
   δ_n as the EXACT original normalized Weil cup.
   Fix the sign through the source finite E[n]
   pairing and the degree-(1,1) cochain formula.
3. Alternatively construct Fisher's actual
   `z_divisor` and the continuous 1-cochain
   witness `d¹t=z_(a,Q)−z_divisor` on original
   Galois cochains. The new certificate theorem
   then gives equality in H² and the signed Tate
   adjunction. This requires the original elliptic
   divisor evaluation and Weil reciprocity.
4. Establish perfection/separation for the genuine
   descended pairing. The pinned local finite-module
   perfectness theorem can be combined with
   Kummer isotropy and the original Kummer-image
   cardinality calculation; pinned away-from-n
   `Affine/Point/Index/NSmul.lean`, blob
   `99a80779aa490c52f7ed267116c7ae1f8fee4867`,
   covers ONLY primes not dividing n. At primes
   above n, the local point index/Euler characteristic
   comparison requires its own source supplier;
   `ClassFieldTheory/Local/EulerCharacteristic/Basic.lean`,
   blob `18baf822f9b6d0823b1f27fcb6ffdf8a1bacf58c`,
   provides finite-representation Euler-characteristic
   definitions, NOT a completed elliptic point comparison.
5. Once the actual source theta/divisor pairing and
   nondegeneracy are accepted, return
   `im δ_E=(im δ_Evee)^orth` for the genuine dual
   elliptic curve and its principal polarization.
   Then address p-power inverse limits, real-place
   p=2 Tate cohomology, the reverse outside-S
   unramified inclusion, adelic restricted products
   and global Poitou–Tate before any Selmer regulator.
   The previously corrected full local cone's
   `H²(U)=H¹(F,E)` Weil–Châtelet residue and
   good truncation are NOT removed.

No claim of a verified derived regulator, finite
Shafarevich–Tate group, or complex Hasse–Weil
central-jet/BSD-I/II comparison follows from this source work.
