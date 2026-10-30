# GRWTSK mathematics

**Mathematical access, human direction, and reusable discovery.**

GRWTSK mathematics is a public, human-directed collection of mathematical constructions, proofs, proof candidates, counterexamples, connections, and open research obligations. Its purpose is to make mathematics accessible for investigation, criticism, correction, and further discovery.

Mathematical work may begin with a sketch, a crayon, a slide rule, a calculator, a book, a search, an educational video, a discussion, code, or a proof assistant. These instruments differ, but their value lies in what they let people understand, test, correct, and contribute—not in their names or providers. Faster, more useful feedback can widen what a person can investigate; mathematical validity and novelty still require their own evidence.

GRWTSK preserves the resulting mathematics so others can inspect, challenge, and extend it. **grwtsk contributors** is the collective copyright and human-contributor acknowledgment, not a compulsory personal byline. Specific human authors can receive their chosen public credit, while upstream authorship and licenses remain intact.

[**Explore the mathematics**](documentation/mathematics/index.md) · [Start with the least prime](documentation/mathematics/_support/start/least-prime.md) · [Proof standards](documentation/mathematics/_support/reference/proof-comparison-disposition.md) · [Contribute formalizations](documentation/mathematics/_support/start/formalization-contributions.md)

## Explore the collection

**You do not need Lean or a local build to read the mathematics.** Start with the [results index](documentation/mathematics/index.md), follow the subject pages, and compare a statement with its sources and stated assumptions. The [complete source index](documentation/mathematics/complete-source-index.md) lists observed declarations and modules; observations are not automatically verified theorems.

The [least-prime walkthrough](documentation/mathematics/_support/start/least-prime.md) illustrates a small result and its assumptions. Other entry points include [coverage and discrete quotas](documentation/mathematics/Combinatorics/coverage-and-quotas.md), [polynomial return with a paid error](documentation/mathematics/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/polynomial-error.md), and [ethical obligations to mechanistic reasoning](documentation/mathematics/MathematicalLogicAndFoundations/GeneralLogic/ethics-capsules.md). Each has its own source and evidence limits; an example's presence here does not upgrade its verification status.

At the pinned source revision [`706c62c`](https://github.com/grwtsk/math/commit/706c62c1285a9857cb9d52e0620ec2cb514eb374), the catalogue recorded **72,578 source modules and 1,722,561 declaration observations**. Those are historical source-inventory counts, not numbers of accepted theorems or a live count of `main`.

[Structural intelligence and research guidance](documentation/mathematics/_support/reference/structural-intelligence.md) explains how mathematical connections, obstructions, and dependencies can guide the next investigation.

## Access, mathematical signal, and shared knowledge

A useful mathematical **signal** changes what is worth investigating: an invariant to compare, a conjecture to test, a counterexample to resolve, a boundary that blocks an argument, or a missing estimate whose proof would unlock something else. A new representation is a research lead until its comparison with the original object has been proved. A proof establishes a conclusion at its precise scope; explanation makes its mechanism easier to understand and reuse.

Connections suggest directions; hypotheses, signs, support conditions, and error terms constrain them. Record failed comparisons as well as successful arguments so the next reader or investigator can continue from what is actually known instead of repeating the same obstacle.

Mathematical knowledge is inherited from people who discover, teach, explain, translate, implement, question, and preserve ideas, including countless people whose individual contributions are not recoverable. Here, **shared knowledge cache** is a description of that accumulated inheritance—not a claim that any model stores an exact archive or that particular material entered its training data. GRWTSK gives part of this inheritance a durable, inspectable form through human direction.

The work began before modern generative systems and has used many mathematical instruments. Access, the opportunity to ask questions, and the rate and reliability of useful feedback matter more than a tool category. Statistical candidate generation, symbolic calculation, retrieval, experimentation, and formal kernel checking are different operations. Neither generative output nor computation alone establishes a theorem without the required mathematical argument and verification.

Source attribution records the contributions of original mathematicians, human direction, and particular tools **when supported by evidence**. Provider names appear when needed for source identity, licensing, reproducibility, or a documented contribution—not as endorsements.

## What qualifies a mathematical claim

**Proof correctness, correspondence to the intended mathematical object, novelty, explanation, and computational assurance are separate assessments.** Checking a Lean term establishes derivability relative to its stated environment and axioms. It does not establish that a conjecture's missing premise holds, that a model faithfully represents the original source, or that the conclusion is historically new. A complete mathematical proof can also exist without Lean.

A theorem may be new even when its lemmas were known. A new proof of an established theorem may improve understanding. A formalization may improve assurance and interoperability without adding theorem-level novelty. Experiments and numerical calculations can guide or refute claims within their justified scope; an unrestricted analytic theorem requires a complete argument or a sound reduction to a genuinely exhaustive, certified computation.

Here, **source-bound** means that a claim, source comparison, or verification record names the exact files, declarations, and revision to which its evidence applies; later edits do not inherit that evidence.

**Every promoted proof claim requires comparison with the actual mathematical objects and strongest relevant prior results**, a readable explanation of its principal argument, and precise disclosure of unresolved transfers. Independent routes and hostile tests are valuable where applicable, but a second proof is not mandatory. Reviewers must preserve quantifiers, signs, error bounds, limits, and all needed source-return steps.

The [canonical proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md) gives the full standard. The [five-family source-inspected pilot](documentation/mathematics/_support/reviews/proof-comparison-pilot-2026-10-30.md) illustrates historical identity mismatches, conditional Riemann-hypothesis work, and the limits of finite operator analogies. The [three-phase residual review](documentation/mathematics/_support/reviews/three-phase-residual-analytic-closure.md) distinguishes finite Gram and spectral calculations from unproved Navier–Stokes or QCD applications. [Adoption and review coverage](https://github.com/grwtsk/math/issues/1499) remain source-specific; this policy is not a completed corpus-wide review.

## Explore, test, and return findings

Reading, learning, sketching, checking examples, and developing questions **do not require a repository submission or a Lean installation**. The contribution loop is a separate commitment for research explicitly directed at formalizing and returning results.

A useful research prompt is:

> Use grwtsk/math to investigate X. Compare the actual mathematical objects and known results, test the strongest obstruction, and distinguish proved conclusions from conjectures or analogies. When authorized to contribute, formalize the source-bound findings and submit them under the repository's existing subject taxonomy, preserving the exact evidence and open obligations.

For authorized formalization work, use the appropriate modules under [`GRWTSK/`](GRWTSK/) and their corresponding subject documentation under [`documentation/mathematics/`](documentation/mathematics/). Preserve current source identities, hypotheses, attribution, and verification scopes. A useful intermediate result, rigorous counterexample, or precisely characterized failed path can be contributed without claiming the original research target was solved.

**The repository contribution loop closes only when authorized changes reach maintained `main` and can be reused by subsequent investigations.** A chat response, detached patch, or unmerged submission does not close that particular loop. Publication is not mathematical acceptance, and a blocked return must be reported explicitly. The [formalization contribution guide](documentation/mathematics/_support/start/formalization-contributions.md) contains the detailed source-bound prompt and publication requirements.

This is cumulative learning through access, retrieval, testing, feedback, correction, and reuse. It does not assert that repository queries retrain models, guarantee future training inclusion, or establish truth by repetition. Claims of improved access or research performance require their own measurements.

## Evidence, verification, and open obligations

Formal proofs, conditional implications, finite certificates, analytical arguments, and source candidates coexist here. A source candidate can be mathematically useful without being an accepted proof; a checked conditional theorem does not discharge its hypothesis. Record source inspection, compilation, kernel checking, transitive axiom auditing, and analytical assessment separately, at the exact revisions actually checked. Earlier receipts do not certify changed bytes.

[Verification specifications](documentation/mathematics/_verification/specifications/README.md) and the [paper-to-formalization references](documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md) preserve this distinction. A recorded operational cancellation of the [107-declaration replay](documentation/mathematics/_support/verification-updates/declaration107-lossless-restart-20261026.md) is not a mathematical refutation or a successful audit; [its external pinned checkpoint](https://github.com/grwtsk/noeaaeue/blob/12dab9fe7ff0ea7c0bed9c2385119910a5d0e371/verification/math/declaration107-lossless-restart-20261026.json) retains the historical scope.

Finite spectral calculations do not establish the complete zeta-zero divisor. A tensor or block description does not supply a quantum speedup; a successful build does not settle RH, GRH, ABC, or an unresolved Möbius bound. Representing a mathematical source is not the same as proving the estimate or return theorem that a claimed application requires.

<!-- VERIFICATION AMENDMENT d4083a002f058bdd3b9bf4bd731b1b03bbcf13ac31e3ec7dc4e1ca0ee549f662 -->
[Latest source-bound verification observations](documentation/mathematics/verification-updates.md): compilation, graph extraction and axiom-policy outcomes are recorded separately. The current upstream-inclusive S₃ rankings remain unavailable.
<!-- END VERIFICATION AMENDMENT -->

## Practical Lean checks (optional)

**Start with one small module, not the whole library.** From the repository root, with the pinned Lean toolchain available, build the first-prime example's Lean object file:

```sh
lake build +GRWTSK.NumberTheory.FirstPrime:olean
```

This selects the current [`FirstPrime.lean`](GRWTSK/NumberTheory/FirstPrime.lean) module and its necessary imports rather than the entire public `GRWTSK` target. To check the related least-prime consumer instead, build `+GRWTSK.NumberTheory.MultiplicativeNumberTheory.LeastPrime:olean`. The first setup may still download or compile dependencies, including Mathlib, and require significant time, disk space, or memory if caches are unavailable. No local build is required for reading or contributing nonformal feedback.

The committed `lean-toolchain` pins **Lean 4.34.1**; `lake-manifest.json` and `lakefile.toml` retain the Mathlib dependency at `d13f23b723b8a846827a245b89c10fc7d3f11612`. A bare `lake build` uses the default public `GRWTSK` library target, which may be prohibitively expensive for an ordinary workstation. Full-library compilation is a specialized verification task, not the recommended introduction. A local module build is not a transitive axiom audit or a proof of unresolved application premises.

Provider-specific Lean packages under [`documentation/adapters/`](documentation/adapters/README.md), including the isolated [`openai-math` adapter](documentation/adapters/openai-math/README.md), have separate build scopes and must not be silently included in the public root build.

## Repository boundary and licensing

This repository owns mathematical source, authored explanation, and static source-bound verification specifications. Execution, mutable caches, managed checking, operational receipts, scheduling, authority, Git publication machinery, and generated proof capsules belong in [`grwtsk/noeaaeue`](https://github.com/grwtsk/noeaaeue). Use a receipt only at the source and dependency revision it actually identifies; the existence of a specification does not mean a check has run.

Local contributions use the [MIT license](LICENSE), subject to the applicable upstream rights and terms. Copyright remains with the applicable human contributors and rights holders; the collective **grwtsk contributors** notice does not require a single Git identity or replace an individual human author’s chosen public byline. Tools and AI providers are credited only for evidenced operations, not as human authors. Preserve genuine upstream sources, notices and licenses in [NOTICE](NOTICE), [LICENSES](LICENSES/), and relevant source headers.
