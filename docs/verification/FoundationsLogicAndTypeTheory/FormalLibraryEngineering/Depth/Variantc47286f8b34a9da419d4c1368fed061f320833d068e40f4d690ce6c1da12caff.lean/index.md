# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Depth.Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a75ad3764fb4ad8eaa15192c3ab65425f46b7f6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a75ad3764fb4ad8eaa15192c3ab65425f46b7f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean.json)

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
| 1 | `def` | [depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depth--b3123e0f719e588a5e26f92d.md) | 24 | `declaration-track:b3123e0f719e588a5e26f92da9e3e4c8245206c94005a202bf354bd894e79943` |
| 2 | `theorem` | [size_lt_depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/size-lt-depth--a55e94d42e4ae3d958eb5265.md) | 28 | `result-track:a55e94d42e4ae3d958eb5265f657fe9102f763afd81de2e036b87e02aafed941` |
| 3 | `def` | [depthLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depthlb--77e517925622466f22003236.md) | 41 | `declaration-track:77e517925622466f22003236ac0ca29b49cbde1d79d6924ce0266543c4defb5b` |
| 4 | `theorem` | [depthLB_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depthlb-le--e7c6ac42a974ef788269fe3f.md) | 45 | `result-track:e7c6ac42a974ef788269fe3ffc54c5cd730f1faf71f2d2d605622084668ba6bc` |
| 5 | `def` | [depthUB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depthub--61b7bd5aa5e51ef624c02a8f.md) | 53 | `declaration-track:61b7bd5aa5e51ef624c02a8f0e2531533e5fc4fd7d7554100f2846ef3a14dfd9` |
| 6 | `theorem` | [depthUB_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depthub-le--788f8bfb257cf7a497bac13f.md) | 57 | `result-track:788f8bfb257cf7a497bac13fb89b24af810e1d183392ae1892c89b1861672f16` |
| 7 | `theorem` | [depthUB_le_two_depthLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/depthub-le-two-depthlb--7e77410923765e339c69ee7e.md) | 61 | `result-track:7e77410923765e339c69ee7edcf74a831a04d2f42d21d97a8e8534556de55e94` |
| 8 | `theorem` | [Balanced.depth_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/balanced-depth-le--bfc972096e559cc3ee37d7b3.md) | 65 | `result-track:bfc972096e559cc3ee37d7b3a4c2f990d0613d32132e55b762ab109d15262b47` |
| 9 | `theorem` | [Balanced.le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/balanced-le-size--d7e6a1ab0fc962a7678af28c.md) | 71 | `result-track:d7e6a1ab0fc962a7678af28ca5bbd48cd273118a9f48a7ec0918878206223930` |
| 10 | `theorem` | [Balanced.depth_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/balanced-depth-bound--369626e60538283a7c062801.md) | 81 | `result-track:369626e60538283a7c062801caad41fdd656c1e002003c928a898a936782315a` |
| 11 | `theorem` | [WF.depth_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/declarations/wf-depth-bound--33504e62508e7900d6dd602e.md) | 89 | `result-track:33504e62508e7900d6dd602e02db04fe5a9c01c40eca9cd7a33ad235e07c9422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
