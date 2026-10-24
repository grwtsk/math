# Heat-flow lossless-compression cover: provenance and proof boundary

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.

This record accompanies
`GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean`,
introduced at math commit
`4c00de487fa04bceaf4ed2d3cf69fd44941be33a` from base
`8e8dcd858ca2c69feaa14e57a6070854d9eae7b0`.

## Source identities

### Rodgers--Tao heat-flow source

Brad Rodgers and Terence Tao, *The De Bruijn--Newman constant is
non-negative*, arXiv:1801.05914 (2018 preprint), published in *Forum of
Mathematics, Pi* 8 (2020), e6. Stable identifier:
<https://arxiv.org/abs/1801.05914>.

Exact external result used as context: for the de Bruijn--Newman heat-flow
family `H_t`, the de Bruijn--Newman constant satisfies `Lambda >= 0`; the
argument studies the dynamics of zeros under the flow and derives a
contradiction from the rigid local-equilibrium behavior forced by the contrary
assumption. No analytic theorem, ODE, zero statistic, convergence statement,
or de Bruijn--Newman result is imported into Lean here.

Relationship: **methodological-analogy** only. The local declaration
`LosslessProcessCover` abstracts a commuting coded evolution. It does not
identify the Rodgers--Tao flow with Huffman coding and does not claim that the
analytic flow is reversible, computable, or information preserving.

### Huffman coding source and local codec

David A. Huffman, *A Method for the Construction of Minimum-Redundancy
Codes*, *Proceedings of the IRE* 40(9) (1952), 1098--1101. DOI:
<https://doi.org/10.1109/JRPROC.1952.273898>.

Exact method used as context: construction of a finite-alphabet prefix code by
repeatedly combining the least-weight symbols. The external minimum-redundancy
theorem is not imported in this increment. The concrete formal fact consumed
is the repository's existing self-describing byte-packet round trip,
`GRWTSK.InformationTheory.Huffman.decode_encode`, through
`HeatFlowLosslessCompressionCover.huffmanByteCodec`.

Relationship: **methodological-analogy** for the paper; **source-proof-candidate**
for the local codec wrapper until a fresh build and kernel audit are recorded.

### 2026 quasi-Riemann source

OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
Re(s) > 7/8*, OpenAI Math Release preprint, 30 September 2026. Stable source:
<https://github.com/openai/math/blob/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/paper.pdf>.

Exact external conclusion used as context: the claimed zero-free half-plane
has numerical boundary `7/8`. This increment does not import or reprove the
analytic nonvanishing theorem. It defines only the real constants `3/4` and
`7/8`, proves their gap is `1/8`, and proves that an explicitly supplied
nonnegative refinement cost tending to zero eventually fits inside that gap.

Relationship: **methodological-analogy** plus **conditional-interface**. The
actual zero-free theorem, its L-function scope, normalizations, uniformity,
and analytic hypotheses remain outside this module.

### Tao's 2026 exposition

Terence Tao, *A sketch of the proof of non-existence of Siegel zeroes*, blog
post dated 19 October 2026:
<https://terrytao.wordpress.com/2026/10/19/a-sketch-of-the-proof-of-non-existence-of-siegel-zeroes/>.

Exact use: source context distinguishing the recently announced quasi-Riemann
results and the separate Siegel-zero argument. No theorem from the exposition
is imported. Historical influence is not inferred from similarity of ideas.

Relationship: **methodological-analogy** only.

## Formal declarations

All declarations are under
`GRWTSK.NumberTheory.Zeta.Riemann.HeatFlowLosslessCompressionCover` in
`GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean`.

- Codec layer: `LosslessCodec`, `LosslessCodec.encode_injective`,
  `LosslessCodec.hasTotalLosslessDecoder`, `huffmanByteCodec`.
- Process layer: `LosslessProcessCover`,
  `LosslessProcessCover.recover_after_codedStep`.
- Zero binding: `ZeroBoundProcessCover`, `ZeroBoundProcessCover.decodeZero`,
  `ZeroBoundProcessCover.recover_bound_zero`.
- Information-loss boundary:
  `bombieri_two_moment_profile_is_not_lossless`,
  `no_lossless_codec_with_bombieri_moment_encoding`.
- Refinement accounting: `threeQuarterBoundary`, `sevenEighthBoundary`,
  `boundary_gap`, `AsymptoticallyFreeRefinement`,
  `AsymptoticallyFreeRefinement.eventually_fits_boundary_gap`.
- Finite-state separation: `FiniteStateObserver`, `ConcededCoincidence`,
  `no_conceded_coincidence`, `PostflowConcededCoincidence`,
  `no_postflow_conceded_coincidence`.
- Arithmetic assumptions: `ZeroHeightArithmeticAssumptions`,
  `zero_height_irrational`, `zero_height_transcendental_of_grh`.
- Bundle: `QuasiRiemannAccountingSystem`,
  `QuasiRiemannAccountingSystem.recovers_zero`,
  `QuasiRiemannAccountingSystem.eventually_fits_gap`, and
  `QuasiRiemannAccountingSystem.breaks_observed_postflow_coincidence`.

## Classification and premise ledger

- **Imported mathematics:** the existing local Huffman packet round-trip and
  existing canonical two-Bombieri-moment noninjectivity obstruction.
- **Source proof candidates:** the new elementary codec, commutation,
  refinement-gap, and finite-observer declarations. They are not classified as
  local proved bridges until fresh Lean/kernel evidence exists.
- **Conditional interfaces:** an actual heat-flow step; an encoded step; their
  commutation; a state-to-zero binding; a vanishing refinement-cost supplier;
  an actual zero-height map; irrationality of every relevant height; and a
  separate implication from GRH to transcendence of every relevant height.
- **Finite evidence:** the equation `7/8 - 3/4 = 1/8` is source-level exact
  arithmetic, not a verification receipt.
- **Analogies:** heat flow versus coded evolution, Huffman versus a generic
  total lossless codec, and a finite observer versus a sofic presentation.
- **Unresolved premises:** all analytic and arithmetic suppliers listed below.

## Precise missing bridges

1. Instantiate `State`, `Time`, and `step` with the actual de Bruijn--Newman or
   other intended analytic heat-flow objects and prove the required existence,
   regularity, and zero-tracking hypotheses.
2. Construct a genuine encoder and decoder for those analytic states and prove
   `Function.LeftInverse`; then construct `codedStep` and prove `commutes`.
3. Supply `zeroOfState` and prove that it selects the intended zeta or
   L-function zero, including multiplicity, indexing, collision, and
   continuation conventions.
4. Import or independently prove the intended `Re(s) > 7/8` nonvanishing
   theorem with its exact L-function scope and hypotheses. The numeric constant
   alone is not that theorem.
5. Define the proposed `3/4` refinement cost from analytic data and prove its
   nonnegativity and epsilon--cutoff convergence to zero.
6. Build a genuine sofic shift/presentation and connect its state observation
   to `FiniteStateObserver`. The current theorem only says an injective code
   cannot identify states that an observer distinguishes.
7. Prove the zero-height irrationality supplier. No such theorem follows from
   losslessness, heat flow, QRH, or GRH in this increment.
8. Prove the separate GRH-to-transcendence supplier. GRH concerns zero
   location; this implication is deliberately an assumption, not a theorem of
   the module.
9. Resolve the imported Bombieri two-moment information loss by adding source
   information. Arbitrary postprocessing of those two moments cannot recover
   the erased coefficient.

## Verification evidence

No authorized local Lean installation or source checkout was available in the
session that introduced the source. The container could not resolve GitHub and
had neither `lean` nor `lake` installed. No remote workflow was dispatched.

Actual status:

- source inspection: performed against base
  `8e8dcd858ca2c69feaa14e57a6070854d9eae7b0`;
- `lake env lean`: **NOT_RUN**;
- module build: **NOT_RUN**;
- warning scan: **NOT_RUN**;
- fresh kernel replay: **NOT_RUN**;
- transitive axiom audit: **NOT_RUN / NOT_KERNEL_AUDITED**;
- external receipt: unavailable.

## Nonclaims

This increment does not prove that heat flow is Huffman coding, that the
canonical Bombieri moments are lossless, that a process state canonically
indexes a zero, the quasi-Riemann hypothesis, the Riemann hypothesis, any
irrationality or transcendence result for zero ordinates, or a theorem about a
sofic shift. It makes every one of those stronger bridges explicit rather than
hiding it in terminology.
