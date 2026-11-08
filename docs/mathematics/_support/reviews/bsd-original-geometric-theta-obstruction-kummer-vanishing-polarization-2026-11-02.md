# Original geometric theta group and Kummer obstruction: function-field construction, strict vanishing and polarization frontier

**Date:** 2026-11-02 (America/Los_Angeles).
**Maintained mathematics repository:** grwtsk/math existing main,
source commit recorded after publication.
**Original upstream:** TauCetiProject/TauCeti at immutable
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors, Apache-2.0,
`leanprover/lean4:v4.36.0-rc1`.
**New candidate source:** grwtsk contributors, MIT.
**Root:** grwtsk/math Lean `v4.34.1`, unchanged.

## 0. Acceptance, no hidden lemma or completion claim

**SOURCE_PROOF_CANDIDATE; PARSING_NOT_RUN, COMPILATION_NOT_RUN,
FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN,
COMPATIBLE_TAUCETI_IMPORT_NOT_RUN.** There is no `lean` or
`lake` executable in the authoring container. No native Noe
verification/CI/scheduler was dispatched, and no new
`sorry`, `axiom` or `admit` declarations occur in the
added sources. A source script with `by` is not a verified
Lean theorem without compilation and replay.

**Crucial scope distinction:** We construct the ORIGINAL
geometric function-field theta lifts, an explicit central
commutator and a raw Galois theta scalar, and supply a
strict crossed-cocycle Kummer lift. The strict equation
proves geometric vanishing at the function/extension level.
The following are NOT YET established in source-typed Lean:
(1) continuity of the arbitrary theta scalar cochain,
(2) its H² 2-cocycle/class and independence of theta lift
choice in the continuous Brauer category, and
(3) equality of the ORIGINAL geometric theta commutator
with the exact pinned Tau Ceti Weil pairing and the
resulting `Delta_n` polarization identity.
The requested FULL geometrically source-verified obstruction
and polarization theorem therefore remain OPEN. Do not
treat this as completion of elliptic Kummer orthogonality
or BSD.

## 1. Primary original Tau Ceti suppliers checked at pinned revision

- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean`,
  blob `0f61446aae1bba38a194ff71d170cf9e868e9e4d`.
  `WeierstrassCurve.Affine.exists_principal_eq_zsmul_ofPoint_sub_infinity`
  proves the ACTUAL n-torsion divisor `n((T)-(O))` is principal.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Divisor/Sum.lean`,
  blob `966862188a03cff2e5f503a25b9d369e26b648ab`.
  `divisorSum_eq_zero_iff`, `ofPoint_sub_ofPoint_mem_ker_degree`
  establish principality of `n(Q)-(P)-(n-1)(O)` for nQ=P.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Place.lean`,
  blob `5d08df8d3fdb4df91355c821371d77bbd89fcb84`.
  `translation_smul_pointEquivDegreeOnePlace` transports
  point places through actual rational-function pullback.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Basic.lean`,
  blob `9cdf4bb3a58491d48b8a3622ee10c9447cab2dea`.
  `translation_add` and `translation_zero` are original
  automorphism composition laws, with point signs.
- `TauCeti/FieldTheory/FunctionField/Divisor/Automorphism.lean`,
  blob `b86547a39b08784260f8306c1d867ded15a073a6`.
  `TauCeti.Divisor.principal_smul` proves
  `div(tau^*f)=tau*div(f)` for actual function fields.
- `TauCeti/FieldTheory/FunctionField/Divisor/Principal.lean`,
  blob `71265ad956f6b10672768a65a4800864667a740e`.
  `principal_mul`, `principal_div`, `principal_inv`
  and `principal_eq_zero_iff` identify functions with
  zero divisor with actual constants of the exact
  elliptic function-field constant field.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/Basic.lean`,
  blob `562a808bcaeb0db70c918b2a447240717fdf3e04`,
  and `.../Galois/Divisor.lean`,
  blob `52697374b29a8efe552dbf87b34a515269885020`.
  Actual `functionFieldGaloisAction_translation`,
  `divisorGaloisAction_principal`, original point
  Galois action and place equivariance.
- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean`,
  blob `d56decb915934d38ff4ed5271ed59c73953a89e1`.
  The original coefficient `W.TorsionCoeff n`
  equals the genuine `E(Fsep)[n]`.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/WeilPairing/Basic.lean`,
  blob `8957e64b52bc94ada398c4724b256630558397cb`.
  `TauCeti.Isogeny.weilPairing` is the ACTUAL
  n-torsion Weil pairing defined using a function
  `g_T` whose divisor is
  `[n]^*((T)-(O))`; the original source
  `algebraMap_weilPairing` computes
  `e_n(S,T)=tau_S^*(g_T)/g_T`.
  **This is the specific supplier for the final geometric
  commutator bridge. It does not already state that theorem.**
- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean`,
  blob `d54088b59839bf055f1670006127a4d854adaa50`.
  `W.torsionCoeffWeilPairing` transports the exact
  `Isogeny.weilPairing` to the local Galois source.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean`,
  blob `9596754d63dfddae05765acc47fab267df58da7e`.
  Its `Z2`, `B2`, `mem_B2_iff'` and `H2pi_eq_zero_iff`
  require a CONTINUOUS one-cochain for coboundary
  equality; a bare function equation is insufficient
  for continuous Brauer/H² acceptance.

## 2. REAL theta group from source elliptic rational functions

NEW isolated adapter `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean`
has generated blob identity recorded in the publication.

Let W/F be the ACTUAL elliptic curve and n nonzero.
For an original n-torsion point T, define
  `D_T = n((T)-(O))`, and a theta lift
  `(T,f_T)` with `div f_T = D_T`,
  `f_T∈F(E)^×` a genuine rational function.
The source geometric theorem constructs `f_T`.
Define `tau_-T` using `W.translation`.
Then
  `(T,f_T)*(S,f_S)=(T+S,f_T tau_-T^*f_S)`.

Because `tau_-T^*(S)=(S+T)`, the actual
translation-divisor identity is
  `D_T + tau_-T^*D_S = D_(T+S)`.
The candidate proves this identity and uses
`Divisor.principal_mul`/`principal_smul`
to close multiplication. It constructs translated
inverses, associativity, an actual group instance,
and the scalar lifts above O; `principal_eq_zero_iff`
shows the identity fibre consists exactly of
nonzero base-field constants, and `scalarLift_central`
shows these are central.

The resulting theta commutator is an ACTUAL
rational-function expression:
  `C(T,S) =
     f_T tau_-T^* f_S /(f_S tau_-S^* f_T)`.
Its principal divisor is 0, and the candidate
proves that it comes from `F^×`.
It is **not defined** to equal the original
Weil pairing. The source theorem that
this commutator is `e_n(T,S)` or its inverse
(depending on the chosen theta lift/argument
order) remains OPEN. For a complete Mumford
theta-group identification, the line-bundle
isomorphism with `O(n(O))` must likewise
be reconciled with the exact translation sign.

## 3. The ORIGINAL Kummer divisor and strict geometric vanishing

NEW source adapter
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricThetaGalois.lean`
depends on the first isolated adapter and the
original Tau Ceti Galois/function-field suppliers.
Both files must be made available on the
same isolated compatible Tau Ceti Lean search path.

Let `P∈E(F)` and `Q∈E(Fsep)` with `nQ=P`.
The source `divisorSum_eq_zero_iff` produces
an ACTUAL rational-function unit `h_Q` with
  `div(h_Q)=n(Q)-(P)-(n-1)(O)`.
No nonabelian cohomology axiom is introduced.

For `a_σ=σQ−Q`, define the explicit theta lift
  `f_σ = tau_Q^*(σh_Q/h_Q)`.
Source Galois divisor equivariance and
the actual point/place translation laws prove
  `div(f_σ)=n((a_σ)-(O))`.
The original source automorphism composition
and translation/Galois interchange yield
  `f_σ tau_-aσ^*(σ f_τ) = f_(στ)`.
Thus the ACTUAL geometric nonabelian Kummer
boundary factor
  `f_σ tau_-aσ^*(σ f_τ)/f_(στ)`
is **identically 1**, for every `σ,τ`.
The new `kummerThetaBoundaryFunction_eq_one`
is the explicit source candidate for that
strict function-field identity. This is
a substantive vanishing argument, not an
assumption of final isotropy.

To promote it to `Delta_n(δ_n P)=0` in
`continuousH²(F,Fsep^×)`, it remains to prove
the arbitrary-lift scalar factor is a
continuous Galois 2-cocycle, the class is
independent of the lift, and the explicit
Kummer crossed lift can be used in that
same continuous cohomology construction.
The adapter *constructs* the raw scalar
`thetaObstructionScalar a σ τ` by
proving the actual quotient function
has principal divisor zero. It does
NOT yet provide a complete continuous
`H¹(E[n]) → Br(F)[n]` obstruction.

## 4. Theta polarization identity: proven group algebra and exact frontier

NEW independent Mathlib-only module
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ThetaCentralBoundaryPolarization.lean`
has the real nonabelian boundary
  `b_u(σ,τ)=u_σ (σu_τ) u_(στ)^(-1)`.
For chosen theta lifts `u_σ` of a and
`v_σ` of b, choose the product lift
`w_σ=u_σ v_σ` of a+b. Centrality of
the original theta scalar kernel gives
the explicit *group* factor identity

  `b_w(σ,τ)
    = [v_σ,σu_τ] b_u(σ,τ) b_v(σ,τ)`,

where `[x,y]=xyx^(-1)y^(-1)`.
The module proves this under precisely
centrality of the boundary factors and
commutator; it does NOT take a
predetermined perfect pairing or
theta polarization identity as input.
The formula is independently checked
on 1,751 exact finite Heisenberg
group test cases at moduli 2,3,4,5,7
with arbitrary central-coordinate
cochains (not Lean or actual elliptic
Galois validation).

Consequently, after genuine scalar
2-cocycle descent,
  `Delta_n(a+b)−Delta_n(a)−Delta_n(b)`
is the class of
  `(σ,τ)↦[v_σ,σu_τ]`.
The last essential geometric theorem is
the explicit **commutator equals genuine
Tau Ceti Weil pairing** identity:
  `thetaCommutatorScalar(T,S) =
       e_n(T,S)`
or its correctly oriented inverse.
It MUST be derived from the original
`Isogeny.algebraMap_weilPairing`
and the above rational-function
commutator via the elliptic divisor
pullback and Weil-reciprocity identities.
This is *not* proved by the existing
factor-set algebra. Graded cup
commutativity then resolves the
reversed mixed term and overall sign.
Thus the requested *complete*
`Delta_n` polarization in the
original `ZMod n` normalization
is NOT YET kernel-verified or
mathematically source-matched.

## 5. Reproduction and next theorem, no reduction in original scope

The exact next module should prove
`thetaCommutatorScalar_eq_torsionCoeffWeilPairing`
at the same original `W.TorsionCoeff n`,
retaining the `(T,S)` argument order
and `tau_-` translation convention.
It must also implement the actual
continuous scalar class in original
`TauCeti.ContCohomology.H2`,
including Galois topology, source
cochain quotient and lift independence,
not merely produce a raw group cochain.
The strict Kummer crossed lift should
then be used to prove
`Delta_n(delta_n P)=0`,
and the group commutator identity
should yield the exact Weil
polarization with all signs.

Only after those actual geometry/cochain
checks can the existing
`OriginalKummerCupIsotropic`
and `ellipticAbelianCupDescent`
be applied to obtain the genuine
Kummer local annihilator theorem.
The original point-corrected good
truncation and higher local
`H²(U_v)=H¹(F,E)` Weil–Châtelet
residue remain separate, as do
real p=2 Tate corrections, reverse
away-S good reduction inclusion,
compact derived Rlim and Poitou–Tate.
No Néron–Tate p-adic/real regulator
identification or COMPLEX
Hasse–Weil central L-jet/BSD-I/II
claim follows here.

**Literature:** Mumford, *On the Equations Defining Abelian
Varieties I*, Invent. Math. 1 (1966), theta-group
central extension; O'Neil, *The period-index obstruction
for elliptic curves*, J. Number Theory 95 (2002);
Clark–Sharif (2010), §2.2; Fisher, *The Cassels–Tate
Pairing and the Platonic Solids*, §2.1,
original divisor compatibility.

## 6. Exact authored blob identities and source-acceptance caution

The immutable Git object contents selected for this publication are:

- `TauCetiOriginalGeometricTheta.lean`: `1e752126a53c63747a4140eef76f1f4a3dc22c3d`.
  Actual elliptic function field/divisors, theta lift group,
  central scalar kernel, principal n-division-point divisor.
- `TauCetiOriginalGeometricThetaGalois.lean`: `827f67dc184ee01216ee9588b9819a81e20cbfd8`.
  Source Galois theta-action candidates, Kummer theta lift,
  STRICT crossed cocycle and identity boundary, arbitrary
  source cocycle's raw scalar obstruction factor.
- `ThetaCentralBoundaryPolarization.lean`: `5ab21ff636f6d82755c6b08bd53547f8d7dfdf59`.
  The universal central-extension cochain multiplication
  identity with actual commutator, not the absent Weil match.

All three .lean files are **uncompiled**. The Tau Ceti
`Lean v4.36.0-rc1` import search path must explicitly
include the isolated adapters, including the first
module imported by the Galois module. No `GRWTSK.lean`
umbrella import was added. A readback SHA and absence
of textual `sorry` are NOT Lean acceptance.

**Mathematical source boundary:** Although the Kummer
boundary is strictly the identity for its explicit
geometric lift, a proof of the original class
`Delta_n: H¹(F,E[n])→Br(F)[n]` still needs to
prove continuity and the lift-independence
cohomology quotient. The group-factor polarization
only identifies the mixed COMMUTATOR; the original
`e_n` commutator correspondence, which includes the
sign and n-th-root normalization, remains open.
Consequently, this publication does NOT prove the
FULL requested Lean geometric theta obstruction
and polarization theorem, nor the derived Selmer or
BSD conjecture.
