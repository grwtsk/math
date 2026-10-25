# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7409b4a6d48432eee033b7063ecc8e44c441178",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7409b4a6d48432eee033b7063ecc8e44c441178`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap--c17b6223b27898b2001ef1ad.md) | 51 | `declaration-track:c17b6223b27898b2001ef1ad92b764de4980c1ad4fd46298e1832b5d54cc6035` |
| 2 | `def` | [Map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map--4fd409ffef02a2f51de34b01.md) | 61 | `declaration-track:4fd409ffef02a2f51de34b01fa7c9aeac55977f5849e2a1e6d42ae76b7f7ab18` |
| 3 | `def` | [IterM.InternalCombinators.filterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-internalcombinators-filtermap--6727503330ffa3b8c12752ff.md) | 71 | `declaration-track:6727503330ffa3b8c12752ff2e5bcbdc950ece0cbf5a56beffa47a18cdd9eba5` |
| 4 | `def` | [IterM.InternalCombinators.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-internalcombinators-map--e3274e7378321bf24a921d37.md) | 78 | `declaration-track:e3274e7378321bf24a921d3730e94969f64bff3b9ec6aaa34fc2bf7aed6451f3` |
| 5 | `def` | [IterM.filterMapWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filtermapwithpostcondition--b7cc06e1c96e354bae9c27fe.md) | 131 | `declaration-track:b7cc06e1c96e354bae9c27fe39e822366acaad7c028eaf032596bdd3d2c5705f` |
| 6 | `inductive` | [FilterMap.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap-plausiblestep--114ffb223eb0ebfd859cc527.md) | 143 | `declaration-track:114ffb223eb0ebfd859cc527d4234ffdc05b3d9dc50703d1a8b739e604a243db` |
| 7 | `instance` | [FilterMap.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap-institerator--fb3348ae62336324916b0379.md) | 158 | `declaration-track:fb3348ae62336324916b0379c1904ef6195c9f099d256462ee454b935f1e148e` |
| 8 | `instance` | [Map.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-institerator--db693c4af5661892ad6b538e.md) | 174 | `declaration-track:db693c4af5661892ad6b538e6a8ec2f62aa2eb121a7b3441dc7e8257627a81a6` |
| 9 | `theorem` | [Map.instIterator_eq_filterMapInstIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-institerator-eq-filtermapinstiterator--01336948cd49393880439fb8.md) | 179 | `result-track:01336948cd49393880439fb84700c17b6b16ace8d6153a75b96d2e6e2c5d9ae2` |
| 10 | `def` | [FilterMap.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap-instfinitenessrelation--8f2c8bf259a8d861be632a6f.md) | 186 | `declaration-track:8f2c8bf259a8d861be632a6fa39db5c894da5948c858a0a5661ac61d9c167e11` |
| 11 | `instance` | [FilterMap.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap-instfinite--beae86a6c9435c2465580ba0.md) | 207 | `declaration-track:beae86a6c9435c2465580ba0b7563401065401ae2c8ebd41b0e917b319e5b42f` |
| 12 | `instance` | [Map.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-instfinite--44da8c172208ce78a05088cc.md) | 212 | `declaration-track:44da8c172208ce78a05088cc5eacb384ea84e6998a28069354ac7ab8dec2fb3d` |
| 13 | `def` | [Map.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-instproductivenessrelation--2311e2c54d4ed47d861e4797.md) | 217 | `declaration-track:2311e2c54d4ed47d861e4797f66e573546fad76749600ffdc29f23c28cd73c21` |
| 14 | `instance` | [Map.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-instproductive--56c646fe4ade004934a810fb.md) | 230 | `declaration-track:56c646fe4ade004934a810fb16f3d7f531cd6241f22ea7ce29dfc871c27132c2` |
| 15 | `instance` | [FilterMap.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/filtermap-institeratorloop--99403f439ad73515547b598a.md) | 236 | `declaration-track:99403f439ad73515547b598ac279a57470dd22467b4fa89906aab1365d0818c8` |
| 16 | `instance` | [Map.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/map-institeratorloop--4630c1fb9e9fb604ebd0e844.md) | 243 | `declaration-track:4630c1fb9e9fb604ebd0e8443d7e2a2ed7580b03f338a9c3452ad931ee9dd761` |
| 17 | `def` | [IterM.mapWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-mapwithpostcondition--6612d3153364cba11a5ef06e.md) | 293 | `declaration-track:6612d3153364cba11a5ef06e141ad43efc14a0d837768f166c547262ef570995` |
| 18 | `def` | [IterM.filterWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filterwithpostcondition--79825622b1b31282f08af419.md) | 340 | `declaration-track:79825622b1b31282f08af419cc9d8847c8b7bc781992170d0a5a2c95b8f949a4` |
| 19 | `def` | [IterM.filterMapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filtermapm--a93b8ad3793ee3ef8e0384a6.md) | 382 | `declaration-track:a93b8ad3793ee3ef8e0384a60f0a6609ddace5db894fa935c5400e788a14009e` |
| 20 | `def` | [IterM.mapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-mapm--5a6efff2c5eb481523a1a547.md) | 420 | `declaration-track:5a6efff2c5eb481523a1a5475f7094a26ba9b34acb16cc0a05280d3bda6e9668` |
| 21 | `def` | [IterM.filterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filterm--06627b600938e4c015e0940d.md) | 457 | `declaration-track:06627b600938e4c015e0940dffe6c7d602ae0201afa9821b3c40f900ab5734ed` |
| 22 | `def` | [IterM.filterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filtermap--71414467d4b612a3f115284f.md) | 494 | `declaration-track:71414467d4b612a3f115284f082905650049f632262afba41729e20e4f3318eb` |
| 23 | `def` | [IterM.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-map--fbb91af862fa6efa0fca2a99.md) | 523 | `declaration-track:fbb91af862fa6efa0fca2a990364234f1ec454bd0371f6f3e92d696b2ba386c5` |
| 24 | `def` | [IterM.filter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant863da9b15c68db6e8454ede286d2abb1560f54b56fcdbf1af607bc696cf49826.lean/declarations/iterm-filter--46a978b43a511655a9c78bf2.md) | 558 | `declaration-track:46a978b43a511655a9c78bf2f8d501c10c3cf6bf4ce87b0e2c8a858309fca1ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
