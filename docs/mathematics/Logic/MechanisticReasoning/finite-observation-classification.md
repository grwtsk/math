# Finite observation classification

Conceptual direction and authorship: grwtsk contributors. Mathematical formulation and source development with AI assistance.

This exposition and its Lean companion give a finite specialization of [SupportedClaims](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean). Verification is source-bound and recorded externally; [PR #313](https://github.com/grwtsk/math/pull/313) links the selected candidate and its current evidence. This mathematical document is not an execution receipt.

The governing rule is precise: **a finite result has the scope of the supplied finite model until an explicit coverage argument justifies a larger scope.** This gives an executable step in the broader [mechanistic reasoning exposition](ethics-capsules.md).

Tracking: [mathematical leaf](https://github.com/grwtsk/math/issues/312), [implementation leaf](https://github.com/grwtsk/noeaaeue/issues/352), and [application coordination](https://github.com/grwtsk/medicine/issues/1). Application-specific obligations remain outside the mathematical source.

## 1. The finite question

Fix a trace type \(T\), a view type \(V\), an admissibility predicate \(a:T\to\mathrm{Prop}\), an observation function \(o:T\to V\), a claim \(c:T\to\mathrm{Prop}\), and an observed value \(v:V\). The ambient compatible fiber is

\[
F(v)=\{t\in T\mid a(t)\land o(t)=v\}.
\]

Supply a finite list \(L\). Its listed fiber is

\[
F_L(v)=\{t\in T\mid t\in L\land a(t)\land o(t)=v\}.
\]

List membership is a semantic restriction, not an assertion that all possible traces have been listed. The classifier requires decidable admissibility and claim predicates and decidable equality on views. It asks two existence questions:

\[
P_L(v)\iff \exists t\in F_L(v),\,c(t),
\qquad
N_L(v)\iff \exists t\in F_L(v),\,\neg c(t).
\]

The executable scan computes Boolean counterparts of \(P_L\) and \(N_L\).

| Positive witness | Negative witness | Result | Exact listed meaning |
| --- | --- | --- | --- |
| Present | Absent | `supported` | Nonempty listed fiber; every member satisfies the claim |
| Absent | Present | `refuted` | Nonempty listed fiber; every member falsifies the claim |
| Present | Present | `ambiguous` | Compatible listed witnesses have opposite outcomes |
| Absent | Absent | `model_mismatch` | Empty listed fiber |

The fourth outcome follows because the claim is decidable for every trace. A compatible trace must supply either a positive or a negative witness. Absence of both kinds of witness is therefore equivalent to an empty listed fiber.

Nonemptiness is essential. A universal proposition over an empty set is vacuously true, but it supplies no evidence for a realizable observation. The existing `Supports` definition includes a nonempty-fiber premise. The classifier preserves that distinction.

## 2. What completeness must mean

Define the specific coverage premise

\[
\operatorname{CoversFiber}(L,a,o,v)
\iff
\forall t\in T,\quad
a(t)\land o(t)=v \Longrightarrow t\in L.
\]

This concerns the entire ambient compatible fiber, not merely the traces a collector happened to report. It is weaker than enumerating every admissible trace at every view, but stronger than checking that every row in a supplied file was read.

By definition, \(F_L(v)\subseteq F(v)\). Coverage provides the reverse inclusion:

\[
\operatorname{CoversFiber}(L,a,o,v)
\Longrightarrow F_L(v)=F(v).
\]

The Lean bridge theorems use this premise explicitly:

- `classify_supported_iff` connects listed support to ambient `Supports`.
- `classify_refuted_iff` connects listed refutation to ambient `Refutes`.
- `classify_model_mismatch_iff` connects listed emptiness to absence of an ambient `NonemptyFiber`.

The separate `classified_support_sound` statement also requires that the actual trace is admissible and has the queried observation before concluding the claim about that trace. Coverage alone does not identify an actual execution; a correct classifier does not establish admissibility or observation fidelity.

| Obligation | What it establishes |
| --- | --- |
| Read every supplied row | Completeness of evaluation over that input |
| Decode each row correctly | Correspondence between bytes and the mathematical row |
| Cover the ambient compatible fiber | No modeled compatible trace is omitted |
| Represent actual executions adequately | The relevant real event lies within the selected abstraction |
| Observe the actual execution faithfully | The queried view corresponds to that event |
| Have authority for a proposed action | Permission under separately justified rules |

No entry automatically supplies another.

## 3. Why ambiguity needs less coverage

If two listed admissible traces produce the same observation and have opposite claim values, both also belong to the ambient fiber. They directly contradict universal support for either side. Thus

\[
P_L(v)\land N_L(v)
\Longrightarrow
\neg\operatorname{Supports}(a,o,c,v)
\land
\neg\operatorname{Refutes}(a,o,c,v)
\]

without `CoversFiber`.

This is the role of `classify_ambiguous_iff` and `classify_ambiguous_no_certainty`. Finite witnesses establish ambiguity for the specified ambient model. They do not establish that the model describes a real person, process, or event.

A missing observation should be modeled by the alternatives it leaves possible. If both an action and its nonoccurrence produce the same observation, the correct result for that model is `ambiguous`. Encoding missing evidence directly as `claim = false` changes the model and needs its own justification.

## 4. Omission changes the scope of a conclusion

Let two admissible traces \(t_+\) and \(t_-\) share a view, with \(c(t_+)\) true and \(c(t_-)\) false.

For \(L=[t_+]\), the classifier returns `supported`. That conclusion is exact for \(F_L(v)\). It is false as a claim of ambient support, because \(t_-\in F(v)\). Coverage fails.

For \(L'=[t_+,t_-]\), the classifier returns `ambiguous`.

For an empty inventory, it returns `model_mismatch` even though the ambient fiber is nonempty. A mismatch therefore means **no compatible trace in this inventory**. It does not mean that an external event was impossible, absent, deceptive, or invalid.

The source contains omission and empty-inventory controls. The shared fixture includes the partial and completed inventories as a paired example. These controls expose unsupported strengthening.

## 5. List order, repeated semantics and identities

The scan depends on membership and the supplied predicates. Membership-equivalent inventories therefore produce the same flags and classification. `scan_inventory_congr` and `classify_inventory_congr` express this property.

The external profile retains row order for witness IDs without making the status order-sensitive. Reordering rows changes raw input bytes and their digest; it need not change the semantic result.

The mathematical `Row` adapter has four fields:

| Field | Type | Purpose |
| --- | --- | --- |
| `trace_id` | `String` | Retained identity data |
| `admissible` | `Bool` | Supplied admissibility value |
| `view` | `String` | Exact observed value for this row |
| `claim` | `Bool` | Supplied claim value |

`classifyRows` applies the generic classifier to a row list and query view. An ID is not evidence of origin or truth. The Python profile requires distinct IDs to keep returned witnesses unambiguous; the abstract theorem does not derive this condition from string equality.

Rows with identical admissibility, view and claim values may have distinct IDs. Repeating their semantics does not strengthen support.

## 6. The bounded external interface

The implementation profile `noe.finite-observation-support/1` is owned by the implementation repository. Its model schema is:

~~~json
{
  "schema": "grwtsk.finite-observation-model/1",
  "model_id": "example",
  "revision": "synthetic-1",
  "claim_id": "abstract-claim",
  "traces": [
    {
      "trace_id": "trace-1",
      "admissible": true,
      "view": "seen",
      "claim": true
    }
  ]
}
~~~

A separate query identifies the exact model bytes by SHA-256, repeats the claim ID and supplies the view. The caller supplies independently selected expected SHA-256 values for both raw inputs.

A profile label, model ID or revision string does not bind contents. Exact raw-byte comparisons prevent substitution relative to the caller's expectations; they do not authenticate those expectations or establish custody.

Closed schemas, strict Booleans, duplicate rejection, Unicode handling and resource limits belong to the implementation contract. Invalid bytes, wrong hashes, unsupported versions, malformed queries and duplicate identities are validation failures outside the four outcomes. They must never become `model_mismatch`.

The consumer reports counts and finite witness IDs with explicit qualifications. Direct output records Python evaluation while source-policy attachment, mathematical acceptance, native replay, real-world coverage, application refinement and authority remain unestablished as appropriate. A source-reference record pairs revisions for review; it is not an attestation of the running process.

The model represents one Boolean claim at a time. A second claim requires a separately identified input. Names alone create no implication between claims.

## 7. Static shared fixtures and their limits

The [fourteen authored vectors](../../../../verification/fixtures/finite-observation-support-v0.1.json) cover all outcomes; empty queried fibers; exclusion by admissibility and view; repeated semantics with distinct IDs; composed/decomposed Unicode; the omitted-counterexample pair; and witness order.

The fixture specifies deterministic test serialization: sorted keys, ASCII escapes, compact separators, UTF-8 bytes and no trailing newline for model/query inputs. This is a fixture convention. The evaluator binds actual bytes without requiring universal JSON canonicalization.

The implementation consumes a byte-identical copy of the static vectors. Their expected results are authored data. Agreement establishes a finite check of the selected consumer on those inputs. It is not a universal refinement theorem or a Lean execution of JSON parsing.

A general correspondence argument must connect validated bytes to `Row`, exact string and Boolean meanings, the implementation scan to `classifyRows`, returned tags to `Outcome`, and every error path to its contract. This remains an explicit obligation.

## 8. Source and acceptance status

The [Lean source](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean) contains executable definitions, theorem proofs and finite controls. Its only direct import is `SupportedClaims`, which imports `Init`.

The [static target](../../../verification/_unscoped/finite-observation-support-v0.1.toml) identifies selected declarations, source/import obligations, exact type inspection and a strict empty-axiom acceptance policy. It specifies required checks; observed results and their source, toolchain, command and output identities belong to the external execution evidence. The target grants no execution authority.

The [authored exact-type expectations](../../../verification/_unscoped/finite-observation-type-expectations-v0.1.toml) supply one complete Lean type term for each of the 78 selected declarations. Each entry specifies its ordered universe parameters, owning module, kernel declaration kind and reviewed source form. Outer parameters are written explicitly, including the computational decidability instances. In particular, `empty_inventory_no_certainty` has no inventory or decidability parameter: its conclusion follows from the empty listed fiber for every claim.

These expected terms are authored from the mathematical definitions, statements and exposition without using observed declaration-type output. The external validator must bind the expectation bytes before comparison, elaborate those terms separately, and compare their expressions with the selected declaration types. The `lean4.33-expr-alpha-json/1` representation ignores bound-variable spelling and metadata nodes, maps declared universes to ordered indices, and retains all other expression, universe-level and name constructors. Binder order and implicitness remain part of the contract. Reduction, definitional equality and matching printed strings are not substitutes for this comparison.

The inventory contains 58 theorems, 17 kernel definitions and three kernel inductives. Source forms distinguish the two `abbrev` declarations from the 15 `def` declarations, and the `Flags` and `Row` structures from the `Outcome` inductive. Kernel declaration kind alone does not establish those source forms; their checks also require bound source syntax and structure metadata.

Exact types constrain interfaces, not defining bodies. For example, removing nonemptiness from the body of `Supports` would preserve its function type while changing its mathematical meaning. The reviewed definitions, exact source identities, compiler and `Init` identities, and transitive trust requirements therefore remain essential. This expectation authorship with AI assistance does not assert independent professional review, the human author's approval of the new terms, or an observed validation result.

Text checks can reconcile names, counts, declared imports and fixture syntax. They cannot establish Lean elaboration, exact kernel types, transitive axiom dependencies or Python/Lean refinement. Each native check must identify the exact source bytes it inspected. Historical verification of other declarations establishes none of these facts for this module.

Local compilation, observed declaration types, and transitive axiom inspection are distinct from comparison against an independently selected exact-type expectation and from acceptance by an external replay system. The target's complete source, dependency, type and trust requirements remain explicit even when a subset has been checked locally.

An implementation-correspondence argument and application review of coverage, observations, disclosures and consequences are separate obligations. Successful finite computation cannot discharge them by changing a status label.
