# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RigidifiedScalar.Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d895fdaff73155f5460d71ba44bf0dc3237c84",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d895fdaff73155f5460d71ba44bf0dc3237c84`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.LabeledProjection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LosslessNatEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/losslessnatencoding--120a12444c74ee56bb64ecf3.md) | 23 | `declaration-track:120a12444c74ee56bb64ecf3fbf5e069f153f50e7622d5e84fce84acc83a2cf5` |
| 2 | `theorem` | [losslessNatEncoding_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/losslessnatencoding-injective--75af64fd87a087e779f331fb.md) | 28 | `result-track:75af64fd87a087e779f331fbb55d5741cbaad446c9f36a1a968c626ec8a512d9` |
| 3 | `structure` | [RigidifiedScalarInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/rigidifiedscalarinput--6b86f571c9553c803aae4ad9.md) | 41 | `declaration-track:6b86f571c9553c803aae4ad91cf7a4f32492ce6919f077133fa3bbc531ff58a1` |
| 4 | `def` | [rigidifiedScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/rigidifiedscalar--037e79a2982a7673ca47026c.md) | 48 | `declaration-track:037e79a2982a7673ca47026cb7083acebc341084eb4904159160a366ed289585` |
| 5 | `theorem` | [rigidifiedScalar_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/rigidifiedscalar-exact--1d5224f33d750a8f7691520e.md) | 53 | `result-track:1d5224f33d750a8f7691520ec8cb5144185f301ca2580d06bf183173acb916e2` |
| 6 | `structure` | [ExactProjectionEvaluator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/exactprojectionevaluator--9026cdcbb9c65d87cd05e08d.md) | 64 | `declaration-track:9026cdcbb9c65d87cd05e08d3b0908d0944766ba0515d34040f45c32840a1e58` |
| 7 | `def` | [ExactProjectionEvaluator.decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/exactprojectionevaluator-decode--cf772ea42fb10d7ef890aaa9.md) | 69 | `declaration-track:cf772ea42fb10d7ef890aaa93ae68628d068b6aefba07bd8f6cb8c6c725d9ea2` |
| 8 | `theorem` | [exact_projection_from_rigidifiedScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/declarations/exact-projection-from-rigidifiedscalar--e53980c051e5fbfa96f2555c.md) | 81 | `result-track:e53980c051e5fbfa96f2555c25da975060dc84a1f6c4dcdc081821f1d3334e18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
