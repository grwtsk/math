# Search-led Graph Sandwich and spectral diffusion: paper-to-formalization record

Status: `SOURCE_INSPECTED / LEAN_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN / ANALYTIC_SUPPLIERS_OPEN`.

This companion record is source-bound to `grwtsk/math` commit
`bffe3410d8652c736943a6385496169ef4ecd051`. It documents the four supplied
papers, the existing search/graph/sofic/diffusion declarations, and the bounded
arithmetic-compression increment. It does not claim exhaustive repository
coverage, a probabilistic Kim--Vu coupling in Lean, integer Chowla cancellation,
a Hilbert--Pólya operator, the Riemann Hypothesis, or the proposed stronger
compression estimate.

## Source inventory and classification

### Nechaev--Polovnikov

- **Reference:** S. Nechaev and K. Polovnikov, *Number-theoretic aspects of 1D
  localization: “popcorn function” with Lifshitz tails and its continuous
  approximation by the Dedekind eta*, arXiv:1702.06757v2, 26 February 2017.
  Stable identifier: <https://arxiv.org/abs/1702.06757>.
- **Imported mathematical content:** exponentially weighted finite linear
  chains; the finite-chain spectrum
  `lambda_(k,n) = 2 cos(pi k/(n+1))`; the sparse-limit correspondence between
  peak multiplicity and the Thomae function; Farey mediants organizing peak
  locations; Dedekind-eta asymptotics near the real axis; Lifshitz-tail
  asymptotics at spectral edges.
- **Exact hypotheses retained:** chain length weighting by `f^L` with
  `0 < f < 1`; Bernoulli breaks with `epsilon = 1 - f`; the Thomae comparison
  in the sparse limit `epsilon -> 0`; coprime rational parameters for the peak
  formulas; the Dedekind-eta comparison as an asymptotic regularization rather
  than an exact equality at finite `epsilon`.
- **Repository representation:**
  `GRWTSK.GraphSandwichDiffusion.SeedConcept.linearChainSpectrum`,
  `.thomaeFunction`, `.fareyStructure`, `.dedekindEtaRegularization`, and
  `.lifshitzLocalization`, with candidate edges
  `.spectrumToThomae`, `.spectrumToFarey`, `.thomaeToDedekindEta`, and
  `.spectrumToLifshitz` in `GRWTSK/GraphSandwichDiffusion.lean`.
- **Classification:** paper mathematics is imported as source-grounded
  structural correspondence or conditional asymptotic interface. No analytic
  eta asymptotic or localization theorem is claimed kernel-verified here.

### Bombieri

- **Reference:** E. Bombieri, *Problems of the Millennium: the Riemann
  Hypothesis*, official Clay problem description; publication edition in
  *The Millennium Prize Problems* (2006). Stable public source:
  <https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf>.
- **Imported mathematical content:** nontrivial zeta zeros and the critical
  line; prime-counting consequences; Weil's explicit formula for an admissible
  Mellin test-function class; the finite-field Frobenius/cohomology model; and
  the Hilbert--Pólya/random-matrix discussion.
- **Exact boundary retained:** the explicit formula is theorem-level
  mathematics with its test-function hypotheses. The proposed self-adjoint
  operator and random-matrix correspondence are analogies, not certified
  operators for the classical zeta zeros.
- **Repository representation:**
  `GRWTSK.GraphSandwichDiffusion.SeedConcept.zetaZeros`,
  `.criticalStripCriterion`, `.explicitFormula`, and
  `.spectralOperatorAnalogy`, with candidate edges
  `.zerosToCriticalStrip`, `.zerosToExplicitFormula`,
  `.zerosToSpectralAnalogy`, and `.spectralAnalogyToDiffusion`.
- **Classification:** zeta and explicit-formula relationships are mathematical
  source candidates whose logical status depends on the exact repository
  declaration. Spectral-operator and random-matrix links remain analogies unless
  an operator and comparison theorem are supplied independently.

### Kim--Vu

- **Reference:** J. H. Kim and V. H. Vu, *Sandwiching random graphs:
  universality between random graph models*, Advances in Mathematics 188
  (2004), 444--469. DOI: <https://doi.org/10.1016/j.aim.2003.10.007>.
- **Imported mathematical content:** a coupling among a lower binomial graph,
  a uniform random `d`-regular graph, and an upper binomial graph; monotone
  property transfer; and an upper defect measured by maximum degree.
- **Exact Theorem 2 regime retained:**
  `log n << d << n^(1/3) / log^2 n`; an auxiliary function satisfying
  `sqrt(d log n) <= xi(d) << d`; lower containment with probability
  `1 - o(1)`; and an upper comparison that controls the maximum degree of the
  missing-edge defect rather than proving full deterministic containment.
- **Repository representation:**
  `GRWTSK.GraphSandwichDiffusion.SeedConcept.randomGraphCoupling`,
  `.lowerRandomContainment`, `.upperRandomDefect`, and
  `.monotonePropertyTransfer`, together with candidate edges into the
  deterministic `RelationSandwich` vocabulary.
- **Classification:** conditional probabilistic interface. The deterministic
  relation sandwich in Lean does not instantiate the Kim--Vu distributions,
  coupling, asymptotic degree regime, or probability estimates. No
  probabilistic containment is silently replaced by deterministic inclusion.

### Sawin--Shusterman

- **Reference:** W. Sawin and M. Shusterman, *On the Chowla and twin primes
  conjectures over F_q[T]*, arXiv:1808.04001v2, 7 September 2019. Stable
  identifier: <https://arxiv.org/abs/1808.04001>.
- **Imported mathematical content:** the polynomial Möbius function over
  `F_q[T]`; its restriction to suitable characteristic-`p` affine lines as an
  additively shifted quadratic Dirichlet character; short character-sum
  cancellation; Chowla correlations; and levels of distribution for Möbius and
  primes.
- **Exact Chowla hypotheses retained:** odd characteristic `p`; `k >= 1`;
  `q` a power of `p` satisfying `q > p^2 k^2 e^2`; distinct polynomial shifts;
  and the limit through the function-field norm. More refined statements retain
  squarefreeness, coprimality, conductor, degree, and finite-field-size
  hypotheses.
- **Repository representation:**
  `GRWTSK.GraphSandwichDiffusion.SeedConcept.functionFieldMobius`,
  `.dirichletCharacterProxy`, `.chowlaCorrelation`,
  `.primeLevelOfDistribution`, and `.arithmeticWalkObservation`, with the
  corresponding candidate edges. Typed walk observations are further
  represented in `GRWTSK.NumberTheory.Farey.ChowlaSoficObservations`.
- **Classification:** exact function-field conditional interfaces and
  structural representations. No theorem transfers these cancellation results
  to integer arithmetic.

## Existing repository interfaces reused

All paths below are relative to `grwtsk/math` at the source pin above.

- `GRWTSK/GraphSandwichDiffusion.lean`, blob
  `798c78b0bafd56439246d91a1d30d748c1d7d568`: source identities,
  relationship classes, separate verification dimensions, finite source
  inventory, certified/candidate/admissible relations, deterministic bounded
  traversal, search soundness, relative completeness, and explicit missing-edge
  obligations.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean`,
  blob `9761b5dd5d6ada7344031c07386586c72c1d970a`: deterministic lower/middle/upper
  relation containment, path transport, upward-closed properties, and
  downward-closed acyclicity.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SearchSoficLanguage.lean`,
  blob `4acfdfb09b735a8cfa1ba95a6e2ce527306d84b0`: labeled sandwiches, finite words,
  accepted-language transport, finite presentation scopes, and missing-state,
  missing-transition, missing-word, and reconstruction obligations.
- `GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean` and
  `GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean`: existing Farey
  finite-state graph and information-loss boundaries.
- Existing graph-Laplacian, height-indexed spectrum, height-indexed diffusion,
  and Chowla-observation modules remain the operator and arithmetic annotation
  layers. Their finite-family completeness claims are relative to explicitly
  declared inventories, not to every operator in the repository.

## Bounded increment: arithmetic compression boundary

### Source

- New module:
  `GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticCompressionBoundary.lean`.
- Existing threshold source:
  `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean`,
  blob `6e0eca3e3863a9147a4ef3facde60556355543ea`.
- Existing conditional compression source:
  `GRWTSK.GraphSandwichDiffusion.CompressionCertificate` in
  `GRWTSK/GraphSandwichDiffusion.lean`.

### Fully qualified declarations introduced

- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.CompressionQuantityKind`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.CompressionParameter`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.ParameterIdentified`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.ProposedCompressionBoundary`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.StrongCompressionTarget`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.MissingParameterIdentification`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.StrongCompressionSupplier`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.QuadraticThresholdCorrespondence`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.QuadraticThresholdCompressionSupplier`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.totalExponent_le_twentyOneSixteenths`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.totalExponent_le_fiveQuarters_of_strong`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.weakerBound_does_not_imply_strongTarget`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.unresolvedProposedBoundary_missingIdentification`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.unresolvedProposedBoundary_no_quadraticCorrespondence`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.strongTarget_of_quadraticThresholdSupplier`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.sevenEighths_threshold_not_strong`
- `GRWTSK.RiemannHypothesis.ArithmeticCompressionBoundary.threeQuarters_threshold_eq_half`

### Mathematical status

The expression `3/4 + a` is represented without assigning a mathematical kind
to `a`. The weak hypothesis `a <= 9/16` proves only
`3/4 + a <= 21/16`. The desired target `a <= 1/2` is a separate proposition and
would prove `3/4 + a <= 5/4`.

The explicit counterexample `a = 9/16` proves that the weak bound does not imply
the strong target. The canonical unresolved boundary has kind `unidentified` and
no exact declaration, so it cannot instantiate a
`QuadraticThresholdCorrespondence`.

The existing map `Q(rho) = 2 rho - 1` becomes relevant only under an exact
source-bound equality `a = Q(rho)` and an independent supplier of
`rho <= 3/4`. Under those hypotheses the strong target follows. The identity
`Q(7/8) = 3/4` does not itself supply `a <= 1/2`; `Q(3/4) = 1/2` records the
second threshold identity while leaving the analytic contraction open.

### Precise open suppliers

1. Identify the exact repository declaration denoted by `a`, including its
   domain, normalization, and comparison operation.
2. Prove an independent transformation or estimate yielding `a <= 1/2`.
3. If quadratic threshold descent is intended, prove the exact equality
   `a = quadraticThreshold rho` and the relevant analytic estimate
   `rho <= 3/4` under preserved hypotheses.
4. Do not infer a critical-strip improvement, integer Chowla cancellation, or
   the Riemann Hypothesis from graph coverage, sofic completeness, or finite
   diffusion alone.

## Verification matrix

Source inspection was performed against the pinned repository files and the four
supplied papers. No Lean executable is available in the current local runtime,
and no remote runner was authorized.

| Check | Command | Status |
|---|---|---|
| affected module | `lake env lean GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticCompressionBoundary.lean` | `NOT_RUN` |
| Riemann umbrella | `lake env lean GRWTSK/NumberTheory/Zeta/Riemann.lean` | `NOT_RUN` |
| fresh project build | `lake build GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCompressionBoundary` | `NOT_RUN` |
| fresh kernel check | `lake env lean --run <established fresh-kernel checker> GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCompressionBoundary` | `NOT_RUN` — exact established checker command must be copied from verification infrastructure, not invented here |
| transitive axiom audit | `#print axioms` for every introduced theorem and its transitive dependencies | `NOT_RUN` |

Static source controls completed before commit:

- no `sorry`, `admit`, or new `axiom` tokens;
- balanced delimiters;
- source-order inspection of referenced declarations;
- explicit negative controls for weak-to-strong compression, missing parameter
  identification, unresolved-to-quadratic reinterpretation, and the insufficient
  `7/8 -> 3/4` threshold step.

## Central-ledger integration obligation

This record is intended to be linked or appended from
`docs/reference/literature/reading-background/paper-to-formalization-references.md`.
The central file is not replaced by this bounded increment: preserving its
concurrent 138-kilobyte history takes precedence over an unsafe whole-file
rewrite. The verification issue records this exact documentation obligation.
