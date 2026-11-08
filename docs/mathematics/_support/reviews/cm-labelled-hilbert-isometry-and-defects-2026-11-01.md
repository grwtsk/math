# CM Betti / integer-labelled causal Hilbert isometric comparison and signed defect ledger

Local mathematical attribution: **grwtsk contributors**. Source formalization assistance: OpenAI. Retain upstream Mathlib and `openai/math` attributions and licenses.

**Disposition:** SOURCE_PROOF_CANDIDATE; COMPARATIVE_ANALYSIS_INSPECTED; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No logical axiom, `sorry`, or `admit` was intentionally introduced. A static source proof script is not a kernel receipt.

## Exact source foundation

- Existing `grwtsk/math` research branch `research/residue-circle-wave-hilbert-20261101-350ff25d` before this increment: immutable source commit `d87c55bd12b6a8df417c307e45f7c78aa2ed5692`. The live main head moves independently; do not infer these research modules are on main.
- Locked Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. [Mathlib L2 product](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/InnerProductSpace/ProdL2.lean); [PiLp finite-sum/product linear isometry](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Lp/PiLp.lean); [lp.norm_sum_single](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Lp/lpSpace.lean).
- Original signed arithmetic producer: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`, defines the actual `moebiusReal`, `pickupResponse`, `wholePickup`, `pickupEnergy`.
- Signed parity/residue original reassembly: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`, blob `07dfdae4a60b05f5da55cc20882411c85444fa82`.
- Exact source-labelled causal model `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean`, blob `1f0301e696086d8a4894cf1d6a573ccfb917e832`. The actual `SourceHilbert j` is `EuclideanSpace ℂ (Fin (2^j))`; the FULL `LabelledState j` is `WithLp 2 (SourceHilbert j × SourceHilbert j)` retaining latent signed coefficients and observed responses.
- Source CM realization `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMGeometricCycleHilbert.lean`, blob `fd00f0e140e49676f05b49ac6e752c23ef190c15`; `CMScaleResidueHilbertAttachment.lean`, blob `b7902370c6bab3111a409851fc52ab7894d2f414`. It uses the genuinely sourced rational Betti cycle-class map and the chosen basis-stage embedding into `AllScaleHilbert`.
- Actual common-Hilbert CM signed response `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedResponseOperator.lean`, blob `e59682aba98aa1f8707bd523dba994e0f97cc4f9`; full labelled source evolution `ResidueCircleSourceCausalShear.lean`, blob `d6748188785ee8a7ffa74bf593c27b2b10718b45`, and actual-source CM cocycle `CMActualSignedCausalEvolution.lean`, blob `7eb941e71b8725ec53c16dd721b101e71577849c`.
- The external geometric theorem's scope is pinned to `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, in `lean/OAI/AlgebraicGeometry/ComplexMultiplication/Reference/GeometricAlgebraicity.lean` and `lean/OAI/AlgebraicGeometry/CycleClass/Geometric/Span.lean`. Actual `HasComplexMultiplication`, `IsIntegral`, `Smooth`, projectivity, `GrpObj`, and the finite-dimensional rational cohomology instance required by the GRWTSK coordinate attachment stay explicit.

## Three new proof-candidate leaves

1. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledJointIsometry.lean`: constructs `Joint H C = WithLp 2 (H × C)` and two genuine isometric complex-linear inclusions. The selected algebraic projector is `P_joint(x,z)=(P_CM x,0)`, and the orthogonal complement is `Q_joint(x,z)=(Q_CM x,z)`. Prove source reconstruction and Pythagoras without identifying signed scalar readout with positive Hilbert energy.
2. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledAddressIsometry.lean`: constructs an explicitly injective finite address placement into the **already selected** `AllScaleHilbert (squareProfile d)`. Mathlib's exact `lp.norm_sum_single` and the Euclidean source L2 norm supply a proof of norm preservation. `PiLp.sumPiLpEquivProdLpPiLp` is the source-preserving isometric identification of the two labelled channels with the finite disjoint-sum index. The original Betti rank `R` sets the offset. Source label `i` is sent to stage `R+i`, observed response `i` to `R+2^j+i`, both at residue zero. Injections and noncollision with the already chosen Betti stages are explicit. The embedded observed-label readout equals the original labelled `originalReadout`, then `originalFixedWave` for every real `u`, then `wholePickup` on the correct closed dyadic window. No modulo reduction of the original integer labels occurs.
3. `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledCausalDefectComparison.lean`: uses **both** actual CM selected Hilbert and actual integer-labelled causal state. The two source-specific finite readouts agree on the original signed source. On the joint Hilbert space, compare the *diagnostic* `B_u(x)=L_j(x) S_{j,u}` on the selected CM side against the true labelled cocycle `U_{s,t}` on the other. Form the bounded block-diagonal diagnostic `T_{s,t,u}=B_u ⊕ U_{s,t}` and derive the two exact defects, their norm bounds and positive Hilbert commutator energy.

## Primary analytic argument

Put `H = AllScaleHilbert (fun _ => d*d)`, `C_j = WithLp 2 (SourceHilbert j × SourceHilbert j)`, `K_j = WithLp 2 (H × C_j)`. The L2 product norm and inner product are the ones actually built by Mathlib, not the usual supremum norm of `H × C_j`. Both `x ↦ (x,0)` and `z ↦ (0,z)` are complex-linear isometries: each retains its source norm, and their images are orthogonal. The retained source and original signed observable are *different data*.

For the stronger same-Hilbert placement, let `r` be the **chosen finite rational Betti basis rank**. The stages `(r+i,0)` and `(r+2^j+i,0)` are pairwise distinct, disjoint from the original geometric stages `(k,0)` with `k<r`, and indexed by original integers `i+1`. Every source latent and observed coordinate is inserted using one `lp.single`; the finite support preserves summability. Injectivity allows reindexing the norm using `Finset.sum_image`; `lp.norm_sum_single` gives exactly the sum of component squared moduli, which equals the original finite `L2` source norm. The observation's **coherent** sum is recovered by evaluating precisely the observed-channel addresses. This is a noncanonical *address* isometry for the selected coordinate metric, not an equality of a rational Betti class with an arithmetic state.

For source `s`, the selected original packet is `S_{j,s}` and the original complex-linear coherent detector `L_j` gives `L_j(S_{j,s}) = completeWave j d s`. The labelled-state exact evolution transports the original `(c,D_s c)` to `(c,D_t c)` for all `s,t` through births. The diagnostic `B_t` on the first Hilbert factor instead sends the original source packet at `s` to `completeWave j d s • S_{j,t}`. Its EXACT first-channel intertwining defect relative to `S_{j,t}` is `(completeWave j d s - 1) • S_{j,t}`. This mismatch is not presumed small or erased. At the original birth origin `s=0`, observed-only source evolution is impossible without retained latent data.

Let `P` be the *actual closed CM cycle-image projector* in the selected `H` and `Q=I-P`. The joint diagnostic block operator has precisely

```
Q_joint T P_joint (x,z) = (L_j(Px) · Q S_{j,u}, 0)
P_joint T Q_joint (x,z) = (L_j(Qx) · P S_{j,u}, 0).
```

The two norms are bounded individually by `||L_j|| ||Px|| ||Q S||` and `||L_j|| ||Qx|| ||P S||`. They can be nonzero on independent inputs; no scalar cancellation makes either of these Hilbert-vector defects disappear. Because the two defect vectors land in orthogonal geometric sectors, the commutator has exact positive squared norm

```
||[P_joint,T](x,z)||^2 = ||P_joint T Q_joint(x,z)||^2
                          + ||Q_joint T P_joint(x,z)||^2.
```

The physical signed coherent scalar square is separate:

```
L_j(S)^2 = L_j(P S)^2 + L_j(Q S)^2 + 2 L_j(P S) L_j(Q S),
```

and the old signed pickup-energy time integral retains its four parity sectors and every mixed residue product. This is **not** implied by Hilbert Pythagoras and is kept as an independent source-return theorem. No estimated growth/cancellation theorem is obtained.

## Independent hostile checks and false routes

- A direct canonical equivalence between the entire original rational Betti source and a finite integer-labelled `C_j` is **not** established: the source Betti realization is rational, its chosen positive metric is basis-dependent, its complexification/orthonormalization is not a canonical Hodge polarization, and arbitrary dimensions need not agree. The supplied finite-dimensionality instance is retained, not smuggled in from CM algebraicity.
- **Ordinary additive residue aggregation is not an isometry.** The finite signed test vector `(1,-1)` has positive Hilbert squared norm 2 but zero coherent readout and can occupy the same residue address if frequencies alias. The full source-coordinate isometry must keep integer winding and both latent/observed channels.
- A joint **isometric embedding** does not itself intertwine geometric and arithmetic physical evolution. The displayed first-channel mismatch is exactly what remains unproved/needs a mathematical estimate for a true operator bridge. The old source diagnostic is rank-one; the independent label evolution is a genuine nonautonomous two-time cocycle on a larger state. The block sum is not relabelled a physical semigroup.
- Finite direct-sum, signed coherent readout, two-way defect and causal shear identities were tested independently in exact `fractions.Fraction` arithmetic: 14,381 assertions; separately, 27,082 exact rational-complex address assertions covered source sizes 1,2,4,8 and Betti offsets 0,1,3,6. These are **FINITE_REFERENCE_EVIDENCE ONLY**, not Lean kernel receipts or actual CM-variety computations.
- No scale-uniform norm bound, actual CM polarization, Schwartz-to-periodic `L^p` transference, noncircular source equivalence to a wave Hamiltonian, or all-positive-rate signed Mertens energy estimate is supplied. No RH consequence is asserted.

## Required acceptance sequence

At an independently authorized, clean checkout of the exact published source revision: verify parent commit, exact three new source blob identities, root/toolchain/manifest hashes, and transitive import closure. Check Lean `v4.34.1` and pinned Mathlib, compile each new module with `lake build --wfail`, check all expected declaration types, run fresh kernel/leanchecker only using actual supported syntax, and audit all transitive `#print axioms` including the upstream CM-Hodge realization and original signed response. Record actual stdout/stderr/exit statuses under the authorized Noe evidence owner, never here. No runner, GitHub Actions dispatch, scheduler, or remote executor was started in this source-drafting turn.

The next mathematical frontier is an **actual quantitative intertwining estimate** for a single identified CM realization and source arithmetic wave operator, with two directional defects and a nontrivial source/time parameter; the exact coherent response mismatch provides the presently unpaid term. Further Schwartz-to-periodic `L^p` and all-scale rate bounds are separate analytic suppliers.
