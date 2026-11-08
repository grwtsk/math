# Original signed Möbius source: finite labelled Hilbert cocycle and CM comparison

**Status:** `SOURCE_PROOF_CANDIDATE`; `COMPILATION_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Pure source-only continuation; mathematical attribution: **grwtsk contributors**; formalization assistance: OpenAI. The discussion below is a mathematical derivation and static source comparison, not evidence that the Lean files elaborate.

## Immutable incoming sources

- `grwtsk/math` research branch `research/residue-circle-wave-hilbert-20261101-350ff25d`, parent `73ea24039fffec300cc1ac2b9d374696b809441e`; existing source-specific CM/arithmetics: `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedResponseOperator.lean`, blob `e59682aba98aa1f8707bd523dba994e0f97cc4f9`.
- Original literal arithmetic `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: `moebiusReal`, `pickupResponse`, `wholePickup`, `pickupEnergy`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`, blob `07dfdae4a60b05f5da55cc20882411c85444fa82`: `originalFixedWave`, `completeWave_eq_originalFixedWave`, `wholePickup_eq_completeWave`, `completeResidueEnergy_eq_pickupEnergy`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicWeightedCorrelationInterface.lean`: `indices j = Finset.Icc 1 (2 ^ j)`. Existing imported Lean/Mathlib and root declarations are untouched.
- Locked Lean toolchain `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. `openai/math@4eaee87548250b2682affda7d05d947c05554bae` is the unchanged external CM/Hodge and Euclidean smoothing source, not a supplier of the new causal cocycle.

## Primary analytic construction, all signs retained

For each actual dyadic inventory `j`, set `N=2^j`, `V_j=ℂ^N` with its genuine ℓ² inner product, and retain **each** original label `n=i+1`, for `0≤i<N`. Define the real source amplitude `c_j(i)=μ(i+1)` and the original response

\[
R_n(t)=\begin{cases}2(n^{-1/2}-e^{-t/2}),&\log n\le t,\\0,&t<\log n.\end{cases}
\]

Let `D_j(t):V_j→V_j` be diagonal multiplication by `R_{i+1}(t)`, and let `L_j:V_j→ℂ` be the finite sum of the original labelled coordinates. Both are bounded complex-linear maps **for every finite j and t** because `V_j` is finite dimensional. No uniform-in-j norm or derivative bound is asserted in these Lean leaves. The exact source return is

\[
L_j(D_j(t)c_j)=\sum_{n=1}^{2^j}\mu(n)R_n(t)=\operatorname{originalFixedWave}_j(t).
\]

The existing `wholePickup_eq_completeWave` and `completeWave_eq_originalFixedWave` then identify this number with **the original** `wholePickup(t)` on the entire closed physical interval `0≤t≤j log 2`. Square only after the complete signed sum, so the full ordered Gram/00–01–10–11 and nonunit/mixed terms survive:

\[
\int_0^{j\log 2}|L_j(D_j(t)c_j)|^2\,dt=\operatorname{pickupEnergy}(j\log 2).
\]

No `|μ(n)|`, source sifting, positivity of signed cross terms, zero-width terminal deletion, or Mertens estimate enters this identity.

Now use the **actual Hilbert product**, not the sup-normed cartesian product, `𝒦_j=WithLp 2 (V_j×V_j)` and define for every two real times

\[
W_{s,t}(x,y)=(x,\;y+(D_j(t)-D_j(s))x).
\]

The source state is `z_j(t)=(c_j,D_j(t)c_j)`. By cancellation of the middle observation,

\[
W_{s,s}=I,\quad W_{t,u}W_{s,t}=W_{s,u},\quad W_{t,s}=W_{s,t}^{-1},\quad W_{s,t}z_j(s)=z_j(t).
\]

Every `W_{s,t}` is a *bounded everywhere-defined complex-linear operator* because it is a composition of bounded product projections, a difference of the actual finite-dimensional diagonal maps, and the bounded product equivalence. This is a genuine **nonautonomous augmented-state** two-time cocycle; it is not a homogeneous one-parameter semigroup, original unforced arithmetic PDE, physical Hamiltonian, or a proof of RH. Preserving the latent coordinate is essential: observed-only source zeros are not invertible.

### Unconditional observed-only obstruction, from the literal formula

For every `n≥1`, `R_n(0)=0`, including at the `n=1` closed birth. Hence the actual full labelled observed vector `D_j(0)c_j=0` for every `j`. At `t=2 log 2`, `R_1(t)=1` and `μ(1)=1`, so its `n=1` coordinate is nonzero. No linear operator on **observed-only** `V_j` can send `D_j(0)c_j` to `D_j(t)c_j`. This is unconditional at finite j and strengthens the earlier conditional zero-packet no-go.

The response is continuous across birth but has a nonzero right derivative and zero left derivative there, so the literal source is not generally C¹ across births. Earlier all-order weighted *regularizers* do not retroactively make this unchanged source smooth.

## Exact CM comparison and limits

The prior file `CMActualSignedResponseOperator.lean` supplies the genuine source-specific bounded rank-one observation `B_{j,t}(x)=L_j(x)S_{j,t}` on the **same selected `AllScaleHilbert`** as the actual CM cycle image. The generic shear is applied to that unchanged operator family, yielding `W^CM_{s,t}` on `WithLp 2 (H×H)`. It transports its graph exactly, without normalizing by a possibly zero original coherent value.

For the *actual geometric CM cycle-image* projections `P` and `Q`, the incremental off-diagonal channels remain, separately and exactly,

\[
Q(B_{j,t}-B_{j,s})Px=L_j(Px)\,Q(S_{j,t}-S_{j,s}),
\]
\[
P(B_{j,t}-B_{j,s})Qx=L_j(Qx)\,P(S_{j,t}-S_{j,s}).
\]

Neither is declared zero. The positive Hilbert norm decomposes between P and Q; **the signed scalar pickup energy still has its mixed readout term**. The finite integer-labelled state and the prior selected all-scale CM state are different realizations of the source; no unconstructed isometric intertwiner between their full spaces is asserted.

## Other route, hostile comparison and evidence

The alternative initial-state-only approach would require a linear map `T` taking zero to the nonzero newly-born response; the explicit `n=1` witness forbids this. The original unaugmented packet cannot support that global linear evolution, regardless of how its residue classes are indexed. The augmented construction avoids the obstruction by retaining the latent source and the response increment; it does not evade the obstruction by redefining the physical scalar waveform.

Independent reference computation (`finite_labelled_pickup_cocycle_reference.py`) performed **2,031 exact algebraic assertions** with SymPy rational data and exact radical pickup responses at times `t=2 log(m)`, for inventories `j=0,…,5`, including zeros, inverses, composition, original source graph return, and full signed ordered quadratic products. This establishes neither Lean elaboration nor general continuous-time analytic estimates. The algebraic derivation and computational check share the same cocycle identity; they are not independent solutions of a deeper arithmetic theorem.

## Additive files and replay profile

- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSourceCausalShear.lean` — generic complete-Hilbert shear, identity, inverse, composition, graph return, boundedness.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean` — exact source `moebiusReal`, `pickupResponse`, closed-inventory relabelling, original `wholePickup` and `pickupEnergy`, integer-by-integer diagonal time response, unconditional n=1 birth obstruction.
- `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedCausalEvolution.lean` — the actual source rank-one family on the common CM carrier, graph cocycle, both P–Q and Q–P incremental defects, old signed energy return.

No prior file, dependency lock, root import, branch protection or foreign source was changed. Compilation, native verifier, exact theorem-type elaboration, fresh kernel checking and transitive axiom audit were **NOT_RUN** and none was dispatched. The next authorized clean verifier would check pinned source blobs and run `lake env lean` on the three isolated leaves plus all transitive dependency `#print axioms` and expected theorem declarations. Record actual receipts separately under `grwtsk/noeaaeue`.

## True remaining research obligations

1. Prove an actual CM-to-labelled-wave Hilbert intertwiner and geometric metric compatibility, or explicitly price its full two-direction defect. The two exact realizations currently share a source but are not proven isometric.
2. Establish a time regularity and operator-norm estimate uniform over the desired dyadic windows and, if needed, unbounded inventories. Finite-dimensional continuity of each `D_j(t)` is not a uniform-in-j estimate.
3. Establish a true Schwartz-to-periodic `L^p` local-smoothing transference with winding, periodization, `2π` normalization and all residue aliases, rather than relying on multiplier equality alone.
4. Independently prove the all-positive-rate cancellation bound for the **original signed real Möbius causal energy** before inferring RH. The cocycle is algebraic bookkeeping and does not imply that arithmetic estimate.
