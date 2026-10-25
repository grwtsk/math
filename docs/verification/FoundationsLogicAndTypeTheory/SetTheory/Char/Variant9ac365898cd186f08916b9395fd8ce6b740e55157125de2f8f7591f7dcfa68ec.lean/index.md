# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Char.Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b2086145a31d9f3bc89411c73c009fa7ba7cdf1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b2086145a31d9f3bc89411c73c009fa7ba7cdf1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--7c2cce0c7a8007fa58d18f71.md) | 20 | `declaration-track:7c2cce0c7a8007fa58d18f71d798433852f91401b883f3f06170b01f4c39e3ab` |
| 2 | `theorem` | [pRangeSucc?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/prangesucc-eq--856930c4620a11a65439011a.md) | 25 | `result-track:856930c4620a11a65439011a0d4f25a604a737a87bd30c05b7524fa654fa672f` |
| 3 | `theorem` | [pRangeSuccMany?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/prangesuccmany-eq--cb747269ad69b99333a917e5.md) | 28 | `result-track:cb747269ad69b99333a917e5101e5a8e241f30113d71fe27e31e260f119fd31d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--4e7a9316a4c0b41330d736ca.md) | 30 | `declaration-track:4e7a9316a4c0b41330d736caf1eb03d6a9110ecf802b2c909d6d9b5cc5aa7029` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--2f47a35a42cb9a1d9305c77b.md) | 33 | `declaration-track:2f47a35a42cb9a1d9305c77b7a3ecd866d665b460fda44fcdedb9e765e0f81c2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--35aa128b36f3a6d8669c7502.md) | 36 | `declaration-track:35aa128b36f3a6d8669c75023e4494332ad7f5021014e15d44b38ecb6ef30aa8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--a3a9ed04c1056f656d044444.md) | 39 | `declaration-track:a3a9ed04c1056f656d0444444f52b904a44ac2a744c79bf04cc7b8e0d5968aaf` |
| 8 | `theorem` | [least?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/least-eq--4073270c4eb87226dfb8cd0a.md) | 43 | `result-track:4073270c4eb87226dfb8cd0ac959b737fc8e07e32f172004e79fb43ae80e1326` |
| 9 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/map--27e22fea17c6b7ee6f394d69.md) | 45 | `declaration-track:27e22fea17c6b7ee6f394d699c815922e028fce47fa92004ea83195d21e5b0e6` |
| 10 | `theorem` | [toFun_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/tofun-map--a6d29637be18e9917d7a294b.md) | 52 | `result-track:a6d29637be18e9917d7a294b5d58197016a365ab1ba681a722f3edaaca61ce07` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--c2a78434a34c14078ca05fea.md) | 54 | `declaration-track:c2a78434a34c14078ca05fea8908780fc37a329bac32dd5532832cf5d50cf277` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--07b7bc93f12497a22d8e8588.md) | 57 | `declaration-track:07b7bc93f12497a22d8e858856800a68b1d4668f5d7d33f1a8587b9e2b920749` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--563be14fe75bb1ee7784b25f.md) | 60 | `declaration-track:563be14fe75bb1ee7784b25f366a6f4ae8f9070785df0f47f2c1852f88eb766c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--0ef08e727a5eb4c7c1519511.md) | 63 | `declaration-track:0ef08e727a5eb4c7c151951158e51d6f53940167e4e8939adef1d8267a6fda3a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--ba32b8e231807999f93aea24.md) | 66 | `declaration-track:ba32b8e231807999f93aea24efcff4dba14cce6dd31c751483e40f2725b13996` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--6201731dc16d1468e01720ce.md) | 69 | `declaration-track:6201731dc16d1468e01720ce21ff8a78e6b0d48095f19b58131a9cd1830460aa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--fe685ccd7b971ddbdda839c9.md) | 70 | `declaration-track:fe685ccd7b971ddbdda839c97a0b0f139214e85ecd1ea01c018341c7050c54d7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--26a5a347217ee42c7ab06b7f.md) | 71 | `declaration-track:26a5a347217ee42c7ab06b7f1c1d278b8014fc7585f0654761eea20c4d4e55f6` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--79928d3dc0cf1cb81198520c.md) | 72 | `declaration-track:79928d3dc0cf1cb81198520c1b5681bcb80c6fb8dfb2d820fa4c83cd53c795c9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--4954b7d506cff424f9b0b347.md) | 73 | `declaration-track:4954b7d506cff424f9b0b34793769600631dd3c8f64d93fd3d9babed2e5931e2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--db85f12599bb83346d96d7ac.md) | 74 | `declaration-track:db85f12599bb83346d96d7ac4445b37f603a8f94187dc153339fcde2d774cf6c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--3d850b840ec519c5d4bcfc3b.md) | 75 | `declaration-track:3d850b840ec519c5d4bcfc3b0a1955542d3326fbe5d38cd1be30fbd8674c6350` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--d7bc3b854b8a36d3c34c8457.md) | 76 | `declaration-track:d7bc3b854b8a36d3c34c8457d2b53f9076cff8a3512d809962aac0ad5ebbd5db` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--e282600f355890c40c1dba40.md) | 77 | `declaration-track:e282600f355890c40c1dba40e23557de80c698bd3257fda5981e74001427432b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Char/Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec.lean/declarations/instance--ddc8d274c6d40b542a050a42.md) | 78 | `declaration-track:ddc8d274c6d40b542a050a42e072240f807ad7119b7bc855776a8b964dbd44fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
