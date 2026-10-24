# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2d546b66ef10c39d56219bc09a6b1ded967991e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2d546b66ef10c39d56219bc09a6b1ded967991e`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Curry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Countable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter--850a98c9bc2767d10488508d.md) | 40 | `declaration-track:850a98c9bc2767d10488508da2f3a63495555a6694765aaf2560182f73d6587c` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countable-sinter-mem--184d57886ebfcc633c969cab.md) | 46 | `result-track:184d57886ebfcc633c969cabd11f1b22c2ddfedca9a20c547cd6df7cd5059f5c` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countable-iinter-mem--cd027e5e7f6bc1eb3f06c4cd.md) | 50 | `result-track:cd027e5e7f6bc1eb3f06c4cd31dc809f4e939ecafec33ef46934f596475f7955` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countable-binter-mem--5d2b5ffa975ed1d38f6b4403.md) | 53 | `result-track:5d2b5ffa975ed1d38f6b44032dda5cd6b493da73b052b609042e1fb56cb2879b` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventually-countable-forall--d517f4eeceada665ae994e94.md) | 59 | `result-track:d517f4eeceada665ae994e94fc786395a8ce6ac92e4a4bf0d44ad92caf4cdfe4` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventually-countable-ball--62f1d512075355a5b7bc4886.md) | 64 | `result-track:62f1d512075355a5b7bc48860b54806c71e22dcd72a60318c7174ee6d344bb51` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyle-countable-iunion--f836cfe520875cb39278c52e.md) | 70 | `result-track:f836cfe520875cb39278c52e1bb3485ca9eacc7b99f6afcf6de0cd0bb46d9428` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyeq-countable-iunion--d349da390b0860b49cdb771b.md) | 74 | `result-track:d349da390b0860b49cdb771b7abcad5e022b114ebef03e6d177aeed8396b05f0` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyle-countable-bunion--1c2cef1ee08003d31a92a290.md) | 79 | `result-track:1c2cef1ee08003d31a92a290d0c0aa8a783518390e7a250d33924c1b0b9adaf1` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyeq-countable-bunion--73f5b2c8c8f8ac67850348ff.md) | 86 | `result-track:73f5b2c8c8f8ac67850348ff9d8788f975da2ce13b0de83a6b97f02ae0534e77` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyle-countable-iinter--c7227b3d1d05a97b7300f50c.md) | 92 | `result-track:c7227b3d1d05a97b7300f50cb0c9c1210328baa812ee26175cb6c6427eeec064` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyeq-countable-iinter--dc185ab1cc9a1699b077d4bc.md) | 97 | `result-track:dc185ab1cc9a1699b077d4bc2964e37e7f77cc52c7c2664922a737b1ac879850` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyle-countable-binter--d42605f6c6ae06d8f69dc15b.md) | 102 | `result-track:d42605f6c6ae06d8f69dc15bd8d6c82ca103be8a1f517d45c90cfe7f78bfb8c7` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/eventuallyeq-countable-binter--80f9fa27e5c7deef9c3e4441.md) | 109 | `result-track:80f9fa27e5c7deef9c3e44416409519170ced4a3ff87e62ff12b6b2c1273a2a7` |
| 15 | `def` | [Filter.ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-ofcountableinter--12af9517ffa433c1d5a0f275.md) | 117 | `declaration-track:12af9517ffa433c1d5a0f275fade15e9fa9deff6b0c616601e78651a373fa93c` |
| 16 | `instance` | [Filter.countableInter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-countableinter-ofcountableinter--f5d5ff33156b26d2268a4e86.md) | 126 | `declaration-track:f5d5ff33156b26d2268a4e8676b7bfe40a4e4cbd98c3638526a3444f28ea7fae` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-mem-ofcountableinter--bd70d4ea73cc43bc76715267.md) | 133 | `result-track:bd70d4ea73cc43bc76715267ae97787a91d2d6fbd94f5e1aacda100bdb029b27` |
| 18 | `def` | [Filter.ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-ofcountableunion--9b6d97a9af7b075dd6c91a0d.md) | 143 | `declaration-track:9b6d97a9af7b075dd6c91a0d622e015f2eadffebb4725c401814aeaeb88362af` |
| 19 | `instance` | [Filter.countableInter_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-countableinter-ofcountableunion--274205d921990843264ef772.md) | 157 | `declaration-track:274205d921990843264ef772af7888a06619a5a72bbc9af7ea35657e4715998a` |
| 20 | `theorem` | [Filter.mem_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/filter-mem-ofcountableunion--b19bf34ea87dc20f5be71de9.md) | 162 | `result-track:b19bf34ea87dc20f5be71de98700bae2b70dcc27666e46f989a7c4662cd80aac` |
| 21 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-principal--e39f19d74de903b195aca6db.md) | 166 | `declaration-track:e39f19d74de903b195aca6dba4e15210c01f0a71d954ad99ac3a337e7f0f1f91` |
| 22 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-bot--59652ef69b6ed8bfa913b811.md) | 169 | `declaration-track:59652ef69b6ed8bfa913b811ce022379cddd512d8d646cad47d28a40a643e5f6` |
| 23 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-top--68b7531e033b6ed166d4e29a.md) | 173 | `declaration-track:68b7531e033b6ed166d4e29aac5deb68b248879115e52ee0676d35b19f9353cb` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/instance--72da3a1311b0b2d48e561fef.md) | 177 | `declaration-track:72da3a1311b0b2d48e561fef4e377b097925bc8119d65ba199bcc49c8a985025` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/instance--35ac7e5b45e23579d6c04973.md) | 185 | `declaration-track:35ac7e5b45e23579d6c049738256042f92cfb83c0fc8800124f1238d9a0fefa2` |
| 26 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-inf--91affc20dad2d1e9e55d2de9.md) | 192 | `declaration-track:91affc20dad2d1e9e55d2de9c7449826e3721622e3d12281aa81a471760b0135` |
| 27 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-sup--1170a2fccba508fa1d6e8217.md) | 203 | `declaration-track:1170a2fccba508fa1d6e8217f56c6a484bf2920d8c69a85a6491a593131c2995` |
| 28 | `instance` | [CountableInterFilter.curry](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countableinterfilter-curry--36753e00dae0cf5efc974eb2.md) | 208 | `declaration-track:36753e00dae0cf5efc974eb2f699cda61d984d320bba4354eb46fedc524ce841` |
| 29 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countablegeneratesets--eb1bfba3458e34f11ac2e09d.md) | 221 | `declaration-track:eb1bfba3458e34f11ac2e09d5741f0dedd6ba7f226e40234acd370ea9ae0d62b` |
| 30 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countablegenerate--4bb99bd845cb163e722aacff.md) | 229 | `declaration-track:4bb99bd845cb163e722aacffd69ab9118ea7d71c226e04103569b471a1f0472a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/instance--3703462ecbba911b928da31b.md) | 235 | `declaration-track:3703462ecbba911b928da31b3b4894ca2e2aa21a44a87bf88e164e95ef09a35a` |
| 32 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/mem-countablegenerate-iff--3c437e151d9a4d5703d14228.md) | 242 | `result-track:3c437e151d9a4d5703d14228f7b4311a61538f00dc8c5da99b484c9ad403405d` |
| 33 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--156b0d92bd3ccf45bc10a0a1.md) | 260 | `result-track:156b0d92bd3ccf45bc10a0a1486e780e488c477a0168111444bf1e9246cd474f` |
| 34 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/declarations/countablegenerate-isgreatest--f2017788119c83f606454d27.md) | 274 | `result-track:f2017788119c83f606454d277ef27b8bd20d1bc04665b6954816187a2a94e2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
