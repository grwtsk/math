# Dynamic sofic exact-language obstruction and the Bombieri process boundary

**Scope and trust:** repository-derived mathematical *source proof
candidates* and *conditional analytic/arithmetic interfaces*. New modules
are `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`; they are not imported by
`GRWTSK.lean`. Nothing here establishes RH, GRH, any new zero-free
half-plane, sofic non-presentation of a zeta-zero trace, irrationality or
transcendence of an actual ordinate.

## Why the finite-state distinction is mathematically decisive

A standard finite labeled graph may admit many distinct infinite paths.
The **one-vertex full shift**, with one labeled self-loop for every symbol,
admits the finite prefixes of *every* infinite string over a finite
alphabet. Therefore, for any chosen trace `s`,

    exists G finite labeled graph, forall n, G.accepts(prefix(s,n)).

This statement is mathematically trivial and **cannot be negated** by an
argument about entropy, aperiodicity or spectral complexity alone.
An arbitrary single trace in a sofic shift need not be ultimately
periodic. A separate conclusion about the entire **language/orbit
closure**, or about **exactly recognizing the singleton prefix
language**, is needed before the proposed sofic contradiction has
content.

The new source chooses a deliberately strong and testable condition:

    EventuallyExactPrefixPresented(s) :=
      exists N, exists G finite rooted labeled graph,
        forall word,
          G.accepts(word) iff
            exists n, word=prefix(k -> s(N+k), n).

It supplies a literal labeled-path predicate, not a generic
`Trace → Prop` named sofic. This is stronger than a trace merely
belonging to an ordinary sofic shift, and is **not claimed** to be
equivalent to standard two-sided soficity. The Boolean full-shift graph
admits the all-false trace but also accepts the word `[true]`,
so it fails **exact** prefix recognition of that trace. The source
formalizes both directions of this hostile test.

**The exact arithmetic supplier is not yet established:**

- Rational zero height `→` eventual **exact** finite labeled
  prefix-language presentation.
- Algebraic critical-line zero height `→` eventual **exact**
  finite labeled prefix-language presentation.
- Every selected actual zero trace `→` **not** eventually exactly
  prefix-presentable.

A finite-state collision refutes **one designated finite observer**,
not every finite graph. No proof that a given zeta-zero trace fails all
eventual exact presentations has been supplied.

## Dynamic refinement and differential information

The existing
`GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery` proves the
ordinary integer derivative `Δ f(n)=f(n+1)-f(n)` loses the constant
anchor: both zero and constant-one sequences have `Δ f=0`.
The pair `(f(0),Δ f)` instead has an exact infinite
left inverse by discrete telescoping. It is the **retained anchor**
that repairs the information loss, not an assertion that all
differential data are inherently irreversible.

The existing
`GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover`
adds finite static-type partition stages, a finite edge relation and
conditional generalized-to-base zero covers. The new
`GrowingRefinement` allows a genuinely **level-dependent finite
cell type** `Fin(size(n)+1)`, maps every finer class to its previous
coarse class, and supplies both stage evolution and the square

    coarsen_n(step_(n+1)(cell))
      = step_n(coarsen_n(cell)).

Thus an equality of finer labels implies equality of earlier labels;
a previously distinguished pair cannot merge in a valid refinement.
It is not merely an exponent `7/8` or `3/4`.

The Aristotle (change/potentiality), Leibniz (differential ratio),
Newton (fluxional time development), and Riemann
(global analytic/geometric compatibility) comparison is historical
*interpretation only*. The sources neither establish a single
mathematical lineage among these authors nor prove that a modern
discrete difference operator recovers the analytic continuum theory.
The mathematical content is the exact partition-equivalence and
commuting-diagram data just specified.

## What a spectral process cover really preserves

The new `CommutingLosslessGraphCover` has:

- `lift : X → Spectrum` and `recover : Spectrum → X`, with
  `recover(lift(x))=x` for **every** source point;
- a source evolution `T : X → X` and spectral evolution `U`,
  with `U(lift(x))=lift(T(x))`;
- a rooted finite graph, a projection of spectral states to graph
  vertices, and an emitted label whose projected step is a literal
  graph edge.

`lift` is therefore injective, all source readouts factor through
it, and each finite emitted word corresponds to a genuine graph path.
But graph **projection need not be injective**: it may identify two
source states even when the spectral lift retains both. A
`GrowingSoficSpectralDiagram` makes the source partition / finite
graph / spectral projection commute at the named observed level and
proves that a finite partition collision excludes any decoder using
only the projected **single graph state**.

This covers a process in the faithful mathematical sense. It is not
a claim that the analytic Rodgers--Tao heat deformation admits a
Huffman code. The existing
`GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge`
already shows that exact finite heat is mathematically invertible
but does not thereby endow an uncountable real signal space with a
finite binary prefix code.

## The new all-refinements Bombieri obstruction

Write `M : Combination 2 → ℂ × ℂ` for the **actual stage-2/3/4
ordinary and reciprocal Bombieri moment profile**, and `u` for
the *nonzero corrected cofactor vector* in its kernel:

    u != 0,
    M(u) = M(0) = (0,0).

Suppose a dynamic stage measurement `c_n`, irrespective of its
finite capacity or how many stages are taken, is always **only**
a postprocessing of these two moments:

    for every n, c_n = d_n ∘ M.

Then the entire infinite process history satisfies

    (c_n(u))_(n>=0) = (c_n(0))_(n>=0),

so there is **no source left inverse of the entire history**.
An infinite number of stages and asymptotically negligible
bookkeeping do not reverse information destroyed in every stage.
A graph/spectral lift that itself factors through this history
cannot be left invertible. These assertions are in the actual
source-bounded modules, not just in an informal entropy analogy.

The module also instantiates the obstruction with the repository's
concrete byte-level Huffman `encode`, after any map from
`ℂ×ℂ` to a byte string:

    M → List UInt8 → Huffman.Packet.

Huffman remains lossless for the **bytes supplied to it**. It
does not recover the missing coefficient vector when those bytes
came from a collapsed moment profile. This is not a comparison of
optimal coding rates and not a proof about Bombieri's full Weil form.

**Escape condition:** at least one genuinely new, source-faithful
measurement must distinguish `u` and `0`. A compensating
spectral cover must retain that distinction in its lift *before*
any finite-state projection. The existing correction is a
mathematical obstruction, not a specific new analytic measurement.

## Conditional zero/ordinate architecture

The typed arrows now have the precise meaning:

    analytic zero-state + supplied stagewise zero-freeness
        ↓
    growing dynamic partition with commuting refinement and time
        ↓
    actual finite rooted labeled graph (possibly information-losing)
        ↑ projection
    commuting, left-invertible spectral process
        ↓ full-precision readout
    zero/real-height readout only after a source-specific identification.

`AnalyticDynamicSoficPipeline.limit_zeroFree` inherits the
previously *supplied* valid `7/8 → 3/4` stages and
cofinality; its conclusion is the strict half-plane
`Re(s)>3/4`, **conditional** on EVERY stage estimate.
Neither asymptotically free overhead nor the labeled graph
constructs those estimates or excludes the boundary line itself.

`OrdinateExactLanguageSuppliers` separates two logical branches:

    rational height -> EventuallyExactPrefixPresented(trace)
      + not EventuallyExactPrefixPresented(trace)
        -> not rational (no GRH hypothesis).

    GRH -> critical-line placement only;
    algebraic critical-line height -> EventuallyExactPrefixPresented(trace)
      + not EventuallyExactPrefixPresented(trace)
        -> not algebraic (transcendental height).

These are implication schemas, not statements about actual zeta zeros.
The abstract `HeightArithmetic` predicates are not secretly
identified with rationality/algebraicity of concrete real ordinates.
The existing `SpectralZeroCover` only transports
zero/criticality when actual cover and specialization fields are
supplied; no proof of these fields for generalized L-functions is
created by the new graph construction.

## Exact source identities and status

- `GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean`:
  introduction
  [`fa9a047832ea4ae811323b468b3c53958e784e12`](https://github.com/grwtsk/math/commit/fa9a047832ea4ae811323b468b3c53958e784e12),
  Git blob `79d749e6d8ca99825df9e98305532454e0c446f1`.
- `GRWTSK/NumberTheory/Zeta/Riemann/BombieriDynamicSoficCoverBoundary.lean`:
  introduction
  [`f861e545096408ab1768f0c1ff438645efbfafbb`](https://github.com/grwtsk/math/commit/f861e545096408ab1768f0c1ff438645efbfafbb),
  Git blob `5e52e67b72a1f4d1ee214442114d7f452e2395e6`.
- Direct dependencies include
  `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover`,
  blob `8210e2055447ebbe482a7122d21ee09177c3b1c0`,
  `HeatFlowCompressionSofic`, blob
  `71277213e4c6da281d53c56ef57b84eb68ac7730`,
  and `BombieriHuffmanLosslessBoundary`, blob
  `901939ee5cce378631d0aad819fdf6fdb4a4775c`.
  The exact moment kernel source is
  `CanonicalSquareTentBombieriMomentInformationLoss`,
  blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`.

**Verification:** source readback and hole scans only. The local
execution environment does not have `lean`, `lake` or
`leanchecker`; compilation, fresh kernel checking and transitive
axiom audit of THESE TWO NEW LEAVES are `NOT_RUN`.
A finite independent Python check enumerated 8191 Boolean words
(lengths 0 to 12) admitted by the one-vertex graph and exhibited
`[true]` outside the all-false singleton prefix language. This is
finite evidence, not proof-assistant acceptance. Older verified
dependencies and their receipts, if any, must be cited at their own
exact commits and import closures, never transferred to the leaves.

The exact commands and transitive declaration audit are pinned in a
separate GitHub verification request; no Railway, force push, merge,
remote workflow or external execution has been authorized here.

## Source literature and epistemic roles

- Benjamin Weiss, *Subshifts of finite type and sofic systems*,
  `Monatshefte für Mathematik` **77** (1973), 462–474,
  DOI [10.1007/BF01295322](https://doi.org/10.1007/BF01295322):
  **imported methodology** for sofic finite-graph/language concepts,
  not a verbatim formalization of Weiss's classification results.
- David A. Huffman, *A Method for the Construction of
  Minimum-Redundancy Codes* (1952),
  DOI [10.1109/JRPROC.1952.273898](https://doi.org/10.1109/JRPROC.1952.273898):
  concrete source `RoundTrip.decode_encode`, not the
  probability-optimality theorem.
- Enrico Bombieri, *Problems of the Millennium: the Riemann
  Hypothesis* (2000, §V), [Clay account](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf),
  and *Remarks on Weil's quadratic functional in the theory of prime
  numbers, I* (2000), [archival record](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0):
  exact TWO finite moment analogues and their kernel, not the
  complete analytic criterion.
- Brad Rodgers and Terence Tao, *The De Bruijn–Newman constant
  is non-negative* (2018 preprint; published 2020),
  [arXiv:1801.05914](https://arxiv.org/abs/1801.05914):
  **zero-dynamics methodological analogy**; no analytic PDE or
  heat-flow trace is imported into these new declarations.
- OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
  Re(s)>7/8* (2026),
  [source snapshot](https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026):
  upstream analytic supplied seed, NOT an unconditional 3/4 result.
- Aristotle, *Physics* III.1; Leibniz, *Nova methodus
  pro maximis et minimis* (1684); Newton, *The Method
  of Fluxions* (1736 edition); Riemann, nineteenth-century
  global analytic/geometric viewpoint: **historical analogies only**.
  No influence or transfer theorem is inferred from a similarity.

## Next missing mathematical suppliers

1. Construct the actual zero-indexed analytic heat/Dirichlet trace and
   prove the spectral-state zero/ordinate readout factors through it,
   respecting multiplicities and source identities.
2. Construct source-faithful evolving partitions with genuine
   new measurements not all factoring through Bombieri's two moments.
3. Prove the rational-to-eventual-exact and algebraic-on-critical-line-
   to-eventual-exact prefix-language implications for the actual trace.
4. Prove **non**-eventual-exact-prefix presentation of the actual trace
   against **every** finite rooted labeled graph, not just a selected
   observer, OR choose a different precise sofic invariant of an
   actual shift language and rebuild the arithmetic bridges.
5. Provide every analytic stage estimate cofinal above 3/4, full
   residual/tail control and canonical comparison to the Weil
   positivity criterion if that is the intended consumer.
