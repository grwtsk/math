# Source-derived topological CM Appell–Humbert line bundle core

Date: **2026-11-02**. Attribution: **grwtsk contributors**. Formalization assistance: OpenAI.

**SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.** Publication/readback is a separate facet. No execution, certification-service job, external source promotion, or new permission to change the original CM variety is implied.

## Exact source objects and provenance

Repository at start of inspection: `grwtsk/math/main@a9f985793ca8f338241d87faa09b186be20898a5`. Other investigators' current main commits must be preserved by a non-force, expected-head lease on publication.

- Original local chart transition source: `GRWTSK/Geometry/CMActualPeriodChartLocalFrames.lean`, blob `32482bdc65e6c542b0e1e6a383ec1821c72f995c`, especially `chartDisplacement_locally_constant_on_cover`, `chartTransitionPeriod_spec`, `chartTransitionPeriod_unique`, `chartTransitionFactor_cocycle`, and `fixedSheetTransition_holomorphic`.
- Original local fiber/orbit source: `GRWTSK/Geometry/CMActualOrbitHermitianMetric.lean`, blob `1231b2b0e3f08983cd4c1075ffb406a52a89ba11`, especially `chartFrame` predecessor `actualFibreFrame`, free period action, and the explicit quotient Hermitian metric.
- Original local factor: `GRWTSK/Geometry/CMActualUndoubledFactorCocycle.lean`, blob `6fe83c1cc050b161d0437213111a3a92ec7ca05c`, especially `undoubledFactor_holomorphic`, `undoubledFactor_add`, and the source actual `O_E` semicharacter.
- Source period charts: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `lean/OAI/AlgebraicGeometry/ComplexMultiplication/CM/PeriodTorus.lean`, blob `4846fdbc9c5ce1311a204220d03a4d4a4bc0b48e`, constructs covering-map local inverses, continuous (holomorphic) local sections, and `periodSection_eventuallyEq`.
- Source ring-of-integers period lattice: same pinned upstream commit, `CM/PeriodSpace.lean` blob `e6f4424149cadd941963e9888cec770997ac2276`.
- Target implementation API: pinned Mathlib `Mathlib/Topology/FiberBundle/Basic.lean`, blob `4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7` at `d13f23b723b8a846827a245b89c10fc7d3f11612`, `FiberBundleCore`, its `baseSet`, `isOpen_baseSet`, `indexAt`, `coordChange_self`, `continuousOn_coordChange`, `coordChange_comp` and generated `TotalSpace`/`localTriv`.
- Source environment: Lean `leanprover/lean4:v4.34.1`; no locally available Lean or Lake binary. The existence of a file under `GRWTSK/` does not guarantee root import compatibility with upstream `OAI` modules.

Prior-art comparison: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, 2nd edition, Springer (2004), Chapter 2, DOI [10.1007/978-3-662-06307-1](https://doi.org/10.1007/978-3-662-06307-1). The Appell–Humbert factor/gluing result is established mathematics; this increment is a source-specific formalization and analytical comparison, **not** a new theorem about all abelian varieties or a result on RH.

## (1) Primary analytical construction

Let `E` be a Galois CM number field and `epsilon` an odd CM embedding type. Put `V = epsilon.CMPeriodSpace`, `Lambda = epsilon.periodEmbedding(O_E)`, and `B = V/Lambda`. The upstream period-torus source proves the lattice is discrete and cocompact, the quotient is a compact complex manifold, and the period projection `p:V→B` is a covering map. For each chart center `c∈B`, let `U_c` be the open chart source and `s_c:U_c→V` its covering section.

For any base point `q∈U_c∩U_d`, the ORIGINAL sections satisfy

` s_d(q) = s_c(q) + period(a_cd(q)) `,

for a unique `a_cd(q)∈O_E`. The old `chartTransitionPeriod_unique` proves uniqueness and the old `chartTransitionPeriod_add` proves `a_cf = a_cd+a_df` on triple overlaps. The previous source `chartDisplacement_locally_constant_on_cover`, drawn from upstream covering-map local translation, proves the section displacement is locally constant in the cover coordinate. Since `s_c` is continuous on its open source, that eventual equality pulls back to neighbourhoods in `B`. Period embedding injectivity then makes `a_cd` **locally constant as an actual integer element**, not merely as a complex scalar or a mod-two residue.

The source undoubled Appell–Humbert factor is

`J(a,z)=alpha(a) exp(pi H(period(a),z)+(pi/2) H(period(a),period(a)))`,

where alpha is the previously constructed exact full-`O_E` semicharacter. Define transition `T_cd(q)w=J(a_cd(q),s_c(q))w`. The full factor cocycle implies on triple overlaps

`T_df(q)(T_cd(q)w)=T_cf(q)w`.

When c=d, the unique period is zero and `T_cc(w)=w`. On each neighbourhood where `a_cd` is constant, `T_cd` is multiplication by a holomorphic, nonvanishing function of `s_c(q)`. This proves the **joint continuity** in `(q,w)` required by Mathlib's `FiberBundleCore`; no independent continuity premise is introduced. Open chart domains cover the base because the atlas is selected at each q.

`CMActualPeriodTopologicalBundleCore.actualCMLineBundleCore` bundles precisely these six fields into a `FiberBundleCore` whose base is **the actual CM period torus** and fiber is `ℂ`. Mathlib constructs a standard locally trivial topological fiber bundle from such a core; this is a source-bound topological **complex-line structure by scalar transition functions**. It is not yet registered as an analytic/holomorphic vector-bundle typeclass in Lean.

## (2) Exact comparison with the original orbit quotient

The older source `CMActualUndoubledOrbitTotalSpace` constructs the set quotient of `V×ℂ` by `(z,w)~(z+period(a),J(a,z)w)`. It has a base projection, but did not attach a topology or local trivializations. `CMActualOrbitHermitianMetric` provided bijective algebraic fiber frames. The new `standardCoreToActualOrbit` uses the **same original** `chartFrame` at the index `q` selected by the upstream period chart to map a standard fiber-bundle-core point `(q,w)` to its orbit. Its inverse exists fibre-by-fibre, and the constructed source theorem asserts a global set equivalence.

This comparison is stronger than merely assigning a topology to a different abstract bundle: the original orbit quotient and Mathlib core have exactly the same individual fibers and source frame changes. But it is weaker than a theorem identifying the *quotient topology* induced on the original orbit set with the *transported core topology*. That equivalence and full holomorphic bundle structure are not claimed here.

## (3) Hostile controls and genuinely independent checks

The external finite reference `cm_period_bundle_core_reference.py` ran **71,844 exact-rational/high-precision assertions** for `E=Q(i)`, the true integer lattice `O_E=Z[i]`, `H(u,z)=conj(u)z`, integral area `B(a,b)=a₀b₁−a₁b₀`, and source semicharacter `alpha(a)=(-1)^(a₀a₁)`. It checks full integer coefficients, three-chart translated lifts, triple-overlap factors, metric covariance, holomorphic fixed-sheet derivatives, local sheet stability, and parity holonomy. It uses `mpmath` at 60-digit precision for exponential identities and exact `Fraction` arithmetic for integer and rational identities. This is **not** a Lean proof, and a fixed finite test cannot establish the continuity theorem for all covers.

The main hostile cases are:

1. A global nearest-lattice branch **jumps** at the Voronoi boundary; transition factors must be formulated on open covering chart overlaps, not treated as a single globally continuous scalar function.
2. Replacing the undoubled factor by the doubled one loses the mod-two odd sign: the latter has trivial parity commutator even if the original CM pairing is odd.
3. An algebraic orbit quotient and bijective fibers alone provide no natural topology. The source core constructs local topology from chart transition data; its equivalence with the pre-existing quotient topology is still a separate problem.
4. Finite algebraic fiber equivalences and topological `FiberBundleCore` do **not** prove a holomorphic vector-bundle atlas, an ample line bundle on a **specified original** CM variety, or an analytic descended Chern connection.
5. A genuine positive CM polarization may have even lattice periods; positivity alone cannot supply an odd triangle flux. A canonical arithmetic Möbius integer-label-to-geometric-site map remains unsupplied.

The finite test is independent of the Lean *proof terms*, but uses the same mathematical Appell–Humbert identities; it is a diagnostic/hostile check, not an independent research proof or novelty claim.

## (4) Verification, exact consumers and remaining work

New intended declarations (all **SOURCE_PROOF_CANDIDATE**, NOT_RUN typecheck):

- `GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTransitionContinuity.chartDifference_eventually_constant`
- `...chartTransitionPeriod_eventually_constant`
- `...extendedTransitionFactor_continuousAt`
- `...extendedTransitionFactor_continuousOn`
- `GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTopologicalBundleCore.localCoordinateChange_comp`
- `...localCoordinateChange_continuousOn`
- `...actualCMLineBundleCore`
- `...standardCoreToActualOrbitEquiv`

Current evidence: source assembled, 18 declarations, balanced delimiter scan and no explicitly inserted `sorry`, `axiom`, `admit` or `native_decide` declarations; 71,844 finite checks passed. **Lean parsing, elaboration, expected type replay, fresh kernel and transitive axiom audit all NOT_RUN.** No external CI or native Noe runner is authorized by source publication. Do not infer theorem correctness from a syntactically balanced candidate.

The immediate next consumers are a source-bound comparison of the constructed core topology with the algebraic orbit quotient's actual quotient topology, then complex-linear local trivializations with holomorphic transition maps in Lean, then the genuine Chern connection (derivatives/curvature and normalization), and only then the particular original CM abelian variety's integral homology/polarized bundle. CERN detector likelihood and unit conversion, the original signed Möbius all-rate energy, and periodic Schwartz-to-`L^p` smoothing remain independent, OPEN tasks.
