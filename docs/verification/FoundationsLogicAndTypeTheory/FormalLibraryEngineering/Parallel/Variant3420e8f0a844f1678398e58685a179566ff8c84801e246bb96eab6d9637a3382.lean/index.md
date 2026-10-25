# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parallel.Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cec4152d5fb7be953a030cb315706242cf7a2a86",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cec4152d5fb7be953a030cb315706242cf7a2a86`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean.json)

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
| 1 | `structure` | [TaskIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/taskiterator--9d3d18e3456e8e34c9bfb89b.md) | 71 | `declaration-track:9d3d18e3456e8e34c9bfb89be7772ba2ea5f0bc12ce5407c5b2d13b4e2e007e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/instance--2d2af1eb0a25cc526ce30444.md) | 74 | `declaration-track:2d2af1eb0a25cc526ce30444c00ab8ef3a8ada6de5f170d2f6fb9b7ddab1ee40` |
| 3 | `def` | [iterTasks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/itertasks--26c33afb36409c6a7719c32a.md) | 118 | `declaration-track:26c33afb36409c6a7719c32a0c1a47c9655707642031767a116e892f8d09294c` |
| 4 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariterwithcancel--1a4aa93cced47a690eeefffd.md) | 141 | `declaration-track:1a4aa93cced47a690eeefffd0237527663deaa1ebecf61b0778d6941fbf515b0` |
| 5 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariter--2270975299a0257e4da52baa.md) | 157 | `declaration-track:2270975299a0257e4da52baadce19da5742730554964a63896b53ce6943d3f92` |
| 6 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedywithcancel--9733c1a00e3e76a000991e0f.md) | 174 | `declaration-track:9733c1a00e3e76a000991e0fc7efa15666faba20fbabd496fd6ea5086f22b535` |
| 7 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedy--7b646ee835924a387365e109.md) | 191 | `declaration-track:7b646ee835924a387365e1097dc0985b1eebd7b2bf08273536c4eea5284dfc6c` |
| 8 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--d8877fdf4342488563954d48.md) | 206 | `declaration-track:d8877fdf4342488563954d48539703073cb9709aeee56dee874433389e684b16` |
| 9 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--43636b1957f26ae55e7986ca.md) | 226 | `declaration-track:43636b1957f26ae55e7986ca1f2d4323e3d841c8f92af3426bedad401c0a459e` |
| 10 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/parfirst--5793d9e6d03ee2bc0f0ad265.md) | 245 | `declaration-track:5793d9e6d03ee2bc0f0ad2651bb1d0ffa8b356e62c739d452551e39c014becde` |
| 11 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--1e4897f9a69edfbf18cb3ceb.md) | 273 | `declaration-track:1e4897f9a69edfbf18cb3cebaf988e088803f56490d54ed71821659aad67fb2c` |
| 12 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--9479d769220610e04ba90ef3.md) | 293 | `declaration-track:9479d769220610e04ba90ef313a4872175e589f6dafa347fd19f17d08ff53716` |
| 13 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariterwithcancel--7d025c3ca66adda852f854e2.md) | 320 | `declaration-track:7d025c3ca66adda852f854e2c6ac0c7ef2ea25c326764ad84b56003a74f35eda` |
| 14 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariter--4ad7567383a05e7290b1e67a.md) | 337 | `declaration-track:4ad7567383a05e7290b1e67adf8831bb91abb9a1869211f4ed5ef70f6d0d9026` |
| 15 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedywithcancel--6d313d9fafec23872b066729.md) | 354 | `declaration-track:6d313d9fafec23872b066729c7b8e1d44c1e77d522cc5bacb1a61db5d90d5e52` |
| 16 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedy--53bd2f520f28102f0f4f9600.md) | 371 | `declaration-track:53bd2f520f28102f0f4f960057e14f03ce020600b21f2d62a1c6ea6b413416f4` |
| 17 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/parfirst--083f87895420e2945d6d3d7c.md) | 380 | `declaration-track:083f87895420e2945d6d3d7c6ce3dc9c7426d9e6f79516499eff4fb8d1f3b748` |
| 18 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariterwithcancel--1b1859cc90fd9fc3af5675b4.md) | 410 | `declaration-track:1b1859cc90fd9fc3af5675b4d6f5bce0fac4b37ac7f32daa2b575fbdae43e5e8` |
| 19 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariter--4fcdb655a700e968c0e27be8.md) | 427 | `declaration-track:4fcdb655a700e968c0e27be810e46c0d08e5ae6cd6fd4bc56590886c15424737` |
| 20 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedywithcancel--d16a986ff034a1ad4588fd2a.md) | 444 | `declaration-track:d16a986ff034a1ad4588fd2a0cbf34c9dcad7bdb1366280daf72385a7f9cc2f9` |
| 21 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedy--59ce9bd5a2d5c229d462dea5.md) | 461 | `declaration-track:59ce9bd5a2d5c229d462dea5c092ab6aa8ee94918e8fc7c9e4e2f873cdd48223` |
| 22 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--8b0897509f858c7093116d31.md) | 476 | `declaration-track:8b0897509f858c7093116d31af517edb709daab2db28e995ede8b7211c64bdd1` |
| 23 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--6f01324a466045fb1f09dfce.md) | 498 | `declaration-track:6f01324a466045fb1f09dfce728d01b34b5ece22ccaad44a5d14a490694600d5` |
| 24 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/parfirst--ebd1d19a863cbb3e3a553edb.md) | 517 | `declaration-track:ebd1d19a863cbb3e3a553edbae0cab4c0070cfc940e56f8828829b781df36f6c` |
| 25 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariterwithcancel--fcd3e3de9a9fceae600c2d06.md) | 547 | `declaration-track:fcd3e3de9a9fceae600c2d061c550ba218d2804e622be5b31475d8ed886c8042` |
| 26 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/pariter--5896dde1e5d1f6a4ce4fa682.md) | 564 | `declaration-track:5896dde1e5d1f6a4ce4fa6825c5103d36430ad0453f5b38b282a340647df92e9` |
| 27 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedywithcancel--839b8e543e6a90d64bde29df.md) | 581 | `declaration-track:839b8e543e6a90d64bde29df4749caa9a8fd65916ebfb78a5fb955c69ca35114` |
| 28 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/paritergreedy--2642d253264a824b8570db93.md) | 598 | `declaration-track:2642d253264a824b8570db937e62faab318035b3058df7c81b6d83aeb9a3c52f` |
| 29 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--86225c457691a21b46997dcb.md) | 613 | `declaration-track:86225c457691a21b46997dcb151a8d4b00e2aca1af24830f931a6339529f7d46` |
| 30 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/par--865a155216ad2bc4c83f25cc.md) | 635 | `declaration-track:865a155216ad2bc4c83f25cc95d65bd27e5c9b2f529a9a615bdc08d0e5e3b5fb` |
| 31 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant3420e8f0a844f1678398e58685a179566ff8c84801e246bb96eab6d9637a3382.lean/declarations/parfirst--1a6103e71d0f022b96ae540c.md) | 654 | `declaration-track:1a6103e71d0f022b96ae540c334fbd1a7082966f1602f9c2e53b91546d5080ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
