# Actual ring-of-integers CM period automorphy and sourced cover curvature

Mathematical direction and attribution: **grwtsk contributors**. Formalization assistance: OpenAI. Date: 2026-11-02. **SOURCE_PROOF_CANDIDATE**. Compilation, theorem types, full imports, fresh Lean kernel replay, and transitive axiom audit: **NOT_RUN**. No source has been promoted as a kernel theorem merely because it was published.

## Exact repository and upstream source pins

- Initial `grwtsk/math/main` head observed: `2e864e3514ba43426d80b245933a31508dbe4c3d` (head may advance during separate concurrent work; use a fresh expected-head lease before publication). Repo toolchain: `leanprover/lean4:v4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root import/toolchain modification.
- `CMActualPeriodTraceComparison.lean`, original local blob `5c2036d896ecebdb409b05b7a228a8fc2ebacd05`; crucial declarations `actualPeriodSesquilinear`, `periodHermitian_im_eq_grwtskTrace`, `actual_period_torus_projective`. It preserves the local CM trace pairing `Tr(ξ*x*c(y))` and the upstream orientation with the opposite conjugation slot.
- `CMActualIntegralPeriodResidueLinks.lean`, original local blob `431417c587070fa7a1f2c1082d04dadd3008a056`; declarations `actualIntegerPeriodFlux`, `actualIntegerPeriodFlux_eq_periodForm`, `actualPeriodResidueLinks_triangle` and `actualPeriodResidueLinks_triangle_gauge`. The integer sites are the ORIGINAL actual ring-of-integers `O_E`; assignment of arithmetic residue sectors to those sites remains independent input and never becomes a lossy inverse of residue aggregation.
- `CMRiemannSemicharacter.lean`, original local blob `7073576c99b09bf19bea342bf5882093d6123225`, constructs the undoubled Appell–Humbert semicharacter on the *different* local chosen rational-basis `Z`-lattice. No equality with the `O_E` semicharacter was asserted.
- Upstream `openai/math@4eaee87548250b2682affda7d05d947c05554bae`: `lean/OAI/Geometry/ComplexTorus/RiemannProjectivity/ProjectivityCriterion.lean` blob `82187516feab68f8797114fa417e1194b74e3e82` proves `Construction.doubledAutomorphy_add`, `doubledAutomorphy_ne_zero`, and `doubledAutomorphy_differentiable` from Hermitian symmetry and integral imaginary periods. `lean/OAI/AlgebraicGeometry/ComplexMultiplication/CM/PeriodHermitian.lean` blob `a56e096f6ebcbd86b64929bf355e30ac89e3a89c` gives the ACTUAL positive Hermitian `H_ε`. `.../CM/PeriodRiemannForm.lean` blob `1e71c2d4e74e6dde8f36a1e93f04daa23664daa6` gives `E_ε=Im H_ε`, alternating integral and positive. `.../CM/PeriodSpace.lean` blob `e6f4424149cadd941963e9888cec770997ac2276` gives the actual `O_E` discrete and cocompact period lattice. `.../RiemannProjectivity/Realization.lean` and `.../AbelianModel.lean` provide realization of **some** associated abelian model with prescribed period torus; no identity with the independently specified ORIGINAL CM variety is established.
- Classical comparison: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, second edition (2004), Chapter 2, sections 1–2, DOI [10.1007/978-3-662-06307-1](https://doi.org/10.1007/978-3-662-06307-1), Appell–Humbert semicharacter and line-bundle factor of automorphy. The new source specializes the EXISTING doubled-factor theorem and does not claim that classical construction has now been fully formalized.

## Analytic argument for actual holomorphic doubled factor

Set `V=InfinitePlace E → C`, let `epsilon` be the upstream actual CM embedding type, and let `Λ=epsilon.periodIntegerLattice=epsilon(O_E)`. The integral positivity and Hermitian symmetry are proved independently upstream. For each original algebraic integer `a ∈ O_E`, let `λ_a=epsilon.periodEmbedding(a)` and

```
J₂(a,z) = exp[2*pi*H_epsilon(λ_a,z)+pi*H_epsilon(λ_a,λ_a)].
```

The source inputs are NOT generic: lattice membership follows directly from `epsilon.mem_periodIntegerLattice` applied to `a`; the Hermitian period integrality clause is `epsilon.periodRiemannForm_isInteger` combined with `epsilon.periodHermitian_im`. The upstream theorem therefore gives

```
J₂(a+b,z)=J₂(a,z+λ_b) J₂(b,z),
J₂(0,z)=1,  J₂(a,z) ≠ 0,
z↦J₂(a,z) is holomorphic.
```

The associated cover-frame transformation

```
T_a(z,w)=(z+λ_a, J₂(a,z)*w)
```

obeys the exact additive action `T_(a+b)=T_a∘T_b`, `T_0=id`, and `T_(-a)∘T_a=id`, and maps a nonzero complex fiber coordinate to a nonzero coordinate. These algebraic and holomorphic properties are **necessary prerequisites** for the associated quotient line bundle. The current source stops *before* constructing a topological/holomorphic quotient bundle and compatible Hermitian metric/Chern connection on a chosen abelian variety.

### Direct independent analytical check (different route, same source integer premise)

Expand `H_ε(a+b,z)` and `H_ε(a+b,a+b)` using Hermitian linearity. The difference between logarithmic exponents on both sides of the cocycle is `-2*pi*i*Im H_ε(a,b)`. Because `Im H_ε(a,b)∈Z`, its exponential is 1. This is the original source of the doubled cocycle. The second route uses the algebraic expansion, not another claimed kernel proof of the same theorem. It shares the integer-period premise with the upstream formal proof.

## Cover potential and the true factor-of-two obstruction

Let the **actual** real Riemann form be `B_ε(u,v)=Im H_ε(u,v)`. On the covering vector space, define the source-derived pure-imaginary affine one-form coefficient

```
A_z(v) = pi*i*B_ε(z,v).
```

Its translation increment is `A_(z+u)(v)-A_z(v)=pi*i*B_ε(u,v)`. Its antisymmetrized directional coefficient is

```
F(u,v)=A_u(v)-A_v(u)=2*pi*i*B_ε(u,v).
```

For triangle vertices x,y,z, the classical affine face integral is

```
(1/2)F(y-x,z-x) = pi*i*(B_ε(x,y)+B_ε(y,z)+B_ε(z,x)).
```

That is EXACTLY the imaginary exponent of the already published period-residue link holonomy, since each integer-period pair is `B_ε(λ_a,λ_b) = actualIntegerPeriodFlux(a,b)`. The new module formalizes this period-area identity *in actual O_E arithmetic*, then identifies the original all-sector triangle phase with `(-1)^(actualIntegerPeriodFlux(b-a,c-a))`. Odd integer area is still an explicit premise; positive Hermitian curvature does **not** imply odd mod-2 area.

**Critical negative control:** the doubled holomorphic factor corresponds to doubled period form `2B_ε`. Its corresponding cover potential is `A₂=2A`, and its curvature coefficient is `F₂=2F=4*pi*i*B_ε`. Therefore the doubled factor cannot be equated with the **undoubled** parity holonomy `(-1)^B`. The doubled integer commutator is `exp(2*pi*i*B)=1`. Matching the original odd residue flux requires an **undoubled** Appell–Humbert semicharacter / factor or another explicitly established lift and compatible bundle metric. No such lift is implied by the doubled cocycle alone.

The `coverCurvatureCoefficient` is the exact antisymmetrized linear directional coefficient; a completed smooth differential-form theorem `dA=F`, the Stokes rectangle/triangle integral on a complex manifold, metric compatibility, and bundle descent remain **not yet formalized**, despite the elementary textbook analytical derivation. There is no claim that this is an independently sourced physical electromagnetic/RS field, nor that it is the Chern curvature on the specified original CM variety.

## Signed arithmetic and experimental trust boundaries

All original integer-labelled Möbius values `mu(n)`, parity and nonunit residue channels, birth-time response functions, coherent signed cross products, and original `pickupEnergy` remain unchanged. The new construction acts on the separately supplied genuine *geometric* period lattice. A residue-to-period-site map is STILL independent input, not a theorem identifying the arithmetic labels with geometric Chern channels. The CERN field-to-detector map, time units, luminosity/acceptance, resolution and backgrounds are not supplied, and no event-level detector fit was performed. There is no result for original all-positive-rate signed Möbius energy or periodic Schwartz-to-L^p smoothing. In particular a unitary phase and holomorphic factor are not an arithmetic cancellation theorem.

## Independent finite reproducibility and acceptance

Independent exact-rational suite `cm_actual_period_cover_factor_reference.py` passed **79,404 finite assertions**: 5,200 exact Gaussian-integer `E=Q(i)` doubled-factor exponent cocycles and inverses; 5,400 random four-coordinate integral skew form curvature/triangle/translation tests; explicit odd versus even mod-two counterexamples. The comparator's Gaussian form `H(z,w)=conj(z)w` is an **example** of a valid period-Hermitian orientation, not a proof that its chosen imaginary coefficient equals the general upstream `epsilon.imaginaryElement` on every CM type. These checks are neither Lean kernel verification nor proof for every number field; no actual CERN measurements were used.

Files to publish additively: `GRWTSK/Geometry/CMActualPeriodDoubledAutomorphy.lean`, `GRWTSK/Geometry/CMActualPeriodCoverCurvature.lean`, this review, and a passive source-verification manifest. Bibliography addition reuses the existing Appell–Humbert entry. No changes to roots, toolchain, original source, historical receipts, or workflow runners. Verification: **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. Fresh-source acceptance would require elaboration, verified imported upstream types, full kernel/axiom inspection, and an independent review of the analytic/geometry comparison.
