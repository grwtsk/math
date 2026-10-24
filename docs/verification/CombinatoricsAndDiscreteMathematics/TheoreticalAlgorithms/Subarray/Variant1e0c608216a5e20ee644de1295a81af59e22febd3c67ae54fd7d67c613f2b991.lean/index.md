# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subarray.Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a19f96df7f0c05a749bf437b769a085f21f6423c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a19f96df7f0c05a749bf437b769a085f21f6423c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean.json)

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
| 1 | `structure` | [Std.Slice.Internal.SubarrayData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/std-slice-internal-subarraydata--3975026310b74ac6ba977fa3.md) | 30 | `declaration-track:3975026310b74ac6ba977fa371e7d7258ee46a92d36f6f33b3b4c917e90bd5da` |
| 2 | `abbrev` | [Subarray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray--9c0620c5b8694d58d52adc2c.md) | 61 | `declaration-track:9c0620c5b8694d58d52adc2ce6f9db7159ab959d55a2aa46533f60f7e725d940` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/instance--cd7bb597caf220a13aa7ad6a.md) | 63 | `declaration-track:cd7bb597caf220a13aa7ad6aaa11e4cecc255b257c74570d070fe1fd6133c7c0` |
| 4 | `def` | [Subarray.array](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray-array--8bf2de9751cef5744f0f5e1f.md) | 66 | `declaration-track:8bf2de9751cef5744f0f5e1fefbb7a6aeaccc3200e31a69dcc77ae4d549540b1` |
| 5 | `def` | [Subarray.start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray-start--f8fe927aba968e8d405519dd.md) | 70 | `declaration-track:f8fe927aba968e8d405519dd1b7e207c6ddbca0bb8d8dc993d05ca0eaf615b7d` |
| 6 | `def` | [Subarray.stop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray-stop--3b575e21fa8dfe000daaa16c.md) | 74 | `declaration-track:3b575e21fa8dfe000daaa16cd083450d90e33dfcf27eae4a99221131df3d630f` |
| 7 | `def` | [Subarray.start_le_stop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray-start-le-stop--1fd092c67c404aebc511c206.md) | 79 | `declaration-track:1fd092c67c404aebc511c206356e49725a4804e31627bf5e463cdd2fcb48972c` |
| 8 | `def` | [Subarray.stop_le_array_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/subarray-stop-le-array-size--3914ff6f7d9151be59fd946a.md) | 84 | `declaration-track:3914ff6f7d9151be59fd946a14123b9a3b31d2aa63d6aa484132b77f2fb63ed2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/instance--60d6a920f8eea317a5140ef1.md) | 89 | `declaration-track:60d6a920f8eea317a5140ef1a90e345a41337e331af45ffd3ec89e6ab7b9faa9` |
| 10 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/size-eq--5493d8297016441f1050bd30.md) | 93 | `result-track:5493d8297016441f1050bd305147483159170c1809ee1f4738304eda77893917` |
| 11 | `theorem` | [size_le_array_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/size-le-array-size--3b0e78e8f4d4915e8bae28b5.md) | 97 | `result-track:3b0e78e8f4d4915e8bae28b5bc5a2f7cd427d77ca9377e363e527c017016c8c7` |
| 12 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/get--c57e18c2932faf2f3178bcee.md) | 108 | `declaration-track:c57e18c2932faf2f3178bcee064f3f8411146fd3cdc84034fe38d25353d04a87` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/instance--38b37bbaece79a0defe06379.md) | 117 | `declaration-track:38b37bbaece79a0defe0637925b36765979d97d658004ad5abc228da941c2bb6` |
| 14 | `def` | [getD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/getd--821c99b6d85ba03ad86494a7.md) | 126 | `declaration-track:821c99b6d85ba03ad86494a7db5d49a9d86cf17c91dc3cce9a8dd388cbcc5752` |
| 15 | `abbrev` | [get!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/get--cc1e8d1ece5e62f2d88faae5.md) | 135 | `declaration-track:cc1e8d1ece5e62f2d88faae5fc0cd7129998f9f9c4a7bddd40bacbd78d994b14` |
| 16 | `def` | [popFront](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/popfront--c7665d2b1c43e0cc88e53b9d.md) | 147 | `declaration-track:c7665d2b1c43e0cc88e53b9d8012ea88180435986a31d60989598a0f3981703e` |
| 17 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/empty--58a158e6911634e4cd44ede6.md) | 160 | `declaration-track:58a158e6911634e4cd44ede6aedbdaad3a7a55d975937aec6670136669a924a7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/instance--295268efad204c4dbb558d00.md) | 168 | `declaration-track:295268efad204c4dbb558d00329f660f614f004f5ff6818f866695b278aaa7f8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/instance--6f30d3e736f7151f060cee62.md) | 171 | `declaration-track:6f30d3e736f7151f060cee621a431a857f405eae5f06704c5f1e68d35aa57aa9` |
| 20 | `def` | [foldrM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/foldrm--2db00e98063ed5cdf95a7f78.md) | 205 | `declaration-track:2db00e98063ed5cdf95a7f78156f78768c7f72d56c0a4e2120ace4d0a32162a2` |
| 21 | `def` | [anyM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/anym--da9cf95dc33df8898cb24a82.md) | 229 | `declaration-track:da9cf95dc33df8898cb24a82e79fee18e287502263febdb214cfbebdb4007077` |
| 22 | `def` | [allM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/allm--64454a9e1bd60c60069fd3a8.md) | 253 | `declaration-track:64454a9e1bd60c60069fd3a8b9804653da13268120bbaa0ce20dbf9ff0ecc2c8` |
| 23 | `def` | [forM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/form--526c1a19a20cef72188d9513.md) | 262 | `declaration-track:526c1a19a20cef72188d9513a553eb103920a17956a045c529c1d81510d8dabd` |
| 24 | `def` | [forRevM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/forrevm--f01e295130a07bed81e81fb1.md) | 271 | `declaration-track:f01e295130a07bed81e81fb122978de23ca98712b485dcd5acea8b01fc1100a0` |
| 25 | `def` | [foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/foldr--16d1bdc25495205215d238dc.md) | 285 | `declaration-track:16d1bdc25495205215d238dcfc237779c810152cce72abf0d3b19fd0a26ebbd7` |
| 26 | `def` | [any](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/any--de1658816c6d0ee229c24038.md) | 295 | `declaration-track:de1658816c6d0ee229c24038d3c7a13f301f08a4f79ade6f5ba1f5c3cea85386` |
| 27 | `def` | [all](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/all--1cd9ea022b44a46926cc4ce8.md) | 305 | `declaration-track:1cd9ea022b44a46926cc4ce837036f66286efd76f30e7813c5b49932b4c117d4` |
| 28 | `def` | [findSomeRevM?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/findsomerevm--a4b2294db0007f8085298bc3.md) | 328 | `declaration-track:a4b2294db0007f8085298bc3d21a28f5c4365f759bb227d3b1149f6acaf002f6` |
| 29 | `def` | [findRevM?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/findrevm--5cceba4088e1bff1effd2b74.md) | 361 | `declaration-track:5cceba4088e1bff1effd2b747b13697763011c5d5d9ff2da8f35c81508130a97` |
| 30 | `def` | [findRev?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/findrev--d703432c989080379aeabc2e.md) | 375 | `declaration-track:d703432c989080379aeabc2e068de5aedc58b9fbc8e778a631c9f069726361c9` |
| 31 | `def` | [toSubarray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/tosubarray--eccb38d5f2382277cefcb50e.md) | 389 | `declaration-track:eccb38d5f2382277cefcb50e6845ed18668f7213ff2b3a061ea2609a650520a6` |
| 32 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/declarations/macro-rules--64521ae1dca551fd27fe3550.md) | 418 | `declaration-track:64521ae1dca551fd27fe3550c63d12ea4d386fe4ccc420e45f03fc20a6049a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
