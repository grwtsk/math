# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Consistency.Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f4486d829f95ec921b3e2e501ff5103295f6fec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f4486d829f95ec921b3e2e501ff5103295f6fec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PointUniverse` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConsistencyDimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencydimension--3253afef5c4105ae0fffa61b.md) | 12 | `declaration-track:3253afef5c4105ae0fffa61b74b56430516b2c73449451acf9fa1e3d44b89eae` |
| 2 | `inductive` | [ConsistencyStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencystatus--b12b64eb72cf1a6e9e16bacf.md) | 25 | `declaration-track:b12b64eb72cf1a6e9e16bacfe5b91c997e781bb34f396992f5c8c2d39dfcbd90` |
| 3 | `structure` | [ConsistencyFinding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencyfinding--36fafe38af73af34b28f226e.md) | 31 | `declaration-track:36fafe38af73af34b28f226e2fd76c6534021880c70482db49f8d1a5978379b6` |
| 4 | `structure` | [ConsistencyLedger](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencyledger--a57fb657aab6ca926f0fd03b.md) | 40 | `declaration-track:a57fb657aab6ca926f0fd03b193dc43872c0e4b8f8090d1ecd0e5fe9bd819f34` |
| 5 | `def` | [ConsistencyLedger.SelfConsistent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencyledger-selfconsistent--35a8b784fcf83cbf0e0ab957.md) | 57 | `declaration-track:35a8b784fcf83cbf0e0ab95792ef3612b6aca7b19f9eafd344b4c5de87e921fe` |
| 6 | `theorem` | [ConsistencyLedger.not_selfConsistent_of_unresolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variant4e43bca7f54f196bb91bb178ca0ed0fd228bb8f0e1b84f6ae5bdee4623c69ea8.lean/declarations/consistencyledger-not-selfconsistent-of-unresolved--e29f1e70d3024dfe596a1947.md) | 64 | `result-track:e29f1e70d3024dfe596a194701b69fcc915a7cc841be7357fee98069c1687d0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
