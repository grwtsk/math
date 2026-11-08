# CM period-torus chart frames, cocycle, and exact Chern-jet edge return

Date: 2026-11-02. Local attribution: **grwtsk contributors**. Formalization assistance: OpenAI. **SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. The published sources remain authoritative; no automatic formal verification job is requested.

## Source identities and exact objects

Inspected `grwtsk/math/main@e79c8ca76ee44b69987872c603d8ab6f61c5005d` immediately before this increment. Original local dependencies are `GRWTSK/Geometry/CMActualUndoubledOrbitTotalSpace.lean` blob `58d908cfbeceaf60b0839086b86cb941657d037f`, `CMActualOrbitHermitianMetric.lean` blob `1231b2b0e3f08983cd4c1075ffb406a52a89ba11`, `CMActualChernJetCompatibility.lean` blob `65174f92bcd414a7b267fc08a08408967ffd6503`, `CMActualUndoubledFactorCocycle.lean` blob `6fe83c1cc050b161d0437213111a3a92ec7ca05c`, and `CMActualIntegralPeriodResidueLinks.lean` blob `431417c587070fa7a1f2c1082d04dadd3008a056`. All have their own previous acceptance facets and remain unchanged here.

Actual upstream source is `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `lean/OAI/AlgebraicGeometry/ComplexMultiplication/CM/PeriodTorus.lean` (actual period covering map, complex manifold local charts, local section translation `periodSection_eventuallyEq`, blob `4846fdbc9c5ce1311a204220d03a4d4a4bc0b48e`); `CM/PeriodSpace.lean` (actual O_E image and compact full lattice, blob `e6f4424149cadd941963e9888cec770997ac2276`); `CM/PeriodHermitian.lean` (sourced positive Hermitian form, blob `a56e096f6ebcbd86b64929bf355e30ac89e3a89c`). Local pinned environment is Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; upstream API compatibility is not established by publication alone.

Primary classical background: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, 2nd edition, Springer 2004, Chapter 2, DOI `10.1007/978-3-662-06307-1`, Appell–Humbert descent and positive Hermitian curvature. The sources here do **not** reprove that entire theorem or assert an original geometric novelty of those classical facts.

The exact objects are the CM period vector space `V = PeriodSpace.CMPeriodSpace E`, full original ring-of-integers `O_E`, period embedding `p:O_E→V`, compact torus `V/p(O_E)`, undoubled holomorphic automorphy `J(a,z)=α(a)exp(π H(p(a),z)+(π/2)H(p(a),p(a)))`, algebraic quotient of `V×ℂ` by `(z,w)↦(z+p(a),J(a,z)w)`, and its source-descended squared fibre metric `h(z)|w|²`. The arithmetic Möbius function, original integer-labelled signed waveform, nonunit residue sectors and actual CERN event observables are **different sources and types**.

## I. Local frame theorem and exact overlap calculation

Let `e_c : U_c→V` be the upstream `periodChart c`, a local inverse of the actual quotient projection; for every `q∈U_c`, `p_T(e_c(q))=q`. Define the local frame of the *actual algebraic orbit fibre* over q by

`F_(c,q)(w)=[(e_c(q),w)]`.

**Injectivity:** If two such representatives agree in the orbit quotient, there is an original algebraic integer a such that `e_c(q)+p(a)=e_c(q)`; the CM period embedding is injective, so a=0 and their complex coordinates agree. **Surjectivity:** Any orbit class in the fibre has representative `(z,w)` with `p_T(z)=q=p_T(e_c(q))`. Thus the difference `z-e_c(q)` lies in the actual period lattice and equals `p(a)` for an original `a∈O_E`; the class is that of `(e_c(q), J(a,e_c(q))⁻¹w)`. The factor is nonzero from the published source. This yields a **fibrewise equivalence for every point of each covering chart**, not merely an equivalence based on one globally chosen period representative.

On `U_c ∩ U_d`, there is a unique integral period `a_cd(q)` with

`e_d(q)=e_c(q)+p(a_cd(q))`.

The fibre coordinate transition is the SOURCE undoubled factor `g_cd(q)=J(a_cd(q),e_c(q))`, and

`F_(c,q)(w)=F_(d,q)(g_cd(q)w)`.

On a triple overlap, injectivity of p gives `a_cf=a_cd+a_df`. The already established Appell–Humbert cocycle gives the exact transition law

`g_cf(q)=g_df(q)g_cd(q)`.

The upstream `periodSection_eventuallyEq` gives: around a selected lift `z=e_c(q)` there is a neighbourhood where `e_d(p_T(z'))−z'` is constant and equal to `e_d(q)−e_c(q)`. In that sheet the transition is the fixed-source function `J(a_cd(q),z')`, holomorphic from the published factor theorem. This is the analytic input for true local trivializations, **but the new source does not install a topology on the orbit quotient or prove continuity of its combined inverse charts**. It therefore does not claim `FiberBundle`, `VectorBundle`, or a holomorphic line-bundle instance.

## II. Exact straight-edge integration and original signed residue phase

The actual source positive CM Riemann form is `B=Im H`. The published corrected unitary-frame Chern **JET** candidate is `A_z(v)=−πi B(z,v)`. Its antisymmetrized coefficient is `F_JET(u,v)=−2πiB(u,v)`; this does not constitute a full analytic Chern connection on the quotient.

For a straight affine segment `γ(t)=z+t v`, `0≤t≤1`, bilinearity and alternation give

`A_(γ(t))(v)=−πi(B(z,v)+t B(v,v))=−πi B(z,v)`.

The actual interval integral therefore equals `−πi B(z,v)`. With the explicit covariant-derivative convention `∇=d+A`, the transport multiplier is `exp(−∫A)=exp(+πi B(z,v))`. In particular, at **original ring-of-integers period endpoints** `z=p(a)`, `v=p(b−a)` this is

`T(a,b)=exp(πi B(p(a),p(b)))=(-1)^{actualIntegerPeriodFlux(a,b)}`.

It coincides **edge by edge** with `CMActualIntegralPeriodResidueLinks.actualPeriodResidueLinks` on every explicitly assigned parity/residue site, including nonunits and both parities. The ordered product around i,j,k is the already published triangle holonomy, retaining all signs. This is stronger than merely matching half-curvature coefficients; it integrates the actual source jet along an actual path. It does **not** prove that this jet is a descended Chern connection or that real detector events traverse such CM lattice paths.

There is a real ambiguity: the prior `+πi B` cover potential is the negative of the compatible unitary-frame jet for the chosen fiber action. Their complex curvature coefficients are opposites on generic tangent directions. For integer B, `e^{+πiB}=e^{−πiB}=(-1)^B`; agreement of mod-2 links alone cannot settle the continuous sign. A noninteger area (e.g. 1/4 in the Gaussian model) separates the two orientations. The doubled factor has `2B` flux and its mod-2 commutator is trivial; it cannot replace this undoubled construction.

## Independent exact/hostile reference

The standalone reference `cm_actual_period_chart_straight_transport_reference.py` passed **85,023 exact integer and high-precision numerical checks** (80–85 digit arithmetic) for the actual `E=ℚ(i)`, `O_E=ℤ[i]`, `H(z,w)=conj(z)w` example. It covers integral basis alpha, cocycles, metric covariance, locally constant chart shifts, signed Chern-jet coefficient, straight-edge transport, parity/nonunit residue triangles, even-flux negative controls, and continuous curvature-orientation separation. This is neither a replacement for Lean elaboration nor a comprehensive topology proof; the finite checks represent one classical model, not all CM fields.

**No CERN rows were imported or fitted.** No quantitative original signed Möbius energy estimate, Hodge-conjecture proof, Schwartz-to-periodic L^p smoothing, RS/AdS identification or measured physical coupling is established.

## Verification, consumer, unresolved boundary

New source candidates:

- `GRWTSK/Geometry/CMActualPeriodChartLocalFrames.lean`, namespace `GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodChartLocalFrames`: chart fibre bijectivity, triple-overlap period addition and transition cocycle, local cover displacement and holomorphic fixed-sheet factors.
- `GRWTSK/Geometry/CMActualChernStraightEdgeReturn.lean`, namespace `GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernStraightEdgeReturn`: constant segment jet contraction, exact interval integral, matched straight-edge transport and original residue triangle return.

A static manifest records the exact blobs and expected types. **Lean parsing NOT_RUN, Lean compilation NOT_RUN, fresh-kernel verification NOT_RUN, transitive axiom audit NOT_RUN**: `lean`/`lake` are unavailable here; no native or external verifier was authorized or dispatched. An analytic proof may be correct without a Lean receipt, but source-candidate declarations must not be called kernel-certified until checked.

**Next consumer:** endow the orbit quotient with a topology compatible with the explicit chart atlas, prove the local charts are continuous and holomorphic with invertible transition functions, construct the bona fide holomorphic Hermitian line bundle and its Chern connection, then prove descent/curvature agreement. Identifying the resulting realized torus and bundle with the **particular original CM variety** needs an additional exact integral homology and polarization comparison. Residue-site assignment and physical detector calibration remain independent inputs.
