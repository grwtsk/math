# Architecture decisions

[Taxonomy](../index.md)

These decisions define this bounded draft's design, not independent editorial acceptance of its concepts, permission to execute workflows, or approval by an external body. Review history begins with 0.1, 2026-10-19; all alternatives and unresolved gates remain retained here.

## D01 Ownership

Use maintained concept pages, mathematical/editorial proposal content, stable decisions and static specifications in `grwtsk/math/docs/taxonomy/`. Do not move Lean or modify source imports. The existing documentation index is left unchanged because its generated inventory is not this pilot's denominator.

Noeaaeue's `registry/taxonomy/classification/` owns named PMD disk metadata and transfers; `registry/taxonomy/collation/` owns source collation; `workflows/taxonomy/integration/` owns integration effects. These remain distinct from the universal mathematical concept library. Their historical snapshots are neither replaced nor relabeled as this scheme. Any relationship to the new vocabulary needs a separate, versioned association/crosswalk. Existing mathematical Git bindings remain the input boundary.

This resolves the naming overlap without a second operational framework: reuse those owners for future effects, subject to their contracts. It does not assert that their current implementation already understands this profile. Their compatibility, nested instructions, extension points and exact execution commands require a source-bound Noe implementation review before any operational change. No validator, publisher, cache, operational receipt, permission ledger or scheduling state is added to math.

Sources: [math AGENTS](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/AGENTS.md), [Noe taxonomy](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/README.md), [Noe classification](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/classification/README.md).

## D02 Reference-only external sources

The pilot contains locally authored explanations, bibliographic metadata and selective code references. It does not import the MSC dataset, external definitions, standards texts or book files. MSC's CC BY-NC-SA 4.0 terms are not replaced by the repository's MIT notice. Bulk external registration and redistribution remain blocked until an explicit permitted reuse/distribution arrangement and source-byte acquisition are recorded. Reference-only records do not count as imported, reconciled scheme entries.

Possible later arrangements include a separately noticed license-scoped data component, an authorized external reference service, or specific permission. None is approved by this draft. Exports must carry record-level provenance and rights and must not flatten mixed licensing into MIT. ISO complete texts, detailed LCC schedules and unverified authority identifiers are not reconstructed from public summaries.

## D03 Single canonical source

Adopt the Markdown/YAML profile in [schema](../schema.md). One concept has one page and UUID, all semantic parents, and one chosen navigation home. The registry owns path identity. Relative links expose other routes without duplicate definitions. Source associations, crosswalks and proposals are separate records rather than additional definitions of the subject. No competing editable JSON/RDF catalogue is created.

## D04 Pilot admission and scale-up

The original eleven concept records and three crosswalks were proposed; the 0.2 candidate adds three proposed subjects and one proposal without admitting any record. No independent reviewer or production graph is claimed. The pilot exercises architecture but leaves full disciplinary coverage intact. Before population batches, resolve any profile defect, source-rights blocker or ownership conflict discovered by review. Before production release, execute the positive/hostile controls in Noe, reconcile the complete declared baseline, and publish independent semantic and cataloging dispositions.

## D05 Compatibility and source credit

The three named namespace pairs remain scope-review candidates. Preserve existing exact source versions, upstream notices, hypotheses and unresolved #254 credit markers. Classifying a guide or a source occurrence does not migrate its Lean module. Splits and merges require durable predecessor/replacement decisions; new paths cannot silently redefine historical identities.

## D06 Reference-only population and rights boundary

Draft editorial disposition, 2026-10-19: continue original local subject authoring with citations while the bulk external-data gate remains closed. [The MSC reference profile](../standards/msc2020/index.md) distinguishes public reference access from acquisition, adaptation and distribution of scheme data. Do not infer rights clearance from a private cache, an external runtime, a successful parser or this repository's MIT label. The user's intended downstream use has not been determined or certified as noncommercial.

Original history/education descriptions in [the bounded addition](../proposals/new-concepts/history-education.md) are not an imported classification dataset. This resolves placement for that addition only; it does not waive D02, authorize a standards submission or accept a mapping. The local vocabulary candidate advances to `0.2-pilot`; earlier source editions remain historical and no accepted release is published. Existing mapping IDs retain their meanings, target editions and proposed states; their local-source edition update is explicit and requires renewed review.

Alternatives for future dataset use must document the actual license basis or separate permission, notices, restrictions and distribution boundary before implementation. Do not choose a permissive replacement license for source-owned material. Full native identifiers and relationships remain obligations even while inaccessible. The original audit and test specifications remain historical source; execution receipts and repeatable results belong in Noe or external runtime outputs.

## D07 Literature-led field additions without source migrations

Candidate 0.3 adds fifteen proposed subject records and a retained placement proposal, preserving every preceding concept page. Mathematical logic is not equated with all foundations, combinatorics with all discrete mathematics, or a group with every finitely generated structure. Coloring variants and palette-count conventions remain explicit. Chromatic-polynomial theory has two proposed parents and one canonical page; this is polyhierarchy, not a cross-scheme match or theorem implication.

Use L6-L10 only as the specified reference warrants. Preserve the observed title-page/landing-page date discrepancy for Judson and the edition-specific license distinction for Levin. No cited source is relabeled MIT. The full MSC original-byte acquisition, rights and identifier-reconciliation obligations remain unchanged. The bibliography supports a local draft, not external endorsement or independent conceptual acceptance. The namespace collision proposal and #254 attribution questions are not resolved by these additions.

Separate 0.3 Noe bindings must retain the prior inputs. A source-edition change in an existing mapping requires a retained history comparison even when its target and relation do not change. No operational grant or production admission is stored here.

## D08 Geometry/topology population and alternative-source distinction

Candidate 0.4 adds twelve proposed subjects and eleven specialization edges, keeping all preceding concept definitions unchanged. The dual-parent computational simplicial-homology subject fixes finite abstract complexes, exact prime-field coefficients, orientations and unreduced output. Floating-point rank heuristics, integral torsion, persistence, sampled-space reconstruction and software correctness are not equivalent to that contract. This is a local organization proposal, not a theorem or an operational grant.

TIB's MSC2020 SKOS conversion, inspected at `33972ddb6a72c3660a6e499ee5f881b57fa92d41`, is a separately versioned research serialization. Register it as an alternative input candidate S12; do not silently replace S1's published MSC2020 baseline, import an inferred hierarchy as official direct edges, or treat its existence as rights clearance. Full native-code reconciliation remains blocked. Existing external mappings change only local source edition and history; no review is transported automatically.

## D09 Statistics after source integration

Start the successor candidate from main `f3d3f755ac0bb40732f9580a3cb30fecdcd26bcd` rather than mutating the merged #280 branch. Its source-only integration preserves candidate 0.4 and all proposed states; it is not independent semantic acceptance. Add eleven original statistical subject descriptions and eleven proposed specialization edges under the existing schema, with one definition for the two-parent least-squares subject. The [proposal](../proposals/new-concepts/statistics.md) retains alternative classifications and model obligations.

Keep source edition, schema, operational validation and proof status separate. Advance the local vocabulary to 0.5-pilot and explicitly version the three existing mappings' source edition; do not change their external targets or infer review continuity. Retain all 41 preceding concept payloads. Probability, statistical decisions, frequentist coverage and posterior probabilities are not interchangeable labels. Citation-only authoring continues under D02/D06; no native MSC import, permission grant, acceptance or completeness claim is made.

## D10 — Numerical and optimization candidate boundary

Decision status: local authoring decision; not independent semantic acceptance. Recorded 2026-10-20 against math `262daeee89add65f0d7997f338f9ca45bcac718e` and Noe `ba81eef56f4b9c2fb29b9ff2ef838f5f4989e4c7`.

Retain two subject roots and one canonical restricted conjugate-gradient page with Krylov and strictly convex quadratic parents, all proposed. The [addition proposal](../proposals/new-concepts/numerical-optimization.md) records alternatives and review criteria. Advance the unpublished local vocabulary to 0.6-pilot without changing schema versions, prior concept payloads, source-specific notices or external mapping semantics. Preserve older edition bindings and do not transport acceptance. Condition, stability, residual/error, exact arithmetic and implementation evidence remain distinct. This arrangement neither resolves an MSC import right nor grants execution authority or production admission.

## D11 — Number-theory candidate scope

Status: proposed editorial arrangement. [The number-theory proposal](../proposals/new-concepts/number-theory.md) adds twelve established subjects while preserving earlier canonical definitions. One computational algebraic number theory record has two proposed parents and a single home. The multiplicative branch's analytic placement remains reviewable; elementary does not mean easy, and computational does not grant execution permission.

Source versions and the separate AKS errata record remain explicit. No code match, namespace resemblance, probable-prime result, finite example or missing external code establishes novelty, authorship, theorem acceptance or complete coverage. Native MSC registration, rights and independent review remain unresolved. Vocabulary 0.7-pilot is separate from schema versions and repository revisions.

## D12 — Equations, dynamics and mechanics as distinct subjects

Status: proposed editorial arrangement. The [addition proposal](../proposals/new-concepts/equations-dynamics-mechanics.md) adds twelve records with separate disciplinary roots, eleven proposed specialization edges and two shared canonical model-class pages. Independent-variable setting, equation structure, regularity, physical regime and formulation are applied in separate sibling groups. A method's use does not by itself justify subtype parentage.

Keep local versus global flow, homogeneous versus forced equations, and positive-definite undamped oscillator hypotheses explicit. Do not turn a semigroup label into a PDE generator, finite examples into proofs, or a documentation addition into resolution of the source-directory collision. Vocabulary 0.8-pilot does not change schema versions, earlier concept pages, rights, source attributions or operational holds. L33-L37 are bounded references; the PDE manuscript's publication details remain unresolved. Native baseline reconciliation and independent review remain open.

## D13 — Information tasks and finite-code structure

Status: proposed editorial arrangement. [The addition proposal](../proposals/new-concepts/information-coding.md) separates compression, noisy communication and error-correcting code structure. The two roots are navigational entries, not a claim of disjoint disciplines. Block organization and algebraic perspective are kept in separate browsing groups. One finite-field linear-code page has both parents; other overlaps use explicit navigation rather than invented subtype assertions.

Keep exact/almost-lossless, injective/uniquely decodable/prefix-free, field/ring, intrinsic distance/decoder performance, detection/authentication and simple-root/repeated-root boundaries. Do not adopt comma-free as a prefix-free alias from a single source. Vocabulary 0.9-pilot leaves schema versions, earlier concepts, attribution, rights and operational holds unchanged. L38-L43 are bounded warrants, not full-course audits or an external classification import. Independent review and full baseline reconciliation remain open.

## D14 — Algebraic structures and scoped conventions (proposed)

Extend the candidate with [ten established algebra subjects](../proposals/new-concepts/algebra-structures.md). Distinguish arbitrary associative unital rings from the commutative convention of a cited source; retain field nontriviality, module sides and foundational assumptions. Two proposed parentages share each of two canonical records. Keep existing Algebra definition/scope unchanged while expanding its navigation and history. This is proposed editorial organization, not independent acceptance, mathematical proof, source-specific attribution, external-standard approval or execution authority. Use 0.10-pilot rather than implying a completed 1.0 release. Native-source rights and reconciliation remain open.

## D15 — Analytic structures and convergence modes (proposed)

[The addition proposal](../proposals/new-concepts/analysis-measure-fourier.md) records ten analytic subjects and two multiple-parent function-space records. Restrict the Lp Banach-range record to 1 <= p <= infinity; distinguish representatives from almost-everywhere classes, essential from pointwise supremum, and norm from pointwise convergence. Keep separability, inner-product convention and Fourier normalization explicit. Analysis and Functional analysis gain navigation without redefining their subjects. This is proposed editorial organization, not independent mathematical/cataloging review, proof, rights approval or operational authority. The complete external baseline remains unresolved.

## D16 — Probability limits and process families remain distinct (0.12 candidate)

The [probability addition proposal](../proposals/new-concepts/probability-processes.md) introduces ten proposed subjects and eleven proposed specializations. Separate limiting tasks from model classes. Preserve the old discrete-time Markov scope/home and one canonical Brownian record with Gaussian and continuous-time Markov parents. Convergence in law is not pathwise exclusion; marginal normality is not joint Gaussianity; conditional identities require filtrations. This is an author organizational decision, not independent acceptance, a new theorem or a foundation/rights ruling.
