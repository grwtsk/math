# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Chainization.Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e772dfcda7d051db2028addffb55562bbf215cc0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e772dfcda7d051db2028addffb55562bbf215cc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.State` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticGraphSkeleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/declarations/semanticgraphskeleton--3fafe35d74d0c7ec06d70cc0.md) | 23 | `declaration-track:3fafe35d74d0c7ec06d70cc0c6b59b09fede15f8eb3354fe333821ef1a3b6c92` |
| 2 | `structure` | [GraphChainizationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/declarations/graphchainizationcertificate--51b6e453568b58d47d9f0869.md) | 38 | `declaration-track:51b6e453568b58d47d9f086940c25df43ca374caefa0b7467152a0dbf7def3e2` |
| 3 | `theorem` | [GraphChainizationCertificate.recovers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/declarations/graphchainizationcertificate-recovers--6cfba92819154bd61cc95161.md) | 55 | `result-track:6cfba92819154bd61cc9516160fc75e472676b39d88a810e562310745f563d4f` |
| 4 | `structure` | [ApproximateGraphChainizationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chainization/Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5.lean/declarations/approximategraphchainizationcertificate--0e1ad45798fe18aa20559bfa.md) | 62 | `declaration-track:0e1ad45798fe18aa20559bfa74e4e6a46e23e3059b476cbd66d03fc8c45e3342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
