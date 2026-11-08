# Four-dimensional conformal boundary field, an AdS₅ scalar extension, and CERN measurement gates

Mathematical direction and local attribution: **grwtsk contributors**. Formalization assistance: OpenAI. **SOURCE_PROOF_CANDIDATE**; no Lean compilation, fresh-kernel acceptance, expected-type replay, or transitive-axiom audit has been run. Date: 2026-11-02.

## Source identity and scope

- Working repository: `grwtsk/math`, directly on existing `main`, with prior complete source head `53097b3849047bb8e20ea23768f474413d7c7e09` observed during source inspection. Additive source files lie in `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/`. Publication commit and individual blob hashes must be read back before asserting publication.
- Exact local predecessors: `CMDiscreteRSBoundaryBulk.lean` (blob `4046107e8d320e999e8910fcf12ce4b92fa6a577`), `CMDiscreteModularLattice.lean` (blob `52058db0c2a4e9ee5256947c3447ed110561d252`), `CMDiscreteMoebiusResidueWaypoints.lean` (blob `664881d6529a66ae8c581fcf62124dc7a0361948`), `CMCenteredResidueWaypointDeployment.lean` (blob `b7b205c0353945bb387fe1dbfb40cc042456b244`). All original signed source-label, residual, birth-time and parity/nonunit additive-class data remain untouched.
- Environment: `leanprover/lean4:v4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; external CM geometric source remains `openai/math@4eaee87548250b2682affda7d05d947c05554bae` where imported by predecessors. The new free scalar is **not** identified with that CM source.
- Primary external analytical antecedents: L. Caffarelli and L. Silvestre, **An Extension Problem Related to the Fractional Laplacian** (2007, arXiv:math/0608640v2; DOI `10.1080/03605300600987306`, https://arxiv.org/abs/math/0608640); S.-Y. A. Chang and M. del Mar González, **Fractional Laplacian in Conformal Geometry** (2011, DOI `10.1016/j.aim.2010.07.016`, https://www.sciencedirect.com/science/article/pii/S0001870810003129); L. Randall and R. Sundrum, **Large Mass Hierarchy from a Small Extra Dimension** (1999, DOI `10.1103/PhysRevLett.83.3370`, https://doi.org/10.1103/PhysRevLett.83.3370). These are mathematical/physical background, **not** certificates that this model equals the RS Standard Model or any detector physics.
- CERN source: LHCb collaboration, **LHCb event file for real measurement**, 2014, CERN Open Data record 401, DOI `10.7483/OPENDATA.LHCb.E7EJ.JUWR`, https://opendata.cern.ch/record/401, **53,948 selected D⁰→Kπ candidates**; see https://opendata.cern.ch/docs/lhcb-masterclass. An alternative custom-ntuple route is https://opendata.cern.ch/docs/lhcb-getting-started. This sample is a D⁰ mass/lifetime dataset, **not** a flavour-tagged Bₛ oscillation dataset.

## (i) A concrete four-dimensional conformal boundary operator

For x,y∈ℝ⁴, x≠0 and y≠0, define inversion I(x)=x/|x|². Direct four-coordinate algebra establishes

`|I(x)−I(y)|² = |x−y|²/(|x|² |y|²)`.

The Riesz Green kernel of the four-dimensional square-root Laplacian, with the conventional Fourier transform, is

`G₁(x,y)= (4π²)⁻¹ |x−y|⁻³` (away from x=y).

The kernel has exact inversion covariance:

`G₁(Ix,Iy)=|x|³ |y|³ G₁(x,y)`.

The new Lean source formalizes the FOUR-dimensional distance law, the positive squared-kernel form, an explicit finite sampled Green operator, and an injective original-integer source-to-ℤ⁴ assignment with no residue collapse. Its sampled operator has a **diagonal exclusion**, and therefore differs from the full continuum operator; no limit theorem is asserted. The unsquared Riesz covariance and its extension to the full continuum fractional Laplacian are proved analytically by the inversion identity and standard positivity, but remain outside the new Lean acceptance scope.

For a finite quadrature `Tρ(x)=∑_y q_y G₁(x,y)ρ_y` over distinct nonzero lattice samples, the exact inversion law requires **both**

`q'_{Iy}=|y|⁻⁸ q_y`, `ρ'_{Iy}=|y|⁵ ρ_y`.

Then `T'ρ'(Ix)=|x|³ Tρ(x)`. This is a genuine *discrete sampled-operator covariance*, with the correct four-dimensional Jacobian. A coordinate-only change without the weights is **not** conformal covariance. Quadrature weights are chosen data, not detector efficiencies or a continuum limit. The original signed Möbius coefficients μ(n) and geometric site labels remain distinct fields. There is no source-supplied canonical map from a particle collision to n or a CM Hodge class.

The continuum boundary operator `|D|=(-Δ₄)^{1/2}` maps conformal weight 3/2 to 5/2 under inversion:

`|D|[|x|⁻³ f(Ix)] = |x|⁻⁵ (|D|f)(Ix)`, with appropriate regularity, support, and decay conditions.

This last nonlocal theorem is **literature-derived classical mathematics**, not a newly kernel-checked local Lean theorem. Its analytic source is Chang–González; the present formal modules do not prove Schwartz-space mapping, all conformal generators, or a periodic Fourier transfer.

## (ii) An explicit field-level AdS₅ equation and boundary return

Fix the Euclidean Poincaré patch metric `ds²=L² z⁻² (dz² + |dx|²)`, z>0. For a **selected free scalar** with dimensionless mass `m²L²=−15/4`, the Breitenlohner–Freedman lower bound is `−4`, and the two asymptotic weights are 3/2 and 5/2. The scalar is not an RS graviton, gauge field, brane-localized Standard Model field, or measured hadron.

The exact equation and conjugation are

`L²(□_AdS₅−m²) Φ = z²(∂²_z+Δ₄)Φ−3z ∂_zΦ+(15/4) Φ`

and for `Φ(x,z)=z^(3/2)u(x,z)`,

`L²(□_AdS₅−m²) Φ = z^(7/2) (∂²_z+Δ₄) u`.

There is **no** hidden 4D-to-5D source identification: this identity follows by two product derivatives and the chosen mass. For any finite family of real boundary plane-wave modes, one can choose

`u(x,z)=∑_a A_a exp(−k_a z) cos(k_a x₁), k_a≥0`.

Each term satisfies `(∂²_z+Δ₄)u=0`. Its exact renormalized boundary trace is `u(x,0)=∑A_a cos(k_a x₁)` and its Dirichlet-to-Neumann return is `−∂_zu(x,0)=∑A_a k_a cos(k_a x₁)`: the Fourier eigenvalues of `|D|` for this explicitly finite packet. The Lean source proves the bulk *second-jet* algebraic identity, a mode residual cancellation, nontrivial boundary trace, the radial first-derivative theorem, and the finite-mode jet sum identity. The remaining derivative-identification and full Schwartz Poisson-extension bridges are stated separately and **not claimed Lean-verified**.

For general sufficiently regular boundary values the external half-space Poisson kernel is `P_z(x)=3/(4π²)·z/(|x|²+z²)^(5/2)`, with `∫_{ℝ⁴}P_z=1` and the Dirichlet-to-Neumann operator `|D|`. Its normalization and the mode identities were checked by independent exact/symbolic calculation. Extending that continuum integral and all boundary limits to Lean requires its own integrability and convergence proofs.

The Euclidean metric here is the **local AdS hyperbolic** model. The Lorentzian RS model needs time signature, brane boundaries, matter stress-energy, the 5D Einstein field equation and junction conditions. No assertion equates the two merely through the coordinate metric.

## A decisive finite-lattice obstruction to automatic holographic reconstruction

`CMFiniteBoundaryReconstructionObstruction.lean` constructs, for any finite four-dimensional sample positions x_i, the explicit nonzero polynomial `h(x)=∏_i(x₀−(x_i)₀)`. It vanishes at **every** sample, yet is strictly positive at the explicit exterior point with `x₀=1+∑_i |(x_i)₀|`. The finite sampling operator on boundary functions is therefore not injective. This is a mathematical obstacle to declaring that discrete boundary observations uniquely specify a continuum field or AdS bulk. The polynomial is smooth, so demanding C-infinity alone does not repair injectivity. The obstruction does **not** refute uniqueness of an appropriately posed continuum Dirichlet problem supplied with its entire trace and PDE.

## (iii) CERN observable and unit-contract preparation

`CMCERNScalarDetectorLikelihood.lean` introduces typed measured D⁰ candidate records: event key, invariant mass (MeV), proper decay time (ps), transverse momentum (GeV), impact parameter log₁₀(mm), and detector sample ID. A *positive* `tau0Ps` is required before expressing times in any dimensionless arithmetic clock. It explicitly separates the Gauss-mass/exponential-time educational mixture from a separately supplied `IndependentMeasurementBridge` mapping an actual boundary field to detector likelihoods. The existence and validity of that physical bridge are **unproved scientific premises**.

The supplied executable `cern_d0_mass_lifetime_baseline.py` accepts a user-provided CSV export with the exact headers `event_key,mass_mev,proper_time_ps,log10_ip_mm,pt_gev`. It rejects duplicate keys, nonfinite values, invalid windows and insufficient selected rows. Its **illustrative baseline** is a truncated Gaussian mass signal plus linear mass background and a properly conditioned signal/background exponential decay-time mixture. An explicitly supplied Gaussian time-resolution width may be used; the script does not infer resolution or time acceptance from metadata. A statistical bootstrap estimates the idealized time-slope variation. This is not a full experiment-grade likelihood or an accepted LHCb analysis.

A separate independently justified flavour tag, tag mistag/dilution, proper-time efficiency, resolution calibration, background validation and physics map would be needed to test a Bₛ-mixing-style oscillation parameter. The masterclass D⁰ sample does **not** identify the CM–Möbius coupling. A programmatic `--claim-coupling-fit` attempt is rejected rather than fabricating an identification.

## (iv) Actual dataset retrieval and fit status

CERN record 401 was inspected via the public portal and the LHCb Masterclass instructions. The web text confirms 53,948 preselected D⁰ candidates and mass/time/background observables. The portal's API endpoint failed through the available web bridge; the model's container network could not resolve `opendata.cern.ch` (DNS error). **Zero actual CERN event rows were downloaded. No CERN event-level baseline or hypothesis fit was run.**

The local baseline fitter was smoke-tested on **1,400 explicitly synthetic D⁰-like candidates** (770 survived the declared mass/time window); with no resolution smearing, it recovered synthetic lifetime 0.4455 ps against an injected 0.45 ps, with 4 illustrative bootstrap resamples. The synthetic output must never be labelled a CERN measurement. A source-backed event-level fit requires a real file with recorded DOI, file SHA, raw branch dictionary, fit selection and uncertainty model, plus separate baseline and hypothesis likelihoods.

## Independent hostile checks and audit status

The stand-alone `cm_ads5_conformal_boundary_reference.py` passed **7,451** exact-rational/symbolic checks (independent of the Lean proof terms). It covers 2,400 independently chosen four-coordinate inversions, the squared inverse-half-Laplacian Riesz kernel, exact finite transformed quadrature on distinct positive integer lattice sites, parity/nonunit residue return for integer inventories up to 64, the AdS₅ mass equation for a Fourier mode, the actual boundary normal derivative, dilation rescaling, and the Poisson normalization. The finite sampled integer-grid test is not evidence of a continuous operator theorem or experimental model selection.

Negative controls: `x=0` is an excluded inversion pole; `x=y` is an excluded contact singularity in Green quadrature; four-dimensional site inversion is not a permutation of ℤ⁴; raw record keys are not arithmetic integers; a finite source reconstruction plus paid residual is tautological and **not an experimental fit**; a D⁰ lifetime slope cannot measure a Bₛ mixing frequency; no background/acceptance systematic is covered by a small bootstrap; and bulk free-scalar EOM do not imply coupled Einstein/brane dynamics.

**Verification facets:** SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No `sorry` or `axiom` was inserted in new source, but absence of such tokens is not Lean elaboration. Only after a full source-bound kernel replay can declaration validity be reported. No CI, scheduler or native runner was dispatched.

**Unresolved independent gates:** (1) actual 4D conformal fractional Laplacian operator on a completed function domain and Kelvin covariance proof in Lean; (2) full Poisson integral, trace, and boundary-condition proof for a continuum field plus Lorentzian RS branes and Einstein junction conditions; (3) independent CM/μ→physical field/observable assignment with correct units and a noncircular action; (4) an actual CERN event-level fit with backgrounds, time resolution, efficiencies, tag requirements and experimental likelihood comparison. The all-rate original signed Möbius energy estimate and Schwartz-to-periodic Lᵖ smoothing are unchanged OPEN mathematical tasks.
