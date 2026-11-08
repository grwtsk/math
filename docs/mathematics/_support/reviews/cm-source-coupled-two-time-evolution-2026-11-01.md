# CM–Möbius source-coupled two-time evolution: exact algebra, defect bounds, and physical scope

Local mathematical attribution: **grwtsk contributors**. Formalization assistance: OpenAI. Source proof candidate; not compiled or kernel audited.

## Exact sources

- Local working source before this increment: `grwtsk/math@f51c3fd8d341ac59031b1daa9b7120f8ee996142`, isolated branch `research/residue-circle-wave-hilbert-20261101-350ff25d`. This branch contains the previously built CM Betti realization, original signed Möbius labelled cocycle, common Hilbert direct sum and normalized nonzero full-cycle coupling. These files were not present on the rapidly advancing `main` head inspected in this increment, so no hidden claim of default-branch elaborability is made.
- Source of original causal arithmetic labels: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean` and `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/{FiniteLabelledPickupCocycle,FiniteLabelledPickupUniformTransport}.lean` at the local working commit. In particular `pickupResponse n t = if log n ≤ t then 2*((sqrt n)⁻¹-exp(-t/2)) else 0` and the original integer labels are `1,...,2^j`.
- Source of the exact nonunit and signed scalar return: `DyadicSignedResidueWaveform.lean`, `CMSelectedSignedWaveReturn.lean`, `CMLabelledCausalDefectComparison.lean` and `CMLabelledCocycleIntertwiner.lean`, also at the pinned local working commit. Signed aggregation occurs **before squaring**.
- Source of geometric vector: `CMFullCycleNonzeroCoupling.lean` and `CMActualMoebiusRankTwoInteraction.lean`; these use the actual degree-zero whole-variety rational cycle in OpenAI's CM-Hodge development. Nonzero Betti class requires path-connected analytic space, and the selected coordinate placement requires finite-dimensional rational Betti cohomology. These hypotheses remain explicit.
- External supplier: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, especially `lean/OAI/AlgebraicGeometry/HodgeConjecture/TopTrace.lean`, `lean/OAI/AlgebraicGeometry/CycleClass/Geometric/Span.lean`, and `lean/OAI/AlgebraicGeometry/ComplexMultiplication/Reference/GeometricAlgebraicity.lean`.
- Formal environment of the existing branch: `leanprover/lean4:v4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The relevant Mathlib mechanisms include `InnerProductSpace.rankOne_comp_rankOne`, `WithLp` L² product, `ContinuousLinearMap.opNorm_comp_le` and orthogonal projections.

## Primary analytic construction

Write `H` for the already chosen complete complex Hilbert coordinate realization containing the genuine rational CM cycle image. Write `C_j` for the genuine, finite-dimensional latent-plus-observed integer-labelled causal Hilbert state. Put `J_j = H ⊕₂ C_j`, retaining **all** the original Hilbert sectors. Let

- `v = unitVector(actualCMVector(fullCycle X)) ∈ H`, the source-derived degree-zero geometric unit;
- `w_j = unitVector(originalLabelledState j 0) ∈ C_j`, which is nonzero from the actual latent Möbius label `μ(1)=1` even though its observed response vanishes at time zero;
- `F_j = |(0,w_j)⟩⟨(v,0)|` and `G_j = |(v,0)⟩⟨(0,w_j)|` on `J_j`.

These are not invented arbitrary cycle labels or a lossy residue quotient. The selected `v` depends on the actual rational Betti basis and thus is **not** a canonical geometric polarization. For the same reason, using `t` as the coupling-clock parameter is a **chosen normalization**, not a measured constitutive coefficient.

The disjoint source factors make `F_j²=0=G_j²` **without** needing a small-norm perturbation hypothesis. Thus

```
A_j(t)       = (I + t F_j)(I + t G_j)
A_j(t)^(-1)  = (I - t G_j)(I - t F_j).
```

The separately source-identified causal shears `E_j(s,t)=id_H ⊕ actualLabelTwoTime(j,s,t)` satisfy `E_j(t,u) E_j(s,t)=E_j(s,u)` on the complete joint Hilbert space. Define

```
B_j(t)    = E_j(0,t) A_j(t)
B_j(t)^-1 = A_j(t)^-1 E_j(t,0)
U_j(s,t)  = B_j(t) B_j(s)^-1.
```

**Full proof of composition:** `B_j(t)^-1 B_j(t)=I` by the original causal inverse and the two nilpotent rank-one shears. Hence

`U_j(t,u)U_j(s,t)=B_j(u)[B_j(t)^-1 B_j(t)]B_j(s)^-1=U_j(s,u)`.

Identity `U_j(s,s)=I` and inverse `U_j(t,s)U_j(s,t)=I` follow on the **entire** Hilbert space. This is genuinely stronger than the previous `E+K` comparison, which did not compose. This construction is a bounded invertible, time-composing **interaction-frame model**: it is not a derived Hamiltonian, unitary PDE solution, or independently sourced physical coupling law.

## Quantitative bounds, genuine off-diagonal witnesses

On nonnegative physical time the original response satisfies `|pickupResponse n t|≤2` for every positive integer, and the source's finite labelled causal step satisfies `‖actualLabelTwoTime(j,s,t)‖≤5` independently of `j`. The corresponding complete joint decoupled step has norm at most 5. For normalized `v,w_j`, `‖F_j‖=‖G_j‖=1` and

```
‖A_j(t)‖, ‖A_j(t)^-1‖ ≤ (1+|t|)².
‖B_j(t)‖, ‖B_j(t)^-1‖ ≤ 5(1+|t|)²   (t≥0).
‖U_j(s,t)‖ ≤ 25(1+|s|)²(1+|t|)²     (s,t≥0).
```

Let `P` be **the existing orthogonal projection onto actual geometric cycle images in the CM first factor**, extended by zero on the arithmetic factor, and `Q=I-P`. At `s=0,t=1`, the two exact source witnesses are

```
Q U_j(0,1) P (v,0) = (0, actualLabelTwoTime(j,0,1) w_j),
P U_j(0,1) Q (0,w_j) = (v,0).
```

The right side of the first witness is nonzero because the source-labelled causal operator is invertible. The second is nonzero because the actual full-cycle Betti class is nonzero. In particular, the two genuine compressed off-diagonal operators `QUP` and `PUQ` do not vanish under the explicit geometric premises. Their norm is bounded above by 100 using the full operator bound and contractivity of `P,Q`. An elementary lower-bound calculation using `‖actualLabelTwoTime(j,1,0)‖≤5` gives

```
1/5 ≤ ‖Q U_j(0,1) P‖ ≤ 100,
  1 ≤ ‖P U_j(0,1) Q‖ ≤ 100.
```

The bounds are conservative. For this particular rank-one frame one can calculate `‖P U_j(0,1) Q‖=1` and `‖Q U_j(0,1) P‖=‖actualLabelTwoTime(j,0,1)w_j‖`; the latter is actually ≥1 because the causal shear fixes its unit latent coordinate. **The new Lean source candidates encode the conservative bounds and nonzero witnesses**; do not report the sharper calculations as fresh kernel-verified declarations.

These estimates are **uniform in the finite inventory index `j` at fixed times**, not uniform as the time horizon grows and not a signed arithmetic cancellation estimate.

## Original signed observable and correction

The old `pickupEnergy T = ∫_0^T wholePickup(t)² dt` retains its exact original meaning. The coupled output of the labelled source is not automatically that original waveform. Define its complete complex linear readout defect

```
δ_j(s,t,z) = originalReadout(j, (U_j(s,t)z).snd.snd)
             - originalReadout(j, (E_j(s,t)z).snd.snd).
```

For the literal joint source at physical time zero and all `0≤t≤dyadicTime j`:

`Re originalReadout(j,(U_j(0,t)originalJointPair(j,0)).snd.snd) = wholePickup(t) + Re δ_j(0,t,originalJointPair(j,0)).`

Hence its **squared real coherent observation** is exactly

`wholePickup(t)² + 2 wholePickup(t) Re δ_j(t) + (Re δ_j(t))²`.

Both cross terms and all original Möbius signs survive. The new theorem candidate integrates the **whole pointwise identity**, rather than silently splitting the integral without an integrability certificate for the new correction. The original pickup-energy theorem is unchanged. There is no new RH/GRH conclusion.

## Hostile/degenerate comparisons and independent checks

1. **Zero cycle:** if the actual rational geometric cycle has zero Betti image, both normalized cross maps vanish; a nonzero coupling requires a nonzero source witness. For the selected full-cycle case, the imported degree-zero unit/nonvanishing results supply that witness only under their stated assumptions.
2. **Initial causal birth:** the observed packet vanishes at time zero, but `w_j` retains all latent labels, so division by a vanishing response never occurs. The coupling and two-time inverse exist across births. This does not make `U_j` unitary; source birth already obstructs isometric transport in the chosen metric.
3. **No alias collapse:** integer labels remain distinct; additive residue aggregation is only performed in the source-specific readout, not in the causal transport.
4. **Time zero and negative times:** `A_j(0)=I` and the global frame inverse holds at every real parameter. The uniform bound of 5 for the original pickup source is only claimed for nonnegative endpoints.
5. **Signed energy:** the coherent readout has a mixed correction term, which can be negative. Hilbert Pythagoras cannot eliminate it.
6. **Finite independent diagnostics:** the local Python reference `test_CM_source_coupled_evolution.py` passed **2,716 assertions**, including exact-rational shear inverse/composition on 2×2 matrices and independently constructed original Möbius responses and finite labelled causal matrices for scales `j=0,…,5`. This is a finite algebra/source diagnostic, NOT Lean proof acceptance and not a comprehensive physical validation.

Nearest conceptual antecedents include standard nilpotent elementary shears and interaction-picture conjugation; no theorem-level novelty claim is made on the basis of source composition alone. No mathematically independent second analytic proof has been established; exact-rational and numerical hostile checks cover finite cases only.

## Exact acceptance and remaining physical gates

- New candidate sources: `CMSourceRankTwoShearEvolution.lean` (generic) and `CMActualCoupledCausalPropagator.lean` (actual degree-zero CM/full signed arithmetic coupling); both live under `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/` on the isolated research branch and introduce no axiom or `sorry`. Their individual blobs and eventual branch commit must be pinned by publication readback.
- Expected types include the full `actualCoupledTwoTime_comp` and inverse, `actualCoupled_offDiagonal_norm_lower` (both directions), `actualCoupled_QWP_opNorm_le_hundred` and `actualCoupled_PWQ_opNorm_le_hundred`, `sourceWholePickup_coupled_integrand_return`, and both genuine source-witness theorems.
- **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.** No Lean/Lake binary is available in this environment; no verifier, native runner, CI or scheduled task was dispatched. Earlier branch candidates imported by these modules are also unverified. A source-level theorem statement or a mathematical derivation is not a kernel acceptance receipt.
- To call this a *physically derived* coupled evolution rather than a defined source-based mathematical interaction model, a separately identified action/Hamiltonian or constitutive law must derive the coupling clock and generator (including units), prove time-dependent domain and regularity, establish correct geometric/arithmetical measurement channels, and compare to observable experiments or the original PDE. None of that follows from existence of the operator `U_j`.
- No uniform-in-time, infinite-inventory, or all-positive-rate signed Möbius energy estimate has been supplied. Schwartz-to-periodic `L^p` local-smoothing transfer with winding, lattice, and quantitative modulus dependence remains separate.
