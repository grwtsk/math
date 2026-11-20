# Mathematical interfaces for certified Weil and Langlands experiments

Local attribution: grwtsk contributors.

This record connects the supplied project-g architecture to maintained
mathematical sources. It records proved finite/algebraic/analytic results,
existing conditional consumers, and the missing mathematical constructions.
It is not a claim that the complete architecture or RH/GRH is formalized.

The starting source is `grwtsk/math@9f997b28e66f1997c9c7c6e1318b08081e2bfd90`.
The supplied `rust_neural_architecture_specification.md` has SHA256
`d4d153db89e3505e17dcb002053f13f7bb8e53b80eb4f200f8fe328e27300dea`.
Publication, exact source identities, and performed checks are coordinated in
[issue #1839](https://github.com/grwtsk/math/issues/1839). The root Lean and
Mathlib pins remain unchanged.

## New maintained results and their consumers

| Mathematical idea | Maintained source | Exact result and scope |
| --- | --- | --- |
| Finite critical-strip sampling | [CriticalStripSampling.lean](CriticalStripSampling.lean) | Midpoint strip inclusion, reflection, central coordinates; positive normalized Gaussian rows, constant preservation, norm contraction. Sampling is not a zero certificate. |
| Ordinary and parity-twisted forms | [WeilParityDecomposition.lean](../../FunctionalAnalysis/WeilParityDecomposition.lean) | Bundled linear-first sesquilinear forms, projectors, orthogonality, ordinary sum versus twisted difference, Gram orientation, and reflected-pair signs. Full Weil realization is separate. |
| Gaussian waveforms | [WeilGaussianPackets.lean](WeilGaussianPackets.lean) | Actual correlation and bilateral Laplace integrals, explicit integrability, normalization, derivatives, and a full-strip spectral envelope. The odd integral-moment bridge remains open. |
| Uniform kernel approximation | [IntegralKernelApproximation.lean](../../FunctionalAnalysis/IntegralKernelApproximation.lean) | Actual product-measure integrals, Fubini, L1/L2 error bounds, and the interval factor `2*A*epsilon`. No unbounded Weil operator is defined by this bound. |
| Synchronized refinement | [RationalEnclosureRefinement.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureRefinement.lean) | Sound intersections of source-tied intervals, finite path/fold refinement, midpoint errors, all-accuracy uniqueness, and a counterexample to nesting implying truth. |
| Discrete rank-one Satake | [DiscreteSatake.lean](../DiscreteSatake.lean) | Explicit convolution, Laurent multiplicativity, shifts, unit-character evaluation, normalized valuation quotient, and proof transport. The local-field Hecke/Haar bridge is not supplied. |
| Quadrupolar tensors | [QuadrupolarTensors.lean](../../LinearAndMultilinearAlgebraMatrixTheory/QuadrupolarTensors.lean) | Sign invariance, trace/contraction/square identities, orthogonal equivariance, eigenvalues, reversible five-coordinate packing and its exact metric. No lattice decay theorem is imported. |
| Higher-rank parity projection | [KuznetsovParityProjection.lean](KuznetsovParityProjection.lean) | Finite parity-weighted sums, algebraic even/odd projections, continuous-term cancellation and projected error bounds. The analytic trace identities are explicit hypotheses. |
| Binary-field harmonic characters | [Binary128Characters.lean](../FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/Binary128Characters.lean) | Exact field-trace character semantics over the existing binary extension field. Its adjacent source record fixes the proved laws and implementation boundary. |

Each new module has an adjacent mathematical argument and evidence record.
The complete declaration inventory is in its Lean source; the coordinating
issue records the exact final checked revision. The first Satake example is
a discrete algebraic transport fixture, not a completed reconstruction of a
pre-existing theorem through a local or global Langlands correspondence.

## Existing sources retained without a second implementation

The following were inspected at the starting revision. Their historical
evidence is not promoted by appearing in this table. Unless explicitly listed
in the issue's executed checks, replay of these existing sources is `NOT_RUN`.

| Existing mathematical source | Role and retained obligations |
| --- | --- |
| [WeilGammaPhysicalReturn.lean](WeilGammaPhysicalReturn.lean) | Physical arithmetic return retaining conductor/parity, primes, gamma and pole terms. The explicit-formula sum and analytic conditions remain arguments where stated. |
| [WeilWindowFilterLedger.lean](WeilWindowFilterLedger.lean) | Exact heat/phase inverse, amplified observation errors, covariance, both mixed terms, and discarded quadratic contribution. Smoothing does not erase these costs. |
| [WeilDiffusionCertifiedMarginReturn.lean](WeilDiffusionCertifiedMarginReturn.lean) | Original signed source return only after the sufficient error/margin budget is paid; includes finite false-positive controls. |
| [RationalEnclosureCertificates.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.lean) | Rational certificate acceptance, full entrywise row penalties, retained Gram metric, and complex realification. Actual enclosures remain separate proofs. |
| [WeilFiniteEnclosureReturn.lean](WeilFiniteEnclosureReturn.lean) | All-window, all-code, all-precision certificate coverage, density, continuity, source comparison and an explicit arithmetic return premise imply the stated primitive Dirichlet-GRH target. The producer of that coverage is not constructed. |
| [WeilCofinalFlexibleHead.lean](WeilCofinalFlexibleHead.lean) and [WeilOddCofinalCoverage.lean](WeilOddCofinalCoverage.lean) | Finite heads and cofinal stage consumers preserve complete residual/high-complement obligations. Cofinal indices do not prove accepted-certificate existence. |
| [SchurResidualEnclosure.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurResidualEnclosure.lean) | Algebraic square completion and signed residual bounds. High-block inverse existence, coercivity, operator domains and continuum source return are separate. |
| [ScrewKernelRefinement.lean](ScrewKernelRefinement.lean) | Source-preserving refinement of finite zero-bin payloads and decoded errors. Root certification and full spectral coverage are not supplied by encoding. |
| [ProlateTraceCorrection.lean](ProlateTraceCorrection.lean) | Repair of two explicitly supplied finite-prolate trace relations. This is not PSWF existence, a full spectral theorem, or a Weil eigenbasis. |
| [Binary128PolynomialBasis.lean](../FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/Binary128PolynomialBasis.lean) and [Binary128WordArithmetic.lean](../FiniteFieldsAndCommutativeRingsNumberTheoreticAspects/Binary128WordArithmetic.lean) | Degree-128 binary modulus, irreducibility, cardinality, and word-operation refinement. Both existing modules were built in this task. Actual Rust execution/serialization conformance remains separate. |

## Definitions that must stay distinct

1. **Ordinary form and parity twist.** Under a proved positivity premise the
   ordinary Hermitian form is nonnegative in both parity sectors. Inserting
   reflection produces a different signed form. Off-line reflected evaluation
   coordinates are not the same decomposition as spatial even/odd functions.
2. **Zeros and samples.** A list of ordinates, including the supplied
   `zeros1.txt`, is not a proof that all strip zeros were covered with their
   multiplicities. Analytic zero counts and tail bounds require independent
   source certificates.
3. **Dense tensors and algebraic tensor products.** Representation tensor squares,
   symmetric powers, rank decompositions, and rectangular arrays have different
   semantics. Five-coordinate quadrupole packing retains its weighted metric;
   the full five-dimensional symmetric-traceless space is larger than the
   unit-director image.
4. **Exact bits and ordered numerical fields.** `BitVec 128`, the quotient field
   of size `2^128`, and real/complex numerical tensors are separate types. The
   degree-128 modulus includes an implicit leading term beyond a 128-bit word.
   Trace characters are exact harmonic features, not an order or gradient on
   a characteristic-two field.
5. **Finite matrices and infinite operators.** A positive finite compression
   does not control its complement. An integrated bounded kernel, its derivative
   form, an unbounded closed form, and a concentration operator need their own
   domains and identification theorems. A Gram matrix must not silently become
   the identity when the basis is windowed or nonorthonormal.
6. **Refinement and progress.** A graph of certified observations may combine
   bounds, but cycles, synchronized proposals, or additional model layers do
   not guarantee shrinking errors. The precise infinite object here is a
   family of sound approximations with explicit cofinal/all-accuracy premises.
   No spinor, knot invariant, or topological field theory is defined by a
   control-flow metaphor.

## Remaining mathematical constructions

### Return to the actual Weil form

For each specified zeta or Dirichlet-L source, instantiate the exact admissible
test space, full zero divisor, multiplicities and transform convention.
Prove the source-specific explicit formula with every pole, conductor,
archimedean, and prime-power term retained. To use Gaussian packets, prove the
required test-class extension or compactification and its full error. A
sampled spectral head needs a completeness certificate and a bound on the
entire complement.

The new `interval_kernelForm_error` proves a bound for genuine integrals. To
apply it to a particular integrated Weil kernel, one must prove that kernel's
identification, its approximation bound, and the integrability hypotheses.
Returning from derivative coordinates requires the stated energy/metric
comparison. Closedness, self-adjointness and compactness are not consequences
of constructing a finite matrix.

### Infinite precision and RH/GRH

For the existing `primitiveGRH_of_interval_certificate_coverage`, the remaining
arguments include source-faithful checked enclosures for every required
window/code/precision, their source lower comparison, dense admissible tests,
continuity, and the actual implication back to primitive Dirichlet GRH.
The universal coverage hypothesis is not produced by successful finite runs.
Other L-function families need separately stated zero-location targets and
analytic hypotheses; a generic `GRH` label is insufficient.

### Local and global Langlands bridges

Instantiate the normalized valuation with an actual nonarchimedean local field;
identify the kernel with its valuation-ring units; construct compactly supported
bi-invariant Hecke functions and normalized multiplicative Haar convolution;
prove their coefficient identification and unramified-character compatibility.
Only then does the discrete algebraic core become the requested local GL(1)
adapter. Modularity, higher-rank functorial transfers, and geometric Langlands
need their own source-specific hypotheses and transport theorems. The supplied
geometric-Langlands papers do not by themselves provide an analytic RH/GRH
positivity bridge.

### Higher-rank trace formulas and external tensor results

`KuznetsovParityProjection` does not construct Maass forms, Bessel transforms,
Kloosterman sums, spectral measures or a convergent analytic Kuznetsov formula.
It is the checked projection of correctly normalized supplied identities.
Laplace spectral parameters, zeros of an automorphic L-function, and zeros of
a Selberg zeta function are not interchangeable. No Selberg spectral gap or
automorphic GRH is inferred from ordinary trace-formula positivity.

The existing [universal tensor-square import surface](../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/UniversalTensorSquares.lean)
and its adjacent provenance retain their isolated upstream environment and
`NOT_RUN` checks. This change does not promote them into the root build. The
claimed matrix-multiplication exponent and RP2 decay results are not installed
as new axioms or used as neural performance guarantees. The quadrupolar module
uses only the precisely identified finite tensor construction and contraction.

### Application correspondence

The original model, tokenizer, optimizer, inference engine, native Lean bridge,
checkpoint and Rust execution belong in `grwtsk/g`. Mathematical interfaces in
this repository do not prove those implementations correct. Each implementation
needs a source-bound refinement to the relevant mathematical definitions and
the same statement/assumption/axiom checks for generated Lean proofs. A neural
proposal does not inhabit a verified-certificate type merely by deserialization.

These remaining constructions are retained as research obligations; no placeholder
proof, new research axiom, or conditional RH theorem is relabeled as completion.

## Checked scope of this increment

This increment adds nine Lean modules with 165 theorem declarations, including
supporting lemmas, and their source-local records. All nine compile under the
unchanged toolchain. The eight core modules passed a combined fresh Lean-kernel
replay; the binary-character module passed its own fresh replay including the
existing polynomial-basis and word-arithmetic dependencies. The theorem axiom
audits contain only `propext`, `Classical.choice`, and `Quot.sound`. No proof
placeholder or new mathematical axiom is introduced.

Separate AI-assisted mathematical reviews checked normalization, source return,
parity, exact field semantics, transport independence, interval hypotheses and
finite/infinite boundaries. A checker implemented independently of Lean,
independent external mathematical review, a whole-repository build, and Rust
execution verification remain `NOT_RUN`. The source hashes in the adjacent
records and the publication commit in issue #1839 fix this evidence scope.

## Follow-up: an actual conductor-three kernel approximation

Starting from the preceding published increment at
`7dcbe07202484a7fdff0d631f6b1649ad64680c2`, the next development instantiates
the generic kernel-error theorem with the maintained conductor-three
radius-four integrated kernel. The new source records and issue #1839
separate this follow-up's checks from the earlier nine-module increment.

| Maintained source | Mathematical advance |
| --- | --- |
| [WeilConductorThreeKernel](WeilConductorThreeKernel.lean) and [DirichletModThreeCharacter](DirichletModThreeCharacter.lean) | Shared source of the same declarations, moved with unchanged namespaces, statements and defining bodies; historical import surfaces retain them. |
| [WeilConductorThreeKernelTruncation](WeilConductorThreeKernelTruncation.lean) | Actual gamma integral convergence, exact finite exponential head plus entire remainder, uniform error `1/(4*M+1)`, and an all-accuracy cutoff producer. |
| [WeilConductorThreeKernelSampling](WeilConductorThreeKernelSampling.lean) | Exact signed-hinge formula, explicit finite-head Lipschitz constant, measurable midpoint grid and whole-square spatial error `8*L_M/(N+1)`. |
| [FiniteKernelEnclosure](../../FunctionalAnalysis/FiniteKernelEnclosure.lean) | Exact complex feature/cell moments and Fubini return to the existing rational realification checker; complete cell sums preserve a mean-zero constraint. |
| [WeilConductorThreeKernelEnclosure](WeilConductorThreeKernelEnclosure.lean) | The actual source form is approximated by the finite cell quadratic with error `8*(1/(4*M+1)+8*L_M/(N+1))*integral |u|^2`; checked finite bounds return with every error and the original packet metric retained. |

The final module proves a genuine uniform all-accuracy approximation:
for every positive error there are finite gamma and grid indices that work
for all stated L1/L2 inputs. It also supplies an actual one-cell rational
packet, its Boolean acceptance, a separate source enclosure and the returned
error-paid inequality. It does not produce useful positive multi-cell
certificates or an executable transcendental enclosure algorithm.

The raw sampled matrices are symmetric with zero diagonal. Nonzero such
matrices cannot be positive on all unconstrained vectors; pursuing the
arithmetic sign still needs the actual mean-zero derivative constraints,
centering or physical Green metric. The proven error uses the L2 norm of
`u`; for `u=f'` it remains derivative energy. The original physical
`Q_4(f)` integration-by-parts/domain return and Green-energy comparison are
still distinct obligations. Neither uniform approximation nor this finite
acceptance control proves RH/GRH.

The reused rational checker and two direct dependencies received narrow
compatibility repairs under the existing pins. No acceptance condition,
source enclosure, theorem hypothesis or matrix metric was weakened. The
initial historical broad source build failed in `DirichletFiniteParseval`;
that failure is retained separately from the new narrow source checks.
See the [complete argument and evidence boundary](WeilConductorThreeKernelEnclosure.md)
and [source extraction record](WeilConductorThreeKernel.md).

This follow-up's four new mathematical modules contain 68 theorem/lemma
declarations, including private supporting lemmas. The final pinned build
and a transitive axiom audit of 150 public named declarations across the
six new/shared and three repaired modules passed. Only `propext`,
`Classical.choice`, and `Quot.sound` occur in their audited axiom sets.
The fresh Lean-kernel replay has its own status in issue #1839; compilation
and an axiom audit are not substituted for that separate check.
