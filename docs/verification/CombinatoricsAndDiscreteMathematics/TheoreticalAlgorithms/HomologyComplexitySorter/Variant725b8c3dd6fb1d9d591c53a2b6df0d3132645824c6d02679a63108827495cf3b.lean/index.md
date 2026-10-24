# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HomologyComplexitySorter.Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cca6f2de98a466cc39e77e2826fcabb5242047c7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cca6f2de98a466cc39e77e2826fcabb5242047c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PaddedHomologyBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/declarations/paddedhomologyboundary--e9ba378c43f70af2df7b6b85.md) | 7 | `declaration-track:e9ba378c43f70af2df7b6b85fb7245fc82d6e2ccd43c15a9a91830d00c05ffbc` |
| 2 | `structure` | [HomologyComplexityIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/declarations/homologycomplexityindex--10823549f2fcd2fec0890517.md) | 16 | `declaration-track:10823549f2fcd2fec0890517a75f27dffb681e96a084f070eda82b381b3d7bb1` |
| 3 | `structure` | [HomologyComplexityPreorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/declarations/homologycomplexitypreorder--01d2e198b4d4289e2c63c92f.md) | 27 | `declaration-track:01d2e198b4d4289e2c63c92f881aa8a3c68d70fed32cdca9a169971919360e70` |
| 4 | `theorem` | [homologyComplexity_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HomologyComplexitySorter/Variant725b8c3dd6fb1d9d591c53a2b6df0d3132645824c6d02679a63108827495cf3b.lean/declarations/homologycomplexity-boundary-visible--65b66c6bfde5720a2c46c59e.md) | 38 | `result-track:65b66c6bfde5720a2c46c59e6d018219fd782c0df230da846f8dfd4afa7e7e80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
