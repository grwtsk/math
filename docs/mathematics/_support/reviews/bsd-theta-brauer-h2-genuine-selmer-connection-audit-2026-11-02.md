# Theta, Brauer H², Weil cup, Kummer and derived Selmer: exact-source integration audit

**Date:** 2026-11-02 (America/Los_Angeles).
**Repository:** grwtsk/math, existing main. Immutable publication commit
is identified by the final Git readback.
**Upstream mathematical and code authors:** The Tau Ceti contributors,
TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Apache-2.0, Lean `v4.36.0-rc1`.
**New mathematical source attribution:** grwtsk contributors (MIT).
**Native math root:** Lean `v4.34.1`, unchanged.
**Status:** SOURCE_PROOF_CANDIDATE; Lean PARSING_NOT_RUN,
COMPILATION_NOT_RUN, FRESH_KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN,
PINNED_UPSTREAM_ADAPTER_BUILD_NOT_RUN.
No Noe/native/CI verification or automation was dispatched.
Exact Git readback is source-integrity evidence, NOT a Lean
compiler/kernel receipt. No new `sorry`, `admit` or `axiom`
was declared in these source candidates.

## 1. The complete bounded related-source inventory

Repository tree inspection, followed by exact file/declaration
readback, identifies the following BSD theta/Kummer/dual Selmer
dependency chain. This is an inventory of this mathematical
programme, not a claim to have exhausted every mathematical
use of the words "theta", "dual" or "Selmer" across the repository.

### Original pinned Tau Ceti sources

| Original relative path under `TauCeti/` | Pinned blob | Exact relevant output |
|---|---|---|
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean` | `0f61446aae1bba38a194ff71d170cf9e868e9e4d` | Actual rational functions with `div f=n([T]-[O])` |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Divisor/Sum.lean` | `966862188a03cff2e5f503a25b9d369e26b648ab` | Actual degree-zero principal divisor if and only if sum O |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Basic.lean` | `9cdf4bb3a58491d48b8a3622ee10c9447cab2dea` | True function-field translation composition |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Place.lean` | `5d08df8d3fdb4df91355c821371d77bbd89fcb84` | `tau_T` translates actual point places by `-T` |
| `FieldTheory/FunctionField/Divisor/Principal.lean` | `71265ad956f6b10672768a65a4800864667a740e` | Function with zero divisor equals actual base-field constant |
| `FieldTheory/FunctionField/Divisor/Automorphism.lean` | `b86547a39b08784260f8306c1d867ded15a073a6` | Principal divisor equivariance |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/Basic.lean` | `562a808bcaeb0db70c918b2a447240717fdf3e04` | Genuine function-field Galois action and translation interchange |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/Divisor.lean` | `52697374b29a8efe552dbf87b34a515269885020` | Genuine divisor Galois equivariance |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean` | `d56decb915934d38ff4ed5271ed59c73953a89e1` | Original `W.TorsionCoeff n=E[n](Fsep)`, original Galois action |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean` | `3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b` | Original Kummer map and exact `E(F)/n → H¹(F,E[n]) → H¹(F,E)[n]` |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean` | `d54088b59839bf055f1670006127a4d854adaa50` | Genuine equivariant `e_n` on original E[n] |
| `AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/WeilPairing/Basic.lean` | `8957e64b52bc94ada398c4724b256630558397cb` | `algebraMap_weilPairing`, actual isogeny function ratio |
| `RepresentationTheory/Homological/ContCohomology/LowDegree.lean` | `9596754d63dfddae05765acc47fab267df58da7e` | Genuine continuous `Z2`, `H2`, `mem_Z2_iff`, `mem_B2_iff'`, `H2pi_eq_iff` |
| `RepresentationTheory/Homological/ContCohomology/Cup/Product.lean` | `a751b639bb5818ab0c133b2234c0e50bf66dbf70` | `explicitCup11_mk`, exact `a(σ)⌣b(τ)` with action on second argument |
| `FieldTheory/GaloisCohomology/Coefficients.lean` | `a0dcf3d43794f633597b5aef115e27d7dfcc20fe` | Original `UnitsCoeff F=Additive (Fsep×)`; its Galois action is ALREADY continuous |
| `FieldTheory/GaloisCohomology/BrauerTorsion.lean` | `d1d4ef2b1549298e642e9eba946179a8d9e649d4` | Genuine `h2KummerToUnits` injective with image exact n-torsion |
| `NumberTheory/ClassFieldTheory/MuNRep.lean` | `2d14af1616e26ccee0e04b9897a467ab8bd994f8` | `muNRepH2Equiv`: explicit roots-of-unity H² → original canonical representation H² |
| `NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean` | `7d21171a7372904ae7c8a715aa74f389aebd7cae` | `h2MuEquivZMod`, original local Brauer invariant `k/n↦k mod n` |
| `NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean` | `f2a94093d03c3be0d1b2c048b4f516d773cbe6ba` | Perfect finite-coefficient local Tate pairing, NOT abelian-variety local Tate duality |

### grwtsk/math sources and their exact consumers

**Actual geometric theta source family:**
`documentation/adapters/tauceti-elliptic-selmer-fiber/`
contains `TauCetiOriginalGeometricTheta.lean`,
`TauCetiOriginalGeometricThetaGalois.lean`,
`TauCetiGeometricThetaKummerBoundary.lean`,
`TauCetiWeilCupKummerCocycle.lean`,
`TauCetiEllipticTorsionGalRepWeil.lean`,
`TauCetiNormalizedLocalTatePerfect.lean`,
`TauCetiContinuousTateCochains.lean`,
`TauCetiTateCochainDifferentials.lean`,
`TauCetiPointKummerTower.lean` and
`TauCetiLocalKummerOrthogonalityCriterion.lean`.
The first two theta adapters and the self-contained
`TauCetiGeometricThetaKummerBoundary.lean` overlap;
NONE has a verified upstream-compilation receipt.
They are not independent established theta theorems.

**Native mathematical composition:**
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/`
contains the connected sources
`ThetaCentralPolarization`,
`ThetaCentralBoundaryPolarization`,
`ThetaSectionOrderCoboundary`,
`ThetaKummerIsotropy`,
`LocalAbelianTateCupDescent`,
`LocalKummerAdjointKernel`,
`KummerExactTransport`,
`LocalPointKummerFiber`,
`LocalPointKummerTower`,
`LocalKummerConditionCone`,
`LocalKummerHigherResidue`,
`LocalKummerGoodTruncation`,
`LocalKummerGoodTruncationTower`,
`GlobalKummerPointFiberAssembly`,
`GlobalSelmerFiberTower`,
`DerivedBocksteinSelmerBoundary`,
`SelmerMappingFiberDegreeTwo`,
`SelmerRestrictedProductComparison`,
and `ArchimedeanInvolutionTateBoundary`.
These are separately sourced mathematical proof candidates;
the global consumers have NOT been kernel-admitted by this
source inspection. Avoid claiming each candidate supplies a
genuine original elliptic cochain without its source adapter.

## 2. NEW connection: central theta factor -> genuine group 2-cocycle

NEW root-Mathlib module
`ThetaCentralFactorCocycle.lean`,
Git blob `ed190a13bdd48641fcc9a5d72b21ad58df69b89b`,
introduces `CentralScalarInclusion`: a faithful
Galois-equivariant group homomorphism
`C→*Theta` with CENTRAL image, and a `FactorData`
whose scalar image is REQUIRED to be the actual
nonabelian boundary
  `b_u(σ,τ)=u_σ σ(u_τ) u_(στ)^(-1)`.

Its `FactorData.factor_twoCocycle` DERIVES the
multiplicative 2-cocycle law

  `c(σ,τ)c(στ,ρ)=σ(c(τ,ρ))c(σ,τρ)`

from associativity and scalar centrality. This
law is NOT an assumption of `FactorData`.
`FactorData.factor_eq_one_of_crossed` proves strict
Kummer lifts give identity scalar factors.
The actual theta group source already proves
`scalarLift_central` and scalar identity fibre,
and its new `scalarLiftHom` and
`scalarLiftHom_injective` prove the true
original constant-field group injection,
not a chosen Heisenberg central coordinate.

**Remaining source-specific integration:** formalize
the `AbsoluteGaloisGroup F` semilinear action on
the actual `ThetaLift` as a `MulDistribMulAction`
and prove the original raw theta scalar is the
`FactorData.factor` of THAT action. The earlier
`thetaLiftGalois` function is an isolated source
candidate, not yet a compiled group-action
instance. These two facts and Galois continuity
are not deduced from the generic central-group
theorem alone.

## 3. NEW connection: actual raw theta scalar -> genuine Brauer H²

NEW isolated original Tau Ceti adapter
`TauCetiThetaBrauerH2Transport.lean`,
Git blob `dd92b230866dc7a4da35ac2313738a1a02d862a6`.

It defines
  `originalThetaUnitsCochain a (σ,τ)
       = Additive.ofMul (thetaObstructionScalar a σ τ)`,
with coefficient type exactly `UnitsCoeff F`,
not an artificial Brauer module. It names the
PRECISE missing source arithmetic inputs:
  `ThetaScalarContinuous`,
  `ThetaScalarFactorLaw`.

Then `originalThetaUnitsCochain_mem_Z2`
returns the actual original Tau Ceti continuous
2-cocycle under these independent conditions.
`originalThetaExplicitH2` builds the real
explicit `H2 (AbsoluteGaloisGroup F) (UnitsCoeff F)`;
`originalThetaCanonicalBrauerH2` applies
`explicitH2AddEquivContinuousCohomology`
to the canonical `continuousCohomology 2`
over that SAME true `UnitsCoeff F`.

The added `originalUnitsH2_eq_of_continuousSectionChange`
uses the original signed `d1`, exact
`mem_B2_iff'` and `H2pi_eq_iff`
to turn a CONTINUOUS scalar one-cochain
`cσ` and the pointwise section change
  `a(σ,τ)=cσ+σcτ−cστ+b(σ,τ)`
into a derived equality of original H²
classes; `originalCanonicalUnitsH2_eq_of_continuousSectionChange`
transports it to canonical cohomology.
The previously published
`ThetaSectionOrderCoboundary.lean`
derives that pointwise group equation for
the two forward/reversed theta lift sections.
The original `c` continuity and theta
Galois action are still essential,
and neither is presumed completed.

## 4. NEW connection: authentic H² units -> mu_n H² -> ZMod n

Pinned Tau Ceti `h2KummerToUnits_injective`
and `h2KummerToUnits_range` prove that the
canonical H² inclusion of roots of unity has
EXACTLY the n-torsion of the units-coefficient
H² as image. New
`originalThetaBrauerH2_uniqueMuNPreimage`
returns a UNIQUE original mu_n H² class,
conditionally on `n•thetaBrauerH2=0`.

At a characteristic-zero nonarchimedean
local field (including primes dividing n),
new `thetaMuNNormalizedEquiv` composes
the EXISTING ORIGINAL equivalences:

  H²_can(F,mu_n) → H²_exp(F,mu_n)
      →^(muNRepH2Equiv) H²(F,muNRep n F)
      →^(h2MuEquivZMod) ZMod n.

Then `originalThetaNormalizedInvariant`
constructs the normalized source residue from
the unique mu_n lift and
`originalThetaNormalizedInvariant_returns_original`
proves the residue maps back to the SAME
original units Brauer class.

This is an algebraic/source-exact
normalization, **not yet an unconditional
geometric theta obstruction**. The actual
geometric class must be proved n-torsion.
Neither the original `H²` continuity
nor lift independence can be inferred
just from `n` invertibility or finite
elliptic Weil nondegeneracy.

## 5. NEW connection: original theta identities -> Kummer annihilator

NEW root-Mathlib module
`ThetaToKummerLocalDuality.lean`,
Git blob `24773e443dc382b3bbab65e263f51f1687d04647`.
It imports THREE previously independent
GRWTSK modules:
  `ThetaKummerIsotropy`,
  `LocalAbelianTateCupDescent`,
  `LocalKummerAdjointKernel`.
For the SAME groups H=H¹(F,E[n]),
Q=H¹(F,E)[n], P=E(F)/nE(F) and
Z=ZMod n, it composes:
  (theta zero on genuine Kummer image)
    + (theta polarization along Kummer)
      => Kummer cup isotropy;
  + (original Kummer `im δ=ker q`)
    + (q surjectivity)
      => UNIQUE genuine cup-descended
         abelian pairing `T:Q→+P→+Z`
         and exact `T(qx,P)=cup(x,δP)`;
  + (separation of the ACTUAL Q by that T)
      => `im δ = (im δ)^perp`.

The new `ThetaKummerData.descendedAbelianTate`,
`descendedAbelianTate_lift`,
`descendedAbelianTate_unique`,
`kummer_le_cupAnnihilator`, and
`kummer_eq_cupAnnihilator_of_separating`
are the explicit compositional consumers.
These cannot be called unconditional E-specific
Tate duality until the real theta geometry,
original Kummer exactness comparisons, and
local abelian Tate separation are supplied
at pinned source types.

In the elliptic self-dual case the actual
canonical principal polarization must be
used to identify E and E^vee; for an arbitrary
isogeny the dual local condition lives in
the separate E^vee cohomology carrier, and
the pairing's argument order remains essential.

## 6. The exact unclosed geometry and global derived frontiers

A. **True geometric theta central extension:** source
`TauCetiOriginalGeometricTheta.lean` is a real
function-field lift group built from
`div(f_T)=n([T]-[O])`, with multiplication
`(T,f)(S,g)=(T+S,f*tau_-T(g))`.
The original (G_{O(nO)}) line-bundle
identification and source Galois action as
an honest equivariant group must be
kernel-verified, not inferred from syntax.

B. **Original commutator=Weil pairing:** the genuine
source Weil `Isogeny.algebraMap_weilPairing`
uses `g_T` with divisor
`[n]^*([T]-[O])`; the theta commutator is
`f_T tau_-T f_S/(f_S tau_-S f_T)`.
Their EXACT equality or properly oriented
inverse still requires the real
divisor-pullback/Weil reciprocity theorem.
The forward vs reversed theta-section
difference is already reduced to an
explicit continuous one-cochain problem;
it does not discharge the commutator theorem.

C. **Continuity/n-torsion:** the original
`UnitsCoeff F` action is already continuous,
but a chosen theta lift cochain and the
arbitrary-lift scalar factor still need
their OWN continuity proof. The theta
Brauer class must be shown killed by n.
The independent original Brauer H²
group is NOT the same object as the
higher local point-cone residue.

D. **Abelian local Tate and derived Selmer:** finite
`tateDualityPairing_perfect_mixed` does
NOT by itself prove the separating Tate
pairing for `H¹(F,E)[n]` against
`E^vee(F)/nE^vee(F)`. Keep the
real dual principal polarization,
local point quotient and Poincare
biextension comparison explicit.
The original full point-corrected cone
`U_v=Fib(RΓ(F,E[n])⊕E(F)[0]→RΓ(F,E))`
may have **nonzero**
`H²(U_v)=H¹(F,E)` (Weil–Châtelet),
so only its GOOD truncation is
a two-degree Kummer-condition model.
The independently pinned
`LocalKummerHigherResidue` hostile
counterexample forbids identifying the
entire full cone with a two-term point
complex. `LocalKummerGoodTruncationTower`
then carries p-power transitions on the
correctly truncated source. Reverse
outside-S unramified/Kummer inclusion,
real-place p=2 Tate modification,
restricted-product duality, true derived
`Rlim` and global Poitou–Tate remain
independent tasks.

E. **Final BSD limit:** neither a verified
p-adic derived regulator nor an
independent real Néron–Tate height lattice,
Sha finiteness, Tamagawa/period factors
or COMPLEX Hasse–Weil central leading
jet comparison follows from these
cochain/geometry constructions.
No BSD-I/II resolution is claimed.

## 7. Independent hostile finite algebra check

Using deterministic Python integer arithmetic,
seed `20261102`, finite Heisenberg groups
`H_n={(a,b,c) mod n}` with
`(a,b,c)(d,e,f)=(a+d,b+e,c+f+a e)`
at n=2,3,4,5,7,8,9,11,13, and a
genuine involutive action
`(a,b,c)↦(-a,-b,c)`, checked:

- **144,000 exact instances** of the
  central nonabelian boundary 2-cocycle
  equation, including all eight triples
  in C₂ for 2,000 random source lifts
  at each of the nine moduli;
- **12,000 exact instances** of strict
  crossed lift vanishing at odd moduli,
  with scalar chosen from the
  explicit modular equation
  `2c=a b`.

All comparisons use exact integer
modular arithmetic; no floating error.
These are independent host-side tests of
the GROUP algebra only, not Lean
verification, original elliptic
functions, genuine local field Galois
topology, theta n-torsion, nor a proof
of the central commutator=Weil equality.

## 8. Exact acceptance/verification checklist

The new native Mathlib modules are source candidates
for grwtsk/math Lean v4.34.1:
`ThetaCentralFactorCocycle.lean`,
`ThetaToKummerLocalDuality.lean`.
The new isolated Tau Ceti source
`TauCetiThetaBrauerH2Transport.lean`
must be compiled with original Lean v4.36.0-rc1
and a search path containing the other isolated
theta adapters; NEVER change the root import
or toolchain merely to coerce compatibility.
Then collect exact source+dependency identity,
`lake env lean --wfail`, fresh independent
kernel replay, full `#print axioms`,
type/interface checks and a declaration-scoped
receipt. None of these verification facets
was executed in this source-authoring turn.

**Primary literature:** David Mumford,
*On the Equations Defining Abelian Varieties I*
(1966), Inventiones Mathematicae 1, 287–354,
DOI 10.1007/BF01389737;
Catherine O'Neil,
*The Period-Index Obstruction for Elliptic Curves*
(2002), J. Number Theory 95, 329–339,
DOI 10.1006/jnth.2001.2770;
Benjamin Antieau and Asher Auel,
*Explicit descent on elliptic curves and splitting Brauer
classes* (2021), arXiv 2106.04291,
https://arxiv.org/abs/2106.04291;
J. S. Milne, *Arithmetic Duality Theorems*
(2nd ed.), Chapter I local duality;
Jan Nekovář, *Selmer complexes*
(Astérisque 310, 2006), §6.1.
Published theorems supply mathematical source
motivation and comparison, NOT source-typed
Lean proofs or certificate evidence.
