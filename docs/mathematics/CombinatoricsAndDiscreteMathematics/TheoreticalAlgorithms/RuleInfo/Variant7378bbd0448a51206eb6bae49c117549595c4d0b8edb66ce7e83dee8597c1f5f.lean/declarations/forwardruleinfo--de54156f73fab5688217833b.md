# ForwardRuleInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd164b3cdd6ec85a41f01899d8eb42ee0de0e0d87b8ba7f1fcc643acafcec17c",
  "kind": "structure",
  "lexical_name": "ForwardRuleInfo",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "forwardruleinfo--de54156f73fab5688217833b",
  "source": {
    "blob": "4eb255023547ed960f3b515bc712771a1489d4ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7378bbd0448a51206eb6bae49c117549595c4d0b8edb66ce7e83dee8597c1f5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de54156f73fab5688217833b4ca20c808db79adf92056ec0da1798b54f662383",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7378bbd0448a51206eb6bae49c117549595c4d0b8edb66ce7e83dee8597c1f5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd164b3cdd6ec85a41f01899d8eb42ee0de0e0d87b8ba7f1fcc643acafcec17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ForwardRuleInfo where
  /-- The rule's number of premises. -/
  numPremises : Nat
  /-- The number of distinct level parameters and level metavariables occurring
  in the rule's type. We expect that these turn into level metavariables when
  the rule is elaborated. -/
  numLevelParams : Nat
  /-- Slots representing the maximal premises of the forward rule, partitioned
  into metavariable clusters. -/
  slotClusters : Array (Array Slot)
  /-- The premises that appear in the rule's conclusion. -/
  conclusionDeps : Array PremiseIndex
  /-- The rule's rule pattern and the premise index that was assigned to it. -/
  rulePatternInfo? : Option (RulePattern × PremiseIndex)
  deriving Inhabited

namespace ForwardRuleInfo

/-- Is this rule a constant rule (i.e., does it have neither premises nor a rule
pattern)? Note: the rule may still have instance arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7378bbd0448a51206eb6bae49c117549595c4d0b8edb66ce7e83dee8597c1f5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7378bbd0448a51206eb6bae49c117549595c4d0b8edb66ce7e83dee8597c1f5f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb255023547ed960f3b515bc712771a1489d4ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
