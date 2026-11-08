# Source-bound L-function Möbius integration: full repository graph and Hermitian family ledger

Research date: 2026-11-02, America/Los_Angeles.
Local mathematical attribution: grwtsk contributors.
Source snapshot: grwtsk/math main `1cdffe535e8fbd8d0cec79f2c56d6c8f87c38955`, before the additive publication below. Source-specific Git blob hashes and 42 typed relations for 44 nodes are in the accompanying JSON graph. This graph covers the directly relevant maintained subsystems, not an assertion that every one of the >7,000 files in the large zeta theory directory was read.
Pinned Lean: leanprover/lean4:v4.34.1; Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
New Lean code is SOURCE_PROOF_CANDIDATE; no native compilation, expected-interface elaboration, independent fresh kernel or transitive axiom audit. Literal RH and all requested GRH targets remain open.

## 1. The actual related-source clusters found

**A. Coefficient algebra and mathematical families.**
- `Mathlib.NumberTheory.ArithmeticFunction.Defs` (pinned upstream): the existing Dirichlet-convolution ring and `dirichletInverse`.
- `Mathlib.NumberTheory.LSeries.Dirichlet` (pinned): `DirichletCharacter.convolution_mul_moebius`, `LSeries.mul_mu_eq_one` for Re(s)>1, and the actual complex character type. The latter is not a continuation into the critical strip.
- `GRWTSK/NumberTheory/DirichletCharacterBasic.lean`, blob `6026d444ad49c14c802f1e21b30646c8a2595056`: character conductor, primitive level, and level changes.
- `GRWTSK/NumberTheory/DirichletLSeries.lean`, blob `110bdfb26f239bda5757ddb342f083ee00973ae1`: authentic right-line Euler products for Dirichlet series.
- `MoebiusLFunctionFamilyInverse.lean`, blob `2b9c2b556de587db611478b7724c9205db90fd3b`: `a_L(1)=1`, `mu_L=a_L^(-1)`, ζ and complex χ specializations, product/convolution-power adapters.
- `MoebiusLFunctionLocalEuler.lean`, blob `b3c892bd4c4305d328a8d2ae896be6c686ce1466`: degree-one and degree-two reciprocal Euler polynomials, classical/centered elliptic prime-square coefficients and typed Frobenius determinants.
- `MoebiusLFunctionEulerSynthesis.lean`, blob `20ba091e118bc17511d20604e3b4a978d85d91f9`: global `mu_L(n)=prod_(p|n) coeff_(v_p(n))P_p(X)`, inverse family, explicit missing actual Dirichlet/elliptic/Artin coefficient identification targets.
- `MoebiusLFunctionIdealNormFamilies.lean`, blob `5899cf585836b595ec88a2a078d7ece16021d00d`: ideal-norm grouped coefficients for Dedekind/Hecke and the missing `NormPushforwardConvolutionTarget`.
- `GRWTSK/NumberTheory/LFunctionPublic.lean`, blob `9995dc693a71fb7685eef934df0b0978f7519f7b`: genuine modular-form L-function/Mellin API, NOT a proof that arbitrary supplied GL2 Euler parameters equal a named eigenform.
- `GRWTSK/NumberTheory/HeckeRingDefsPublic.lean`, blob `738c107f82e5c55ce06ce6b76c3b17d26e9f81ea`: Hecke double-coset rings, NOT the missing ring-of-integers/ideal norm transfer.

**B. The actual original Möbius/physical-time proof.**
- `MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: the original arithmetic mu and pickup cross/energy.
- `MoebiusCausalGramCauchy.lean`, blob `01c7128c5c81664405b6fe4d1a373dfdbb0a51dc`: original source-response vectors and exact two-response Gram integrals.
- `MoebiusCausalMertensSquareBridge.lean`, blob `be156509d9679a22b52b32d087f87d8449a047ef`: real Mertens prefix/finite Abel response.
- `MoebiusCausalMertensSquareEnergyIntegration.lean`, blob `c01a1e892c14343aee002554172373e9190f6611`: genuine real waveform source identity and finite Gram/energy integral. Complex family reconstruction must not be passed off as already accepted from this real source.
- `MoebiusUnmaskedLowGcdEndpoint.lean`, blob `1adfd2470cb28a0d98ad567d436853ab2d091f67`: original complete low/high gcd decomposition and fixed cutoff.
- `MoebiusOriginalGramRootFloorSuppliers.lean`, blob `efbf49d9d0be6f59dc165ec715b14b0f12207d12`: original causal response root envelope and floor-ratio estimate.
- `MoebiusCompleteHighGcdDivisorCover.lean`, blob `354af0c431832b883974a3157e1000eb4f046a1f`: positive all-common-divisor overcount.
- `MoebiusCompleteHighGcdElementaryClosure.lean`, blob `918952c6edc614291bad983f253366d7cb31a18f`: finite multiples bound, `1/g²` p-series tail from Mathlib and fixed all-positive-rate payment; **Lean proof candidate**, not independently accepted.
- `MoebiusLowGcdSieveSquareEnergy.lean`, blob `72e6bcf5046f090011ae261dda8a77b837906741`, and `MoebiusLowGcdSieveTargetClosures.lean`, blob `644f7ce39711b520d3bad6d26ba107d6ef4f0171`: `c_D(d)`, finite divisor sieve, original square energies and the negative first-collar coefficient. The arithmetic sieve itself does not depend on which family is observed.
- `MoebiusFixedCoreEnergyComparison.lean`, blob `82011c80d8a8dacbf3cbe13ccded229d5c24bd80`, and `MoebiusCausalGcdTimeShift.lean`, blob `db0052901eca3050ed0ce812d3e0e7675c8fab05`: original source signed compensation and the correct shifted physical time. Neither proves the missing all-rate signed cancellation.

**C. Existing family observer and detector pathways.**
- `MoebiusGeneralizedFiberObserver.lean`, blob `6ca04b2685cd422a363cc0146f8ac65b59e0c870`, and `MoebiusEllipticFiberKernelComparison.lean`, blob `df9ded979964790b92f3053efc3aedeb6e2dfa78`: real Möbius source preservation through actual good-prime elliptic trace channels. These are observational source identities, NOT equations `mu_E(n)=mu(n)`.
- `MoebiusWeightedDecoderEnergyTransfer.lean`, blob `ce1f1396785fe8fb9e045440a4edce25df734326`: genuine REAL coefficient-error wave with a weighted reciprocal-root sensitivity mass. A complex family analogue would require magnitude/conjugation and a NEW formal proof.
- `MoebiusSignedMaskWaveEnergyBridge.lean`, blob `c024877cd1d9f3711f0ddad7259de15b1d2bbfdd`: real signed two-tag exclusion defects; no automatic reuse for complex Hermitian cross.
- `MoebiusDivisorCausalGramCollapse.lean`, blob `6216cb9c8bc590a2dfe84132b8267c90a6622148`: earlier original divisor collapse; distinct from the new universal family gcd-sieve transport.

**D. Actual analytic return and status.**
- `NonrealZeros.../PickupEndpointQuadrature.lean`, blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`, and `NonrealZeros.../GoodScaleEnergyCriterion.lean`, blob `ca3ae4975b20cf796a167308a9e87546c6001c41`, are the ORIGINAL REAL zeta endpoint/energy-to-RH chain. They do not accept complex character coefficients by changing a name.
- `PrimitiveFamilyPublicPrimitiveCharacterDataFamilyGRH.lean`, blob `d0b5331a21bb6392e6082dbb6994040347fd2bcb`: existing predicate quantifying over ALL positive moduli and primitive characters; no inhabitant constructed.
- `NonrealZeros.../CharacterPublicPrimitiveCharacterData.lean`, blob `ef0e64386f1b26debf97aa248cfadeaffb0b4820`: primitive-character data, inverse/conjugation and zero target.
- `MathlibLFunctionAdaptersPublic.lean`, blob `377eab4d5de0f5d158b9c3d8f2fec3b50f10c967`: genuine completed Dirichlet character L, pole-removed principal case and inverse-character conjugation.
- `AssemblyPublicPrimitiveCharacterHalfPlusEpsilonFamilyImpliesDirichletGRHOfMelli.lean`, blob `ea306c06d65cca3f640c3b94120b16029cd1e802`: the authentic conditional primitive character half-plus-epsilon/Mellin-to-Dirichlet-GRH return, with a separate stronger modulus-hybrid-uniform predicate. No current theorem maps family pickup low-gcd upper bounds directly to its `CenteredTwistedPsiHalfPlusEpsilon`.
- `MellinEqDirichletPublic.lean`, blob `a23c30ad74e718e34e9fe79edeae6aa8af845d90`, `DirichletCauchyProductGeneric.lean`, blob `b398ca80aa8e5f91aca2d997bd779c6f89254a41`, and `NonrealZeros.../DirichletCompletedSourceDraft.lean`, blob `244f4487fbaf076b0713632ece3bc34efdef1de8`, are relevant analytic/finite-Dirichlet sources, but the last is explicitly an unelaborated draft.
- `MoebiusReciprocalZetaPerronBridge.lean`, blob `69ae2587f1f6e30adec21b9d7dcf43eeffa2a499`, and `MoebiusAdaptiveFiniteScaleRHReturn.lean`, blob `212c433cb8e7560f99d3fea75bed5d8b79d3650e`, concern genuine zeta Perron and finite-height arguments. The latter is finite-range, not a global RH/GRH proof.

## 2. New source-exact Hermitian gcd ledger (this publication)

For an ACTUAL normalized L-family with Dirichlet inverse mu_L, and exactly the ORIGINAL real causal K_T(m,n), put
  X_L(T)=Re sum_(m!=n<=N) mu_L(m)*conj(mu_L(n))*K_T(m,n).
Define
  A_L,D(T)=Re sum_(m!=n<=N,gcd(m,n)<=D) mu_L(m)*conj(mu_L(n))*K_T(m,n),
  H_L,D(T)=Re sum_(m!=n<=N,gcd(m,n)>D)  mu_L(m)*conj(mu_L(n))*K_T(m,n),
  B_L,D(T)=sum_(m!=n<=N,gcd(m,n)>D)
              |mu_L(m)|*|mu_L(n)|*|K_T(m,n)|.
Then purely finite arithmetic and the complex triangle give, for EVERY normalized L family, ALL real T and natural D:
  X_L(T)=A_L,D(T)+H_L,D(T),                         (1)
  |H_L,D(T)|<=B_L,D(T),                             (2)
  X_L(T)<=A_L,D(T)+B_L,D(T).                       (3)

The new `MoebiusLFunctionFamilySourceGraphBridge.lean` contains authored Lean proof candidates `familyCross_eq_low_add_high`, `familyHighGcdCross_abs_le_weightedCost`, `familyCross_le_low_add_weightedCost`. They are not assumed as axioms; kernel validation NOT_RUN.

The old `MoebiusDirichletHermitianHighGcdTransfer` source has authored `B_chi,D<=16*T*N/D` for all complex χ, because |mu(n)χ(n)|<=|mu(n)|<=1. Therefore (3) yields a NEW genuinely useful Dirichlet-family full cross estimate:
  X_chi(T)<=A_chi,D_*(T)(T)+32*T*exp(sqrt T), T>=4.    (4)
That is `dirichlet_familyCross_le_fixedLow`. This is source-level algebra; it does NOT assume the genuinely missing signed `A_chi,*` bound and does NOT claim a new endpoint quadrature or GRH.

The family Euler source identification is also connected explicitly:
  DirichletEulerSourceIdentificationTarget χ
    -> (dirichletEulerSource χ).mobius =
       dirichletCharacterMobius χ.
The conditional proof uses the EXISTING Dirichlet inverse uniqueness, not an artificial second mu. The premise is still an UNPROVED finite local-to-global identification.

## 3. Universal classical gcd sieve works with any complex family

Define the universal classical cutoff coefficient
  c_D(d)=sum_(k|d,k<=D) mu_classical(d/k).
Its defining identity is
  1_(gcd(m,n)<=D) = sum_(d|gcd(m,n))c_D(d),
independent of which L-function supplies mu_L(m),mu_L(n).

For family F, define the true complex divisor response
  R_F,d,T(u)=sum_(n<=N,d|n)mu_L(n)*pickupResponse(n,u)
and nonnegative REAL square energy
  E_F,d(T)=integral_0^T |R_F,d,T(u)|² du.
Its source-specific family diagonal is
  Diag_F,<=D(T)=sum_(n<=min(D,N))|mu_L(n)|²*K_T(n,n).
The mathematically exact family sieve should be
  A_L,D(T)=sum_(d<=N)c_D(d)*E_F,d(T)-Diag_F,<=D(T).     (5)
The new `MoebiusLFunctionFamilySieveBridge.lean` records (5) as
`FamilyHermitianDivisorSieveTarget`: the finite complex integral
reconstruction has NOT YET been authored as a Lean proof body.

The existing source `firstDivisorCollarCoefficient_proof` is an authored proof candidate of c_D(d)=-1 for D<d<=2D. The new `familyFirstDivisorCollar_nonpos` consumes it and true energy nonnegativity:
  sum_(D<d<=min(2D,N))c_D(d)*E_F,d(T)<=0, D>=1,T>=0. (6)
It does NOT establish a small absolute collar for elliptic/GL2,
Dedekind/Hecke or Artin coefficients. That magnitude bound requires
family-specific |mu_L| input, since |mu_zeta²(p)|=2 and
mu_E,good(p²)=p in the classical elliptic normalization.

The exact higher-divisor analogue
  sum_(d>D)c_D(d)*E_F,d(T)=-HighGcdFullGram_F,D(T)
is a separately named `FamilyHigherDivisorHermitianReturnTarget`.
Its FULL high-gcd sum includes diagonals; it must not be identified
with the off-diagonal signed H_L,D in (1).

## 4. A typed acceptance diagram, not a circular RH argument

The complete source graph has 44 nodes and 42 relations, with
statuses distinguishing `direct_pinned_api`, `authored_candidate`,
`NEW_authored_candidate`, `MISSING_*`, and `NOT_A_BRIDGE`.
The hierarchy is:

  Mathlib arithmetic inverse / Dirichlet character identities
    |                    actual Euler polynomials / ideal norm fibers
    v                    | explicit SOURCE identification needed
  NormalizedCoefficients <+
    | real original physical K_T
    v
  Complex Hermitian full ordered Gram and positive square energy
    | universal finite gcd partition     | universal classical c_D sieve
    v                                    v
  low-gcd signed A_L,D + high-gcd weighted positive B_L,D
    |  Dirichlet χ: same 16TN/D bill, all rates (candidate)
    |  GL2/Artin/Hecke: coefficient-dependent bill STILL REQUIRED
    v
  family positive energy / family prefix M_L (finite integral bridges)
    |  MISSING character-specific causal-to-Mellin/explicit formula
    v
  genuine continued/completed L and zero-set theorem (primitive χ GRH)
    |  NOT PROVED
    v
  NO RH/GRH conclusion.

The original real zeta `GoodScaleEnergyCriterion` only applies
to the original real waveform. Character/automorphic analytic
returns require the actual analytic function, conductor/gamma,
principal poles or ramification, and zero set. The family square
integral and causal prefix are explicit unproved Lean interfaces
`FamilyHermitianFiniteGramTarget`,
`FamilyPrefixResponseReconstructionTarget`.

Do not identify:
- The elliptic trace OBSERVER with Hasse-Weil coefficient data;
- Hecke DOUBLE-COSET ring with nonzero ideal norm fibers;
- a normalized matrix polynomial with an existing Artin
  representation and analytic continuation;
- the ordinary real source's signed μ(m)μ(n) with the
  complex Hermitian μ_L(m)conj(μ_L(n));
- coefficient inverse algebra on Re(s)>1 with a global
  analytic zero-free half-plane;
- pointwise character-dependent constants with an
  unsupplied hybrid modulus-uniform bound;
- a finite-height Perron estimate with unbounded GRH.

## 5. Independent finite complex-source diagnostics actually run

Using actual `mu(n)` from a squarefree Möbius sieve,
the complex primitive character modulo 5 generated by χ(2)=i
and the original birth-gated causal response
  r_n(u)=2*(n^-1/2-exp(-u/2)) for u>=log n, else 0,
the original response Gram was integrated explicitly on
u in [max(log m,log n),T]. For N=12,24,48,80 and T=log N,
the exact source finite relation X_L=A_L,D+H_L,D matched to
floating absolute residual <=4.1e-16. The imaginary parts of
the complete ordered Hermitian cross were <=7.4e-16.

       N    D_*     X_L(T)           A_L,D(T)         H_L,D(T)           B_L,D(T)
      12      2    -0.33630984      -0.33630984        0.00000000       0.08805944
      24      4    -0.84780748      -0.84736227       -0.00044521       0.02390071
      48      6    -1.70122296      -1.67300596       -0.02821700       0.27814577
      80      9    -2.57752638      -2.54546309       -0.03206329       0.33786383

For T>=4, only N=80 of these fixtures falls within the
numeric fixed-cutoff theorem's hypothesis; the remaining
fixtures test FINITE algebra with T<4, not a false
use of the asymptotic cutoff statement.
These computations are FLOATING diagnostic checks:
no certified intervals, native Lean checking, analytic
zero conclusion or asymptotic cancellation.

## 6. Concrete next proof and verification DAG

1. Compile/elaborate both new module sources and the
   import closure at the exact Lean/Mathlib pins.
   Verify the target declaration types, fresh kernel and
   transitive axiom audit separately. Current status NOT_RUN.
2. Prove `FamilyHermitianFiniteGramTarget` and
   `FamilyPrefixResponseReconstructionTarget` by finite
   complex integral/Fubini from the original birth gate.
   The original REAL waveform proof already supplies
   the appropriate architecture, not an automatic proof
   of the complex version.
3. Prove `FamilyHermitianDivisorSieveTarget`, then the
   full signed higher-divisor source identity while
   retaining the actual diagonal.
4. Prove `DirichletEulerSourceIdentificationTarget`
   from the pinned mathlib character Euler product,
   and `SynthesizedPrimePowerCompatibilityTarget`
   from `Nat.factorization`.
5. Transfer family low-gcd signed cancellation
   `PrimitiveDirichletFamilyLowGcdEveryRate`, STILL OPEN,
   through actual complex causal energy/prefix bounds
   to a characterwise source estimate.
6. Connect that estimate using source-specific Mellin,
   continuation and explicit formula to the existing
   `Surface.Core.DirichletGRH` primitive character
   zero target. This last analytic connection is not
   currently proved by the family source.
7. For elliptic/automorphic/Artin/Hecke, prove their
   ACTUAL coefficient and local-to-global identifications,
   find coefficient-dependent positive high-gcd costs,
   and separately establish the appropriate normalized
   center/gamma/pole/zero return. No family is declared
   proved by having an Euler polynomial definition.

Formal status at publication: SOURCE_PROOF_CANDIDATE.
The user has not authorized or dispatched an external native
runner in this turn. Local host provides no installed
Lean/Lake/Elan or Noe checkout. No changed root imports,
toolchain pins, existing sources, or external workflow
states. No hidden sorry/admit/axiom/unsafe declarations were
introduced by the new sources as a lexical preflight;
this is NOT a transitive dependency axiom audit.
Issues grwtsk/math #1566 and canonical RH #15 remain OPEN.
