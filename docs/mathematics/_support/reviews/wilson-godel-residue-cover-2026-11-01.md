# Gödel observer and SU(2) Yang–Mills: complete finite residue covering

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Mathematical question and exact source

Connect the actual Gödel observer construction to the actual periodic four-dimensional
SU(2) Wilson lattice, through a **complete cyclic residue partition** and an exact
source-specific energy budget. This is a finite regulator statement, not the
four-dimensional continuum Yang–Mills existence or mass-gap theorem.

Source starting point: grwtsk/math/main at 4f301ada41f23f55132240dda65c72402d901152
(pre-publication parent). The result uses these existing modules and unchanged
observations:

- \`GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/FinitePeriodicLattice.lean\`: the actual \`(ZMod L)^4\` lattice, plaquettes, holonomy and gauge action.
- \`.../FiniteSU2Wilson.lean\`: \`wilsonAction\`, its gauge invariance and finite bounds.
- \`.../WilsonBlockArithmeticCovariance.lean\`: \`plaquetteEnergy\`, \`blockEnergy\`, literal conjugation invariance and \`plaquetteEnergy_bounds\`.
- \`GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean\`: \`spatialMetric\`, its root and chart isometry, and \`vorticity_shift\`.
- Comparison, not identification: \`GRWTSK/NumericalAnalysis/GodelFourierSoficImplementationChain.lean\` uses a temporal \`Fin 33\` DFT and seven \`Fin 7\` residue channels.

New source: \`GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonGodelResidueCover.lean\`.

## Exact theorem and direct mathematical proof

Let \`L ≥ 1\`, \`P_L=(Z/LZ)^4×{(μ,ν):0≤μ<ν<4}\`, \`ρ(p)=p.base(0)\`,
\`P_r={p∈P_L:ρ(p)=r}\`. The actual SU(2) plaquette holonomy \`H_p(U)\`
has penalty \`e_p(U)=1-(1/2) Re Tr(H_p(U))\`. Write
\`E_r(U)=Σ_{p∈P_r}e_p(U)\` and \`S_L(U)=Σ_{p∈P_L}e_p(U)\`.

1. Every \`r∈Z/LZ\` occurs. Choose the vertex with coordinate zero \`r\`,
all other coordinates zero, and orientation \`(0,1)\`. Hence each \`P_r\` is
nonempty; the periodic seam is included in the same genuine torus.
2. Each plaquette belongs to exactly one \`P_r\`: the value \`ρ(p)\` is
unique. Reordering the two finite sums and collapsing its one true indicator gives
\`Σ_{r∈Z/LZ}E_r(U)=S_L(U)\`. This is exhaustive **counting of the original
plaquette source**, not a positive replacement of a signed source.
3. Unitarity and the exact SU(2) real-trace interval give \`0≤e_p≤2\`;
therefore \`0≤E_r(U)≤2|P_r|\`. Holonomy under gauge transformation is conjugated
at the plaquette base vertex. The trace penalty and thus each \`E_r\` are
gauge invariant. No matter how the gauge acts, the residue inventory is unchanged.
4. For actual Gödel observer parameters \`a>0\`, \`|β|<1\`, coordinate \`x\`
and tangent \`v\`, retain \`h_x(v,v)≥0\`, with the established rest-direction
root. The genuine Gödel chart shift \`F_s\` obeys
\`h_{x+s}(F_s v,F_s v)=h_x(v,v)\` and
\`ω_{x+s}(F_s v,F_s w)=ω_x(v,w)\`.
Combining this with a Wilson gauge transform yields an **independent product
transport** preserving every \`E_r\`, \`h\` and \`ω\` separately, not a common
physical energy or a coupled field equation.
5. Specializing \`L=7\` supplies seven *nonempty physical plaquette*
residue classes. It does not identify the Wilson base-coordinate grading with
the temporal Fourier frequency grading \`k % 7\` in the spring simulation.
That latter identification needs a concrete source map and error terms.

A further direct real-character bound follows without a new hypothesis:
for any real \`w_r\` with \`|w_r|≤1\`,
\`|Σ_r w_r E_r(U)|≤Σ_r E_r(U)=S_L(U)≤2|P_L|\`.
It uses the triangle inequality and \`E_r≥0\`. For complex unit-modulus
characters the same triangle proof holds with complex norms, but a Parseval
identity or continuum Fourier norm estimate requires its own normalization.

## Hostile boundary and analytical comparison

The flat connection \`U=1\` has every plaquette penalty zero, even though
every residue fiber is nonempty. Thus **complete coverage does not imply a
strictly positive class energy or a spectral gap**. The Gödel spatial quadratic
also vanishes along the boosted observer time direction while the observer
vorticity has nonzero norm. The two zeros cannot be equated, and the
curvature/vorticity tensors belong to different geometric structures.

This new result is an exact finite source partition and an action-preserving
product comparison. Its proof is elementary finite Fubini plus actual
source-specific SU(2) gauge and Gödel isometry identities. The seven-color DFT
is a distinct arithmetic representation; a class-cardinality match is not
evidence of dynamical coupling, physical mass, Yang–Mills/Gödel solutions,
Navier–Stokes regularity, or RH.

## Outstanding stronger bridge

To reach continuum Yang–Mills, one still needs actual gauge-invariant
excitation-state construction and normalized Hamiltonian/domain comparison;
positive coercivity on the **full** physical complement with cross terms;
scaling-uniform bounds; and a continuum vacuum and reconstruction.
The existing finite Wilson logarithmic separation depends on coupling/volume,
so no uniform physical mass gap follows from this new covering.

Separately, the full Gödel Levi-Civita/vorticity identification in Lean
remains open (see grwtsk/math#1543). The finite spring sampler's variable
time step, cross-bin interference, and its exact physical interpretation remain
separate (grwtsk/math#1545). The noncommutative-torus/projective-module
programme (grwtsk/math#1299) is a different Yang–Mills setting.

## Evidence and requested verification

Mathematical argument: supplied above and traceable to exact source.
Independent hostile case: \`U=1\` and Gödel rest-root.
Source files: candidate / no claims about compilation.
Lean parsing/elaboration: **NOT_RUN**.
Lake compilation: **NOT_RUN**.
Fresh kernel replay: **NOT_RUN**.
Transitive axiom audit: **NOT_RUN**.
Source/expected-interface comparison: **NOT_RUN**.
Noe native/remote execution: **NOT_DISPATCHED**.

At the immutable publication commit, run:

\`\`\`bash
lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonGodelResidueCover
\`\`\`

Then run an exact-commit fresh import and \`#print axioms\` for
\`latticeResidue_surjective\`, \`residueFiber_nonempty\`,
\`residueEnergy_nonneg\`, \`residueEnergy_le_two_card\`,
\`residueEnergy_gauge\`, \`residueEnergy_cover\`,
\`seven_residue_cover\`, \`observer_gauge_residue_transport\`,
and \`observer_and_all_residue_bounds\`.
Verify the expected theorem types and all transitive dependencies.
No operational execution receipt is manufactured in this repository.


## Further observer-weighted Wilson residue comparison (same research increment)

An observer-dependent **measurement**, not an interaction law, can be obtained
without losing the source action. Fix a real \`lambda≥0\`, chosen with the
appropriate inverse-spatial-energy normalization, and define
\`w(lambda,p,x,v)=1+lambda*h_p,x(v,v)\`, where \`h_p,x\` is the original
Gödel spatial projector. The existing positivity of \`h\` gives \`w≥1\`.
For each actual Wilson residue fiber, define
\`E_r^obs(U)=w E_r(U)\`. The coefficient is sourced from the genuine
Gödel observer; it is neither an arbitrary residual nor a postulated
Yang--Mills curvature equality.

The explicit finite distributive identity gives
\`Σ_r E_r^obs(U)=w S_L(U)\`. Since the SU(2) action is nonnegative and
\`w≥1\`, the original action obeys
\`0≤ S_L(U) ≤ Σ_r E_r^obs(U)\`. The chart shift preserves \`h\`, so
\`w(x+s,F_s v)=w(x,v)\`; the exact SU(2) vertex gauge action preserves
each \`E_r\`. Their simultaneous action therefore preserves every
\`E_r^obs\` and the complete weighted sum. The gain is one on the
observer-time root, and unbounded without a separate bound on observer
velocity/energy; there is no uniform upper bound claimed for all tangents.

This is a **source-exact observer-weighted Wilson observable**, and a
mathematically valid way for real observer geometry to supply weights on
a physical gauge action while the class partition supplies bounds back
on the original action. It is not derivation of Einstein--Yang--Mills
coupling or of a mass gap. The pre-existing seven temporal Fourier
classes still require an explicit observation map to identify them with
Wilson base-coordinate classes. The source includes candidate declarations
\`observerGain\`, \`observerGain_ge_one\`,
\`observerWeightedResidueEnergy\`,
\`observerWeightedResidueEnergy_nonneg\`,
\`observerWeightedEnergy_cover\`,
\`wilsonAction_le_observerWeightedCover\`,
\`observerWeightedEnergy_chart_gauge\`, and
\`observerGain_chart\`. Lean elaboration and all qualification remain
NOT_RUN; no remote execution was dispatched. The appended source and
review require a NEW commit pin and cannot inherit earlier acceptance.
