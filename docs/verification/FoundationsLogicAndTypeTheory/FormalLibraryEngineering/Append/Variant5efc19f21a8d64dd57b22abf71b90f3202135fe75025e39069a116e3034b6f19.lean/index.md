# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75a51b7f706ab0065a09022be049c24221e04ecb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75a51b7f706ab0065a09022be049c24221e04ecb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Iterators.Types.Append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/iterators-types-append--88dfe31cc7fe06acdc69051b.md) | 28 | `declaration-track:88dfe31cc7fe06acdc69051bd48c41ba04b6ace79134928a7cf8a9ec2fd138e2` |
| 2 | `def` | [IterM.append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/iterm-append--8cc4b352fe56dd9e8b510431.md) | 59 | `declaration-track:8cc4b352fe56dd9e8b5104315b68b508f7721220e196ca9799f114864beb71fc` |
| 3 | `def` | [IterM.Intermediate.appendSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/iterm-intermediate-appendsnd--66fc199464a97def7ca05e90.md) | 90 | `declaration-track:66fc199464a97def7ca05e90c2eaba3af447632a6e2cf388aa304471063f9976` |
| 4 | `inductive` | [Append.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-plausiblestep--ecd40c0451eb33b55e7c1f96.md) | 95 | `declaration-track:ecd40c0451eb33b55e7c1f968ea2702732e5ef226c37c1c26d646ddd9133cea0` |
| 5 | `instance` | [Append.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-institerator--d88108ac871e64d21099bd13.md) | 113 | `declaration-track:d88108ac871e64d21099bd132f67bec29902488fd7798d2c131805daa843a0f9` |
| 6 | `instance` | [Append.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-institeratorloop--3ee3952f864b8154ec41f80f.md) | 128 | `declaration-track:3ee3952f864b8154ec41f80fa54960e25fe0c8221f5f394ea63fb8c72797fdc2` |
| 7 | `def` | [Append.Rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-rel--becc1e5b21ee07c08671a216.md) | 138 | `declaration-track:becc1e5b21ee07c08671a216ffd62baa8528fd1557f5dd356cfb315dd572423d` |
| 8 | `theorem` | [Append.rel_of_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-rel-of-fst--328c7930216fdb353b4f4004.md) | 148 | `result-track:328c7930216fdb353b4f40046eddeb4267ffc97d5d3d0a8b18080ade64214fb0` |
| 9 | `theorem` | [Append.rel_fstDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-rel-fstdone--ac5b6d2896ef93f73302674e.md) | 154 | `result-track:ac5b6d2896ef93f73302674e4d4b7adfa5b6e94cedeec8c95f506590ca41d19d` |
| 10 | `theorem` | [Append.rel_of_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-rel-of-snd--a305d8fd1720d1dbe5793117.md) | 159 | `result-track:a305d8fd1720d1dbe5793117f60ea7805ffed24e4ff2ba9447ea4cb00d458f83` |
| 11 | `def` | [Append.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-instfinitenessrelation--bbdf9e14a0fc2c23a3e11870.md) | 165 | `declaration-track:bbdf9e14a0fc2c23a3e11870edb83e562e74a9ae49b8166b340c3302da8f1054` |
| 12 | `instance` | [Append.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-instfinite--e5dc85587aec36c056f606c9.md) | 192 | `declaration-track:e5dc85587aec36c056f606c9c65c62131580a47c55ad6024f8b8d73e449c03eb` |
| 13 | `def` | [Append.ProductiveRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-productiverel--2c5fb8fc5f7238c3e0d59002.md) | 203 | `declaration-track:2c5fb8fc5f7238c3e0d590027e554195da4c7dc608e1599e1068bf3a2f60428f` |
| 14 | `theorem` | [Append.productiveRel_of_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-productiverel-of-fst--73c67a5ca3b62211fd16c388.md) | 214 | `result-track:73c67a5ca3b62211fd16c38824546b4ceabd7d2c6b15c6f721dc007496078eb3` |
| 15 | `theorem` | [Append.productiveRel_fstDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-productiverel-fstdone--893173efbb422b9bbe850b18.md) | 221 | `result-track:893173efbb422b9bbe850b186d15d823febd195406f3e027536d0ed612382977` |
| 16 | `theorem` | [Append.productiveRel_of_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-productiverel-of-snd--776bfe3f892214c2b72fbf92.md) | 227 | `result-track:776bfe3f892214c2b72fbf92785c8717cc27ee64653f08e94a4a549792f85f0e` |
| 17 | `def` | [Append.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-instproductivenessrelation--b1440bd5e93734315a14b533.md) | 234 | `declaration-track:b1440bd5e93734315a14b533031b7d09c9424d8792d6de4b72685fe1d938f5dd` |
| 18 | `instance` | [Append.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/declarations/append-instproductive--073a73ddb821e0056e88c929.md) | 254 | `declaration-track:073a73ddb821e0056e88c929be56585b5e5bd132c185ae81e2f205d173c920fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
