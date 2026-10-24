# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extended.Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f96d0904b8789741ec7593dd0fed34aec5dc2b77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalReal` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtendedInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/extendedinterval--86314b85e48628dc5de70fd9.md) | 57 | `declaration-track:86314b85e48628dc5de70fd94bd1876cdc36518caa8ce9ff7635fbe8199bddf7` |
| 2 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/singleton--bd29eecbc6f76e25baa406a8.md) | 66 | `declaration-track:bd29eecbc6f76e25baa406a8abe285388dcd6c04eeeac3a44e42e159dc9df332` |
| 3 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/empty--d6a6d9ae684d76eb1e5e1d89.md) | 69 | `declaration-track:d6a6d9ae684d76eb1e5e1d89e0d30ccc33adad8609f30814a32d65f4de87a294` |
| 4 | `def` | [whole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/whole--19c2fdaded453096920a7778.md) | 72 | `declaration-track:19c2fdaded453096920a7778bd3fcad49f157621f04d93d8cd6f9ce5d738697a` |
| 5 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/isempty--e76fc3496c4666691eeb9c2b.md) | 76 | `declaration-track:e76fc3496c4666691eeb9c2b4a4c9695af52920267f976fbae68bc81d7052262` |
| 6 | `def` | [numParts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/numparts--d8806ac426c46a231db85417.md) | 79 | `declaration-track:d8806ac426c46a231db85417fd7bb13ec8c869bc9ceb15105fde0689ea479f37` |
| 7 | `def` | [hull?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/hull--ca5e7471ea143c6825d86bf5.md) | 83 | `declaration-track:ca5e7471ea143c6825d86bf5dc1b8efc43a65a53ec4e1babcc907673289e13a3` |
| 8 | `def` | [hull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/hull--38019553274f87c1d8a70bb3.md) | 92 | `declaration-track:38019553274f87c1d8a70bb3f88203c287635529750d5f0d406a7b5dd992c6a4` |
| 9 | `def` | [mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem--9341d06da027da3566afc856.md) | 96 | `declaration-track:9341d06da027da3566afc856a900f508dbf7a0f7e81285b87af0bb9db61a2ced` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/instance--91848e6201112748722110bd.md) | 99 | `declaration-track:91848e6201112748722110bd3c3b61b56cb0cea6497d0bd475b379a61525fceb` |
| 11 | `theorem` | [mem_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-def--4afde91600a1ab4dd34e0612.md) | 102 | `result-track:4afde91600a1ab4dd34e0612e8b098cbbe96f2e12b1797a3e39198dd5b9307af` |
| 12 | `theorem` | [mem_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-singleton--18001f24411720dc667105ed.md) | 105 | `result-track:18001f24411720dc667105ed03ad2f27c7671573598795b94f285ba1607e7d19` |
| 13 | `theorem` | [foldl_contains_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/foldl-contains-head--8531ad6618d1b40b945ca595.md) | 117 | `result-track:8531ad6618d1b40b945ca5955b94ed82a54e9fa629fab5ac8b49b41a4c055df1` |
| 14 | `theorem` | [foldl_contains_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/foldl-contains-tail--6c0f279051d2066e09a8d9e6.md) | 137 | `result-track:6c0f279051d2066e09a8d9e691f70d27d663c7461d3865555d009cc985effb35` |
| 15 | `theorem` | [mem_hull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-hull--2e14a031f75584e9fc00bbc4.md) | 165 | `result-track:2e14a031f75584e9fc00bbc4258819cf646097c771abaa1fa8f7f4d685fdd79c` |
| 16 | `def` | [defaultLargeBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/defaultlargebound--736d272d9d92fd821ea6ba24.md) | 200 | `declaration-track:736d272d9d92fd821ea6ba240019bc487019b4be273ff0e29923d9376a05ddb2` |
| 17 | `theorem` | [defaultLargeBound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/defaultlargebound-pos--3441f7c09468cbd72dfa434e.md) | 203 | `result-track:3441f7c09468cbd72dfa434e6c816ad913a6339c82bbb63f40bba194f958cba9` |
| 18 | `def` | [mkSafeInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mksafeinterval--1252986c65d395936bdf29c8.md) | 208 | `declaration-track:1252986c65d395936bdf29c8b8086813ce12cb50d13a7c23bfa53a95cd6c5db7` |
| 19 | `theorem` | [mem_mkSafeInterval_of_le_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-mksafeinterval-of-le-le--3dcf4878db138a44efa429b7.md) | 211 | `result-track:3dcf4878db138a44efa429b7bec0c486f051761f5c5c191cbce1c421aa2b0a10` |
| 20 | `def` | [invExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/invextended--c3317e30d7efb5f3cf785703.md) | 230 | `declaration-track:c3317e30d7efb5f3cf7857037e753f9b37f4ac6d87e5883caf677be4a8d11d28` |
| 21 | `theorem` | [mem_invExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-invextended--df185a670af1c70281773033.md) | 265 | `result-track:df185a670af1c702817730335ee30474bd3a198de99be2771ba735af27a371e8` |
| 22 | `def` | [liftUnary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/liftunary--dfef10d7556d692b7e2eab34.md) | 375 | `declaration-track:dfef10d7556d692b7e2eab3412f9aee34744f1c5fd4c7958851ce5bc8e790ac4` |
| 23 | `theorem` | [mem_liftUnary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-liftunary--89e71d3d456578ce0190a372.md) | 379 | `result-track:89e71d3d456578ce0190a372371e793f5982731618942ecac52645a2e2cfcbf5` |
| 24 | `def` | [liftBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/liftbinary--cbcbf015c59f0965b3a7494a.md) | 388 | `declaration-track:cbcbf015c59f0965b3a7494a514bdbe27a9b1f1fb29d9b6cc09b6bd166ff3807` |
| 25 | `theorem` | [mem_liftBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-liftbinary--7bd1d97bb7c34a8ed639c2fa.md) | 393 | `result-track:7bd1d97bb7c34a8ed639c2faccc228a45fab90aa28567c614d25e241c1c6ac64` |
| 26 | `structure` | [ExtendedConfig](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/extendedconfig--90c5401939a9e6910ed1cb14.md) | 407 | `declaration-track:90c5401939a9e6910ed1cb14efea29421cce7f89b81779af9d1e34b226c87ffb` |
| 27 | `abbrev` | [ExtendedEnv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/extendedenv--6ba3168d2cc4a61bfa6666aa.md) | 415 | `declaration-track:6ba3168d2cc4a61bfa6666aa2382f124360f4544b555e748f302f4fb2a8b50a0` |
| 28 | `def` | [extendEnv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/extendenv--dd1464742383fbf5bb3fefa6.md) | 418 | `declaration-track:dd1464742383fbf5bb3fefa6ed4b9fc8b93aa8a3f9792f22f4f7de205ba1a32d` |
| 29 | `def` | [evalExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evalextended--4aa5d549e79880665dd92449.md) | 430 | `declaration-track:4aa5d549e79880665dd92449f828c1588b81cf9b36b838b8bc6f2b50c1ae77b3` |
| 30 | `def` | [evalExtended1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evalextended1--debd5157716b70f1b432ed36.md) | 488 | `declaration-track:debd5157716b70f1b432ed3603bde6088bf5f1475d07a21c420059c108336ee5` |
| 31 | `def` | [evalExtendedHull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evalextendedhull--ceec36e4bdcde024c501c05c.md) | 492 | `declaration-track:ceec36e4bdcde024c501c05c8dfdf23c794f22588d0509a0f2af08e70908cf8b` |
| 32 | `def` | [extendedEnvMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/extendedenvmem--396ed4b249af1e82e48b4532.md) | 498 | `declaration-track:396ed4b249af1e82e48b453233a2b69cb6d0d2a01a97f7f6115b37844206b918` |
| 33 | `def` | [evalDomainValidExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evaldomainvalidextended--d27a6935a13c1d7ec6a1bf50.md) | 504 | `declaration-track:d27a6935a13c1d7ec6a1bf5088ef48e8a714029d962e27b0db30c62f0eca8783` |
| 34 | `theorem` | [evalDomainValidExtended_of_ExprSupported](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evaldomainvalidextended-of-exprsupported--3f8d00e35ae5c5116e77dccc.md) | 528 | `result-track:3f8d00e35ae5c5116e77dccc9101f9bb3ce88924632a4c5310cea7ba092d5ec4` |
| 35 | `theorem` | [evalExtended_correct_core](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/evalextended-correct-core--9a36a7b3ea6d776734875cf6.md) | 545 | `result-track:9a36a7b3ea6d776734875cf6d73c845fe244582127dd1fa1cf840ce530bf5c27` |
| 36 | `theorem` | [mem_evalExtendedHull_of_mem_evalExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/declarations/mem-evalextendedhull-of-mem-evalextended--a6d02aaafba1f54e534d3682.md) | 667 | `result-track:a6d02aaafba1f54e534d3682e073b5ac94567063d44604c04d9761f6a8553c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
