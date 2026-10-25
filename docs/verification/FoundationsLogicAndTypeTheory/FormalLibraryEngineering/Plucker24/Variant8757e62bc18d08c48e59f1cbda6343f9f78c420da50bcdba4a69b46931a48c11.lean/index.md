# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Plucker24.Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "766c98afe4b53e01bfd4667193a72620793e6597",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `766c98afe4b53e01bfd4667193a72620793e6597`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minor₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/minor--54ca239a6cb9285a1f75ec47.md) | 24 | `declaration-track:54ca239a6cb9285a1f75ec479a02c27c0dcd7d2c6169a98fad988e1825b74c47` |
| 2 | `theorem` | [minor₂_eq_columnMinor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/minor-eq-columnminor--357825099c1c9e042f63bc05.md) | 28 | `result-track:357825099c1c9e042f63bc05dede6e6269ecce9c2243acebdf2b144b1d966471` |
| 3 | `theorem` | [orderedMinor_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/orderedminor-two--0a99b1d0a7c4a9e9bf1c0c45.md) | 33 | `result-track:0a99b1d0a7c4a9e9bf1c0c450ef081e9491ea8b6bb5514a89aaeb62e25015f92` |
| 4 | `theorem` | [minor₂_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/minor-swap--b41fc5916e8e57cfd5a2f199.md) | 39 | `result-track:b41fc5916e8e57cfd5a2f199cd9d6bde83ca71f159303bc6185e82269b266e4c` |
| 5 | `theorem` | [minor₂_plucker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/minor-plucker--206dadc3f73da7d2cf2affc7.md) | 45 | `result-track:206dadc3f73da7d2cf2affc7758e1c241b3c3c41a26cdb34aa7d171e7316d0aa` |
| 6 | `structure` | [PluckerCoordinates24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/pluckercoordinates24--f48b0126307ce3f83b8b6114.md) | 53 | `declaration-track:f48b0126307ce3f83b8b6114394588c0ce5086e776855f355418c0db680973a4` |
| 7 | `def` | [Compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/compatible--65aea138a15ea0da8605f4d8.md) | 70 | `declaration-track:65aea138a15ea0da8605f4d82256b8476db811ebf43b373d67d8243f3b981f24` |
| 8 | `def` | [StrictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/strictlypositive--9673d883836429fd5ab05484.md) | 74 | `declaration-track:9673d883836429fd5ab0548420f65d260912b74e4ff6015561774ce788ac394a` |
| 9 | `def` | [Nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/nonnegative--43d15cf4133e943892a7cde2.md) | 78 | `declaration-track:43d15cf4133e943892a7cde20e53830368fd22ca8be0faebcd407186e2b1edfd` |
| 10 | `def` | [ofMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/ofmatrix--013b78d293011332b15eec50.md) | 82 | `declaration-track:013b78d293011332b15eec50b6e05d871cdc26ebff98d995bd2a97450412aa52` |
| 11 | `theorem` | [ofMatrix_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/ofmatrix-compatible--a250965206f0fdfca9c28f05.md) | 87 | `result-track:a250965206f0fdfca9c28f052e1f5f1ab0ad90d5a157b64c54481e18d25e9b68` |
| 12 | `theorem` | [allOrderedMinorsPos_of_strictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/allorderedminorspos-of-strictlypositive--7ce3e86861e8a1cb871ac146.md) | 92 | `result-track:7ce3e86861e8a1cb871ac146315f77b0256ac01259c82eab27d0b840da4b2be9` |
| 13 | `theorem` | [allOrderedMinorsNonneg_of_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/allorderedminorsnonneg-of-nonnegative--148b0302a1013165adb722da.md) | 104 | `result-track:148b0302a1013165adb722dae9f00df692d5c47f26cae9c93b5545d9fde9a1ea` |
| 14 | `structure` | [Chart24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/chart24--d7a7c05837367349dc577934.md) | 119 | `declaration-track:d7a7c05837367349dc5779347212ff80ebd3c93b595e34a2f6553d8943bd18f4` |
| 15 | `def` | [matrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/matrix--86fc9c65db0c84a69aa63048.md) | 132 | `declaration-track:86fc9c65db0c84a69aa630484a1c21e3a87ee8b5128234ddd251842f2a522c09` |
| 16 | `def` | [coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/coordinates--6235553517ca2323ac5e659d.md) | 136 | `declaration-track:6235553517ca2323ac5e659d665645a01962208099e81ae27a86ad1c77699e81` |
| 17 | `theorem` | [coordinates_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/coordinates-eq--05d0ed0aaa1e8ec3273fecde.md) | 140 | `result-track:05d0ed0aaa1e8ec3273fecdef98cb27e9ef08eaec95076bd5254d951bad5338a` |
| 18 | `theorem` | [pivot_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/pivot-eq-one--522fc05de303622703f6cb36.md) | 147 | `result-track:522fc05de303622703f6cb36ef319f03e4abddf7e360728dabce5cd44d291ec5` |
| 19 | `def` | [Positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/positive--6eecc3213fb9ab2addf0df11.md) | 152 | `declaration-track:6eecc3213fb9ab2addf0df1151205b9ce3e2c4f564eddd7e9cdc0cac3d3e887b` |
| 20 | `theorem` | [coordinates_strictlyPositive_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/coordinates-strictlypositive-iff--8c8098da759035bf0e673367.md) | 156 | `result-track:8c8098da759035bf0e6733678037b53bda48d6296cdc91b759f9142e7c852f23` |
| 21 | `theorem` | [coordinates_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/coordinates-injective--08221896a68bc5b5c78a025b.md) | 162 | `result-track:08221896a68bc5b5c78a025b2ec8a25f30606a6c20f0d4a9bd51bee9333b24f8` |
| 22 | `def` | [fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/fromcoordinates--a8277318ed99d7cb86b20918.md) | 172 | `declaration-track:a8277318ed99d7cb86b20918c1e365b61c70ef9541f4e32fc2357325726a94bc` |
| 23 | `theorem` | [coordinates_fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/coordinates-fromcoordinates--141b746008c4afd83b6fb3a6.md) | 176 | `result-track:141b746008c4afd83b6fb3a6a9c7b31d68548ff62769a0b51b1d22bac7a419d5` |
| 24 | `theorem` | [fromCoordinates_coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/fromcoordinates-coordinates--e7cc2759605a6ef09842b553.md) | 192 | `result-track:e7cc2759605a6ef09842b553511c24f5a6ec943233e8833b28b282a3a9f53df3` |
| 25 | `theorem` | [normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/normalized-recognition--e90d66f1ebf808ff5c3ef5f0.md) | 199 | `result-track:e90d66f1ebf808ff5c3ef5f0f2d212585ce277f74f53af11804fc9b54a753363` |
| 26 | `theorem` | [positive_normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/declarations/positive-normalized-recognition--5110be50d76982fedc81b024.md) | 212 | `result-track:5110be50d76982fedc81b02411f548cbea5ea4433bdd02a8c28a3bd85aa948d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
