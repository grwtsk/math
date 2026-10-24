# Verification target: GRWTSK.Analysis.ComplexAnalysis.AnalyticManifold.Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dd0f05ea6de964945846af5f766a4b5c3e59dde",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dd0f05ea6de964945846af5f766a4b5c3e59dde`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [analyticPregroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticpregroupoid--384037e223e35ba2845fe128.md) | 58 | `declaration-track:384037e223e35ba2845fe128898f2dde2904ab66b0644d4263d3b13059b7f0de` |
| 2 | `def` | [analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticgroupoid--e8c40e5a5eb6b2a92246f396.md) | 93 | `declaration-track:e8c40e5a5eb6b2a92246f396af5c01e8c49f63d55fc2ac11465c3dd1ccff79ab` |
| 3 | `theorem` | [ofSet_mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/ofset-mem-analyticgroupoid--3114b1083a1f4fd911caceb4.md) | 97 | `result-track:3114b1083a1f4fd911caceb4c48d72f615c2f6f38ec673226b84f1dcbbfe6682` |
| 4 | `theorem` | [symm_trans_mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/symm-trans-mem-analyticgroupoid--85db4081c9ae07807dbda4c6.md) | 107 | `result-track:85db4081c9ae07807dbda4c6c5a802d26f6a523b6050791c7ded3d066d14f47d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/instance--1ff0dc32ce6e0dace606cf93.md) | 114 | `declaration-track:1ff0dc32ce6e0dace606cf93b1588e0fb7394d69fd2c4ce4ae7161d11e0bb8f8` |
| 6 | `lemma` | [mem_analyticGroupoid](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/mem-analyticgroupoid--733432ed68741f1e076b0ef4.md) | 122 | `result-track:733432ed68741f1e076b0ef4197f94a076eac993c897da1db63157f2204bb028` |
| 7 | `theorem` | [mem_analyticGroupoid_of_boundaryless](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/mem-analyticgroupoid-of-boundaryless--cf3cacffe9beafd58e69e93e.md) | 130 | `result-track:cf3cacffe9beafd58e69e93e439e9ea8d7c010cb8d3638dcde4237478d2c7fe8` |
| 8 | `theorem` | [analyticGroupoid_prod](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticgroupoid-prod--9ca8f71d94dc20ba28194c96.md) | 139 | `result-track:9ca8f71d94dc20ba28194c966c1da7270e0853a507b212d920711f1c02275f3d` |
| 9 | `class` | [AnalyticManifold](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticmanifold--b1b0e99edba76b838fbfe601.md) | 161 | `declaration-track:b1b0e99edba76b838fbfe6014bed67a87b6c7793e584922dd50598a86a6b8bec` |
| 10 | `instance` | [AnalyticManifold.self](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticmanifold-self--6ad82613d8b2928ffca6dc85.md) | 165 | `declaration-track:6ad82613d8b2928ffca6dc85d1b2ca02567c22bd5484a88993dac2d422260305` |
| 11 | `instance` | [AnalyticManifold.prod](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticmanifold-prod--a15c6446176c290b03d609aa.md) | 168 | `declaration-track:a15c6446176c290b03d609aad898d1efb0d89aefa1a17e0c6b779fffef1e0e62` |
| 12 | `instance` | [AnalyticManifold.isManifold](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/declarations/analyticmanifold-ismanifold--56872bc9f564f01694d3e74e.md) | 181 | `declaration-track:56872bc9f564f01694d3e74e6dcf67697d12970fee1df8a425e545edcd1a09ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
