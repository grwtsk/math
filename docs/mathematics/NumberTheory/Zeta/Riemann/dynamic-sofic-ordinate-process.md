# Dynamic partitions, exact sofic languages and the zero-ordinate contradiction

**Research status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**
This entry records an auditable mathematical reduction, **not** an
unconditional result about zeta zeros, irrationality, transcendence, the
de Bruijn--Newman constant, GRH, RH, or the 3/4 critical strip.

## Exact source identity and predecessor

Predecessor sharpened compression/sofic source:
[grwtsk/math@9db6cf032653fafc7c7c26eb22f7480bafa2d28b](https://github.com/grwtsk/math/commit/9db6cf032653fafc7c7c26eb22f7480bafa2d28b),
GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean,
blob **71277213e4c6da281d53c56ef57b84eb68ac7730**.
Its exact predecessor provenance was updated at
**76bb36e6c4a959a9e78ce007eb19349d0dea4098** and
**aca91a1405aad549f70d1395897d42be6b9d6698**.
The predecessor defined a Huffman-like cover as a separately supplied
lossless binary prefix-code factorization, plus a generic finite-state
\`SoficThrough\` interface. Its relative height implications took
rational-to-sofic, algebraic-to-sofic and non-soficity as **explicit
unproved premises**. The new work below does not erase those conditions.

Other exact local supplier:
GRWTSK/NumberTheory/Zeta/Riemann/
CanonicalSquareTentBombieriMomentInformationLoss.lean,
blob **9a2435d9c74b89ce1434c45bade1aa9beaa6cead**.
Its nonzero \`correctedCoordinates\` and the zero vector share the
**same complete pair** of ordinary and reciprocal Bombieri moments.
That 3-coordinate witness is the actual noninjective source, not a
hypothetical two-dimensional rank example.

## Newly integrated mathematical sources

| Module | Source integration commit | Exact Git blob at source readback |
|---|---|---|
| GRWTSK/Logic/InformationLoss/DynamicPartitionRecovery.lean | [f1e8f255c30c4d3568e0d888e6328e8344dd56f2](https://github.com/grwtsk/math/commit/f1e8f255c30c4d3568e0d888e6328e8344dd56f2) | e2f6170aabf05e3a6df8f6a67009d4a8ba913379 |
| GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean | [1aa30b23564d52365ea93ce4baad9648504aee14](https://github.com/grwtsk/math/commit/1aa30b23564d52365ea93ce4baad9648504aee14) (revised source; predecessor 829954a and 1bb12fe) | f0ffceafe53bcd88d6e4ae0332199335d3bafb6b |
| GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean | [82aa2a2b610d76ad4e67e0dfdc3f353810dd60a4](https://github.com/grwtsk/math/commit/82aa2a2b610d76ad4e67e0dfdc3f353810dd60a4) (revised; predecessor aeb96fe) | 14f7e12bb6cc253a43491a96bd53182f86dafd84 |
| GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean | [8fda00ef937f8c43316d126997a686e0a6fdbffd](https://github.com/grwtsk/math/commit/8fda00ef937f8c43316d126997a686e0a6fdbffd) | a553edc13c8b85caf4db193fbca63779e286b468 |
| GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean | [1880c8f80a61f03100f9506301bebfd161e03b9d](https://github.com/grwtsk/math/commit/1880c8f80a61f03100f9506301bebfd161e03b9d) (revised; predecessors b31d429 and c4b0566) | ef37ba716cdc5bc514ce17991be957f7a574b81a |

Readbacks of the exact blobs are static source evidence. Lean 4 is
pinned to **leanprover/lean4:v4.33.0**, Mathlib to
**db584cd6d46c92f209a44c0f1c829460d327499d**.

## The dynamic refinement, not an exponent masquerading as a process

\`GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.DynamicRefinement\`
consists of an observation \`observe n : X -> Observation\`, a chosen
\`coarsen n : Observation -> Observation\`, and the exact commuting law

    coarsen n (observe (n+1) x) = observe n x.

Its \`SameAt n x y\` is the equivalence relation induced by that stage.
\`sameAt_of_next\` proves equal fine-stage observations entail equal
coarse-stage observations; \`history\` retains the **whole sequence**.
\`history_injective_of_separating\` requires actual separation of every
pair by *some stage* and makes no finite-time decoder or stability claim.

The concrete discrete-difference fixture proves
\`discreteDifference_constants_collide\`: all-zero and all-one integer
sequences have the same first differences. Thus
\`initialValue_not_factorsThrough_difference\`.
\`anchoredDifference\` retains both the initial integer and all
differences; \`difference_telescoping\`,
\`integrate_anchoredDifference\` and
\`anchoredDifference_injective\` express **exact** global
reconstruction. This is a local mathematical model of the way
differentiation imposes an equivalence under additive constants;
it is not a direct formalization of a historical calculus manuscript.

### Historical comparison only

Aristotle's analysis of magnitude, proportion and change, Leibniz's
differential ratios, Newton's evolving fluents and fluxions, and
Riemann's later global analytic continuation and complex-function
viewpoint are useful distinct conceptual motivations.
The relevant modern mathematical choice is whether a process
observation retains an anchor, its increments, compatibility maps,
and a global inverse. **No historical dependence or theorem
identification is inferred from terminology**.
Context references include Newton's *History of the Method of
Fluxions* (Newton Project,
https://www.newtonproject.ox.ac.uk/view/texts/diplomatic/NATP00356),
the Stanford Encyclopedia of Philosophy *Continuity and Infinitesimals*
(https://plato.stanford.edu/entries/continuity/), and Bernhard Riemann's
1851 dissertation manuscript (Göttingen,
https://resolver.sub.uni-goettingen.de/purl?DE-611-HS-3205002).
These are historical ANALOGY sources, not imported Lean methods.

## A genuine labeled finite graph, and the key false positive

In
\`GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover\`
the mathematical objects are:
\`LabeledGraph\`, inductive \`WordPath\`, \`GraphLanguage\`,
\`RunsOnGraph\`, \`HasFiniteBlock\`,
\`ExactLanguagePresentation\`, \`IsSoficFactorLanguage\`,
\`IsSoficTrace\`, \`tailTrace\` and \`EventuallySoficTrace\`.

A \`GraphLanguage\` word has a **real path** in an actual
edge-labeled graph. A trace factor word must occur at an explicit
integer offset in the trace. \`ExactLanguagePresentation\` requires
a **finite state type** and equivalence between those *entire two
finite-word languages*. \`IsSoficTrace\` expresses existence of this
full finite factor-language presentation; \`EventuallySoficTrace\`
requires such a presentation **after some explicitly selected finite
burn-in offset**.

The hostile control \`every_trace_runs_on_full_shift\` is crucial:
the one-state graph with all letters as self-loops reads **every**
individual sequence. Therefore "trace follows a finite graph path"
cannot establish its orbit closure/language is sofic.
\`fullShiftGraph_not_exact_for_constant_false\` shows the
full-shift graph even accepts a word forbidden by the constant-false
trace. The factor language, not one graph path, is the correct
comparison target.

This is an explicit *one-sided finite-factor-language* interface.
An exact correspondence with a bi-infinite sofic shift needs the
proper essential/bi-extendible graph and two-sided source convention;
that stronger equivalence is NOT claimed here. The literature
identifies sofic shifts through finite labeled graph presentations
and regular languages, but that external theorem is NOT imported.
Comparison sources: Nataša Jonoska, *Sofic shifts with synchronizing
presentations*, Theoretical Computer Science 158 (1996), 81–115,
DOI https://doi.org/10.1016/0304-3975(96)00058-8;
and *Computational complexity of problems for deterministic
presentations of sofic shifts* (2022 source version,
https://www.sciencedirect.com/science/article/pii/S0304397522005515).
Both are mathematical **METHOD_COMPARISON**; precise external
section-to-Lean equivalence remains unverified.

## Dynamic spectral cover: five real commuting stages

\`GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover.DynamicSpectralCover\`
has a genuine \`DynamicRefinement\`, a finite labeled graph,
source-indexed graph paths, a chosen **complex-linear operator** on
a supplied spectral module, and a symbol readout of every operator
iterate. The fields \`pathSound\`, \`spectralCommute\`,
\`stageCommute\` and \`leftInverse\` explicitly form

    source x
      -> observe n x (refining partitions)
      -> actual finite graph label path
      <- symbol(operator^n(sourceSpectral x))
      -> complete label trace
      -> decode(trace x) = x.

The \`spectral\` carrier is a complex module with an actual linear
operator, **not** a proof of self-adjointness, spectral positivity,
unbounded operator convergence, Hodge correspondence, or Weil form.
Every identification with the actual zeta spectral source remains
unconstructed.

Theorems:
\`runs_on_graph\`,
\`refinement_commutes_on_trace\`,
\`trace_injective\`,
\`readout_factors_through_trace\`,
\`stage_factors_through_trace\`, and
\`spectral_orbit_readout\`.
Even a left-invertible dynamic spectral cover does NOT imply that
the factor language of one trace is sofic.
\`ExactLanguageAt\` is additional data, and
\`no_exact_language_at_of_nonsofic\` /
\`no_exact_language_at_of_non_eventual_sofic\`
place the actual contradiction at this **language equality**, not
at finite graph path existence.

## The source-specific Bombieri no-go survives every moment-only refinement

\`GRWTSK.NumberTheory.Zeta.Riemann.DynamicBombieriSoficObstruction\`
defines \`MomentOnlyStages R\` by

    forall n, FactorsThrough bombieriMomentProfile (R.observe n).

This is an explicit assumption that ALL stage observables are
postprocessings of the exact same noninjective two-moment source.
\`momentOnly_stage_collision\` and
\`momentOnly_history_collision\` prove

    observe n correctedCoordinates = observe n 0  (every n),
    history correctedCoordinates = history 0.

Hence
\`no_exact_reconstruction_from_momentOnly_history\` rules out
**every** decoder of the complete infinite history.
\`trace_collision_of_momentOnly_history\` propagates the collision
through further readout factorization.
\`no_lossless_spectral_cover_after_moment_collapse\` shows that
a fully commuting left-invertible dynamic spectral cover is
**inconsistent** when its retained trace factors only through that
collapsed history. This identifies the precise invariant that the
refinement must enrich; scheduling more steps or lowering an error
exponent cannot repair information that is absent from *every*
stage.

This does not prove that an actual classical Weil/Guinand source
diagonal separates the witness; the existing arithmetic-to-classical
transport and strict positivity bridges remain explicit in the
original Bombieri module. It does not rule out genuine
moment-corrected refinements that add independent features.

## Actual zero predicates and the two arithmetic obligations

The source
\`GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion\`
uses \`ActualZetaZero z = NontrivialZetaZero z\`,
\`zetaHeight z=z.im\` and the true critical line
\`z.re=1/2\`. The integer/rational height predicate is

    RationalReal gamma := exists q : Q, (q : R) = gamma

and the full algebraic predicate is a nonzero polynomial over Q
mapped to R whose evaluation at gamma vanishes.
\`CorrectRealArithmetic\` is a separately *uninstantiated*
bridge to the earlier abstract height predicates; no invented
arithmetic class is substituted for algebraicity.

\`ZetaSoficSuppliers\` requires:
  - each rational zero ordinate produces an **exact** finite
    graph factor-language presentation;
  - each algebraic critical-line ordinate likewise produces one;
  - every selected actual zeta-zero trace has a non-sofic factor language.

The stronger \`ZetaEventualSoficSuppliers\` requires eventual
factor-language presentations **and independent non-soficity of
every eventual tail**. This stronger negative premise must NOT be
replaced silently by non-soficity only at stage zero.
\`irrational_of_eventual_language_obstruction\` proves
the rational contradiction **without GRH** from exactly the
first and third supplier fields. Under
\`ZetaCriticalPlacement\` (the zeta-specialized
critical-line consequence of any properly supplied GRH),
\`eventual_sofic_irrational_and_conditional_transcendental\`
and \`eventual_ordinate_split_for_dynamic_spectral_cover\`
also give no algebraic ordinate. **GRH itself does not prove
transcendence**, and the source does NOT construct either
arithmetic-to-sofic bridge, a concrete faithful zeta spectral
cover, or actual trace non-soficity.

The earlier \`HeatFlowCompressionSofic.ThreeQuarterRefinement\`
requires \`stageZeroFree\` for **every** analytic stage, a 7/8
seed, cofinal boundaries above 3/4, and independently
\`AsymptoticallyFree\` overhead data.
\`DynamicThreeQuarterSoficProgram\` now packages that
analytic scheme separately from the dynamic spectral cover;
its \`zeroFree_strict_threeQuarters\` is conditional on those
actual stage premises. Overhead alone supplies **no**
3/4 zero-free theorem, and the argument says nothing
about zeros exactly on Re(s)=3/4.

## Missing suppliers and safe decision point

**Unresolved mathematics:**
(1) a source-faithful dynamic partition of actual L-function/zero
data with explicit coarsening maps; (2) a specified spectral
operator, intertwiner and exact label readout of actual zeros;
(3) an arithmetic proof that rational, and separately algebraic
critical-line, ordinates force eventual **exact-language**
soficity; (4) a proof that the same genuine source traces are
not eventually sofic; (5) a source-preserving, stage-uniform
analytic supplier for the 7/8 -> 3/4 zero-free refinement;
(6) sufficient enriched invariants beyond Bombieri's two moments.
No sofic limit, zero-height irrationality, or transcendence is
established in the absence of these suppliers.

**Source classification:** new local definitions/identities are
LOCAL_IDENTITY_SOURCE_CANDIDATE until kernel replay; the
Bombieri refutation is a source-specific OBSTRUCTION_AT_SCOPE;
zeta arithmetic and 3/4 limit are CONDITIONAL_REDUCTION;
historical calculus and Huffman coding comparisons are
ANALOGY_ONLY; full arithmetic/spectral suppliers are
UNRESOLVED_PREMISE; new source checks are NOT_RUN.
No new axiom was intentionally introduced. Formal declarations
are not automatically kernel accepted.

## Validation acceptance

For each exact source blob above, the authorized non-Railway
executor must run:
  - \`lake build --wfail\` for every affected module and transitive
    dependencies under pinned Lean/Mathlib;
  - \`lake env lean\` and trust-zero direct elaboration for each file;
  - a fresh, independent kernel replay of every changed declaration
    and transitive import object;
  - declaration-level \`#check\` and full transitive
    \`#print axioms\`, \`sorryAx\`, unsafe/opaque/native audit;
  - preserve literal stdout/stderr, exit status, checked commit SHA,
    dependency source blob hashes and external receipt references.

Local \`lean\`, \`lake\`, \`elan\` were absent at this authoring
session, so **no compiler/kernel/axiom audit was performed**.
GitHub file reads and issue queuing are not receipts. Do not
promote these modules into the public GRWTSK root until
the above verification has actually succeeded.
