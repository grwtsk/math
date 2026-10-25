# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RKHS.Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d99db2b104b697eace7448356776b2e82d0329c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d99db2b104b697eace7448356776b2e82d0329c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rhetoricalEvaluation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/rhetoricalevaluation--94660b8c49eafc9903f0e6b7.md) | 31 | `declaration-track:94660b8c49eafc9903f0e6b70af3b76c9d2e9d60d22d11627f0458974e2c90d3` |
| 2 | `abbrev` | [RhetoricalFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/rhetoricalfunction--8418e4bb56bbf3109d5dc897.md) | 37 | `declaration-track:8418e4bb56bbf3109d5dc897cdd5a9fe08dc8ffd7b75730e3ad4fc278b375143` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/instance--0a1068aca79f9b1cf4436ba8.md) | 39 | `declaration-track:0a1068aca79f9b1cf4436ba8cdd867b17eb09840e8a217377e8f7b3554bc5914` |
| 4 | `def` | [toRhetoricalFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/torhetoricalfunction--5fa302eae5dfcbfc317c3b12.md) | 44 | `declaration-track:5fa302eae5dfcbfc317c3b12249dbf048522daf848d4ce0460dd3f294f749c47` |
| 5 | `theorem` | [toRhetoricalFunction_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/torhetoricalfunction-apply--949baddc875598e1815af78c.md) | 49 | `result-track:949baddc875598e1815af78cfab13860a768f3d9ea105012bb881424de1f7a9f` |
| 6 | `def` | [kernelSection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/kernelsection--12d97df32bd725200702a364.md) | 56 | `declaration-track:12d97df32bd725200702a36425a62c174973e51f6688adbd6bb6e759f2e77b17` |
| 7 | `theorem` | [kernelSection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/kernelsection-apply--0463119f71edd2515535d118.md) | 60 | `result-track:0463119f71edd2515535d1189470aa4ff36c22aa7b1b6efec208d4a515b4771a` |
| 8 | `theorem` | [reproducing_property](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/reproducing-property--7bf2ce943ec88e0a81ad3fd8.md) | 67 | `result-track:7bf2ce943ec88e0a81ad3fd820cd734aa93c789ba57f44ca5cfb409935c7406d` |
| 9 | `theorem` | [rhetoricalFunction_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/rhetoricalfunction-ext--5282d34e78eeb5e22f61b847.md) | 73 | `result-track:5282d34e78eeb5e22f61b847f8d403c4651abe496f78c8e81562b194f74c25ab` |
| 10 | `theorem` | [toRhetoricalFunction_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/torhetoricalfunction-injective--1788d14d21fb9c8c2e84a1cd.md) | 96 | `result-track:1788d14d21fb9c8c2e84a1cd5d911e38e33f8634a9d09d8a0514e95aaa690a6e` |
| 11 | `def` | [featureSpace_equiv_RKHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/featurespace-equiv-rkhs--62c168c41e5abbd53d5ec620.md) | 105 | `declaration-track:62c168c41e5abbd53d5ec62090f1b84b913c8add41f430ff319a5956edd75b23` |
| 12 | `theorem` | [featureSpace_equiv_RKHS_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79.lean/declarations/featurespace-equiv-rkhs-apply--43b8435bc080fe499c159281.md) | 110 | `result-track:43b8435bc080fe499c1592811563ceb77a81a26038b538045cad9508699408b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
