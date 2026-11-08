# Checked theorem applications, certified sofic defects, and separated probe signatures

Local attribution: **grwtsk contributors**. Date: 2026-11-02. Source candidate.

Status: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No actual `Lean.Expr` extractor, no running Noe search index, no authenticated declaration-to-repository mapping and no new Navier–Stokes/Riemann-hypothesis proof are supplied.

## Source input and mathematical objective

`grwtsk/math` baseline `a5384470486d44f15192d13e031ae8e0d1f8353e` (inspected selected files, not an exhaustive corpus inventory):

- `GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean`, blob `f0436ae18dd786e312a4966b27b2edc51e3d7fa1`: a `DefectSoficSystem`, certified source words and their signed-return/budget theorem.
- `GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean`, blob `0408948886533c87debacc0e537c3234469ae702`: certified/candidate/admissible labeled relations and the exact relative language distinctions.
- `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/InstantiatedRuleCertificates.lean`, blob `8a947b13ef0f4fdca9127620d11a99870d4b121a`: a manually instantiated actual Lean term `InstantiatedApplication` from every jointly necessary premise to the conclusion; source reference text does not authenticate such a proof.
- `GRWTSK/PartialDifferentialEquations/PeriodicNavierStokesSoficPort.lean`, blob `99ffd3a29e91bf4db1a06c5a4130d98f6fba8eab`: original velocity, pressure, forcing, divergence and signed residual as a source-faithful port on a real spatial-translation graph.
- Lean pin `v4.34.1`, `lean-toolchain` blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5`; pinned `lake-manifest.json` blob `c8044c56be77c58e6f41cca024b25237c59e8c79`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The new consumer is Noe's mathematical intake boundary. Before a retrieved declaration can act as a certified graph rule, an actual elaborated theorem application must discharge **all** required premises at the same chosen instantiation; separately an observation edge must establish its signed return and bounded allowance. An import, citation, candidate link or graph score is insufficient.

## Principal theorem and proof

`CheckedApplicationSoficBridge.CheckedApplicationSystem` binds the original certified graph and the expected `Rule` at each `(source, label, target)` to the exact manually proof-bearing `InstantiatedApplication`. A certified edge supplies an application whose `rule` is **equal to the expected rule**, and proof evidence for *every* premise on that rule. Its conclusion is therefore established by its `consequence` term (Lean proof, conditional on future compilation); no check relies on untrusted `SourceClaim` strings.

`AppliedWord` retains the original ordered vertex/label path and a proof application for every edge. `AppliedWord.toWordPath` forgets ONLY the application terms; `AppliedWord.ofWordPath` reinserts all the certified applications supplied by the verified edge contract. The equivalence `appliedWord_iff_certifiedWord` is relative to this same certified edge relation; it does **not** promote candidate/admissible words or assert that every theorem in the repository has been extracted.

From the previously existing `CertifiedTrace.exact_and_bounded`, a term-bearing path has a quantitative return:

    readout(source) = readout(target) + D
    0 <= B
    abs(D) <= B

New `certified_defect_path_independent` establishes that two separately certified paths between the **same endpoints**, even with different labels/lengths, return the same signed `D`. This follows immediately by subtracting the two exact source equalities, and is not a probabilistic diffusion assertion. Their allowances may be different; `certified_two_route_min_bound` proves the absolute endpoint discrepancy bounded by the smaller of the two full budgets. A certified closed path has signed holonomy `D=0`, but its non-sharp allowance `B` need not be zero. When a separate reverse certified path exists, its signed defect is the negative of the forward defect. These are exact consequences, with no arbitrary cancellation premise.

A nonvacuous example uses genuine `Nat.le_trans`: the transition `s --m--> t` is certified only if both `s<=m` and `m<=t`; its expected rule contains exactly those two premise atoms. Each edge has real readout `s`, signed defect `s-t`, and allowance `|s-t|`. The actual path `0 --1--> 2 --3--> 4` returns original readout `0` as final readout `4` plus signed defect `-4`, with budget `4`. The graph allows `3 --2--> 1` as a *candidate*, but it is not certified: the first inequality fails.

## Complete typed observation families, and their Yoneda boundary

`ProbeSoficYoneda.ProbeSoficSystem` keeps **one common labeled certified graph** and a family of observation/readout and defect/bound functions indexed by an explicit probe type. `toScalar` instantiates the already-existing quantitative certified-path semantics for each probe without reinterpreting the word, labels or intermediate states. `all_probe_returns` proves all probe-specific exact returns and budgets for the same original certified word. With an independently established zero-allowance theorem for all certified edges, `zero_budget_signature` proves that the whole observation signature agrees at the endpoints.

The stronger `zero_budget_eq_of_separates` requires the explicit predicate `Separates` (every pair of vertices whose responses agree on all probes is equal). This condition is the relevant Yoneda-like **faithfulness** boundary. It is not the full Yoneda lemma and cannot be inferred from an arbitrary finite collection of probes. `constant_probe_not_separating` is a hostile counterexample: a single constant probe sends distinct Boolean states to identical observations.

The concrete fluid adapter `PeriodicPortProbeApplication` uses the existing `Probe` type (3 velocity, 1 pressure, 3 force, 3 PDE residual, 1 divergence) and one common certified spatial-translation word. Every original scalar component is preserved by the pre-existing `actualPortShift_preserves_probe` theorem, without a solution existence assertion or CHSH substitution. A fluid translation can change the source coordinates despite preserving every local observation; no source-point identity is claimed.

## Mathematical comparisons and limits

- Compared with `DefectEnrichedSoficLanguage`: the addition is **application-checked edge admission, route independence, all-probe source return and state-separation guard**, not replacement of signed-defect telescope.
- Compared with `InstantiatedRuleCertificates`: this is a new consumer that binds the application to a **specific exact expected rule on a certified labeled edge** and a numerical defect, rather than duplicating finite joint-premise closure. Metadata remains untrusted.
- Compared with the original PDE code: it reuses, rather than reproves, true flat-translation covariance. It does not identify an arbitrary Möbius deformation with a flat isometry, nor lift external periodic forced-breakdown theorems without their complete function-space mapping.
- A deterministic finite adjacency can describe structural words while real error costs live on an additional semantic carrier. Neither arbitrary real labels nor complete repository theorem semantics are proved to admit a finite alphabet. Finite-word language equivalence is **relative** to the pre-existing certified relation.
- A source signature with only finitely many nonseparating probes cannot faithfully reconstruct source states. A numerical error budget of zero cannot substitute for the separate separation theorem.
- An application certificate consisting of a proof term can still rely on axiom-containing imports; declaration-scoped transitive axiom auditing is required. A claimed source string does not bind it to an immutable Git revision.

## Independent bounded reference checks and native verification gates

The attached off-repository Python finite fixture checks all 9^3 two-premise Nat triples, all certified two-edge paths with endpoint coordinates 0..5, alternative paid routes, zero signed loop holonomy, incomplete-premise and candidate-only controls, full/tiny probe separations and the stated concrete two-edge path. The finite counts are diagnostic only, not Lean compilation or verification of an actual extracted expression. A basic authored-source lexical scan checks no theorem-level sorry/admit/axiom signatures; it does not resolve transitive dependencies.

Required exact-source next operations in a separately authorized Noe verifier: compile the three new modules and their transitive imports with the pinned toolchain, check expected theorem types in fresh importers, replay through the Lean kernel, and audit the complete axiom/opaque/native trust closure. The source and static target record `NOT_RUN` for those facets. No runner, scheduler, TUI index, native compiler or Git mutation is authorized by documentation alone.

**Next precise obligation:** implement an elaboration-bound `Lean.Expr` extractor for one deliberately limited class of instantiations, checking argument substitution, universe levels, local-context hypotheses, expected-rule equality and proof-term type *before* materializing a Noe graph edge; reject unsupported applications. Compare the emitter's actual output against this source's certified transition class through a source-bound soundness/refinement proof. No such extractor is reported available from this mathematical increment.
