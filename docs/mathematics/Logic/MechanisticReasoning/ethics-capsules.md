# From ethical obligations to mechanistic reasoning

**A mathematical exposition for the A–M–I–F–E–D–O–X capsule taxonomy**

Conceptual direction and authorship: grwtsk contributors. Mathematical exposition and Lean formalization developed with AI assistance.

## 1. The governing principle

**A transformation may change representation, but every increase in a claim's strength, an actor's authority, or an implementation's permitted effects needs its own justified bridge.**

This principle gives the earlier medical ethics taxonomy a mathematical form. The aim is to make the passage from an identified ethical source, through an accountable interpretation, to an implementation and its evidence inspectable. A proof can establish a property of specified rules. A separate argument must establish that those rules adequately express the intended duty and describe the relevant implementation.

For institutional reviewers, the decisive question is: *Which judgment has actually been established, for which subject, under which assumptions, and who may act on it?* For engineers, that becomes a collection of typed objects, inference rules, transition relations, proof obligations, and explicit failure states.

The treatment is independent of a database, cloud provider, model vendor, event bus, identity service, or universal registry. Mathematical objects below specify meanings and obligations. An eventual implementation must exhibit the required capabilities and correspondence.

The running motivation includes patient and clinician agency, confidentiality, worker safety, accessible communication, records, and financial integrity. Those domains supply independently interpreted constraints. This text does not decide the applicability of a law, establish a medical standard, give an institution or a vendor new authority, or turn a hierarchy of human needs into a score for a person's rights.

### What is formalized here

Three isolated Lean modules provide new proofs:

| Mathematical subject | New source | Principal result |
|---|---|---|
| Rooted authorization | [RootedDerivations.lean](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/RootedDerivations.lean) | Every authorization derivation has a root; source and evidence annotations cannot create missing authority. |
| Observation and support | [SupportedClaims.lean](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean) | An observed claim needs a nonempty compatible trace set and must hold throughout that set. |
| Transition-system refinement | [EffectSimulation.lean](../../../../GRWTSK/DifferentialEquationsAndDynamicalSystems/TransitionSystems/EffectSimulation.lean) | Safety transfers through an independently proved simulation preserving effect labels and a policy bridge. |

They import only `Init`. Existing repository sources supply complementary interfaces for grounded inference, exact certificate interpretation, revision, dependency correction, composition, and finite budgets. Existing-source references in this exposition identify the inspected base **31c28b0e3729cc3c1e708c7d70144b3598a1b25c**; they do not assert a fresh replay of those modules.

Statements labeled **written lemma** are mathematical arguments in this exposition, not additional Lean declarations. The [static verification target](../../../verification/_unscoped/ethics-mechanistic-reasoning-v0.1.toml) defines the new formal acceptance scope. Execution records and application evidence remain external to this repository.

### Finite observation specialization

The [finite observation companion](finite-observation-classification.md) gives an executable four-outcome specification and makes the coverage premise explicit. Its source-bound verification evidence is tracked separately in [PR #313](https://github.com/grwtsk/math/pull/313). The [static target](../../../verification/_unscoped/finite-observation-support-v0.1.toml) and authored fixtures are specifications; they do not extend the historical verification result for the three modules above.

## 2. Capsules form a typed, versioned graph

Let the set of capsule kinds be

\[
K=\{A,M,I,F,E,D,O,X\}.
\]

For each kind \(k\), let \(V_k\) be its objects. The graph's vertices are a disjoint sum:

\[
V=\bigsqcup_{k\in K}V_k.
\]

A vertex carries an issuing scope, stable identifier, revision, and kind-specific payload. Equality of two identifiers without equality of their issuing scopes and revisions does not identify their contents. These are abstract identities; no globally shared storage or identifier allocator is assumed.

| Kind | Mathematical role | Judgment that still requires a bridge |
|---|---|---|
| A — source | An identified text, rule, standard, policy, or delegation instrument | That it applies in context or grants a particular actor authority |
| M — obligation | A contextual statement of required conduct and affected interests | That a proposed behavior adequately addresses it |
| I — contract | Inputs, preconditions, permitted effects, outputs, and failure behavior | That an implementation satisfies the contract |
| F — formal reasoning | A model, proposition, assumptions, proof, or counterexample | That the model represents the relevant implementation |
| E — evidence | A scoped observation, test, study, inspection, or proof artifact | That it supports the exact requested conclusion |
| D — decision | A scoped disposition by an accountable actor | That the actor has current authority and execution succeeded |
| O — observation | A view of a modeled or actual history, with coverage limits | That an unobserved outcome occurred |
| X — challenge or change | A disputed premise or changed dependency | That all affected uses have been found and corrected |

Every edge has a relation type. For example, *interprets* has source kind A and target kind M; *claims to implement* relates I to a specified obligation; *supports within scope* relates evidence to an exact judgment. A well-typed edge is only a grammatical claim. Its semantic validity is a separate object or review obligation.

A proposed interpretation, an inspected source, a checked theorem, empirical support, a review decision, and authorization occupy independent status spaces:

\[
\mathcal S =
S_{\mathrm{source}}\times S_{\mathrm{applicability}}
\times S_{\mathrm{formal}}\times S_{\mathrm{empirical}}
\times S_{\mathrm{observation}}\times S_{\mathrm{review}}
\times S_{\mathrm{authority}}\times S_{\mathrm{implementation}}.
\]

There is no universal order in which “more complete” means “more authorized.” For each proposed formal-analysis or evidence-update operation \(u\), require the preservation law

\[
\pi_{\mathrm{authority}}(u(s,x))=\pi_{\mathrm{authority}}(s).
\]

This is an operation contract, not a consequence of representing status as a product and not an additional Lean theorem in this contribution. Operations that change authority form a separate transition family with their own premises. A prototype may be well tested and still lack permission for use. A legitimate decision may authorize a bounded experiment without establishing its clinical benefit.

This is a design of meanings, not merely a display convention. Conversion functions between coordinates require explicit premises; otherwise the type system has only moved the ambiguity into a string.

## 3. Distinguish the judgments before defining the engine

Fix a context \(c\), a versioned snapshot \(\sigma\), and a set of explicit assumptions \(\Gamma\). The following judgments have different semantics:

\[
\begin{aligned}
&\operatorname{Interprets}(a,c,m),\\
&\operatorname{Requires}_{c}(\varphi),\\
&\Gamma\vdash_{\!L}\varphi,\\
&\operatorname{EmpiricallySupports}(e,\varphi,\mathcal P,\mathcal M),\\
&\operatorname{SupportsObservation}(o,\varphi),\\
&\operatorname{Authorized}_{\sigma}(p,\alpha).
\end{aligned}
\]

Here \(\mathcal P\) identifies the population or sampling scope and \(\mathcal M\) the method and assumptions. An ethical duty to make \(\varphi\) true is not evidence that \(\varphi\) is true. A theorem under \(\Gamma\) does not establish \(\Gamma\). Evidence that an intervention works does not authorize its use.

An AMA source enters as an A object. Its interpretation as a contextual medical obligation is an accountable A-to-M mapping. The M-to-I mapping explains which contract conditions address that duty, what competing duties matter, and what remains outside the contract. The I-to-F mapping states the abstraction and the information it discards. None of these mappings is supplied by a citation identifier alone.

For mechanistic inference, let a rule consist of finite premises, a side condition on \(\sigma\), and a conclusion. Give each judgment a meaning \(\llbracket j\rrbracket_\sigma\). A sound rule must satisfy

\[
\operatorname{Side}_{r}(\sigma)\ \land\
\bigwedge_{j\in\operatorname{Prem}(r)}
\llbracket j\rrbracket_\sigma
\quad\Longrightarrow\quad
\llbracket\operatorname{Concl}(r)\rrbracket_\sigma.
\]

This is the role of `RuleSound` and `SoundRule` in [RuleSoundness](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/Logic/Inference/RuleSoundness.lean). Rule application is meaningful only when its side conditions and premise meanings are established for the same snapshot.

Use the least set generated from admitted premises and these rules. The finite derivation interpretation prevents an unsupported cycle from becoming a proof merely because every node cites another node. [FiniteRuleSystems](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/Logic/Inference/FiniteRuleSystems.lean) supplies `GroundedSupport` and `supportedClaims_empty_of_no_ground` for this distinction. In that interface, ground claims enter through eligible zero-premise rules; their snapshot meanings still need justification.

Not every semantic predicate is decidable. An implementation may return *accept*, *reject*, or *unknown*, with soundness obligations for the conclusions it reports. Rejecting a certificate does not refute its proposition; refutation needs its own evidence and soundness argument. Unknown cannot be silently converted into a satisfied precondition. It creates an unresolved obligation, with a separate route for an appropriately authorized human decision.

## 4. Authority is a rooted derivation

Let \(P\) be principals and \(S\) scopes. At snapshot \(\sigma\), supply independently:

\[
\begin{aligned}
\operatorname{Root}_{\sigma}&:P\times S\to\mathrm{Prop},\\
\operatorname{Delegates}_{\sigma}&:P\times S\times P\times S\to\mathrm{Prop}.
\end{aligned}
\]

Define authorization derivations inductively by exactly two rules:

\[
\frac{\operatorname{Root}_{\sigma}(p,s)}
     {\operatorname{Derives}_{\sigma}(p,s)}
\qquad
\frac{\operatorname{Derives}_{\sigma}(p,s)
\quad\operatorname{Delegates}_{\sigma}(p,s,q,t)}
     {\operatorname{Derives}_{\sigma}(q,t)}.
\]

**Formal theorem — rooted ancestry.** A derivation exists exactly when there is a root and a finite delegation path from that root to the requested principal and scope:

\[
\operatorname{Derives}_{\sigma}(p,s)
\iff
\exists r,t,\quad
\operatorname{Root}_{\sigma}(r,t)
\land (r,t)\leadsto_{\sigma}(p,s).
\]

The forward proof is induction on the derivation. A root supplies a path of length zero; a delegation appends one edge. Conversely, induction on a rooted path constructs a derivation. This is `derivation_iff_root_path` in the new authorization module.

It follows that no roots imply no derivations, even if the delegation graph contains cycles. The finite Bool/Unit fixture exhibits both edges of a two-node cycle and proves that neither node acquires authority.

For scope, let \(\operatorname{Allows}(s,\alpha)\) interpret the actions admitted by scope \(s\), and let \(B(\alpha)\) be an independently chosen bound. Assume:

\[
\begin{aligned}
\operatorname{Root}_{\sigma}(p,s)&\Rightarrow
  \forall\alpha,\operatorname{Allows}(s,\alpha)\Rightarrow B(\alpha),\\
\operatorname{Delegates}_{\sigma}(p,s,q,t)&\Rightarrow
  \forall\alpha,\operatorname{Allows}(t,\alpha)
  \Rightarrow\operatorname{Allows}(s,\alpha).
\end{aligned}
\]

Then every derived scope respects \(B\). This is `derivation_scope_preserved`. The narrowing condition is a hypothesis about each edge, not a property inferred from the word “delegation.”

The module also permits source and evidence symbols to annotate an existing derivation. Erasing those annotations yields an ordinary rooted derivation. Conversely, any ordinary derivation can be represented without annotations. Thus `symbolic_derivation_iff_derivation` proves conservativity for these exact constructors: adding a citation or evidence symbol supplies no missing root.

The root predicate is not self-authenticating. Identity, institutional delegation rights, conflicts, lawful scope, and current validity require their own evidence. The calculus would faithfully derive consequences from a falsely supplied root. The existence of a vendor output or agreement by a review model does not establish an institutional root. If an output conveys a delegation instrument, its authenticity, scope, and current applicability still require an independently justified bridge.

## 5. Obligations constrain actual transitions

Choose a concrete transition system before stating its desired safety property:

\[
\mathcal C=(S_C,\operatorname{Initial}_C,\ \xrightarrow{\ell}_C).
\]

Its state can include proposals, evidence, policy versions, authority information, unresolved work, and budgets. Labels identify modeled operations, including reads, disclosures, record changes, billing actions, and failures. The classification \(\operatorname{Effect}(\ell)\) must cover the consequential operations within the claimed boundary.

Let \(P_i(s,\ell,s')\) be independently interpreted constraints from the applicable domains. A proposed joint policy is

\[
P(s,\ell,s')=\bigwedge_{i\in J(s,\ell)}P_i(s,\ell,s'),
\]

where \(J\) itself needs an applicability argument. Privacy, accessible communication, professional review, worker capacity, record integrity, and financial constraints retain their meanings within this conjunction. A weighted score that compensates for failure of one mandatory condition with success of another does not establish this policy.

Conjunction alone does not prove that a compliant action exists. Define the policy-compatible next transitions

\[
\mathcal F(s)=
\{(\ell,s'):\ s\xrightarrow{\ell}_C s'
\land P(s,\ell,s')\}.
\]

The assertion \(\mathcal F(s)\ne\varnothing\) is a separate feasibility claim. Existence of a permissible *effect* additionally requires \(\operatorname{Effect}(\ell)\) in this set; a silent hold does not witness that stronger claim. If conditions conflict or are unknown, the design must specify a hold, an alternative pathway, or a review transition. An exception must enter through an independently authorized rule; it cannot be created by dropping the failed conjunct.

A hold preserves an unresolved obligation; it does not satisfy it. Timely-action obligations require the concrete model to represent relevant time passage, environmental change, and deadline crossings, with separate conditions for timely resolution or an explicit failure state. Neither effect safety nor a permissible next transition establishes that an available, capable recipient will accept responsibility.

The safety target is

\[
\forall s,\ell,s',\
\operatorname{Reachable}_C(s)
\land s\xrightarrow{\ell}_C s'
\land \operatorname{Effect}(\ell)
\Rightarrow P(s,\ell,s').
\tag{1}
\]

Defining “effect” to mean “an already permitted action” would hide bypasses from (1). Defining the entire concrete step relation by assuming (1)'s conclusion would likewise leave the real implementation question unanswered.

The existing [GuardedFiniteBudget](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/DifferentialEquationsAndDynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean) gives a concrete mathematical example: independently listed guard conditions and an explicit state update imply preservation of `Safe`. Its `guard_preserves_safe` does not take next-state safety as a guard premise. `reachable_safe` and `reachable_obligation_retention` propagate the result through the modeled steps.

That controller is a model. Its modeled receipts do not establish that every external write, read, copied output, manual change, or export passes through it. Section 11 supplies the additional mathematical shape of that bridge.

### Current authority means current at the effect boundary

Suppose a check at \(\sigma_0\) establishes authority, a revocation produces \(\sigma_1\), and an effect then uses the old result. The implication

\[
\operatorname{Authorized}_{\sigma_0}(p,\alpha)
\Rightarrow\operatorname{Authorized}_{\sigma_1}(p,\alpha)
\]

is generally unavailable. A mechanism must bind the relevant check to the consequential transition, or establish a valid stability/serialization argument. Merely adding a timestamp to the old check does not prove this implication. Concurrency, revocation, interrupted execution, and recovery are part of the concrete model's obligations.

## 6. Observation determines which claims are justified

Let \(T\) be traces, \(A(t)\) their admissibility predicate, and \(O_r:T\to V_r\) the observation available to reviewer \(r\). Define the compatible fiber:

\[
C(r,o)=\{t:A(t)\land O_r(t)=o\}.
\]

The new observation module defines support by

\[
\operatorname{Supports}(r,\varphi,o)
\iff C(r,o)\ne\varnothing
\land \forall t\in C(r,o),\ \varphi(t).
\tag{2}
\]

Refutation is support for the pointwise negation of \(\varphi\).

**Formal theorem — actual-trace soundness.** If the actual trace \(t_*\) is admissible, \(O_r(t_*)=o\), and (2) holds, then \(\varphi(t_*)\). The proof applies the universal part of support to the actual compatible trace. These actual-trace premises are indispensable; the theorem cannot repair an execution model that omits a real failure mode.

The observation dispositions have different meanings:

| Fiber and claim | Permitted mathematical conclusion |
|---|---|
| Nonempty fiber, all members satisfy \(\varphi\) | Support for \(\varphi\) |
| Nonempty fiber, all members satisfy \(\neg\varphi\) | Refutation of \(\varphi\) |
| Compatible members exhibit both outcomes | Neither support nor refutation |
| Empty fiber | Model/observation mismatch; neither conclusion |

These are semantic conditions, not a promise that an arbitrary program can decide them. A finite, exhaustively represented model can support finite checks; an infinite model needs further reasoning.

The lost-receipt fixture has two traces, one where an effect occurred and one where it did not. Both produce the same observation. `lost_receipt_ambiguous` proves that the missing receipt establishes neither performance nor nonperformance. Retrying safely therefore needs a separate identity, duplication, or reconciliation contract.

The nonempty requirement prevents an inconsistent observation from “proving” every outcome by universal quantification over an empty set. `impossible_observation_no_certainty` establishes this for every claim in the finite fixture.

### Privacy views and information loss

Suppose a coarse view is obtained by a function \(q:V_f\to V_c\), so \(O_c=q\circ O_f\), with the **same admissible trace model**. Then

\[
C_f(o)\subseteq C_c(q(o)).
\]

If the finer fiber is nonempty, support at the coarser view implies support at the finer one. This is `supports_of_coarsened_support`. The converse fails: hiding distinctions can destroy support. The explicit finer nonemptiness premise is necessary because a coarse view may merge an impossible fine observation with a possible one.

This formalizes a useful oversight boundary: a role can be given an authorized projection without being told that it has complete knowledge. Withheld evidence, missing evidence, a negative finding, and an unperformed operation need distinct meanings. Observation permission, observation integrity, timing, and completeness of \(A\) remain separate premises.

## 7. Composition requires semantic handoffs

A component contract is a relation between input state, operation, output state, and possible failure outcomes. For successful execution, write a partial-correctness triple \(\{P\}f\{Q\}\). The familiar composition rule needs the explicit bridge

\[
Q(s)\Rightarrow R(s)
\]

before \(\{R\}g\{U\}\) can follow \(f\).

**Written lemma — successful-path composition.** If every terminating successful run of \(f\) from \(P\) ends in \(Q\), if \(Q\Rightarrow R\), and every terminating successful run of \(g\) from \(R\) ends in \(U\), then every such composed successful run ends in \(U\). Proof: apply the first contract, the bridge, and the second contract in order.

This lemma proves neither termination nor that a failure or hold reaches \(U\). Failure paths need contracts of their own. A handoff that creates a work item is not an accepted transfer of responsibility; the latter requires an accepting role, scope, and established capacity in the proposed implementation.

The lemma assumes that \(g\) begins in \(f\)'s final state. If a handoff or intervening activity relates that state \(s\) to a later input \(t\) by \(H(s,t)\), the bridge must instead establish

\[
Q(s)\land H(s,t)\Rightarrow R(t).
\]

The relation \(H\) must cover permitted delays, transformations, and interference. Failure or an unaccepted handoff retains its own outcome. A permission or capacity check at \(s\) is not automatically valid at \(t\).

The bridge must preserve subject, context, units, version, purpose, evidence status, authority, and unresolved restrictions wherever those matter to \(R\). Two schemas with fields named “approved” are not a semantic bridge.

There is also a precise, limited gluing analogy. For selected shared data fields, let local sections \(f_i:U_i\to Y\) cover \(U\). If

\[
U=\bigcup_i U_i,\qquad
f_i(x)=f_j(x)\ \text{on }U_i\cap U_j,
\]

then there is a unique \(f:U\to Y\) restricting to all \(f_i\). The existing `function_sections_unique_gluing` in [FinitePhraseProcess](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/DifferentialEquationsAndDynamicalSystems/TransitionSystems/FinitePhraseProcess.lean) states this with explicit coverage and compatibility.

Coverage and agreement must be demonstrated. This result concerns functions on selected fields; it does not merge incompatible medical interpretations into agreement. A disagreement can instead be retained as typed content requiring review.

## 8. Bounded automation requires a budget that delegation cannot renew

Let \(S\) be states and \(V:S\to\mathbb N\) a potential. Suppose every charged transition \(s\xrightarrow{c}s'\) satisfies

\[
c+V(s')\le V(s).
\tag{3}
\]

**Written lemma — path budget.** For a finite path \(s_0\to\cdots\to s_n\) with costs \(c_0,\ldots,c_{n-1}\),

\[
\sum_{j=0}^{n-1}c_j+V(s_n)\le V(s_0).
\tag{4}
\]

Proof is induction on the path: substitute the inequality for its first step and the bound for its suffix. If every counted step costs at least one, then \(n\le V(s_0)\). An infinite sequence entirely of such steps is impossible, since its prefix of length \(V(s_0)+1\) contradicts this bound.

The existing `Path.cost_add_potential_le` in FinitePhraseProcess supplies the corresponding path theorem. GuardedFiniteBudget supplies `guarded_steps_length_le_budget` and `no_infinite_guarded_trajectory` for its explicit controller.

### A potential for delegated work

A usable candidate must count the ability to create future work. Let \(U\) be unallocated budget and \(L\) a finite collection of live jobs with remaining budgets \(b_j\). Consider

\[
V=U+\sum_{j\in L}(1+b_j).
\tag{5}
\]

The unit term charges the existence of a live job. The following arithmetic explains one possible accounting discipline:

| Transition | Required accounting | Change in potential |
|---|---|---|
| Work step costing \(c\ge1\) | Deduct \(c\) from an available job budget | \(V'=V-c\) |
| Spawn a child with budget \(b\), charging \(c\ge1\) | Deduct \(1+b+c\) from \(U\), then add the child | \(V'=V-c\) |
| Close a job, returning unused \(b\) | Remove its \(1+b\) contribution and return only \(b\) to \(U\) | \(V'=V-1\) |
| Transfer budget between existing locations | Preserve total budget; charge any automated transition separately | Must still satisfy the chosen step bound |

Each subtraction requires sufficient budget. Concurrent operations need an accounting mechanism whose modeled transitions preserve these equations. A child cannot receive a fresh uncharged allowance; a retry cannot reset \(V\).

Equation (5) is a written candidate accounting model, not a new Lean implementation of a scheduler. Its purpose is to expose the conservation obligation that a scheduler must discharge.

Bounding each session separately does not bound an unending sequence of newly funded sessions. [BudgetResetCounterexamples](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean) includes `arbitrarily_many_safe_positive_cost_rounds` at precisely this boundary.

If other automated transitions can repeat at zero cost, the argument does not establish termination of the whole system. They need another decreasing measure or a joint well-founded order. Step bounds also do not imply elapsed-time bounds, cancellation of an external operation, or eventual human response. Exhausting automation's budget leaves unresolved care or administrative work unresolved; the responsible service and recovery acceptance are separate obligations.

## 9. Revision changes eligibility without rewriting history

Let a snapshot be \(\sigma:\operatorname{Artifact}\to\operatorname{Revision}\). A certificate for a target proposition \(T(\sigma)\) records a snapshot \(\sigma_0\), a read set \(R\), and a proof of \(T(\sigma_0)\).

To reuse it at \(\sigma_1\), require both read agreement and an actual locality theorem:

\[
\begin{aligned}
&\forall a\in R,\ \sigma_1(a)=\sigma_0(a),\\
&\operatorname{AgreesOn}(R,\sigma,\sigma')
\land T(\sigma)\Rightarrow T(\sigma').
\end{aligned}
\tag{6}
\]

Then \(T(\sigma_1)\) follows. A digest match, unchanged filename, or matching number of references does not itself supply locality.

[RevisionCertificates](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/Logic/Locality/RevisionCertificates.lean) encodes this distinction in `RevisionCertificate` and `current_target`. Its stale-history fixtures preserve the old proof while rejecting current acceptance. [DecisionCertificate](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean) similarly requires exact decoding or referenced-value agreement; `stale_premise_counterexample` shows why matching reference shape is insufficient.

For correction, fix a registered dependency graph in which \(c\to d\) means that claim \(c\) depends on prerequisite \(d\). Let \(D_0\) contain withdrawn claims and claims whose declared reads changed. Define the affected set as the least set satisfying

\[
D_0\subseteq A,\qquad
(d\in A\land c\to d)\Rightarrow c\in A.
\tag{7}
\]

If \(V\) is the set of currently verified claims and \(P\) pending claims, a conservative revision step is

\[
V'=V\setminus A,\qquad
P'=P\cup(V\cap A).
\tag{8}
\]

The relevant source, [DependencyRevision](https://github.com/grwtsk/math/blob/31c28b0e3729cc3c1e708c7d70144b3598a1b25c/GRWTSK/Logic/Certificates/DependencyRevision.lean), specifies the closure and preserves archived certificates and historical receipts. Its `affected_verified_reopened` and `correction_preserves_safe` connect the explicit update to the invariant.

The cited Lean construction uses a fixed finite claim inventory, finite declared read and prerequisite sets, and decidable revision equality. Invariant preservation starts from a ledger satisfying `RevisionSafe`. The more general set notation above does not remove those hypotheses from that source theorem.

Equations (7)–(8) cover registered dependencies under the fixed schema. Discovering an unregistered copy, a hidden premise, or a changed dependency schema is a separate task. A graph of mandatory prerequisites also differs from a graph of alternative sufficient proof routes; withdrawal of one route need not refute a proposition supported independently by another. Reassessment rules must identify which graph they use.

This yields a useful separation:

\[
\operatorname{HistoricallyValid}(e,\sigma_0)
\quad\text{and}\quad
\operatorname{EligibleNow}(e,\sigma_1)
\]

are distinct predicates. A challenge can suspend current reliance without pretending that an earlier observation never occurred.

## 10. A checker must bind the exact requested judgment

A checker is not sound merely because it returns an affirmative value. Suppose it evaluates certificate \(e\) at \(\sigma\). To establish requested judgment \(j\), require

\[
\operatorname{Check}(\sigma,e)=\operatorname{accept}
\quad\land\quad
\operatorname{Conclusion}(e)=j,
\tag{9}
\]

together with a theorem connecting acceptance to the meaning of that conclusion.

RuleSoundness packages checking, conclusion interpretation, and soundness in `CertificateChecker`; `CertificateChecker.Accepts` additionally binds the conclusion to the requested judgment. It derives `meaning_of_accepts` from those premises. Its `CheckedByteInterface` requires that a modeled execute function agrees with parsing and checking the represented certificate. Refinement of a concrete parser and executor to that modeled interface remains a separate obligation. `accepted_meaning_at_requested` binds the accepted conclusion to the requested one.

A useful counterexample in that source is `accepted_conclusion_and_digest_do_not_bind_request`: an accepted conclusion plus a digest is not a substitute for proving that the conclusion is the requested judgment.

Coverage is another independent premise. If a finite checker covers \(J_0\), the conclusion applies to \(J_0\). To claim all obligations in a larger family \(J\), supply an exhaustion relation showing that every member of \(J\) has been represented with the correct interpretation. `meaning_of_ambient_coverage` states this bridge; `complete_finite_index_does_not_exhaust_ambient` exposes the missing-premise case.

Consequently, an acceptance record needs exact subject and version binding, the proposition and its assumptions, source and checker identity, coverage, and trust scope. A syntactically valid capsule is not yet an accepted proposition. A checked mathematical proposition is not yet an institutional decision.

## 11. Implementation requires label-preserving simulation

Now choose independently:

\[
\mathcal C=(S_C,I_C,\to_C),\qquad
\mathcal A=(S_A,I_A,\to_A),
\]

with a common label type, and a relation \(R:S_C\times S_A\to\mathrm{Prop}\).

The new EffectSimulation module requires:

1. **Initial correspondence.** Every admitted concrete initial state is related to an admitted abstract initial state.
2. **Step correspondence.** For every related pair and every concrete step,

\[
R(c,a)\land c\xrightarrow{\ell}_C c'
\Rightarrow
\exists a',\ a\xrightarrow{\ell}_A a'\land R(c',a').
\tag{10}
\]

The label \(\ell\) is the same. It is not erased or changed into a silent transition.

**Formal theorem — trace correspondence.** Given an abstract starting state related to the concrete starting state, induction on a concrete finite trace produces an abstract trace with exactly the same ordered list of labels and related endpoints. For traces from admitted initial states, initial correspondence supplies the required abstract start and yields reachable-state correspondence. These are `Simulation.trace_correspondence` and `Simulation.reachable_correspondence`.

Define abstract and concrete policies \(P_A\) and \(P_C\) independently. In addition to simulation, require a policy bridge on corresponding transitions:

\[
\begin{aligned}
R(c,a)\land R(c',a')\land
c\xrightarrow{\ell}_C c'\land a\xrightarrow{\ell}_A a'\\
\land P_A(a,\ell,a')
\Rightarrow P_C(c,\ell,c').
\end{aligned}
\tag{11}
\]

Let \(E:\operatorname{Label}\to\mathrm{Prop}\) classify effects. For either system, \(\operatorname{EffectsSafe}\) means that every transition with an \(E\)-classified label from a reachable source satisfies that system's supplied policy, exactly as in (1).

**Formal theorem — transfer of effect safety.**

\[
\operatorname{Simulation}(\mathcal C,\mathcal A,R)
\land\operatorname{EffectsSafe}(\mathcal A,E,P_A)
\land\operatorname{PolicyBridge}(R,P_C,P_A)
\Rightarrow\operatorname{EffectsSafe}(\mathcal C,E,P_C).
\tag{12}
\]

Proof: choose a reachable concrete source. Reachable correspondence supplies a related reachable abstract source. Step correspondence supplies the matching step with the same label. Abstract safety supplies \(P_A\). The bridge supplies \(P_C\). This is `Simulation.transfers_effect_safety`.

The bridge must be established from the meanings of states, operations, and policies. For example, a relation may preserve the actor, subject, destination, policy version, and authority fields consulted by the policy; equality of those interpretations can justify substitution. Simply assuming the desired concrete policy as the bridge would move the original problem into an unproved premise.

Simulations compose through an explicitly witnessed intermediate state: `Simulation.comp` preserves the same labels through both layers. This supports modular reasoning without assuming a particular deployment stack.

### Why an apparently safe abstract model can be useless

The module's finite counterexample has a reachable concrete effect. One abstraction has no transitions; another has only silent transitions. Both satisfy a policy forbidding all classified effects, vacuously. The concrete system violates it.

Theorems `no_simulation_to_absent` and `no_simulation_to_silent` show that **no state relation** can provide the required simulation to those abstractions. Choosing a clever correspondence cannot repair the missing effect.

Other vacuity is possible: no admitted initial states, no recognized effects, or an unrestricted policy can make a safety proposition uninformative. Execution existence, initial-state adequacy, effect-classification completeness, and policy adequacy remain substantive obligations.

The simulation is deliberately strong: one abstract step matches each concrete step. A practical weak or stuttering refinement needs an additional trace relation and a proof that it preserves all consequential labels. Label equality alone also does not prove that labels accurately describe real reads, writes, people, or destinations. Those meanings must connect the actual implementation to \(\mathcal C\).

## 12. Quantitative evidence remains a distinct reasoning channel

For an estimate, define the population, sampling process, measurement, estimand, missingness assumptions, and decision rule before interpreting a number. A confidence procedure has a statement such as

\[
\Pr_{\theta}\{\theta\in C(E)\}\ge 1-\alpha
\]

under an explicitly specified probability model. This is an example of a target statement, not a statistical theorem proved by this contribution.

The statement does not imply that every individual outcome is favorable, that the sampling model is correct, or that the intervention is authorized. Adaptive selection, repeated evaluation, measurement error, and population change require the assumptions or procedure to be revisited.

Formal proof can establish that an estimator or interval procedure satisfies a mathematical property under a model. Empirical work addresses whether the model and measurements adequately describe the intended setting. An institutional decision considers that evidence together with duties, alternatives, uncertainty, and authority.

## 13. The complete reasoning capsule

A formal reasoning capsule should identify at least

\[
F=(\mathcal M,\Gamma,\varphi,\pi,\mathcal T,\mathcal B,\mathcal U),
\]

where \(\mathcal M\) is the model, \(\Gamma\) assumptions, \(\varphi\) the exact proposition, \(\pi\) a tagged reasoning disposition, \(\mathcal T\) the checker and trust scope, \(\mathcal B\) the proposed application bridge, and \(\mathcal U\) unresolved obligations. The disposition distinguishes an unresolved claim, a proposed proof, a checked proof under named assumptions, and a refutation with its argument or counterexample. A conditional proof retains its assumptions; a refutation is not a proof of \(\varphi\).

This is an abstract specification of the evidence a capsule must distinguish. The new Lean `Prop` declarations establish mathematical propositions; they do not implement retained proof records, executable credentials, event logs, reviewer interfaces, or authority services.

The taxonomy now has a concrete mathematical map:

| Formal subtype | Precise obligation | Source or remaining work |
|---|---|---|
| F01 Types and provenance | Preserve judgment kind, exact conclusion, source identity, and revision | Typed graph specification; RuleSoundness; DecisionCertificate |
| F02 Authority and information flow | Derive scopes from justified roots; preserve bounds; prove allowed flows separately | New RootedDerivations; current authority and noninterference remain application obligations |
| F03 Composition | Establish postcondition-to-precondition bridges and required overlap agreement | Written contract lemma; FinitePhraseProcess gluing theorem |
| F04 Bounded execution | Account for all work creation and prove a decreasing global measure within scope | GuardedFiniteBudget; written delegated potential; reset counterexamples |
| F05 Knowledge and observation | Support only claims true throughout a nonempty compatible fiber | New SupportedClaims; observation integrity and model coverage remain open |
| F06 Refinement | Preserve consequential labels and transfer policy through a proved relation | New EffectSimulation; actual runtime correspondence remains open |
| F07 Correction and dependency | Reopen registered affected uses under an explicit dependency schema | RevisionCertificates; DependencyRevision |
| F08 Quantitative inference | Prove the stated statistical property under explicit sampling and measurement assumptions | Target specification here; no new statistical theorem |

Annotation conservativity does not establish evidence quality, relevance, or completeness. Grounded proof does not establish ethical adequacy. Observation support does not establish permission to observe. These distinctions determine which additional obligation must be requested when a chain stops.

### A worked abstract episode

Consider an authorized request to convey a reviewed result through an accessible channel. The example is hypothetical and contains no patient record.

| Stage | Precise object or question | Consequence |
|---|---|---|
| Obligation | Accountable interpretation identifies required communication and the person's needs | Supplies a scoped M obligation, not an observation of completion |
| Contract | I specifies recipient binding, current authority, permitted content, channel capability, and failure handling | Creates preconditions and required observations |
| Proposal | An AI produces a draft | Adds proposed content; authority is unchanged |
| Review | An appropriately authorized person accepts exact content and scope | Supplies a decision with its own authority basis |
| Effect | The implementation performs the modeled transmission | Requires current policy at that boundary and a refinement argument |
| Observation | The expected acknowledgment is absent | Compatible traces may include both receipt and nonreceipt |
| Reconciliation | Review considers available authorized evidence and duplicate risk | Does not silently label the communication complete or failed |
| Change | A premise or content version changes | Registered dependent uses become candidates for reassessment |

A proof of transmission-policy compliance does not establish that the person received, understood, or acted on the communication. Each is a different proposition with different evidence. The useful mechanistic result is that those claims can no longer share one ambiguous “done” status.

## 14. Acceptance and the next implementation boundary

The static target selects the three new modules and exact explicit declarations. It requires pinned source identity, the repository toolchain, warnings-as-errors elaboration, exact declaration-type inspection, transitive axiom inspection, and the positive and negative mathematical controls.

The hostile controls are themselves proved counterexamples: unrooted cyclic authority, lost-receipt ambiguity, empty observation fibers, support lost by coarsening, a missing fine-fiber witness, and safe-looking abstractions that cannot simulate an actual modeled effect. They test the scope of the definitions; they are not operational penetration tests or evidence about a deployed hospital system.

Acceptance remains a conjunction of separately evaluated claims:

\[
\begin{aligned}
\operatorname{Accept}_{\mathrm{math}}
&=\operatorname{ExactSource}
\land\operatorname{Elaborated}
\land\operatorname{AllowedTrust}
\land\operatorname{ExactCoverage},\\
\operatorname{Accept}_{\mathrm{application}}
&=\operatorname{Accept}_{\mathrm{math}}
\land\operatorname{AdequateInterpretation}
\land\operatorname{EstablishedPremises}\\
&\quad\land\operatorname{ActualRefinement}
\land\operatorname{EmpiricalAdequacy}
\land\operatorname{CurrentDecisionAuthority}.
\end{aligned}
\]

The second expression is a proposed review decomposition, not a universal theorem that those labels exhaust medical or legal obligations. Each term needs an owner, a precise scope, and supporting evidence. A source contribution cannot assign favorable values to its own unresolved terms.

To instantiate the theory, an implementation team must supply:

1. A bounded operation and its independently interpreted duties, affected people, authority sources, and permitted effects.
2. A concrete behavior model covering normal, error, interruption, bypass, concurrency, and recovery paths within that boundary.
3. An abstract contract, relation to the concrete model, effect classifier, policy bridge, and the associated proofs or explicit open obligations.
4. An observation model with authorized role views and evidence that actual executions lie within it.
5. Exact source/revision binding, dependency registration, and a work budget whose allocation cannot silently renew the bounded scope.
6. Reviewable evidence that the real implementation realizes these interfaces, including unresolved assumptions and adverse findings.

By the repository boundary, effectful verification and capsule assembly belong to [grwtsk/noeaaeue](https://github.com/grwtsk/noeaaeue), bound to a pinned math commit. Clinical evidence, actual delegation instruments, case records, and institutional decisions are not data added by this mathematical contribution.

The result is a precise division of responsibility: mathematics establishes what follows from declared meanings and premises; implementation evidence establishes correspondence; accountable participants establish interpretation and authority. A system earns a stronger conclusion only when the missing bridge has actually been supplied.
