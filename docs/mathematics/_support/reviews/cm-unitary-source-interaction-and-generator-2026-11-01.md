# Source-derived unitary CM–Möbius interaction: exact generator, causal transport, and quantitative scope

Local mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI. Status: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`.

## Source pins and subject

- Existing isolated `grwtsk/math` research branch `research/residue-circle-wave-hilbert-20261101-350ff25d`, pinned parent `f4702fcb0470ab2a7080a7c187052af51de23ddc` (the previous, nonunitary polynomial-shear candidate). The current `main` has evolved independently and does not contain the prerequisite research-branch files. This increment leaves that separation intact.
- Exact original integer-labelled arithmetic: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean` and `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean`, in the source closure of that parent. The original `pickupResponse n t`, original Möbius coefficients, latent `n=1` unit, signed `wholePickup`, and original `pickupEnergy` are **unchanged**.
- Existing concrete geometric input: `CMFullCycleNonzeroCoupling.lean`, `CMActualMoebiusRankTwoInteraction.lean`, `CMActualCoupledCausalPropagator.lean`, in that branch. The geometric source is the rational degree-zero full cycle on the same original variety, mapped through the genuine rational Betti/Thom source into selected basis coordinates. Its nonvanishing requires the pinned analytic path-connectedness and rational Betti finite-dimensionality hypotheses; those are not derived by a model choice.
- External supplier: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, especially `lean/OAI/AlgebraicGeometry/HodgeConjecture/TopTrace.lean`, `lean/OAI/AlgebraicGeometry/CycleClass/Geometric/Span.lean` and `lean/OAI/AlgebraicGeometry/ComplexMultiplication/Reference/GeometricAlgebraicity.lean`.
- Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Relevant pinned API: `Mathlib/Analysis/CStarAlgebra/Exponential.lean` (`selfAdjoint.expUnitary`, `Commute.expUnitary_add`), `Mathlib/Analysis/InnerProductSpace/Adjoint.lean` (`Unitary.norm_map`, selfadjointness of the concrete rank-one pair), and `Mathlib/Analysis/SpecialFunctions/Exponential.lean` (`NormedSpace.hasDerivAt_exp_smul_const`).

## Primary construction and complete argument

For finite dyadic inventory `j`, put `H = AllScaleHilbert (fun _ => d*d)` and `C_j = WithLp 2 (EuclideanSpace ℂ (Fin (2^j)) × EuclideanSpace ℂ (Fin (2^j)))` as already defined. Set `J_j = H ⊕₂ C_j`.

The selected geometric `v` is the **normalized actual whole-variety rational CM cycle class**, and `w_j` is the **normalized actual labelled latent-plus-observed Möbius state at physical time zero**. The latter is nonzero due to `μ(1)=1` in the retained latent channel despite all observed responses being zero at time zero. Both are unit vectors under the explicitly chosen positive Hilbert metrics, assuming the real geometric source nonvanishing hypothesis. Define

\[
F_j=|(0,w_j)\rangle\langle(v,0)|,\quad
G_j=|(v,0)\rangle\langle(0,w_j)|,\quad
K_j=F_j+G_j=K_j^*.
\]

Each rank-one operator has norm exactly 1, so `‖K_j‖ ≤ 2` (the exact norm is 1 by its Pauli-X restriction, but the conservative bound suffices). The source-derived Hamiltonian is a **chosen interaction Hamiltonian**, not inferred to equal the original geometric PDE Hamiltonian. Let the real parameter `κ` be an *explicit, externally selected coupling strength* with appropriate physical units yet to be assigned.

\[
R_{j,κ}(s,t) = \exp(-iκ(t-s)K_j).
\]

Because `K_j` is self-adjoint, `R` is unitary on the **entire Hilbert space**, even on states orthogonal to both source vectors. Since the same `K_j` appears at every time, its scaled exponents commute, and the pinned exponent-additivity lemma yields

\[
R_{j,κ}(s,s)=I,\qquad
R_{j,κ}(t,u)R_{j,κ}(s,t)=R_{j,κ}(s,u),\qquad
\|R_{j,κ}(s,t)z\|=\|z\|.
\]

The real original pickup-response shears `E_j(s,t)` exist independently and satisfy `‖E_j(s,t)‖ ≤ 5` for nonnegative `s,t`, a finite-inventory operator bound uniform in `j`. They may be nonunitary because arithmetic response energy is born at exact logarithmic integer times. The **new coupled evolution** is

\[
\boxed{U_{j,κ}(s,t)=E_j(0,t)R_{j,κ}(s,t)E_j(s,0).}
\]

Its exact composition follows by inserting `E_j(t,0)E_j(0,t)=I` and using the unitary group law; `U(s,s)=I` and `U(t,s)=U(s,t)^{-1}` follow as well. At `κ=0`, `R=I` and `U(s,t)=E_j(s,t)` **exactly**. For nonnegative endpoints,

\[
\boxed{\|U_{j,κ}(s,t)\|\le5\cdot1\cdot5=25,}
\]

independent of the inventory index `j`, **both elapsed times**, and `κ`. The two genuine CM-projection compressions `QUP`, `PUQ` have the same upper bound 25 by contractivity of the *actual CM projection* `P` and its orthogonal complement `Q`. The generator's two directed pieces `F` and `G` retain their separate, exact norm-one source identification; the full U compressions are not claimed nonzero for **every** elapsed time.

## Explicit infinitesimal equation and birth regularity

Writing `A_j` for the bounded operator algebra on `J_j` and `L_j=-iκK_j`, the pinned Banach-algebra exponential theorem gives the exact **complex-parameter** derivative for every `z∈ℂ`:

\[
\frac{d}{dz}\exp(zL_j)=\exp(zL_j)L_j.
\]

At `z=0` the derivative is exactly `L_j`. This supplies a mathematically legitimate generator for the **chosen unitary interaction**. The real-time restriction follows by ordinary differentiation, but a complete original-response generator for `U` still requires treating **actual pickup births** at times `t=log n`: the response is continuous with derivative 0 on the left and `e^{-t/2}` on the right. Thus it is not globally `C¹` at every birth. A piecewise/absolutely-continuous evolution equation, physical dimensions, coupling calibration, and source energy constitutive law remain unpaid and are **not** inferred from the interaction exponential.

## Source readout and signed physical energy

Let `ℓ_j` be the **original coherent signed** source observation on the observed integer-labelled response, not the positive Hilbert norm. For the coupled output define its full, source-identified correction

\[
\delta_{j,κ}(t)=\ell_j(U_{j,κ}(0,t)z_j(0))
 -\ell_j(E_j(0,t)z_j(0)).
\]

On `0≤t≤dyadicTime(j)` the already published exact source return gives

\[
\operatorname{Re}\ell_j(U_{j,κ}(0,t)z_j(0))
  =\operatorname{wholePickup}(t)+\operatorname{Re}\delta_{j,κ}(t).
\]

Squaring retains **every** original parity/sign/ordered-pair contribution and both interaction cross terms:

\[
\operatorname{wholePickup}(t)^2
+2\operatorname{wholePickup}(t)\operatorname{Re}\delta_{j,κ}(t)
+(\operatorname{Re}\delta_{j,κ}(t))^2.
\]

The candidate equality of integrals is obtained by rewriting the **whole integrand** pointwise, without separately asserting a new integrability supplier or replacing the original signed pickup energy by `‖U z‖²`. Neither the all-positive-rate arithmetic bound nor RH/GRH follows.

## Hostile comparison, distinct route, and physical boundary

- **Zero coupling:** `κ=0` produces no cross-coupling and exactly recovers the original causal source transport. A nonzero source Hamiltonian does not force a nonzero measured interaction if its strength is zero.
- **Resonant times:** on the 2D subspace spanned by the genuine unit vectors `(v,0),(0,w_j)`, `K_j` is the standard Pauli-X matrix and
  `R_{j,κ}(0,t)` acts as `cos(κt) I − i sin(κt) K_j`. Accordingly, the pure-unitary compression norms equal `|sin(κt)|`. These can vanish at `κt ∈ πℤ` despite `K_j` having nonzero off-diagonal blocks. This exact trigonometric reduction is independently checked mathematically and numerically but is **not yet a separate kernel-checked Lean declaration**.
- **Sharpened complete-coupling comparison at initial time:** `P` commutes with the decoupled `E`; at `s=0`, `‖P U(0,t) Q‖=|sin(κt)|`, while `‖Q U(0,t) P‖=|sin(κt)|‖E_j(0,t)w_j‖`, between `|sin(κt)|` and `5|sin(κt)|`. These are analytical deductions of the explicit rank-two model, not asserted as theorems in the current Lean source candidate.
- **Causal births:** `R` is unitary, but `U` need not be; the original source's norm increases across the `n=1` birth at `t=2 log 2`. No division by a vanishing observed packet occurs because latent labels are preserved.
- **No residue alias loss:** arithmetic source evolution retains the original integer label, not merely its class modulo `q`; unitary interaction uses that complete state.
- **No genuine gauge-invariant physical claim:** any invertible two-time cocycle on a time interval admits a frame trivialization. The nonzero matrix coupling is a specific **chosen Hilbert frame interaction**, not evidence of unique dynamics or physical curvature without a preferred physical connection, observable calibration and an independently sourced action/Hamiltonian.
- **No new analytic supplier:** uniform operator norms do not imply a uniform bound for the coherent signed readout (whose norm depends on inventory), and do not establish Schwartz-to-periodic `L^p` local-smoothing transfer.

The closest standard mechanisms are exponential unitary groups generated by bounded self-adjoint operators and finite-rank Pauli-X transitions. The novelty of their source-specific juxtaposition is **not assessed**; this review makes no worldwide priority claim. The finite numerical checks are independent matrix diagnostics rather than an independent analytic theorem proof.

## Reproducible finite diagnostic and acceptance boundary

The separate *local-only* test `test_CM_unitary_causal_interaction.py` used exact original Möbius coefficients (SymPy) and the literal `pickupResponse` to build finite complex matrices at `j=0,…,6`. NumPy/SciPy matrix exponentials and products tested identity, inverse, two-time composition, unitarity of `R`, uniform bound 25 on `U`, the exact zero-strength return, signed scalar readout with complete correction, and the resonant `sin` reductions. **2,548 finite assertions passed**. These are diagnostics, not a universal proof, and the test is not an executable added to the mathematics repository.

Source proof candidates added under `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/`:
1. `CMSourceUnitaryInteraction.lean`: genuine self-adjoint source operator, unitary group and exact norm-preserving interaction.
2. `CMSourceUnitaryGenerator.lean`: source generator `−iκK`, exact complex Banach-algebra exponential derivative and operator norm estimate.
3. `CMActualUnitaryCausalInteraction.lean`: exact original CM and arithmetic source specialization; unitary interaction + causal shear composition, inverse, uniform 25 bound, separate compressed defect bounds, exact `κ=0` return, complete source-readout correction.

All three source files contain **no deliberate `sorry` or declared axioms**, but they have not been compiled; source tactics, implicit arguments, Mathlib namespaces, import closure, and theorem types require real Lean 4.34.1 and pinned Mathlib elaboration. No `lean`, `lake` or source-bound kernel verifier was available in the current environment. All imported earlier research-branch candidates remain separately unverified. **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.** No runner, scheduler, CI, external deployment, or merge was dispatched.

For physical interpretation, the following are still required: independently fixed or measured `κ` with units; an action or constitutive Hamiltonian that selects `K_j` and its normalization; piecewise source derivative and exact birth junction conditions; the chosen CM coordinate metric's relation to a geometric polarization; a physically specified measurement channel; time/inventory continuum limits and their source-identified errors. No physical generator for the entire system is claimed solely from this constructed unitary subinteraction.
