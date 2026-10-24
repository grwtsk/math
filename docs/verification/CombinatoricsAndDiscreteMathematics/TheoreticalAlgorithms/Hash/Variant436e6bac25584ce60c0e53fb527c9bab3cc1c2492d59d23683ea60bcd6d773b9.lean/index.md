# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb4814036d814e54e3dd20417026a9fb2c3fcdd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb4814036d814e54e3dd20417026a9fb2c3fcdd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/hash256--cd3d336d5295abb279f95a94.md) | 30 | `declaration-track:cd3d336d5295abb279f95a94b603b909b492621201e8425e2ba487446a611db4` |
| 2 | `def` | [lowerHexAlphabet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/lowerhexalphabet--216175baf4b9650186e1de01.md) | 36 | `declaration-track:216175baf4b9650186e1de01b1346ab45bde0907233081140222968f5c529c1b` |
| 3 | `def` | [IsLowerHexDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/islowerhexdigit--ce6333d94508d58794572219.md) | 40 | `declaration-track:ce6333d94508d5879457221998c41b46ecbad15a42f38f54ee6bd1a51fa52509` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/instance--ef882d6749981fc0d45d17f0.md) | 43 | `declaration-track:ef882d6749981fc0d45d17f07c392e2c658833ae092539b33ff13c34bd72eb55` |
| 5 | `def` | [Hash256.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/hash256-valid--d51421695cb1a7cedc97ede1.md) | 50 | `declaration-track:d51421695cb1a7cedc97ede18280dc35114dea7245453db15c9f8740cd5cc1b4` |
| 6 | `instance` | [instDecidableHash256Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/instdecidablehash256valid--9764024f9aa0123b241934d3.md) | 55 | `declaration-track:9764024f9aa0123b241934d3291b92e5c0073ec69c8d15c77da0401224f17492` |
| 7 | `def` | [verifyHash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/verifyhash256--56beaa1d4e4f65d44b69beb2.md) | 60 | `declaration-track:56beaa1d4e4f65d44b69beb260744cf92c2357006b0f884aa29791a519c4d2a2` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant436e6bac25584ce60c0e53fb527c9bab3cc1c2492d59d23683ea60bcd6d773b9.lean/declarations/verifyhash256-sound--b5636c0c6751efc56cd3a01d.md) | 65 | `result-track:b5636c0c6751efc56cd3a01dfe5ca39854c356355b44bff46128a9a283e1eb30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
