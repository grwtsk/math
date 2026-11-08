# Source-identified nonzero CM cycle for the constructed arithmetic coupling

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI.

Status: **SOURCE_PROOF_CANDIDATE**. `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No native Lean runtime or proof runner was used.

## Exact geometric source

The source is the pinned `openai/math@4eaee87548250b2682affda7d05d947c05554bae` degree-zero **whole-variety rational cycle**, not an arbitrary vector or postulated nonzero Hodge class:

- `OAI.AlgebraicGeometry.HodgeConjecture.SurfaceConstructionQ.CM.fullCycle V : RationalDimensionCycle V 0` is the actual formal whole-variety cycle, a `Finsupp.single` of the irreducible whole-variety support with coefficient 1.
- `SurfaceConstructionQ.CM.fullCycle_class` identifies the geometric class of that cycle with `OAI.AlgebraicGeometry.Cycles.Functoriality.UnitCap.cohomologyUnit V` in rational degree-zero Betti cohomology.
- `OAI.AlgebraicGeometry.CycleClass.Thom.GeometricTrace.Constructions.HigherThom.rationalCycleClassMap_eq_geometric V 0` identifies the genuine rational Thom/Betti cycle map with the geometric map. Thus **the actual original rational cycle-class map returns the same unit**.
- `OAI.AlgebraicGeometry.HodgeConjecture.TopTrace.CM.SurfaceConstruction.rationalUnit_ne_zero V` proves this H^0 unit is **nonzero**, under `[PathConnectedSpace V.analyticSpace]`. This hypothesis is explicit rather than inferred silently from the algebraic assumptions.
- `OAI.AlgebraicGeometry.ComplexMultiplication.Reference.EvenHodgeClasses.originalEvenBettiBridge X 0` is the actual rational-linear equivalence into the original `H^(0)(X; ℚ)` used by the selected CM realization. Its injectivity transfers nonzero from the unit.

## Distinct-coordinate isometric source fidelity

`CMScaleResidueHilbertAttachment.originalBettiToSelectedHilbert` is a finite basis-coordinate sum of `lp.single` vectors, where the finite basis indices map injectively into distinct `ScaleResidueIndex` addresses. The new `CMFullCycleNonzeroCoupling.originalBetti_selected_at_basis` computes its coordinate at the *same original basis address* exactly as the corresponding rational coordinate, cast to ℂ; `originalBetti_selected_injective` then follows from injectivity of the rational basis representation and the scalar inclusion ℚ→ℂ. This is a source-level proof candidate of the nonzero transfer, not an ungrounded assumption that every named realization is injective.

Consequently, under the exact existing assumptions of the selected CM realization, including `[FiniteDimensional ℚ (OriginalBetti X 0)]`, and the additional sourced `[PathConnectedSpace V.analyticSpace]`, the actual full cycle has a **nonzero selected Hilbert vector**. This discharges the previously open `actualCMVector d X 0 z ≠ 0` hypothesis for **this specific degree-zero source**. It does not prove that a given nonzero cycle in every higher degree has nonzero class.

## Consumer and exact defect return

Instantiate the previously published `CMActualMoebiusRankTwoInteraction.interactingComparison` with `z = actualFullCycle X`. This gives a concrete two-way, self-adjoint rank-two coupling between the chosen CM Betti source and the entire finite original signed Möbius causal state. For every positive square modulus profile, finite inventory `j` and real times `s,t,u`, its actual compressed directional operators have **exact norm 1**:

`‖jointQ ∘ interactingComparison ∘ jointP‖ = 1`,

`‖jointP ∘ interactingComparison ∘ jointQ‖ = 1`.

Both are nonzero, and their definitions remain literal adjoints in the chosen positive Hilbert metric. The original signed pickup readout is unchanged on the *uncoupled* source and retains its mixed products. After applying this interaction, new cross terms must be retained; no physical Hamiltonian or energy theorem is inferred from this model coupling.

## Exact scope and adversarial limits

- `V` must be the actual bundled integral projective variety associated to the **same** smooth complex CM source X. The full cycle exists in the sourced geometric cycle type; connectedness applies to its analytic space.
- This result is degree **p=0**. A nonzero arbitrary cycle in general codimension is not established, and the zero cycle still yields a zero coupling.
- The rational Betti source finite-dimensionality and the chosen, noncanonical Euclidean coordinate metric remain explicit. The degree-zero result is not a canonical geometric Hodge polarization.
- The two-time decoupled labelled cocycle remains exact. The new coupled comparison is **not** shown to be a cocycle or a physical wave. Its norm-one off-diagonal blocks come from normalization of two actual source vectors, not a global Möbius-energy estimate or Schwartz-to-periodic transference.
- This is a new source-specific interoperability proof candidate combining existing upstream full-cycle and unit facts with the earlier selected Hilbert address map. Independent theorem-level novelty is unassessed.

The pinned Mathlib revision is `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean toolchain is `leanprover/lean4:v4.34.1`, and the preceding interaction source commit is `a4a7f38d979fd0be5ca22d87e767a94da369f72a`. Source syntax scan passed without admitted holes. **Fresh Lean elaboration and kernel audit remain NOT_RUN.**
