# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalInter.Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb69e5e111b490788e9d62cd20234038a48e9165",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb69e5e111b490788e9d62cd20234038a48e9165`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter--e6fbb63d9d1be5585d82083f.md) | 41 | `declaration-track:e6fbb63d9d1be5585d82083f1873b322e021a1d9eb3a8c7c9f8e5325e727ace8` |
| 2 | `theorem` | [cardinal_sInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinal-sinter-mem--9f7c89951c651c8ecbb9c936.md) | 48 | `result-track:9f7c89951c651c8ecbb9c936711f406c8454bd0872b1de51e61607c4077bd72c` |
| 3 | `theorem` | [_root_.Filter.cardinalInterFilter_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/root-filter-cardinalinterfilter-aleph0--06a9e918e0a9587b3a178425.md) | 53 | `result-track:06a9e918e0a9587b3a178425b7dcf3fdc59ca38c10644fe6cbf63a47f11fbfdc` |
| 4 | `theorem` | [CardinalInterFilter.toCountableInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-tocountableinterfilter--b3060560300cebe8879b7f34.md) | 59 | `result-track:b3060560300cebe8879b7f34dd7b6bb3ef92bb8ce2f019f78576bbde25bd651c` |
| 5 | `instance` | [CountableInterFilter.toCardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/countableinterfilter-tocardinalinterfilter--ee99e6dbdc0eff75ffbca1e6.md) | 65 | `declaration-track:ee99e6dbdc0eff75ffbca1e6c21a9debb0dffe4c1695f4e7d1216e9b9e60908a` |
| 6 | `theorem` | [cardinalInterFilter_aleph_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-aleph-one-iff--3325fce838af91871ecd487d.md) | 70 | `result-track:3325fce838af91871ecd487d9bdef210909770565e9aaaea3939294630263342` |
| 7 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-le--3ca3d7fb0e2886549aa9e5c8.md) | 77 | `result-track:3ca3d7fb0e2886549aa9e5c8fc8a58b130b7462b0e29be01e28345cdcbb0f5a2` |
| 8 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-lt--72c9339ec0b592617f0c6b85.md) | 83 | `result-track:72c9339ec0b592617f0c6b85771f22082f91974998893da00e5ac86406163ee5` |
| 9 | `theorem` | [cardinal_iInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinal-iinter-mem--f16c173df39d21979582522e.md) | 91 | `result-track:f16c173df39d21979582522ef5c811edffc0e94b8bfb85055bb3bed99b551ea3` |
| 10 | `theorem` | [cardinal_bInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinal-binter-mem--90afca4a01b04740b746583b.md) | 97 | `result-track:90afca4a01b04740b746583bfa7a478b73b8ebae40dcac376bf63597b3768a15` |
| 11 | `theorem` | [eventually_cardinal_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventually-cardinal-forall--9ee7d17ee2d65b5f6329ecf2.md) | 103 | `result-track:9ee7d17ee2d65b5f6329ecf2626e39b8e4db67bc397979e0d501ca80a7f8e081` |
| 12 | `theorem` | [eventually_cardinal_ball](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventually-cardinal-ball--185ecdbafa53771181627470.md) | 108 | `result-track:185ecdbafa53771181627470777c167ac62520507db2416de9afa2404142c1a6` |
| 13 | `theorem` | [EventuallyLE.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyle-cardinal-iunion--41c2bdae053024084d19d9a0.md) | 114 | `result-track:41c2bdae053024084d19d9a079d0b9d874dbf840caf0db4fc4654bad1656d0f0` |
| 14 | `theorem` | [EventuallyEq.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyeq-cardinal-iunion--8b2e380ebd925b36c2681538.md) | 119 | `result-track:8b2e380ebd925b36c26815382a7a6b5b997b55e5eb78c245d06f536450ab2071` |
| 15 | `theorem` | [EventuallyLE.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyle-cardinal-bunion--256ce6e0e394f233470ccf86.md) | 124 | `result-track:256ce6e0e394f233470ccf86dc61b6af7c3c5a2e88de32020b2317642a6f59aa` |
| 16 | `theorem` | [EventuallyEq.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyeq-cardinal-bunion--ff8968b4c97287eb1c604d1a.md) | 130 | `result-track:ff8968b4c97287eb1c604d1abc36d0e840299bac0b927b2f67adfd2398d6469e` |
| 17 | `theorem` | [EventuallyLE.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyle-cardinal-iinter--7d726c89b969a9aa78a7efd6.md) | 136 | `result-track:7d726c89b969a9aa78a7efd6c30c5b4371af00a886c9bbece11c8a8568f24514` |
| 18 | `theorem` | [EventuallyEq.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyeq-cardinal-iinter--de8b9bcacdacb311c747b05b.md) | 141 | `result-track:de8b9bcacdacb311c747b05ba4a8e575a06dc21ef50f1a9c2aa8bd3904f2d02f` |
| 19 | `theorem` | [EventuallyLE.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyle-cardinal-binter--f43a450baad91cd4ad2c0532.md) | 146 | `result-track:f43a450baad91cd4ad2c0532d91e4e14b66925de9ef3505b41e75b5eb6cf42c1` |
| 20 | `theorem` | [EventuallyEq.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/eventuallyeq-cardinal-binter--4340820c13505f3043df0268.md) | 152 | `result-track:4340820c13505f3043df0268a2a9c281cab519b9dde79a7b29979744a52991ca` |
| 21 | `def` | [ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/ofcardinalinter--77adbbec82b74f5a9c195214.md) | 160 | `declaration-track:77adbbec82b74f5a9c1952147548dcdc1385545a3bd23201e54680652ad00547` |
| 22 | `instance` | [cardinalInter_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinter-ofcardinalinter--473bda46ace81a4156112fdd.md) | 175 | `declaration-track:473bda46ace81a4156112fdd3249eeaa1cf5b6af9c10a2062c6454ecf7c08ce4` |
| 23 | `theorem` | [mem_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/mem-ofcardinalinter--1c0aa4d26a9b0fb07daf7eb7.md) | 182 | `result-track:1c0aa4d26a9b0fb07daf7eb797ce6e7dde50aba5b4b19b8a50d4d3b426d30b42` |
| 24 | `def` | [ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/ofcardinalunion--c2959a2a590a3802c9713157.md) | 192 | `declaration-track:c2959a2a590a3802c97131574d97f23982d8181a1c6fdfb94fb770bae99d4e1b` |
| 25 | `instance` | [cardinalInter_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinter-ofcardinalunion--6d770a8a38906ead29f9727a.md) | 206 | `declaration-track:6d770a8a38906ead29f9727a1a899bd8cfb0e2942ddfe60f30918cea3b26d27d` |
| 26 | `theorem` | [mem_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/mem-ofcardinalunion--4549cdc0f65920af2ed40fa8.md) | 211 | `result-track:4549cdc0f65920af2ed40fa87fa18cf9a65ee8a29a6dd7820375aae54a390395` |
| 27 | `instance` | [cardinalInterFilter_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-principal--9fcafffd95414ac9e427be4e.md) | 215 | `declaration-track:9fcafffd95414ac9e427be4eef342f0209de709a6e61eafff904cf83870c3de2` |
| 28 | `instance` | [cardinalInterFilter_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-bot--a0a4a6f449ea4856bcbfc7b8.md) | 218 | `declaration-track:a0a4a6f449ea4856bcbfc7b84bf33b70dadb95f79eb0415e81bd4ef1e805a718` |
| 29 | `instance` | [cardinalInterFilter_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-top--b059a2560a0d5b1e5445da2f.md) | 222 | `declaration-track:b059a2560a0d5b1e5445da2f304d888a9a93956ce1a03789a0a8c5e1dad59197` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/instance--2058790823b1913ff56f9cb5.md) | 226 | `declaration-track:2058790823b1913ff56f9cb5445745679eb274f9920124111d8732ab150fec8a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/instance--8696304d4bfd12165745abf0.md) | 233 | `declaration-track:8696304d4bfd12165745abf0300bc2e86e86ecd22432e116cd14517eee017c78` |
| 32 | `instance` | [cardinalInterFilter_inf_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-inf-eq--ffc039003a72d9f861c1a9bb.md) | 241 | `declaration-track:ffc039003a72d9f861c1a9bbce3973f308cd583b727354df747faf4ac87f5166` |
| 33 | `instance` | [cardinalInterFilter_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-inf--20ed8019fc70f50c2e6cb6d6.md) | 251 | `declaration-track:20ed8019fc70f50c2e6cb6d68a066aa74e8b3e3bf9975686d8307a812677060c` |
| 34 | `instance` | [cardinalInterFilter_sup_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-sup-eq--dfc3940f863ef87cca026e02.md) | 261 | `declaration-track:dfc3940f863ef87cca026e0250bfbed3fb8c2897a0f2269c75f5cbdf00572393` |
| 35 | `instance` | [cardinalInterFilter_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinterfilter-sup--013e0c333446e0bd3ab12364.md) | 266 | `declaration-track:013e0c333446e0bd3ab12364e51305cc3eb8fa1ba37ec938727033466fcedacb` |
| 36 | `inductive` | [CardinalGenerateSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalgeneratesets--0c3a56335325ceee8ea10f06.md) | 279 | `declaration-track:0c3a56335325ceee8ea10f06fc0fcaa758648edca2b1f4a687526f0570cad249` |
| 37 | `def` | [cardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalgenerate--158687332d93239e80e44f91.md) | 287 | `declaration-track:158687332d93239e80e44f91d552256aaf5d3d99c81b9459f54789fc37dd4f28` |
| 38 | `lemma` | [cardinalInter_ofCardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalinter-ofcardinalgenerate--e2e55d247d9890afedda1216.md) | 291 | `result-track:e2e55d247d9890afedda1216632b5fc3fd70ee6cc8e46b1e4213f5402adcb6d6` |
| 39 | `theorem` | [mem_cardinaleGenerate_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/mem-cardinalegenerate-iff--6ebac209a2b1966fc6bdd8dd.md) | 300 | `result-track:6ebac209a2b1966fc6bdd8dd3836ffd88807ee9875638a41b632b718bcfe37fb` |
| 40 | `theorem` | [le_cardinalGenerate_iff_of_cardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/le-cardinalgenerate-iff-of-cardinalinterfilter--d993a59eba0a3525a3cf7af7.md) | 323 | `result-track:d993a59eba0a3525a3cf7af751657371c6acd60528d257d24e55eff3b30d7729` |
| 41 | `theorem` | [cardinalGenerate_isGreatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/declarations/cardinalgenerate-isgreatest--a50cae1a152eb88ea715772b.md) | 335 | `result-track:a50cae1a152eb88ea715772b43ac5fac35abd01a7f88a6c4c595044851aecd7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
