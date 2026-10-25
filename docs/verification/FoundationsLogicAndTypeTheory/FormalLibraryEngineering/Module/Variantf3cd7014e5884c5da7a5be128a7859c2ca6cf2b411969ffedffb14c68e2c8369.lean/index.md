# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Module.Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dab58c9a22e1194534dda3a0b3314cb1eb42a9c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dab58c9a22e1194534dda3a0b3314cb1eb42a9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/orderedadd--61df1118458845311faf56c7.md) | 35 | `declaration-track:61df1118458845311faf56c7ea76ac495b27db72fef309a2a0570b0ef0fbefb1` |
| 2 | `class` | [ExistsAddOfLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/existsaddoflt--087a9a7ce677045af3fccd32.md) | 39 | `declaration-track:087a9a7ce677045af3fccd322c60a08054f40a8e7f1612549957621787d2398a` |
| 3 | `theorem` | [add_le_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-le-right-iff--5d831dccfc7efc7c7ea1ed70.md) | 50 | `result-track:5d831dccfc7efc7c7ea1ed7088320c3967fd6f3bb432b7d17f04560050dc3407` |
| 4 | `theorem` | [add_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-le-left--67bf9a01a21ee3a70a46e8e1.md) | 53 | `result-track:67bf9a01a21ee3a70a46e8e1b8ccfc005de4c700b22fe8e44751a68a8210becd` |
| 5 | `theorem` | [add_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-le-right--54fc73777a13cd8a18701dd3.md) | 56 | `result-track:54fc73777a13cd8a18701dd391287a33027cf4a1cef5d667ceb78b27168b3166` |
| 6 | `theorem` | [add_le_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-le-add--a3555ad95276716cb4630970.md) | 59 | `result-track:a3555ad95276716cb46309707cc0ebd8a4188b2fd2602550bb0a3c4105664a36` |
| 7 | `theorem` | [add_lt_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-lt-left--1aee8780c131087ed323a32e.md) | 64 | `result-track:1aee8780c131087ed323a32e80915635117f19f9f1989855161d83249d4b40e4` |
| 8 | `theorem` | [add_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-lt-right--1b3526b6e95cf4f930daf788.md) | 72 | `result-track:1b3526b6e95cf4f930daf7882c2f6c1d4b811b35b760af869051cdc17d102ed8` |
| 9 | `theorem` | [add_lt_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-lt-left-iff--07c4424ae0295a77f2fba4ff.md) | 76 | `result-track:07c4424ae0295a77f2fba4ffe705d545b34b2a424056fe16adcf02c93e15e4e7` |
| 10 | `theorem` | [add_lt_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-lt-right-iff--301da3aa3710cd80053c13e2.md) | 86 | `result-track:301da3aa3710cd80053c13e25b846f1309f311e692f4940e06d5701378fff463` |
| 11 | `theorem` | [add_lt_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/add-lt-add--dcd0e6c0ae1fa349fe97d40f.md) | 89 | `result-track:dcd0e6c0ae1fa349fe97d40f07ed11777dae54d45a86bfd2b1a4ed315ec16d4a` |
| 12 | `theorem` | [nsmul_le_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/nsmul-le-nsmul--e6a47cfc366da2987ac14642.md) | 98 | `result-track:e6a47cfc366da2987ac1464203a97eed6268d6421eed87c24b03f532ac45ae5f` |
| 13 | `theorem` | [nsmul_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/nsmul-nonneg--c7fe3497e23a992f7b9db457.md) | 105 | `result-track:c7fe3497e23a992f7b9db4578ccd8c6eb3b7ed2e24d7b277a777df163df12d8a` |
| 14 | `theorem` | [nsmul_le_nsmul_of_le_of_le_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/nsmul-le-nsmul-of-le-of-le-of-nonneg--1d48f466fb198fc527d2a7e1.md) | 109 | `result-track:1d48f466fb198fc527d2a7e161dd2a62cdcfdc7dd22c86b28de222938e326d09` |
| 15 | `theorem` | [nsmul_lt_nsmul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/nsmul-lt-nsmul-iff--fdfe84fd24b105667147cf43.md) | 123 | `result-track:fdfe84fd24b105667147cf43168134b840dd3e8999474aef9bdd55863a3956d3` |
| 16 | `theorem` | [nsmul_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/nsmul-pos-iff--99451ceacd1e7a0f80237af3.md) | 134 | `result-track:99451ceacd1e7a0f80237af3959a1feb4b206eb3f8bb82acc3813061ec51e397` |
| 17 | `theorem` | [neg_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/neg-le-iff--b06f5399261f79c2110f2873.md) | 144 | `result-track:b06f5399261f79c2110f2873613579ab355e42924da4c77d3a2bc9ba4a88bfb1` |
| 18 | `theorem` | [zsmul_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-nonneg--7d83f7d28d018dfa371579ac.md) | 155 | `result-track:7d83f7d28d018dfa371579acd1cc433baa3ad129c1cb6a21df7c6fdb16442e5c` |
| 19 | `theorem` | [zsmul_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-pos-iff--72805be83620d12f0d1a8de3.md) | 162 | `result-track:72805be83620d12f0d1a8de3f6471797fe06452dd9b908208a65bb777d31cc51` |
| 20 | `theorem` | [le_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/le-neg-iff--16e8e07e45e66499d00051af.md) | 185 | `result-track:16e8e07e45e66499d00051afb2ceebe05b1cec2a49a73ff088630f88e5bc91cf` |
| 21 | `theorem` | [neg_nonneg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/neg-nonneg-iff--4de7e54e36e6121604fe32b6.md) | 189 | `result-track:4de7e54e36e6121604fe32b66c5d477e693609ac34db29d43509c6bd610f7f8b` |
| 22 | `theorem` | [sub_nonneg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/sub-nonneg-iff--3265541cde106229d961aedb.md) | 192 | `result-track:3265541cde106229d961aedb2d8f7dffdace4f70aebad3f4f0c5827b7952d8c9` |
| 23 | `theorem` | [neg_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/neg-lt-iff--d7b42b4e45f904f1d1c898b2.md) | 197 | `result-track:d7b42b4e45f904f1d1c898b2f2a154422561578b6cf72da6a93d63ad09198ad4` |
| 24 | `theorem` | [lt_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/lt-neg-iff--28d0c201dbfd4bcef0560c43.md) | 201 | `result-track:28d0c201dbfd4bcef0560c43b18717f659ed87ea6d642be74f5b90283f00f2e9` |
| 25 | `theorem` | [neg_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/neg-pos-iff--ae406202be94bde95c6e1c6b.md) | 205 | `result-track:ae406202be94bde95c6e1c6b7fa94d3025c0207ab5e5fe6ac071d1dfd60517ac` |
| 26 | `theorem` | [sub_pos_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/sub-pos-iff--6af29c645d03cd2ab6745aab.md) | 208 | `result-track:6af29c645d03cd2ab6745aabef40dc32a30d28aadd861c7638ebac5b064b09ce` |
| 27 | `theorem` | [zsmul_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-nonpos--43410cfb5da7e39d09667d61.md) | 218 | `result-track:43410cfb5da7e39d09667d612af79289cc6ef25b1a96b76a67939aa1632c90ec` |
| 28 | `theorem` | [zsmul_le_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-le-zsmul--bd0834345fb54d1d869ba30b.md) | 221 | `result-track:bd0834345fb54d1d869ba30bfabaeae0bb1209429ec7af8c6e5718a361116606` |
| 29 | `theorem` | [zsmul_le_zsmul_of_le_of_le_of_nonneg_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-le-zsmul-of-le-of-le-of-nonneg-of-nonneg--49aaae7e9ba6daedec365b31.md) | 224 | `result-track:49aaae7e9ba6daedec365b3190786d92ca3d1a9be43cec1b10aacd036ce3ead9` |
| 30 | `theorem` | [zsmul_neg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-neg-iff--bb8be9561fc75a02625c275e.md) | 235 | `result-track:bb8be9561fc75a02625c275e6d281fb6d2fcd21acc5907156d68970e9d2a28f7` |
| 31 | `theorem` | [zsmul_lt_zsmul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/declarations/zsmul-lt-zsmul-iff--f4577fa685a6912289daa7d2.md) | 238 | `result-track:f4577fa685a6912289daa7d2135255e8adb6cc51b1912a8b5ea2ea15682f2a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
