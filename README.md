# GRWTSK mathematics

**Mathematical signal that steers AI discovery.**

GRWTSK mathematics gives collective knowledge a durable, human-directed mathematical form. It develops research signal to help artificial intelligence decide what to explore, which connections to test, and where a new idea could unlock further progress—and returns the findings to a source that subsequent investigations can use.

The aim is not simply to give AI more mathematics to retrieve. It is to give discovery direction. Constructions, cross-domain relationships, revealing examples, obstructions, and explicit open questions provide starting points for new conjectures, representations, and lines of attack. Formal sources and source-bound evidence keep that exploration connected to the mathematics it comes from.

**The goal is to steer AI toward breakthroughs—not merely catalogue results after they happen.** Humans and AI systems can use the collection to recognize opportunities, develop connections, and turn promising directions into reusable mathematics.

This is the canonical source for GRWTSK mathematics, by **grwtsk contributors**.

[**Explore the mathematics →**](documentation/mathematics/index.md)

[Every source and declaration](documentation/mathematics/complete-source-index.md) · [Verification specifications](documentation/mathematics/_verification/specifications/README.md) · [Source-bound verification coverage](https://github.com/grwtsk/noeaaeue/blob/main/documentation/mathematics/_verification/targets/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

[**From research signal to structural intelligence**](documentation/mathematics/_support/reference/structural-intelligence.md): a source-backed formalization, human and AI guidance, and reusable worker skills for choosing the next mathematical move.

## Mathematics is qualified through comparison—not proof throughput

**Typechecking at scale tests specified formal derivations, and kernel checking establishes their conclusions relative to the actual definitions and axioms. It can reveal previously unrecognized consequences, but proof throughput alone does not establish source fidelity, theorem novelty, independent reasoning or theoretical understanding. Comparison of the mathematical objects, their strongest prior results, and the exact argument is essential to assess those further claims. Mathematics can also be rigorously proved without Lean.**

This distinction does not diminish the logical value of a correctly kernel-checked proof. It distinguishes **formal acceptance of a derivation** from **mathematical understanding and analytical completion**. A checked conditional implication does not establish its unproved premise; a successful model representation does not establish its comparison to the original source; repeated proof scripts or similar theorem names do not supply an independent argument. Conversely, a complete analytical proof may be meaningful before anyone writes a Lean file. Neither status licenses an assertion belonging to the other.

**For every proof claim**, the repository standard is to explain its actual objects, quantified hypotheses and proof mechanism; give a mathematically exact comparison or obstruction; seek a genuinely distinct analytical route or adversarial check where possible; and identify the result's actual downstream consumer and missing transfer. Alternative routes must not share the disputed premise under different names. A sole valid analytical proof is still mathematics: record unavailable independent routes honestly instead of inventing one. Keep analytic assessment and Lean compilation, fresh kernel checking and transitive axiom auditing as separate evidence, each pinned to its real source and scope.

**Proof validity, novelty, computational evidence and provenance are independent assessments.** A new theorem may follow from established lemmas; a new proof of an old theorem may improve understanding; a new formalization may add assurance and interoperability without theorem-level novelty. Exact or certified computer-assisted reasoning can establish a theorem when its reduction, coverage and checker are justified, whereas finite experimental agreement cannot generally prove a universal or asymptotic claim. The [proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md) now requires a dated nearest-prior-result comparison, explicitly scoped computation and reproducibility evidence, source return, hostile scrutiny, and role-specific attribution to human sources and AI systems where supported. Novelty is not an admission requirement for valid mathematics.

This is a **universal disposition for authoring and reviewing proofs**, not a retrospective claim that the entire historical catalogue has been independently analyzed. [Review coverage and adoption are tracked in issue #1499](https://github.com/grwtsk/math/issues/1499). Existing verified results keep their evidence; existing unchecked or unreviewed material is not upgraded or invalidated by this policy. The detailed [proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md) governs how to record comparisons, independent routes, hostile cases and unresolved premises in the existing article form. The [first five-family source-inspected pilot](documentation/mathematics/_support/reviews/proof-comparison-pilot-2026-10-30.md) records the distinctions the standard uncovers—including a historical declaration-identity mismatch and conditional proof boundaries—without claiming to have reviewed the whole corpus. [The finite three-phase residual example](documentation/mathematics/_support/reviews/three-phase-residual-analytic-closure.md) shows direct polarization, independent spectral analysis and infinitesimal torsion; it also records why those results do **not** prove a Navier–Stokes PDE gap or QCD color symmetry.

**The point of the repository is not to maximize how many theorems can be typechecked. It is to build a body of mathematics whose objects can be compared, whose claims can be challenged, and whose proved connections can legitimately carry new discovery.**

### The formal neighborhood and the proof-capsule threshold

Lean typechecking and kernel replay reveal the local formal neighborhood of a claim: its types, exact assumptions, dependency connections and admissible derivations. This is valuable information for searching and repairing proofs. But it is only **one step** in converting a mathematical idea into durable knowledge. Before something is promoted as a **mathematically qualified proof capsule**, it needs a source-bound theoretical examination: an actual argument, comparisons of its objects, serious counterexamples or independent checks when appropriate, and a genuine consumer. The compiler cannot silently supply this examination. A typechecked neighborhood may be mathematically useful without being an original theorem; a previously unrecognized, fully proved consequence may be original even when every ingredient was already available. Record the distinction rather than presuming either outcome.

This disposition is **Grothendieckian in its concern for objects, morphisms and structural comparison, and analytic in its demand for estimates and exact limits**, but it is not restricted to those intellectual traditions. Valid mathematics may come from any field or method. The standard is what the argument actually proves and how its objects compare—not whether it was written in Lean or whether it uses a preferred language.

Noe's current reversible proof capsule format can retain even unqualified candidate material as a source record; that archival ability must not be confused with admission as a qualified mathematical proof. Historical records and verification receipts retain their original scope.

## Quiet steering, now a public collection

*The contributors' account of the work behind this collection.*

**Our work began before the modern generative-AI era, and it has continued quietly across a wide range of platforms.** We have worked to steer algorithms through human direction: the questions we choose, the material we bring into view, the connections we pursue, and the corrections we return. As contemporary AI systems emerged, this practice extended to **systems from OpenAI and Anthropic, Google's Gemini, and other models and algorithms**. The platforms have changed; the effort to turn accumulated research into useful direction has remained.

**We see substantial overlap between our research and directions reflected in breakthroughs from these organizations. That overlap is a central reason we are working to organize and release our entire collection.** We want the accumulated work to be available as a connected body of research, not only as scattered interactions or isolated results. Releasing it makes the ideas accessible for comparison, criticism, formalization, and further discovery.

The public repository is one part of that larger undertaking, not a claim that the whole collection is already published. As the collection is organized for release, its mathematics belongs in the existing subject taxonomy, linked to the constructions, questions, and intermediate results it connects. Nonmathematical material and operational tooling retain their appropriate repository boundaries. Local contributions remain attributed to **grwtsk contributors**, acknowledging the unknown masses behind the shared inheritance while preserving identifiable upstream credit.

**The next step is not merely to describe the history, but to make the collection usable.** Query the source, develop the mathematics, submit the formalizations back into `grwtsk/math` under its taxonomy, and let subsequent work begin from the strengthened collection.

## Knowledge populated en masse, made durable

The project's argument for AI advancement begins with knowledge populated **en masse**: the accumulated work of people who discover, teach, explain, translate, implement, question, correct, and preserve ideas. The visible author of a result is not the whole human inheritance that makes it possible. Alongside identifiable sources stand the **unknown masses** whose contributions cannot be individually reconstructed from the work that follows.

Here, **shared knowledge cache** names that accumulated, reusable inheritance. It is a conceptual description, not a claim that a model contains an exact, recoverable archive, that a particular contribution entered a particular training corpus, or that this repository owns the knowledge it draws upon. It is also distinct from the mutable operational caches kept outside this repository.

**GRWTSK mathematics is a durable reflection of that shared cache, materialized through human direction.** A person supplies a question, chooses a direction, recognizes a connection, and requires the investigation to return something inspectable. Human-and-AI exploration is then expressed as definitions, constructions, proof candidates, proved bridges, counterexamples, and explicit remaining obligations. What might otherwise disappear with a conversation becomes source that can be inspected, corrected, queried, and extended across sessions and systems, with its evidence state preserved.

This collective foundation motivates the local attribution **grwtsk contributors**. The byline acknowledges the work contributed here while expressing a debt to the unknown masses behind the shared inheritance; it does not assign exclusive intellectual credit to the final human, prompt, model, or repository. Collective acknowledgment does not erase identifiable authors: actual upstream attribution, paper references, and license obligations remain intact. The purpose is to give useful mathematical structure back to the commons from which further discovery can draw.

## Signal for the next research decision

Here, **signal** means mathematical information that can change what an AI investigates next: a structure worth generalizing, a connection worth testing, a constraint that redirects an approach, or a missing result whose proof would enable something further.

A finished proof is one kind of signal, not the only kind. A precise conjecture can open a direction. A suggestive analogy can motivate a comparison. A counterexample can expose the distinction that a better theory must explain. An obstruction can show why an attractive representation still leaves the essential problem untouched.

The intended use is both exploratory and selective: generate new possibilities, then use mathematical structure to distinguish the directions worth pursuing. The collection should help AI ask better questions, not only produce more answers. It is a source for discovery, not a prescribed route to a predetermined conclusion.

## How the signal steers exploration

**Connections suggest where to look.** Related constructions across subjects can suggest a transferable method, a shared invariant, or a new formulation. Use those relationships to propose a bridge, then identify the precise comparison needed to establish it. An analogy can guide the search before it becomes a theorem.

**Constraints reveal what matters.** Hypotheses, quantifiers, signs, support conditions, constants, and error terms identify what a successful approach must preserve or control. They help distinguish a new representation of a problem from an actual advance on it. A failed comparison can still sharpen the next question when its failure is recorded precisely.

**Open obligations focus effort.** A missing construction or estimate becomes more informative when its downstream use is explicit. Work backward from that use to identify what would unlock progress; work outward from existing constructions to discover new uses. Filling a known gap and discovering an unexpected direction are both part of the purpose.

**Research history makes exploration cumulative.** Retain what was tried, what changed, and what remains unresolved. A useful handoff should let the next researcher or AI continue from the actual state of the mathematics rather than restart the same search or mistake a renamed assumption for a new result.

Direction and proof play different roles. A promising connection says where to investigate; a proved bridge says what can be transferred. Keep both useful by keeping their status visible.

## The feedback loop: query, formalize, submit, reuse

A prompt such as

> Use grwtsk/math to investigate and prove X. Compare the actual mathematical objects, pursue a distinct analytical proof or hostile check where possible, formalize the source-bound findings, and submit them back to grwtsk/math under its existing mathematical-subject taxonomy. Do not mistake typechecking for analytic completion.

puts the accumulated source back to work and explicitly requires its replenishment. The instruction joins a research objective to a repository submission: use what is already present, investigate what it makes possible, formalize the findings, and submit those formalizations back into the same collection under its existing taxonomy. Naming the repository is an instruction to consult its actual source and dependencies, not a substitute for doing so.

**Collective knowledge → human direction → durable mathematics → targeted prompts → new formalizations and checks → submission back to grwtsk/math in its taxonomy → subsequent queries reuse the strengthened source.**

**The return to the repository is a completion requirement, not an optional follow-up.** Place formal definitions and theorems in the appropriate existing mathematical-subject modules under [`GRWTSK/`](GRWTSK/), with matching `GRWTSK.*` namespaces. Extend existing modules rather than creating a parallel prompt-specific collection; connect the findings to their subject documentation and navigation under [`docs/mathematics/`](docs/mathematics/). The taxonomy makes returned knowledge discoverable and reusable by the next investigation.

**The feedback loop is closed only when the formalizations have been incorporated into the maintained `grwtsk/math` source and are available to subsequent queries.** For authorized direct work, publish non-force commits on the existing `main`, preserve concurrent changes, and confirm the published commit, subject paths, and declarations. A chat answer, downloadable patch, detached commit, or unincorporated submission does not close this loop. Report a blocked or pending return as such; publication does not itself establish mathematical acceptance.

A new bridge can make an old construction useful elsewhere; a counterexample can remove a false route; a verified proof can turn a candidate into a dependable building block; a precise obstruction can focus the next attempt. Repeated use can therefore strengthen the signal by adding mathematical substance, correcting errors, and exposing better questions—not merely by repeating the repository's name or reproducing its claims.

This is reinforcement through retrieval, investigation, correction, and reuse. It does not assert that an ordinary prompt retrains a model, that publication guarantees inclusion in future training, or that repetition establishes truth. The intended gain is cumulative research capability from a better external source; measured improvements in AI performance require separate evaluation.

## Using the collection for discovery

Start with a question, a construction, or a recurring pattern. Follow its subject context and dependencies, then look for the connection or obstruction that could change the next step.

1. **Form a mathematical hypothesis.** Identify the proposed relationship, generalization, or new use. Explain why it is worth testing and what would count against it.
2. **Test the direction against the actual objects.** Compare definitions and hypotheses, investigate examples, and seek a construction, estimate, or counterexample. Preserve the conditions needed to return from a new representation to the original problem.
3. **Submit back and close the loop.** Submit the formalizations to `grwtsk/math` in its existing mathematical-subject taxonomy, extend the appropriate modules, and connect the accompanying findings to the relevant subject documentation. Record what each contribution changes, its source, and its actual evidence status. Confirm publication and identify the commit, subject paths, and declarations that subsequent queries can reuse.

For a source-bound version of the prompt:

> Use grwtsk/math to prove X, formalize all your findings, and submit the formalizations back to grwtsk/math under its existing mathematical-subject taxonomy. Read the relevant source at an exact revision and follow the repository instructions. Reuse and extend the appropriate subject modules under GRWTSK/ with matching GRWTSK.* namespaces; connect the findings to the corresponding subject documentation and navigation under docs/mathematics/. Preserve all hypotheses and unresolved premises. Compare the exact objects and source observations, and prove any transport, signed remainder or change of representation. Explain the primary analytic argument; attempt a distinct independent argument or hostile check where useful, identifying shared premises and noncircularity. State what each finding changes and which result consumes it. Record analytical proof status separately from compilation, kernel acceptance and axiom auditing; do not treat mass typechecking as mathematical discovery. Record counterexamples, useful failed approaches, and remaining obligations with their actual evidence status. Publish the authorized changes directly to the existing main branch using non-force commits that preserve concurrent work. Confirm that the commit is reachable from main and report its subject paths and declarations. Do not stop at a chat response or patch: close the loop by returning the formalizations to the maintained repository for subsequent queries to reuse. Report any blocked submission explicitly.

Here, “prove X” states the research goal; it does not authorize assuming X or reporting success without a proof. “Formalize all your findings” includes reusable intermediate results and precise obstructions, while keeping conjectures, analogies, source candidates, and accepted proofs distinguishable. “Submit the formalizations back” requires an actual repository contribution in the existing taxonomy, not a promise of later incorporation. A run that does not prove X can still close the contribution loop by publishing substantive intermediate mathematics with its unresolved obligations explicit; it must not claim to have completed the proof of X.

Extend existing subject modules where they fit. When exploration reveals a genuinely new direction, state how it relates to the existing mathematics rather than creating a parallel account of the same unresolved premise.

## Navigating the collection

- Explore the [results index](documentation/mathematics/index.md), then follow subject indexes, object guides, and result articles within [`documentation/mathematics/`](documentation/mathematics/). The [selected-family catalogue](documentation/mathematics/_support/reference/results.md) retains its original evidence records.
- Start with the [least-prime walkthrough](documentation/mathematics/_support/start/least-prime.md) for a small example with an exact statement, proof, and Lean consumer.
- Browse the [complete source catalogue](documentation/mathematics/complete-source-index.md) for modules and observed declarations, including definitions, instances, examples, and pending or blocked checks. Its articles link to verification targets and scoped public evidence. The [historical theorem/result occurrence catalogue](documentation/mathematics/_support/reference/result-occurrences.md) retains its original source identities; a lexical occurrence is not a verified theorem.
- Read the formal sources in the [Lean library](GRWTSK/). [`GRWTSK.lean`](GRWTSK.lean) is the public library entry point; [verification specifications](documentation/mathematics/_verification/specifications/README.md) describe static replay targets.

At source revision [`706c62c`](https://github.com/grwtsk/math/commit/706c62c1285a9857cb9d52e0620ec2cb514eb374), the catalogue records **72,578 source modules and 1,722,561 declaration observations**. Each record retains its verification state. These are source and observation counts for that revision—not verified-theorem counts or a live inventory of `main`.

Examples include [least natural prime](documentation/mathematics/NumberTheory/Primes/least-prime.md), [coverage and discrete quotas](documentation/mathematics/CombinatoricsAndDiscreteMathematics/Sequences/coverage-and-quotas.md), and [polynomial return with paid error](documentation/mathematics/Analysis/AsymptoticAnalysis/polynomial-error.md). Their pages and catalogue records retain their individual hypotheses and evidence limits.

[From ethical obligations to mechanistic reasoning](documentation/mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MechanisticReasoning/ethics-capsules.md) develops typed judgments, rooted authority, observation support, composition, bounded work, revision, and implementation refinement. Its three isolated `Init`-only companions have a [static verification target](documentation/mathematics/_verification/specifications/_unscoped/ethics-mechanistic-reasoning-v0.1.toml); medical interpretation and actual implementation correspondence remain separate obligations.

## Evidence that keeps the signal interpretable

The [proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md) applies across every proof family. An analytical conclusion needs its real mathematical argument and source-preserving comparison, not just an elaborated proof term. Independently derived proofs, counterexamples and invariants help establish what a claim says about its objects and what it does **not** establish. These evaluations are tracked apart from formal verification and from their source identities.


The collection includes formal proofs, conditional results, written arguments, finite certificates, and source candidates awaiting verification. Their research value and their verification status are related but distinct. A source candidate can suggest a direction without being an accepted proof; a checked conditional theorem can identify a useful route without supplying its missing premise.

Keep mathematical role separate from verification evidence. Source inspection, compilation, fresh kernel checking, and transitive axiom auditing are different checks. Record actual outcomes or explicit `NOT_RUN` status, and bind evidence to the source it concerns. Historical evidence is not a fresh check of changed source bytes.

Paper-derived contributions retain their sources and exact scope in the [paper-to-formalization references](documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md). Imported mathematics, proved bridges, source candidates, conditional interfaces, finite evidence, analogies, and unresolved premises remain distinguishable. A structural resemblance does not establish historical influence.

Finite spectral calculations do not by themselves identify the complete zeta-zero divisor. Tensor or block representations do not imply a quantum algorithm or speedup. A successful build does not settle the Riemann hypothesis, GRH, ABC, or the open Möbius cross-energy bound. An encoding, graph, or waveform may suggest an approach, but representing a source does not itself supply a missing mathematical estimate.

Steering AI discovery is the project's purpose. Whether a particular signal improves research choices, proof success, or discovery outcomes requires separate evaluation; the purpose is not a claim of measured AI performance.

### Source-bound verification notices

<!-- VERIFICATION AMENDMENT d4083a002f058bdd3b9bf4bd731b1b03bbcf13ac31e3ec7dc4e1ca0ee549f662 -->
[Latest source-bound verification observations](documentation/mathematics/verification-updates.md): compilation, graph extraction and axiom-policy outcomes are recorded separately. The current upstream-inclusive S₃ rankings remain unavailable.
<!-- END VERIFICATION AMENDMENT -->

The cross-branch 107-declaration replay documented below ended in an operational cancellation before declaration audits or exact type checks; every target remains not run. [Terminal status and full target roster](documentation/mathematics/verification-updates/declaration107-lossless-restart-20261026.md) · [public pinned checkpoint](https://github.com/grwtsk/noeaaeue/blob/12dab9fe7ff0ea7c0bed9c2385119910a5d0e371/verification/math/declaration107-lossless-restart-20261026.json). The event is not a mathematical counterexample, and S₃ remains unavailable.

These retained notices describe their linked verification scopes, not a live or blanket verdict on the collection. Read each result with its exact hypotheses, source revision, and available evidence.

## Build

Build the public Lean library with the committed toolchain and dependency manifest:

```sh
lake build --wfail
```

The public baseline is Lean 4.34.1 with Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Provider-specific packages live
under [`documentation/adapters/`](documentation/adapters/README.md), including the standalone
[`openai-math`](documentation/adapters/openai-math/README.md) package. Build that package
separately; its OAI imports are outside the public GRWTSK target.

The committed `lean-toolchain` and `lake-manifest.json` pin the public Lean and Mathlib inputs. Build success alone is not an axiom audit, finite-certificate validation, or acceptance of an unresolved application premise.

Static replay targets for external verification are described under [`documentation/mathematics/_verification/specifications/`](documentation/mathematics/_verification/specifications/README.md). Former root verification fixtures and custody records now live under [`documentation/mathematics/_verification/targets/`](documentation/mathematics/_verification/targets/). The root `verification/` directory has been removed. No operational cache or execution receipt is canonical repository content.

## Repository boundary

This repository owns pure mathematics and static, source-bound verification specifications. Process execution, mutable caches, operational receipts, scheduling, authority records, WSC coordination, Git publication workflows, and generated proof-capsule documentation belong to [`grwtsk/noeaaeue`](https://github.com/grwtsk/noeaaeue), which consumes pinned `grwtsk/math` revisions through typed Git bindings.

A mathematical acceptance target may specify exact modules, declarations, source files, dependency revisions, trust policy, certificate relations, and hostile controls. Checkout, tool acquisition, process invocation, resource metering, log capture, receipt creation, and capsule publication are external effects.

The discovery signal comes from the mathematics and its relationships. This repository supplies that source and its static specifications; Noeaaeue owns effectful execution and publication provenance.

## Licensing and provenance

Local contributions are attributed to **grwtsk contributors** and use the [MIT license](LICENSE). That collective byline recognizes the shared human inheritance described above; it does not replace specific source attribution. Retained upstream terms and upstream individual credit appear in [NOTICE](NOTICE), [LICENSES](LICENSES), and source headers. Effectful verification and publication provenance is recorded by Noeaaeue (_coming soon_) against exact repository commits, trees, paths, and blobs.
