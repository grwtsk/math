# Joint-premise inference and proof-preserving goal slices

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

Conjunctive inference rules require every listed premise, while alternative rules remain alternatives. The existing least backward dependency closure gives a goal-directed slice that preserves derivability when both rules and input facts are restricted to it. Semantic soundness separately requires true facts and sound rules. The Lean source is a proof candidate awaiting native verification; no runtime, SAT, ETH or AI-performance claim follows.

<!-- END GENERATED RESULT ABSTRACT -->

[Results in this area](index.md) · [Structural-intelligence guide](../../../reference/structural-intelligence.md)

## 1. Statements and hypotheses

### 1.1. Semantic soundness

Let A be any type, R a predicate on rules, F a predicate of input facts, and H an
interpretation of atoms as propositions. A rule has a finite list of premises
and a conclusion. `Derivable R F a` means that a is obtained from an input fact
or by an available rule after deriving every premise. If every F-fact satisfies
H and every R-rule preserves H when all its premises satisfy H, then every
R,F-derivable atom satisfies H.

Declaration: `GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.derivable_sound`.
Classification: source-proof-candidate. The two semantic assumptions are explicit;
this result does not declare an arbitrary supplied rule to be mathematically true.

### 1.2. Goal-slice equivalence

Fix any goal predicate G. Define `RuleDepends R a b` when an available rule has
conclusion a and b is among that rule's premises. Put

\[
S=\operatorname{Closure}(G,\operatorname{RuleDepends}(R)),\quad
R|_S=\{r:R(r)\land S(r.\mathrm{conclusion})\},\quad F|_S=F\cap S.
\]

Here `Closure` is the existing `LeastDependencyClosure.Closure`; it is not a new
reachability implementation. For every a with G(a),

\[
\operatorname{Derivable}(R|_S,F|_S,a)
\iff \operatorname{Derivable}(R,F,a).
\]

Declaration: `GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.goalSlice_derivable_iff`.
The more general `derivable_restrict_iff` applies at every retained conclusion of
any backward-closed predicate. No finiteness of A or R, decidable membership,
acyclicity or semantic soundness assumption is needed for this syntactic
preservation result. Finite premise lists and finite derivations define its scope.

### 1.3. Boundary controls

`binaryRule_both_suffice` derives 2 from facts 0 and 1 with the rule [0,1] implies 2.
`binaryRule_left_insufficient` rejects deriving 2 from fact 0 alone.
`one_premise_projection_unsound` records why replacing the premise conjunction by
existence of one known premise is invalid. `unseeded_cycle_insufficient` rejects
using a self-loop as a proof without an input fact. All four names use the same
fully qualified namespace as the declarations above.

## 2. Proof and mathematical use

Soundness is induction on a derivation. The fact case uses the input interpretation;
the application case uses every induction hypothesis and the soundness of that rule.

For restriction, induct on a derivation whose conclusion is retained. In a fact
case, pair the original fact with retention. In a rule case, backward closure
retains every premise of the selected rule, so the induction hypotheses produce
all restricted premise derivations. The retained rule can then be applied. The
reverse direction uses monotonicity under inclusion of rules and facts. The
existing `closure_feasible` supplies backward closure for S, and `Closure.root`
retains each original goal. `goalSlice_least` separately reuses `closure_least`.

This is a foundation for dropping irrelevant inference regions while keeping the
answer to the selected goal unchanged. It is not yet an executable index or a
proof that a particular search algorithm takes less time.

For example, A implies C and B implies C may be alternative rules. The all-routes
slice for C includes both A and B even when a proof uses only A. Leastness of a
backward-closed slice therefore does not mean a smallest proof, nor that every
retained atom must be true. With A AND B implies C, by contrast, both premises
are required for that application. The index must communicate this distinction.

## 3. Composition

This is a leaf article about the local inference construction. It imports the
existing prerequisite-closure API; it is not a composite claiming semantic
extraction from Lean, a complexity theorem or an AI discovery result.

## 4. Verification and trust boundary

Status: **NOT_RUN** for compilation, fresh kernel replay and transitive axiom audit.
The authored source contains 21 explicit heads, including 12 theorems. Source
inspection and finite reference checks do not establish native acceptance.

Source commit: `c6da0b696e400c584719777c6dec5ce2a6f2c153`.
Source blob: `e7fd1cf62af7d8b0226234af59f9d24cf6a184a4`.
Direct dependency blob: `53d1094bc8ee931480dd0143fe9a62199e9260c2` for
`LeastDependencyClosure.lean` in the same subject directory and bound tree.
Lean toolchain: `leanprover/lean4:v4.33.0`. The selected modules ultimately import
Init; the repository manifest's Mathlib pin is context, not a new module import.

The [static target](../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/JointPremiseInference/goal-slice-v1.toml)
and [issue #1424](https://github.com/grwtsk/math/issues/1424) state the exact checks.
The empty-axiom requirement is an acceptance policy, not an observed audit result.
Operational receipts belong in Noeaaeue and must bind the exact tested bytes.

## 5. Sources and missing bridges

[Lean source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/JointPremiseInference.lean).
This is a local elementary construction extending the existing source family;
no claim of novelty or imported paper-derived complexity theorem is made.

Next construct a finite executable conjunctive inference closure and prove its
correspondence to `Derivable`. Subsequently connect actual instantiated theorem
applications to the rule representation. Preserve variable scope and parameter
dependencies. An extractor, unifier, SAT encoding, decomposition algorithm,
running-time proof and controlled AI evaluation are separate missing bridges.

The [worker programme](https://github.com/grwtsk/noeaaeue/issues/406) retains these
obligations. [Taxonomy proposals](https://github.com/grwtsk/math/issues/1425) are held
for one coordinated later move; current source and article placement is unchanged.

## 6. Revision and issuance

Revision 1. Canonical and issuance dates remain null in the article record;
Git publication and mathematical acceptance are separate events. The pinned source
identity is immutable. Later repairs require new pins and cannot inherit acceptance.

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "joint-premise-inference",
    "slug": "joint-premise-inference",
    "aliases": [],
    "kind": "leaf",
    "title": "Joint-premise inference and proof-preserving goal slices",
    "author": "grwtsk contributors",
    "abstract": "Conjunctive inference rules require every listed premise, while alternative rules remain alternatives. The existing least backward dependency closure gives a goal-directed slice that preserves derivability when both rules and input facts are restricted to it. Semantic soundness separately requires true facts and sound rules. The Lean source is a proof candidate awaiting native verification; no runtime, SAT, ETH or AI-performance claim follows.",
    "subjects": {
      "primary": "urn:uuid:7a3f0995-b0b9-4b1b-9a97-00e9b7bb3baa",
      "associations": []
    },
    "statements": [
      {
        "id": "semantic-soundness",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "A is an arbitrary type; rules : Rule A -> Prop; facts holds : A -> Prop.",
          "Included facts holds and ClosedUnder rules holds.",
          "Derivable rules facts a."
        ],
        "conclusion": "holds a",
        "declarations": [
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.derivable_sound"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "c6da0b696e400c584719777c6dec5ce2a6f2c153",
            "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/JointPremiseInference.lean",
            "blob": "e7fd1cf62af7d8b0226234af59f9d24cf6a184a4"
          }
        ]
      },
      {
        "id": "goal-slice-preservation",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "A is an arbitrary type; rules : Rule A -> Prop; facts goals : A -> Prop.",
          "goals a; goalSlice is the existing least Closure of goals under RuleDepends rules."
        ],
        "conclusion": "Derivable (restrictRules rules (goalSlice rules goals)) (restrictFacts facts (goalSlice rules goals)) a iff Derivable rules facts a",
        "declarations": [
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.goalSlice_derivable_iff",
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.derivable_restrict_iff"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "c6da0b696e400c584719777c6dec5ce2a6f2c153",
            "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/JointPremiseInference.lean",
            "blob": "e7fd1cf62af7d8b0226234af59f9d24cf6a184a4"
          }
        ]
      },
      {
        "id": "conjunction-and-cycle-controls",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "binaryRule = ([0,1],2); loopRule = ([0],0).",
          "Facts, rule predicates and target atoms are exactly those in the named declarations."
        ],
        "conclusion": "Both binary premises suffice, one does not; an unseeded loop does not derive its atom.",
        "declarations": [
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.binaryRule_both_suffice",
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.binaryRule_left_insufficient",
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.one_premise_projection_unsound",
          "GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.unseeded_cycle_insufficient"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "c6da0b696e400c584719777c6dec5ce2a6f2c153",
            "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/JointPremiseInference.lean",
            "blob": "e7fd1cf62af7d8b0226234af59f9d24cf6a184a4"
          }
        ]
      }
    ],
    "verification": {
      "status": "NOT_RUN",
      "scope": "Source proof candidate. Compilation, fresh kernel replay and transitive axiom audit have not run for these bytes. Finite reference tests are not native acceptance.",
      "evidence": [],
      "axiom_policy": "Required empty transitive axiom closure; observed closure unavailable. Reject missing audit as evidence of no axioms.",
      "unresolved_premises": [
        "Executable finite inference refinement is not supplied.",
        "Actual theorem-application extraction and scoped-instantiation correspondence are not supplied.",
        "SAT encoding, running-time results and empirical AI benefit are separate obligations."
      ]
    },
    "composition": null,
    "issue": {
      "revision": 1,
      "canonical_date": null,
      "issued_at": null
    },
    "metrics": []
  }
}
END RESULT ARTICLE METADATA -->
