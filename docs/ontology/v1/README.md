# Mathematical ontology envelope, version 1

**Historical v1 specification.** This page retains the earlier ontology design
and its stated evidence scope. Maintained records and contracts are indexed in
the [current ontology](../README.md); the [v1 migration crosswalk](../migrations/grwtsk.v1.yaml)
resolves retired identifiers and their pinned source locators. The specification
below preserves its original definitions and source references.

Local attribution: grwtsk contributors. Original specification: repository MIT license.

This is an additive mathematical knowledge layer for `grwtsk/math`, centered on the **spectral geometry of a prime-coded reflective kernel**. It does not replace MSC2020, move mathematical sources, rewrite declaration namespaces, change root imports, or upgrade historical proof evidence.

The ontology is a proposed architecture with a populated seed, not a completed repository-wide semantic audit. Its schema and reference checks concern metadata. They are not mathematical proofs, Lean elaboration, fresh kernel checking, or transitive axiom audits.

## 1. The mathematical organizing principle

For a fixed typed manifest, exact program identity and capacity bounds, the reference model retains the following representations:

`valid typed state -> complete integral coordinates -> marked winding class -> labeled joint Fourier mode`.

The first arrow is an inclusion into an ambient lattice, not an assertion that valid states form a vector space. The winding representation retains the based loop class and its chosen coordinates, not merely its endpoint. The Fourier representation retains the entire joint eigenvalue tuple, not merely a scalar energy. A prime code is interpreted only with its manifest and validation rules.

The core definitions are:

- `S_Sigma` is a finite validated subset of `N^d`; `Lambda=Z^d` and `V=Lambda tensor R` are ambient structures.
- The primal torus is `V/Lambda`. The character torus is `V*/Lambda^vee`, with normalized Haar measure and characters `chi_e(theta)=exp(2*pi*i*theta(e))`.
- On the finite valid-state span, `X_i chi_e=e_i chi_e` and `N_Sigma=exp(sum_i log(p_i)X_i)`. Distinct primes make the complete coordinate code injective.
- A positive-definite metric `G` gives dual-torus energies `4*pi^2 e^T G e`. Its primal-torus counterpart uses `G^-1`. Neither scalar energy recovers an arbitrary state.
- A guarded partial map becomes `W_a=sum_{e in D_a}|F_a(e)><e|`. The full guard is retained even when the net arithmetic multiplier is one. Injective translations give partial isometries; general state-merging updates need not.
- Computational reflection is a revision-sensitive replacement relation with separate validity and authority predicates. A port permutation, geometric inversion and arithmetic parity reflection are different constructions.

An arithmetic height realization is an optional, explicitly chosen interface. It requires a polarized abelian variety, independent free Mordell-Weil classes, a declared height normalization and a treatment of torsion. Positive heights do not identify this construction with the zeta Weil form.

This central framework is a **navigation and interface framework**, not a claim that every mathematical subject reduces to this kernel. Independent subjects and research targets remain legitimate branches of the repository.

## 2. Preserve the existing organizational system

MSC2020 remains authoritative for physical source placement. Bind source locations through `documentation/taxonomy/msc2020/source-layout-v1.json`, including its `followup_files`. A preserved Lean namespace is not a reliable filesystem path: the inspected finite-inference source already illustrates this distinction.

The overlay assigns stable semantic IDs independently of paths. Existing subject pages, source indexes, authored articles, verification specifications, adapters and issues become views or bindings of the same knowledge graph; they are not copied into a competing mathematical library. The legacy `grwtsk.result-article/1` schema is not extended silently.

The intended placement is:

```text
documentation/ontology/v1/
  README.md                 authored mathematical architecture
  ontology.yaml             canonical seed registry
  ontology.schema.json      structural schema

GRWTSK/                     unchanged MSC2020 source hierarchy
documentation/mathematics/   existing authored mathematical explanations
documentation/adapters/     isolated upstream environments and dependencies
```

Effectful inventory extraction, generated navigation, evidence ingestion, issue synchronization, proof execution and mutable receipts remain in `grwtsk/noeaaeue`. The companion local read-only validator is a prototype, not a new repository runner or permission to install one. No workflow is dispatched by these documents.

## 3. What the ontology records

The registry separates sources, mathematical contexts, objects, operators, interfaces, propositions, proofs, inference rules, module bindings, issue bindings and coverage. Every entity has a stable ID, explicit context, mathematical description, source references and a stated mathematical disposition.

An operator identifies its carrier, domain, codomain, defining expression and boundedness category. Merely naming an operator does not prove closure or self-adjointness. Form domains and operator domains remain separate. Finite restrictions, full operators, compressions and Schur enclosures receive distinct identities.

An interface identifies source and target objects, required hypotheses, the proposed map or comparison, exactness category and unresolved obligations. `exact_candidate` means that the proposed comparison is exact in its intended statement; it does not mean the source correspondence or formal proof has been checked. `analogy_only` cannot enter a proof-premise list.

A proposition records its hypotheses and quantification. The prose statement is a mathematical specification, not a dependent-type checker. Until an exact formal statement is bound, `formal_statement: not_bound` remains visible. A future binding must retain the declaration, universe and binder context, normalized proposition identity, source revision, dependency environment and source-correspondence evidence. Similar theorem names are not equivalence certificates.

A proof record points to the precise claim, source file and declaration. Analytical argument, source inspection, elaboration, fresh kernel checking, transitive axiom auditing and independent review are separate observations. This seed does not manufacture proof evidence for the attached research notes or inspected Lean candidates.

Canonical identity is not inferred from a title, directory, hash of explanatory prose or equal spectra. A later duplicate-resolution record must identify both statements and their contexts, explain whether they are definitions, specializations or genuine equivalents, and retain an explicit comparison witness. Deprecation must retain old IDs and source aliases rather than deleting provenance.

## 4. Logical dependencies are typed hyperedges

Ordinary edges are navigational: definition use, subject association, implementation dependency, analogy, obstruction or research work. None is implicitly a mathematical implication.

An inference record has a **joint** `premises_all` list and one conclusion. Different records with the same conclusion are alternative routes. For example:

```yaml
id: rule.literal_positivity
premises_all:
  - claim.cofinal
  - obl.stage
conclusion: claim.odd_positive
witness: proof.cofinal
state: conditional_application
note: The source implication does not establish every StageLower j.
```

`claim.cofinal` is the conditional theorem; `obl.stage` is the still-missing universally quantified family. Keeping the implication as a premise also makes its own qualification visible.

Forward planning applies a rule only after all its premises are present. Backward planning retains the premises of every relevant route and reports the unresolved leaves. The all-routes slice is neither a smallest proof nor a claim that all alternatives must be established.

Exploratory rule graphs may contain cycles. Least-fixed-point closure does not create facts from a cycle with no initial facts. An admitted derivation instead needs an actual finite checked proof, or an explicit well-founded induction argument with its own hypotheses. The ontology does not ban mathematical induction or turn a cycle into its justification.

The repository already has finite joint-premise closure source. Reuse it as a mathematical anchor rather than duplicating its foundations. Its source-level soundness theorem assumes semantic validity of the supplied facts and rules. It does not extract instantiated dependent theorem applications from the entire repository. That extraction is `obl.extraction`.

## 5. Arithmetic research is a separate source-preserving branch

The full zeta Weil form keeps its actual archimedean term, every active prime power, both poles, zero extension, Fourier convention and exact domain. The ontology records the finite-window operator separately from the finite state-space operators.

The current literal cofinal module has a theorem of the form:

`(forall j, StageLower j) -> nonnegativity of the same literal odd form`.

It does not construct the family. The root criterion and literal-to-completed-source comparison are additional interfaces. The seed consequently contains the following backward routes:

```text
Dirichlet GRH
  <- RH AND every primitive nonprincipal sector AND primitive reduction
RH
  <- literal odd positivity AND exact source identity AND odd root return
  OR
  <- sharp weighted odd threshold AND exact weighted/source return
literal odd positivity
  <- conditional cofinal theorem AND every literal StageLower(j)
```

The weighted branch requires the sharp lower threshold `1/2`, not just a nonnegative reference operator. Its Hilbert norm is not the physical `L2(dt)` norm. The zeta pole-saturation argument remains part of the return. The universal nonprincipal-character quantifier is not discharged by RH.

No edge connects positivity of a chosen height metric directly to RH or GRH. No finite field or fixed-width machine encoding replaces the integer, real or complex sources. State-code primes and the arithmetic von Mangoldt/prime-translation source have different roles. Torus heat, stochastic coverage heat, finite Euler spectral heat and weighted arithmetic semigroup heat remain distinct.

Obstructions are first-class knowledge. The seed preserves scalar-energy loss of queue order, the insufficiency of a positive finite compression, and the reported fixed-degree residual obstruction. Each obstruction constrains its exact route and quantifiers, not all research directions or the target conjecture itself.

## 6. Source and evidence policy

Repository sources are pinned to full commit and blob identities. Project attachments have exact SHA-256 identities and explicit availability. The companion archive retains the cited attachments unchanged. Their inclusion is not independent mathematical review and does not imply that they are already maintained repository articles.

The inventory baseline is `fc51c71c0c0a10701fdfb19d1a7ee2d2e49d7f52`. A later publication parent may be newer: that preserves concurrent work without pretending to have re-audited it. A source edit invalidates reuse of old verification for changed bytes; a semantically equivalent repair needs a new comparison and affected evidence. Historical evidence remains attached to its original scope.

A future machine-checked record needs retrievable evidence tied to the exact source, declaration, proposition, environment, dependency closure and axiom policy. A `PASS` string without an exact-source evidence pointer is rejected. Even a well-formed pointer is not authenticated or replayed by schema validation. The seed checker deliberately provides no trusted admission of `verified_application` or globally `reviewed` claims. That gate needs the external evidence service and actual formal instantiation checks.

Definitions, established external results, unreviewed analytical arguments, conjectures, proposed constructions, route-specific counterexamples and unresolved obligations have distinct vocabulary. Novelty and independent review do not become logical prerequisites for a valid single proof. Conversely, compilation cannot supply a missing mathematical source comparison.

## 7. Module and issue migration

The three initial module bindings record mathematical purposes rather than reclassifying paths:

| Inspected source | Purpose | Unresolved interface |
|---|---|---|
| `FiniteJointPremiseClosure.lean` | Conjunctive finite rule closure | Checked extraction from actual instantiated Lean applications |
| `WeilOddLiteralCofinal.lean` | Same-source window agreement and conditional cofinal closure | Every stage bound and the exact completed-source/root return |
| `SchurObserverCertificate.lean` | Hilbert observation-error and finite Schur certificate composition | Actual arithmetic source identity, complete residuals and passing families |

These are source inspections, not a new build or an exhaustive transitive audit.

Each relevant issue should have a managed **mathematical architecture** section or additive comment containing ontology IDs, exact target, context, source pins, joint prerequisites, alternative routes, open obligations, verification scope and acceptance criteria. Existing bodies, discussion, assignees, labels, closure reasons and historical evidence should be preserved. No issue is closed merely because it was indexed.

The initial architecture mappings are:

| Issue | Treatment |
|---|---|
| #1425 | Retain the coordinated MSC taxonomy process; no source moves |
| #1499 | Bind the independent evidence axes and honest coverage policy |
| #1686 | Separate root return, character pairing and primitive reduction from missing arithmetic estimates |
| #1689 | Preserve the fixed `T=1/2` benchmark; do not discharge all cofinal stages |
| #1691 | Register the fixed-degree residual obstruction with its exact scope |

`architecture_mapped` means the issue has been related to this architecture. It does not mean its mathematics was independently reviewed or its requested checks completed.

An exhaustive issue review must enumerate all issues, not just keyword hits or currently open issues. Closed issues remain relevant when live proofs or modules depend on them. Pure operational issues get an explicit external-owner or out-of-scope disposition rather than disappearing from the denominator. A managed-comment updater should be idempotent, re-read before mutation, preserve user text and retain the old issue snapshot. This document is not that updater.

## 8. Coverage and acceptance

The live search observed **1,083 open issues** before ontology-related changes. This is a dated search result, not a permanent total or a completed review. The authoritative source-layout file was identified by blob and size, but its 83,747,657-byte contents were not returned by the connector. The seed therefore sets both module and issue census completeness to false.

The registry contains **62 entities, 20 navigational relations, four inference records, two selected source-proof records, three module bindings and five issue mappings**. There is no claim that the rest of the repository has been semantically mapped. Selectors covering `GRWTSK/`, documentation, adapters, challenge fixtures and issue templates describe the intended inventory; they do not substitute for enumerating it.

The full migration passes only when every inventoried resource has a purpose-bearing binding or an explicit unassessed/exempt record with reason, all unresolved interfaces are visible, exact statement/proof links are resolved, and evidence is evaluated under a declared policy. Import dependencies, theorem-use dependencies, proof obligations and implementation refinements must remain separate projections.

Proceed through complete inventory, canonical definitions, typed interfaces, proof applications, issue migration and trust-policy admission. Genericization is justified by two concrete consumers and a proved specialization/return, not by giving unrelated operators a shared name. Preserve valid existing mathematics throughout.

## 9. Validation profile and companion tools

The files use a restricted YAML 1.2-compatible, JSON-compatible data profile: string mapping keys, explicit booleans, decimal numbers, no duplicate keys, anchors, aliases, custom tags, executable includes or network resolution. Structural validation uses JSON Schema Draft 2020-12. Reference/type checks are separate from the schema.

The companion prototype runs read-only:

```sh
python -m pip install -r requirements.txt
python tools/ontology_check.py publication/ontology.yaml
python tools/ontology_check.py publication/ontology.yaml --backward goal.dirichlet_grh
python -m unittest discover -s tools -v
```

Its optional `--facts` and `--allow-rules` compute hypothetical finite planning closure only. No rule is enabled implicitly, no theorem is admitted, and no result authorizes an external action. The 24 regression tests cover schema/reference checks, wrong carrier types, duplicate IDs, missing premises, alternative routes, circular self-seeding, unsupported proof-status upgrades and unsafe YAML features. These tests are finite software checks, not mathematical verification.

Primary format specifications: YAML 1.2.2 at `https://yaml.org/spec/1.2.2/`; JSON Schema Draft 2020-12 at `https://json-schema.org/draft/2020-12/schema`.

The existing structural-intelligence guidance was read at the inventory pin. Its named `tools/automation-skills/structural-intelligence/SKILL.md` path was unavailable at `grwtsk/noeaaeue@4a6e5ba2f24b686f35e77b59684a8431e8f98575`. No dependent skill workflow, proof automation, browser messaging, scheduler or native checker was run. The work here is manually authored static ontology data and direct finite metadata tests.
