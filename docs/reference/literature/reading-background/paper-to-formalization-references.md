# Paper-to-formalization references

## Search-led Graph Sandwich and spectral diffusion — bounded increment 1

### Scope and immutable source identity

This entry records the first bounded increment of the search-led Graph Sandwich program. It formalizes a finite, source-bound search inventory, certified/candidate/admissible relation layers, deterministic bounded traversal, semantic soundness for certified paths, relative completeness for the declared finite inventory, explicit missing-edge obligations, and negative controls. It does **not** claim exhaustive understanding of `grwtsk/math`, exhaustive extraction of every proposition in the papers, probabilistic Kim–Vu coupling, a graph Laplacian or heat semigroup, spectral completeness, a function-field Chowla proof in Lean, an integer Chowla transfer, or the proposed compression inequality.

- Repository: `grwtsk/math`
- Implementation commit: `ec68791ad55b83c87a944949d7ba90605cc07c66`
- Implementation path: `GRWTSK/GraphSandwichDiffusion.lean`
- Implementation blob: `798c78b0bafd56439246d91a1d30d748c1d7d568`
- Inspected predecessor commit: `bd1e92a31d3609c42b3846f53f3f0be34d3f95a2`
- Lean toolchain declaration: `leanprover/lean4:v4.33.0`
- `lean-toolchain` blob: `025e59548e48cf71f2744154e2890beefe30a258`
- Root import status: **not imported by `GRWTSK.lean`**
- Source inspection: **DONE**
- Affected-module compilation: **NOT_RUN**
- Fresh kernel checking: **NOT_RUN**
- Transitive axiom audit: **NOT_RUN**
- Mathematical supplier completion: **NOT_COMPLETE**

The source explicitly marks itself `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. Source inspection and a committed declaration are not kernel acceptance.

### Fully qualified declarations introduced or revised

The bounded increment introduces or revises the following declarations under `GRWTSK.GraphSandwichDiffusion`:

- `FiniteSearchGraph`
- `SearchInventory`
- `CandidateEdge`
- `CertifiedEdge`
- `certified_is_candidate`
- `LabeledWalk`
- `LabeledWalk.map`
- `certifiedWalkToCandidate`
- `fromSoficGraph`
- `fromSoficGraph_label_edge`
- `GraphSandwich`
- `lower_le_upper`
- `SpectralHeight`
- `CompressionCertificate`
- `compression_bound`
- `RelationshipClass`
- `SourceKind`
- `SourceIdentity`
- `VerificationStatus`
- `RelationshipRecord`
- `SourceSearchInventory`
- `SourceSearchInventory.candidate_scoped`
- `SourceSearchInventory.graphSandwich`
- `BoundedPath`
- `BoundedPath.mono`
- `BoundedPath.semantic`
- `successors`
- `mem_successors`
- `reachableWithin`
- `mem_reachableWithin_zero`
- `mem_reachableWithin_succ`
- `reachableWithin_subset_succ`
- `reachableWithin_mono`
- `exists_boundedPath_of_mem_reachableWithin`
- `BoundedPath.mem_reachableWithin`
- `mem_reachableWithin_iff`
- `SourceSearchInventory.certifiedSearch`
- `SourceSearchInventory.candidateSearch`
- `SourceSearchInventory.certifiedSearch_sound`
- `SourceSearchInventory.mem_candidateSearch_iff`
- `SourceSearchInventory.candidateSearch_has_admissiblePath`
- `MissingCandidateEdge`
- `CandidateComplete`
- `candidateComplete_iff_no_missing`
- `candidate_eq_admissible_of_complete`
- `SeedConcept`
- `SeedPaperEdge`
- `SeedPotentialEdge`
- `seedCandidate`
- `seedAdmissible`
- `seedCertified`
- `seedSemantic`
- `seedInventory`
- `seed_source_connected`
- `spectrumToThomae_candidate_not_certified`
- `seed_has_no_certified_edge`

`GraphSandwich` is now a compatibility alias for
`GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich`.
The lower graph is the certified relation, the middle graph is the source-grounded candidate relation, and the upper graph is the explicitly admissible relation. `CandidateComplete` means that every admissible edge in the declared finite scope has been represented as a candidate; it does not imply that every candidate is true, certified, or semantically entailing.

The initial `seedInventory` has an intentionally empty certified relation. This prevents a source-paper association, shared terminology, import edge, or structural analogy from being promoted to a mathematical implication without a proof supplied to `SourceSearchInventory.certified_sound`.

---

## S. Nechaev and K. Polovnikov, *Number-theoretic aspects of 1D localization: “popcorn function” with Lifshitz tails and its continuous approximation by the Dedekind eta*

### Bibliographic source

- Authors: S. Nechaev and K. Polovnikov
- Version/year: arXiv v2, 26 February 2017
- Stable identifier: `arXiv:1702.06757v2`
- Stable URL: `https://arxiv.org/abs/1702.06757`

### Exact imported mathematics and hypotheses

The source studies an ensemble of finite linear chains with exponentially weighted lengths and the spectra of their symmetric bidiagonal adjacency matrices. For a chain of length `n`, the stated eigenvalues are

`lambda_(k,n) = 2 cos(pi k / (n + 1))`, for `1 <= k <= n`.

The paper relates the sparse-limit peak weights to the Thomae function, organizes monotone peak sequences by Farey mediants, derives a spectral-edge Lifshitz asymptotic, and gives a Dedekind-eta regularization near the real axis. The source conditions retained by the inventory include:

- chain-length weights of the form `f^L`, with `0 < f < 1`;
- the sparse-limit comparison as the damping parameter tends to zero;
- coprime numerator/denominator data for rational peak positions;
- a selected monotone peak sequence for the Farey organization;
- the modular parameter `x + i epsilon`, with `0 < x < 1` and `epsilon -> 0+`;
- the spectral parameter approaching the upper edge from below for the Lifshitz asymptotic.

The first increment does not turn the paper's asymptotic formulas into Lean theorems. It records them as typed candidate relationships with their assumptions and open suppliers.

### Repository declarations and exact relationship classification

Source proof candidates already present in the repository:

- `GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum.eigenvalue`
- `GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum.sineVector_eigen_equation`
- `GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum.free_charpoly`
- `GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum.free_roots_charpoly`

Repository source at the implementation commit:

- Path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum.lean`
- Blob: `547f065de1dd90c4d44e8f1b7cd9843fe06b7c9a`

These declarations give the finite free Dirichlet path spectrum and a complete finite characteristic-root inventory. They are **source proof candidates** for the paper's linear-chain spectral formula. This bounded increment does not prove that the paper's exact probabilistic chain ensemble, normalization, resolvent, peak weights, or asymptotic density is definitionally the same object.

Candidate edges represented in `SeedPaperEdge`:

- `spectrumToThomae`: **conditional interface**
- `spectrumToFarey`: **conditional interface**
- `thomaeToDedekindEta`: **conditional interface**
- `spectrumToLifshitz`: **conditional interface**
- `fareyToSofic`: **structural correspondence**

Related sofic source candidate:

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph`
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficPresentation`
- Path: `GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`
- Blob: `7f9560ad5deee8c3a47c10c3326d2ac6ff6f3cc8`

### Kernel-verified bridges

None are claimed by this increment. Existing declarations may have historical verification records elsewhere, but no fresh compilation, kernel replay, or transitive axiom audit was executed for the exact implementation commit.

### Finite evidence

The finite sine diagonalization and finite characteristic polynomial are finite exact source candidates. They do not establish the ensemble limit, Dedekind-eta asymptotic, or Lifshitz tail.

### Analogies

No historical influence is inferred. The paper's modular/Farey structure and the repository's finite-state presentations are treated as a structural search relationship only.

### Precise missing bridges

1. Identify the paper's chain adjacency matrix with the exact repository matrix, including endpoint convention and normalization.
2. Define the exponentially weighted chain ensemble and its finite spectral measure.
3. Prove the rational-peak multiplicity formula and its sparse-limit Thomae asymptotic.
4. Formalize the Farey ordering of the selected monotone peak sequences.
5. Import or prove the required Dedekind eta and Kronecker-limit asymptotics with exact domains.
6. Prove the spectral-edge Lifshitz estimate with quantified error terms.
7. Construct a finite labeled presentation and prove transition/language coverage before claiming sofic completeness.

---

## Enrico Bombieri, *Problems of the Millennium: the Riemann Hypothesis*

### Bibliographic source

- Author: Enrico Bombieri
- Version/year: official Clay Mathematics Institute Millennium problem description; supplied PDF version, associated with the 2000 Millennium Prize Problem announcement
- Stable official page: `https://www.claymath.org/millennium/Riemann-Hypothesis/`
- Stable title: *Problems of the Millennium: the Riemann Hypothesis*

### Exact imported mathematics and hypotheses

The supplied source defines the Riemann zeta function, states the functional equation, distinguishes trivial and nontrivial zeros, and states RH as real part `1/2` for all nontrivial zeros. The paper also presents Weil's explicit formula for test functions in a class `W`, with continuity, piecewise differentiability, endpoint averaging, and specified growth/decay hypotheses. It discusses:

- the relationship between zeta zeros and prime distribution;
- finite numerical evidence as finite evidence only;
- zero-density results as off-critical-line rarity statements, not RH;
- the finite-field cohomological model;
- Weil's explicit formula and negativity criterion;
- random-matrix spacing analogies;
- the Hilbert–Pólya self-adjoint-operator idea as a conjectural analogy.

The source inventory preserves the nontrivial-zero exclusions and does not infer an operator from the Hilbert–Pólya analogy.

### Repository declarations and exact relationship classification

Exact repository zero object:

- `GRWTSK.RiemannHypothesis.NontrivialZetaZero`
- Path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean`
- Blob: `b110c43429fd3bf17b7ddbafa471803b8e0f3a5a`

Repository explicit-formula source candidate:

- `GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.source_arithmetic_representation`
- `GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.UniformLowerBound`
- `GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.BridgeObligation`
- Path: `GRWTSK/NumberTheory/ExplicitFormula/CorrelationPairing.lean`
- Blob: `b94d7ccb13315840935dddcfe7a9bc456fc03bdd`

The repository arithmetic representation is not silently identified with Bombieri's exact displayed Weil formula. It is a **source proof candidate** with a separately open lower-bound and RH bridge.

Candidate edges represented in `SeedPaperEdge`:

- `zerosToCriticalStrip`: **structural correspondence**
- `zerosToExplicitFormula`: **conditional interface**
- `zerosToSpectralAnalogy`: **analogy**
- `spectralAnalogyToDiffusion`: **structural correspondence requiring an independently constructed finite operator**

### Kernel-verified bridges

None are newly claimed. The exact source commit has not received a fresh affected-module compilation, kernel replay, or axiom audit.

### Finite evidence

Numerically checked zeros or finite spectral samples are represented only as finite evidence. They cannot be promoted to RH, spectral completeness at all heights, or a global operator construction.

### Analogies

The Hilbert–Pólya picture and random-matrix spacing correspondence are classified as analogies. No self-adjoint operator whose spectrum is the zeta ordinates is constructed here, and graph height is not identified with the real or imaginary part of a zeta zero.

### Precise missing bridges

1. State Bombieri/Weil's exact test-function class and Mellin-transform convention in Lean.
2. Prove an exact correspondence between any repository explicit formula and the supplied formula.
3. Construct a finite graph operator from the search inventory, with symmetry/positivity/normalization hypotheses.
4. Prove any comparison between that finite graph spectrum and zeta-zero data.
5. Keep any Hilbert–Pólya step as an explicit unresolved supplier.
6. Do not infer RH, a zero-free improvement, or a critical-strip contraction from graph representation alone.

---

## J. H. Kim and V. H. Vu, *Sandwiching random graphs: universality between random graph models*

### Bibliographic source

- Authors: J. H. Kim and V. H. Vu
- Publication: *Advances in Mathematics* 188 (2004), 444–469
- DOI: `10.1016/j.aim.2003.10.007`
- Stable DOI URL: `https://doi.org/10.1016/j.aim.2003.10.007`

### Exact imported mathematics and hypotheses

The paper compares the uniform random `d`-regular graph with Erdős–Rényi graphs through a joint distribution. Its Sandwich Conjecture asks for lower and upper random graphs with slightly smaller/larger edge density and high-probability containment.

Theorem 2, rather than the full conjecture, supplies the bounded source relationship used by this inventory. The hypotheses and qualifications retained are:

- `log n << d << n^(1/3) / log^2 n`;
- a function `xi(d)` satisfying `sqrt(d log n) <= xi(d) << d`;
- a joint distribution for the lower random graph, the uniform random `d`-regular graph, and the upper random graph;
- high-probability lower containment;
- an upper comparison that retains a maximum-degree defect bound rather than exact containment.

Monotone-property transfer is valid only through the coupling and the direction of monotonicity. The deterministic repository sandwich is not asserted to be the Kim–Vu probability theorem.

### Repository declarations and exact relationship classification

Canonical deterministic relation module:

- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich`
- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Subrelation`
- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich.lower_le_upper`
- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Path.mono`
- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.UpwardClosed`
- `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.DownwardClosed`
- Path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean`
- Blob: `9761b5dd5d6ada7344031c07386586c72c1d970a`

Search adapter:

- `GRWTSK.GraphSandwichDiffusion.GraphSandwich`
- `GRWTSK.GraphSandwichDiffusion.SourceSearchInventory.graphSandwich`

Candidate edges represented in `SeedPaperEdge`:

- `couplingToLowerContainment`: **conditional interface**
- `couplingToUpperDefect`: **conditional interface**
- `couplingToMonotoneTransfer`: **conditional interface**
- `lowerContainmentToSandwich`: **structural correspondence**
- `upperDefectToSandwich`: **structural correspondence with an explicit missing exact-containment/defect-aware bridge**

### Kernel-verified bridges

No probabilistic coupling bridge is claimed. The deterministic sandwich declarations are source dependencies, but no fresh verification of the exact source commit was run.

### Finite evidence

None of the Kim–Vu high-probability assertions are replaced by a finite deterministic sample. A finite observed containment would be finite evidence only.

### Analogies

The three-layer certified/candidate/admissible graph is architecturally inspired by graph sandwiching, but it is not a random graph model and does not inherit Kim–Vu probability bounds by analogy.

### Precise missing bridges

1. Formalize the relevant probability spaces and distributions.
2. Formalize the degree range and `xi(d)` asymptotics.
3. Construct the joint coupling with the exact marginals.
4. Prove the lower high-probability containment.
5. Preserve the upper maximum-degree defect, or prove an exact-containment repair before using `RelationSandwich.Sandwich`.
6. Formalize transfer for the precise monotone property under consideration.
7. Do not infer adjacency spectral ordering from edge inclusion; supply a Loewner/variational operator comparison separately.

---

## Will Sawin and Mark Shusterman, *On the Chowla and twin primes conjectures over F_q[T]*

### Bibliographic source

- Authors: Will Sawin and Mark Shusterman
- Version/year: arXiv v2, 7 September 2019
- Stable identifier: `arXiv:1808.04001v2`
- Stable URL: `https://arxiv.org/abs/1808.04001`

### Exact imported mathematics and hypotheses

The paper proves function-field results over `F_q[T]`, not integer Chowla. The source inventory retains:

- odd prime characteristic `p`;
- `q` a power of `p`;
- for Theorem 1.3, `q > p^2 k^2 e^2`;
- pairwise distinct polynomial shifts for the stated Chowla correlation;
- the polynomial Möbius function and monic-polynomial domain;
- Lemma 3.2's degree condition `k != d + m`;
- coprimality of `a` and `M`;
- the derivative-dependent quadratic Dirichlet-character modulus/conductor;
- the separate squarefreeness, coprimality, size, and explicit `q` hypotheses in the level-of-distribution results.

The paper's finite-field geometric cancellation is not transferred to integers.

### Repository declarations and exact relationship classification

The first increment records the following candidate edges:

- `mobiusToCharacterProxy`: **conditional interface**
- `characterProxyToChowla`: **conditional interface**
- `chowlaToWalkObservation`: **structural correspondence**
- `mobiusToPrimeDistribution`: **conditional interface**

Related repository arithmetic source candidates include:

- `GRWTSK.NumberTheory.Farey.GaussianModularEye`
- `GRWTSK.NumberTheory.Farey.nonunitEye_right_dirichlet_vanishes`
- `GRWTSK.NumberTheory.Farey.nonunitEye_gaussian_modular_dirichlet_obstruction`
- Path: `GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean`
- Blob: `fea5844aff6263107ff5e81cce5934406a5e1dba`

These are integer/Gaussian/Farey declarations about finite residue representations. They are not the Sawin–Shusterman function-field theorem and do not supply its geometric character-sum estimates.

Sofic observation target:

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph`
- `GRWTSK.GraphSandwichDiffusion.LabeledWalk`
- `GRWTSK.GraphSandwichDiffusion.SeedConcept.arithmeticWalkObservation`

### Kernel-verified bridges

None are claimed. No function-field polynomial, sheaf, Frobenius, character-sum, or Chowla theorem was added to the certified relation.

### Finite evidence

A product of Möbius or character values along a finite walk is a finite identity/observation only. It is not an asymptotic Chowla cancellation estimate.

### Analogies

A finite arithmetic label on a sofic walk is a representation device. It does not imply that the walk language proves Chowla cancellation, prime distribution, or twin-prime asymptotics.

### Precise missing bridges

1. Define the required finite-field polynomial arithmetic and polynomial Möbius function.
2. Formalize the derivative-dependent character proxy with Lemma 3.2's exact hypotheses.
3. Formalize the short character-sum estimate and the explicit lower bound on `q`.
4. Prove the function-field Chowla correlation with distinct shifts.
5. Define a typed walk observable and prove that its labels agree with the selected arithmetic values.
6. Keep the asymptotic cancellation supplier separate from the finite walk identity.
7. Prohibit any automatic transfer from `F_q[T]` to integer arithmetic.

---

## Existing sofic and information-loss interfaces

The first increment reuses rather than duplicates:

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.SoficGraph`
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicSoficPresentation`
- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.no_partition_sofic_trace_cover_of_collision`
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.LosslessPrefixCode`
- `GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.no_huffmanLikeCover_of_process_collision`
- `GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary.RootedSoficGraph`
- `GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary.ExactPrefixPresented`
- `GRWTSK.NumberTheory.Farey.DynamicSoficExactLanguageBoundary.every_stream_admitted`

The important boundary is preserved: graph admissibility, finite-state presentation, and exact lossless reconstruction are different properties. Losslessness requires a reconstruction map or equivalent factorization theorem.

---

## Arithmetic compression boundary and quadratic-threshold comparison

The current `CompressionCertificate` records both

- `original <= 9 / 16`, and
- the independently supplied target `compressed <= 1 / 2`.

`compression_bound` uses the stronger second premise. It does not derive `1 / 2` from `9 / 16`.

The existing conditional threshold program defines

`GRWTSK.RiemannHypothesis.quadraticThreshold rho = 2 * rho - 1`

and proves the arithmetic identities

- `quadraticThreshold (7 / 8) = 3 / 4`;
- `quadraticThreshold (3 / 4) = 1 / 2`.

Repository source:

- Path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean`
- Blob: `6e0eca3e3863a9147a4ef3facde60556355543ea`

The source itself keeps the analytic contraction as an open premise. The new seed edge `thresholdToCompressionQuestion` is classified as an **unresolved supplier**. The parameter `a` has not yet been identified with `rho`, `quadraticThreshold rho`, a graph height, a diffusion error, or any repository arithmetic loss term. No RH or critical-strip conclusion follows from this comparison.

---

## Verification queue for implementation commit `ec68791ad55b83c87a944949d7ba90605cc07c66`

All commands below are **NOT_RUN**. No runner or receipt is stored in the mathematics repository.

```sh
git checkout --detach ec68791ad55b83c87a944949d7ba90605cc07c66
git rev-parse HEAD
cat lean-toolchain

lake env lean GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean
lake env lean GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean
lake env lean GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean
lake env lean GRWTSK/GraphSandwichDiffusion.lean
```

Fresh audit module:

```lean
import GRWTSK.GraphSandwichDiffusion

#print axioms GRWTSK.GraphSandwichDiffusion.lower_le_upper
#print axioms GRWTSK.GraphSandwichDiffusion.BoundedPath.semantic
#print axioms GRWTSK.GraphSandwichDiffusion.mem_reachableWithin_iff
#print axioms GRWTSK.GraphSandwichDiffusion.SourceSearchInventory.certifiedSearch_sound
#print axioms GRWTSK.GraphSandwichDiffusion.SourceSearchInventory.mem_candidateSearch_iff
#print axioms GRWTSK.GraphSandwichDiffusion.candidateComplete_iff_no_missing
#print axioms GRWTSK.GraphSandwichDiffusion.spectrumToThomae_candidate_not_certified
#print axioms GRWTSK.GraphSandwichDiffusion.compression_bound
```

Required receipt fields outside `grwtsk/math`:

- exact commit and every affected source blob;
- exact Lean/Mathlib toolchain identities;
- complete argv and working directory;
- exit status and diagnostics for each command;
- fresh kernel-check result;
- transitive axiom closure for each listed declaration;
- explicit `sorry`/unexpected-axiom scan;
- import-cycle and root-import status;
- negative-control results.

### Negative controls to retain

- A candidate paper edge is not certified merely because it has provenance.
- An admissible vocabulary edge missing from the candidate graph produces `MissingCandidateEdge`.
- Candidate completion does not imply semantic truth.
- A candidate path transports upward to an admissible path, not downward to a certified path.
- A shared finite state with different readouts blocks a lossless claim.
- A graph inclusion does not imply arbitrary adjacency spectral ordering.
- A finite walk identity is not a Chowla cancellation theorem.
- Function-field cancellation is not integer cancellation.
- `a <= 9 / 16` does not imply `a <= 1 / 2`.
- `quadraticThreshold` is not the compression parameter without an exact correspondence.

### Next bounded mathematical increments

1. Add finite labeled-word acceptance and relative sofic-language coverage directly over `SourceSearchInventory.graphSandwich`.
2. Define a finite weighted adjacency/degree/Laplacian package, with symmetry, nonnegativity, and normalization hypotheses.
3. Define the height-indexed operator/spectrum record and prove finite-family coverage.
4. Prove comparison only under an explicit operator-order or intertwining hypothesis.
5. Add typed Chowla observations while retaining all `F_q[T]` hypotheses.
6. Identify the repository meaning of `a` before testing any independent compression supplier.
