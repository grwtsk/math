# Exact CM period torus, trace orientation, ring-of-integers gauge flux

Mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI. Date 2026-11-02. Source proof candidates only; **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. No independent claim of an experimental match, canonical identification with a particular CM variety, or a new Hodge theorem.

## What was inspected, pinned, and compared

`grwtsk/math` current source at the start of this increment: `e7753c12896b72ed2fe5ddc1945f16e769aeda56` on `main`. Original source modules remain unchanged:

- `GRWTSK/AssociativeRingsAndAlgebras/CMTracePolarization.lean`, source rational trace pairing `Tr(ξ·x·c(y))`.
- `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CMLatticePolarization.lean`, arbitrary **rational** basis with integral-coordinate source lattice and a positive denominator-clearing scale for this trace pairing.
- `GRWTSK/Geometry/CMRiemannForm.lean`, the chosen sign/Weil-operator pre-Riemann data, not an actual abelian-variety realization.
- `GRWTSK/Geometry/CMRiemannResidueHolonomy.lean` (blob `88c1a1a6c9107745b3f622f012e7c5bd7f0e012d`) and `CMRiemannSemicharacter.lean` (blob `7073576c99b09bf19bea342bf5882093d6123225`), original integer pairings, mod-2 links and the Appell–Humbert semicharacter.
- `GRWTSK/Geometry/CMRiemannToProjectivityConsumer.lean` (blob `5ec75422c394e97b22fccb7c59d89ce099f3ef4c`), formerly conditional on an abstract source period comparison, Hermitian positivity, discrete lattice and compact quotient.

Upstream `openai/math@4eaee87548250b2682affda7d05d947c05554bae` contains more complete **preexisting** data, reviewed at exact blobs:

- `lean/OAI/AlgebraicGeometry/ComplexMultiplication/CM/IntegralPolarization.lean` (`b4dec3f0a6a96d7253dfd574c80d8dadcb38e1c3`): multiplier making the original imaginary CM coefficient integral, and the **actual** ring-of-integers trace pairing.
- `.../CM/PeriodSpace.lean` (`e6f4424149cadd941963e9888cec770997ac2276`): selected embedding to `InfinitePlace E → ℂ`, image of **O_E**, discrete and full `ZLattice`, and compact quotient.
- `.../CM/PeriodRiemannForm.lean` (`1e71c2d4e74e6dde8f36a1e93f04daa23664daa6`): positive integral real alternating period form and exact comparison to its rational trace form.
- `.../CM/PeriodHermitian.lean` (`a56e096f6ebcbd86b64929bf355e30ac89e3a89c`): positive Hermitian form, its imaginary part equal to the Riemann form, and its symmetry.
- `.../CM/TraceForm.lean` (`ade3105514829fd6a745cefb6dd88a148865355c`): upstream trace pairing with CM conjugation in the **first** slot.
- `lean/OAI/Geometry/ComplexTorus/RiemannProjectivity/ProjectivityCriterion.lean` (`82187516feab68f8797114fa417e1194b74e3e82`): independent Riemann projectivity theorem, source proof present but no new local kernel receipt.

Pinned Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The source files imported upstream directly, without importing unverified generated adapters into the root build or modifying any dependency pins.

## Main mathematical contribution, including the precise sign and integral scale

For a CM number field E and its CM conjugation c, the two source trace conventions are

`ψ_local(ξ;x,y)=Tr_(E/ℚ)(ξ x c(y))`, `ψ_upstream(ξ;x,y)=Tr_(E/ℚ)(ξ c(x) y)`.

They obey `ψ_local(ξ;x,y)=ψ_upstream(ξ;y,x)` as a pure commutative-ring identity for **any** ξ. For ξ satisfying `c(ξ)=−ξ`, the skew symmetry of the CM trace form gives

`ψ_local(ξ;x,y)=−ψ_upstream(ξ;x,y)`.

The upstream period Riemann form has the independently proved identity

`ω_ε(per(x),per(y)) = −ψ_upstream(n_ε ξ_ε;x,y)`.

Consequently the **correct positive orientation** is

`ω_ε(per(x),per(y)) = ψ_local(n_ε ξ_ε;x,y)`.

Likewise for the actual upstream positive Hermitian form `H_ε`,

`Im H_ε(per(x),per(y)) = ψ_local(n_ε ξ_ε;x,y)`.

If the previously selected local source `X.xi` is independently shown equal to `n_ε ξ_ε`, the **original** denominator-cleared integer basis form `B_X` satisfies

`latticeScale(X) · Im H_ε(per(latticeVector(a)),per(latticeVector(b))) = B_X(a,b)`.

This is an exact comparison **with its scale visible**, not a claim that `latticeScale(X)=n_ε` or an assertion that local X was canonically chosen from ε.

### Distinguish the two lattice structures

The local `CMLatticePolarization.rationalBasis` is an arbitrary Q-basis of E. Its integer coordinate span L_Q need **not** be the ring of integers O_E. As a simple counterexample in E=Q(i), take the Q-basis `(1/2, i/3)`: its integer span contains 1/2 and i/3, neither in Z[i]. The period embedding of a local rational-basis lattice element belongs to the authentic upstream `periodIntegerLattice` **if and only if the field element is algebraically integral**. For any individual field element, upstream finite number-field algebra supplies some positive natural multiplier making it integral. That multiplier is logically distinct from the source `latticeScale` clearing the trace matrix denominator. A single uniform multiplier across all of L_Q is classical finite-dimensional arithmetic, but is not newly claimed as a completed Lean declaration here.

### Actual-period projectivity, not an abstract period premise

The source bundles `ε.periodHermitian` as a `V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ` map, with V the **actual selected CM period coordinate space**, and consumes the existing upstream Riemann criterion. The upstream sources already provide `DiscreteTopology ε.periodIntegerLattice`, compact quotient, symmetry, strict positivity and integer-valued imaginary form. Thus the target is **an existence-level projective complex torus associated with ε**, without an arbitrary user-supplied period embedding or selected extra positivity form.

This is a *source-specific consumer* of a preexisting classical/upstream theorem, **not** a new independent proof of Riemann projectivity or an identification of a particular original CM abelian variety.

## Authentic O_E residue links, and a hostile rank-one obstruction

The second source uses the actual `ε.integralPolarization_isInteger` to define an **integer** period area for every pair of genuine ring-of-integers points:

`B_ε(a,b) := − the unique integer representing ε.integralPolarization.form a b`.

Its image in ℝ is exactly `ω_ε(per(a),per(b))`, with **no** further scale required because the upstream imaginary multiplier was chosen algebraically integral. For each ORIGINAL residue sector `i=(parity, additive class)` an independently specified site `s_i: O_E` provides quantized discrete links

`U_ij = (-1)^{B_ε(s_i,s_j)}`.

The source derives diagonal identity, inverse-reversal, gauge-invariant triangular holonomy, and nonflatness under an explicit ODD integer period-sum premise. The map `sector → O_E` is still external physical/geometric input; residue quotient coordinates do not determine a unique CM lattice site.

**Hostile check**: the naive rule `n ↦ n·1 in O_E` places all original arithmetic integers in a single rational line. Because the alternating trace form vanishes on every pair of proportional vectors, this assignment yields `B_ε(n·1,m·1)=0` and hence *all* `U_ij=1`. Therefore a nontrivial residue-curvature claim needs a genuine two-dimensional period-site assignment; it cannot be deduced merely from integer labels or parity residues. Similarly, twice any integral polarization stays positive but has **even** periods and trivial mod-2 holonomy. Holomorphic positive curvature and odd quantized Wilson loops are separate properties.

## Independent reference and mathematical comparison

`/mnt/data/cm_actual_period_lattice_reference.py` ran **44,813 exact-rational assertions** on the concrete Gaussian CM E=ℚ(i), O_E=ℤ[i], ξ=i/2, giving:

`H(z,w)=conj(z)·w`, `Im H(z,w)=a d−b c`, `ψ_upstream(z,w)=b c−a d`, `ψ_local(z,w)=a d−b c`.

The test also separately checks the nonintegral local rational basis `(1/2,i/3)`, a source-lattice denominator 6, all parity/nonunit additive sectors for moduli `d=1,...,8`, oriented triangle holonomy, gauge invariance, the rank-one flatness counterexample, and the doubled even-polarization counterexample. The finite test is **not** a proof of a general CM-field theorem, Lean elaboration, independent theory validation, or CERN data fitting. The primary analytic argument is the exact trace conjugation-slot change, period Riemann identity and integrality in O_E, with source references above; the finite calculation is only a hostile check.

## Trust, proof-acceptance and physical boundary

Added sources (source candidates, no `sorry` or declared new axioms):

1. `GRWTSK/Geometry/CMActualPeriodTraceComparison.lean` — authentic period lattice, source trace orientation, independent scale, projectivity consumer.
2. `GRWTSK/Geometry/CMActualIntegralPeriodResidueLinks.lean` — authentic ring-of-integers quantized residue links and exact gauge return.

The above are **SOURCE_PROOF_CANDIDATE**: a missing Lean/Lake host means even theorems named `theorem` cannot yet be represented as kernel-checked. Expected-type replay, compilation, fresh kernel and transitive axiom audit remain `NOT_RUN`. The pinned upstream claims also have not been independently replayed in this session. The current source is not a replacement of the original CM-variety geometry; it establishes only an existence-level torus for ε and a quantified link family given a separate site assignment.

The remaining strongest obligations are: (1) a precise CM period/H₁ and polarization isomorphism to the user's **particular original** abelian variety; (2) an Appell–Humbert line bundle/Chern connection whose genuine parallel transport produces these quantized links, rather than treating links as the geometric curvature itself; (3) a canonical noncollinear source map from ORIGINAL integer-labelled Möbius residues to O_E sites, preserving winding/labels and the original signed observable; (4) an experimentally calibrated CERN detector distribution and comparison with a standard background/resolution/acceptance baseline. The original signed Möbius all-rate energy bound and Schwartz-to-periodic L^p smoothing remain independent open obligations. No Hodge conjecture, RH/GRH or physical RS/AdS correspondence follows from these candidate declarations.
