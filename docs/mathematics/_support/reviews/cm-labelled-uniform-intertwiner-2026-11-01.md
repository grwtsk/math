# CM-selected and integer-labelled causal Hilbert comparison — uniform operator increment

**Mathematical direction and local attribution:** grwtsk contributors. Formalization assistance: OpenAI. **Disposition:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Source publication and kernel acceptance are separate.

## Exact inherited objects and source pins

- Maintained repository: `grwtsk/math`; continuation of existing unmerged research branch `research/residue-circle-wave-hilbert-20261101-350ff25d` at predecessor commit `56b9ee95074e341390831b3e818c70d36f44ab06`. The observed unrelated `main` head during source inspection was `48ed51dd02672288854de756f925d452d6f94c1d`; no user-authorized root promotion or dependency change is inferred.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, actual source blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: `moebiusReal`, `wholePickup`, and the **literal** `pickupResponse n u = if log n <= u then 2*((sqrt n)⁻¹-exp(-u/2)) else 0`.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean`, blob `1f0301e696086d8a4894cf1d6a573ccfb917e832`: `SourceHilbert j = EuclideanSpace ℂ (Fin (2^j))`, `actualPickupDiagonal`, `actualMoebiusLabels`, `actualLabelResponse`, `actualLabelTwoTime`, `originalLabelledState`, and exact original signed coherent readout.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSourceCausalShear.lean`, blob `d6748188785ee8a7ffa74bf593c27b2b10718b45`: `SourceState`, `causalStep`, `causalStep_comp`, `causalStep_graph`.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledJointIsometry.lean`, blob `2b58e6108c854c8dd4ef882593281a48fbc9173b`: two actual isometric source inclusions in the L² direct sum, and the selected CM algebraic/residual projector.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledAddressIsometry.lean`, blob `63b6a959b62ac5fa5e958af99f7ef0db6f12e8ed`: actual finite integer-labelled state placed at collision-free addresses beyond the selected Betti basis, preserving the source-state norm.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledCausalDefectComparison.lean`, blob `107146618f0eff5454f0527dc0855c6fcaf3078f`: exact signed readout agreement on source pair; source-specific CM diagnostic `T` and its separately measured `QTP`, `PTQ` defects.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedResponseOperator.lean`, blob `e59682aba98aa1f8707bd523dba994e0f97cc4f9`: original signed rank-one diagnostic `T_u x = L_j(x) S_{j,u}`.
- CM supplier: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, actual rational cycle classes and original Betti comparison, **not** a canonical positive CM polarization. Lean toolchain `leanprover/lean4:v4.34.1`; pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## New exact mathematical statements (candidate Lean proof scripts)

### 1. Uniform operator bound on the actual finite-inventory cocycle

For each original integer label `n >= 1` and nonnegative physical time `t`, the elementary source inequalities `0 <= (sqrt n)⁻¹ <= 1` and `0 < exp(-t/2) <= 1` imply `|pickupResponse n t| <= 2`; the false-birth branch is exactly zero. This bounds the diagonal operator `D_j(t)` on the genuine finite source Hilbert space:

`||D_j(t) x|| <= 2 ||x||` and `||D_j(t)|| <= 2` (all `j`, `t>=0`).

For `s,t >= 0`, `||D_j(t)-D_j(s)|| <= 4`. The original source-state shear

`W_j(s,t)(c,y) = (c, y + (D_j(t)-D_j(s)) c)`

satisfies `||(W_j(s,t)-I)z|| <= ||D_j(t)-D_j(s)|| ||z||` and hence `||W_j(s,t)|| <= 5` uniformly over **finite inventory j and nonnegative endpoint times**. This is an all-inventory *linear-operator* bound only. It neither estimates the source-coherent scalar readout as `j -> infinity` nor supplies an RH/GRH all-rate energy cancellation theorem.

### 2. Exact isometry obstruction from original source birth

At `t=0`, every original observed labelled response vanishes, whereas at `t*=2 log 2` the actual label `n=1` has `mu(1)=1` and response `1`. The entire source-state square norm therefore gains at least one:

`||originalLabelledState j 0||² + 1 <= ||originalLabelledState j t*||²` for every `j`, including `j=0`. A linear isometry (and in particular a unitary operator in this fixed Hilbert metric) cannot map those exact two states. The same contradiction applies after the explicit isometric placement into the selected CM all-scale carrier.

The late physical time `t*` is outside the *closed dyadic observation window* for `j<2`; those cases concern the fixed-inventory source response as explicitly defined at arbitrary time, **not** the global wholePickup identity beyond the original dyadic window. The obstruction also holds for all `j>=2`, where `t*` is within that window. It does not forbid a nonisometric bounded cocycle, a time-varying metric, or a unitary dilation with additional environment energy.

### 3. A genuine labelled intertwiner, while CM diagnostics remain distinct

On `ActualJoint(d,j) = WithLp 2 (CommonHilbert d × LabelledState j)` define the source-identified bounded operator

`E_j(s,t)(h,z) = (h, W_j(s,t) z)`.

It preserves the actual labelled source isometric inclusion *exactly* (`E_j(s,t) i_label = i_label W_j(s,t)`), fixes the selected CM factor, obeys identity, composition, and inverse on the full joint Hilbert space, and commutes with the **chosen actual CM cycle projector** because that projector touches only the first factor. This is an explicitly **decoupled extension**, not a theorem that the physical CM Hodge wave preserves the arithmetic carrier. It does not override the nonzero source-diagnostic `QTP` and `PTQ` defects recorded in the previously published module.

For the original paired signed inputs with CM-side packet frozen at `s` and the labelled input evolved to `t`, the coherent readout difference is exactly

`completeWave(j,d,s) - completeWave(j,d,t)`.

Its norm is bounded by `||L_j|| ||S_(j,s) - S_(j,t)||`. The previous CM diagnostic and this genuine labelled evolution differ on an arbitrary joint input **only in the CM coordinate**:

`sourceDiagnosticJoint(s,t,u)(h,z) - E_j(s,t)(h,z) = i_CM(T_u(h) - h)`.

Consequently the norm of this **entire** mismatch is exactly `||T_u(h)-h||`; no `QTP`, `PTQ`, signed scalar interference, or source birth is silently discarded. The independently constructed geometric CM Betti image retains its chosen-basis metric and its original finite-dimensionality assumption.

## Proof comparison and hostile checks

- **Primary mechanism:** direct response-envelope inequality from the literal piecewise source, Euclidean coordinatewise norm-squared domination, triangle inequality for the increment of continuous linear maps, the existing two-time shear cocycle, and the n=1 source birth. No large arithmetic theorem is needed.
- **Comparison with previous formulation:** prior leaves established boundedness *pointwise in j,s,t*, with no constant. The new bound supplies explicit constant 5 uniform in the finite dimension 2^j and nonnegative endpoints. Previous source-matched readouts were exact, but prior CM joint transport used a rank-one diagnostic on the first factor; the new operator instead transports the genuine labelled state and pays its CM-side mismatch explicitly.
- **Hostile controls:** (i) a source response is exactly zero before birth, so no observed-only linear evolution maps zero to its later nonzero value; (ii) fixed-metric unitarity is excluded even after isometric embedding because source-state norm changes; (iii) a coherent signed scalar sum may cancel although its positive coordinate norm is nonzero; (iv) making the CM and causal sectors orthogonal by direct-sum construction does not prove a geometric/arithmetic PDE intertwiner; (v) the constant five is a Hilbert-operator estimate and does not imply a uniform bound on the sum of 2^j signed coordinates; (vi) the two independently sourced CM diagnostic cross blocks must not be set to zero because the decoupled comparison happens to commute with CM projection.
- **Alternative route:** the finite diagonal estimate could also be derived from a finite spectral theorem/operator-norm maximum. The present source proof instead bounds each real source multiplier directly and sums its squared coordinate norms; no independent Lean check of the alternative is claimed.

## Evidence and acceptance status

The numerical/reference fixture `finite_labelled_uniform_reference.py` passed **267,040** source-response and exact-rational assertions, including finite-inventory bounds, two-time composition, source graph transport, original signed products, and the birth obstruction. These are mathematical diagnostics, **not** Lean compilation or kernel proof. No `lean` or `lake` executable is available in the response runtime. The new Lean files have no explicit `sorry`, `admit`, or `axiom` statements, but that fact is not proof of elaboration, expected types, the complete import-closure trust audit, or kernel acceptance. Status of all four verification facets remains `NOT_RUN`.

## Necessary subsequent supplier work

1. Typecheck both additive Lean files against the exact pinned full import closure, then compare expected declarations and perform a fresh kernel and transitive axiom audit; repair proof-term/API mismatches before admission.
2. Identify and bound a **nontrivial geometric CM-to-arithmetic coupling** rather than the decoupled joint extension. The physical Hodge metric/polarization and finite-dimensional Betti proof must be source-realized rather than merely assumed or chosen.
3. Improve constants or obtain time continuity/propagator generator properties if needed, with original response birth regularity and discontinuity of derivative handled explicitly.
4. For infinite scale and RH consumers, independently pay the growth of coherent readout and the all-positive-rate signed Möbius energy cancellation premise. Separately establish a Schwartz-to-periodic Lp local-smoothing transference theorem with lattice, winding, and q-dependent constants. No conclusion RH/GRH or arbitrary Sobolev gain is asserted.
