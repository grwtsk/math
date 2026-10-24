# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pretriangulated.Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85878911211140df9f83db3e6c6f88c76e3d1d2d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85878911211140df9f83db3e6c6f88c76e3d1d2d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/triangle--3f39cbbcbf4c6c9a5da7345b.md) | 54 | `declaration-track:3f39cbbcbf4c6c9a5da7345b3abd1b0139b4c7a4c76e39362ac648a8e8a45d30` |
| 2 | `lemma` | [inl_v_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/inl-v-triangle-mor-f--3b4787fd3b725f088d4cfeb4.md) | 60 | `result-track:3b4787fd3b725f088d4cfeb4284d15e233dbfe9906fbccc47077092cbed9950c` |
| 3 | `lemma` | [inr_f_triangle_mor₃_f](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/inr-f-triangle-mor-f--e51b4e03b692967065a1d7b1.md) | 73 | `result-track:e51b4e03b692967065a1d7b192d26391dc33195320fe29495b5d35b82b764791` |
| 4 | `lemma` | [inr_triangleδ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/inr-triangle--989d08ef687ba73816c6f941.md) | 84 | `result-track:989d08ef687ba73816c6f941c25681bcd4aa7e4b73b9ee26c785d2a09a1aaadb` |
| 5 | `abbrev` | [triangleh](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/triangleh--857600ea21421f285cc74b87.md) | 88 | `declaration-track:857600ea21421f285cc74b877e926cd679f17b3bda90bb4e60a6cb3b56edf29b` |
| 6 | `def` | [homotopyToZeroOfId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/homotopytozeroofid--46df04cf42172e81906ab990.md) | 93 | `declaration-track:46df04cf42172e81906ab990c7b14e80ecff77828295a8b9eb8d659deddbb1d7` |
| 7 | `def` | [mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/mapofhomotopy--1e0826a9717fba54ef1c2691.md) | 103 | `declaration-track:1e0826a9717fba54ef1c2691cf2896026183c82ef3cfab7fe3901cd457d566b6` |
| 8 | `lemma` | [triangleMapOfHomotopy_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/trianglemapofhomotopy-comm--2e9e1db736baac4d61a38b7c.md) | 110 | `result-track:2e9e1db736baac4d61a38b7c3b5c5991bd56f4cd4b1066452e8435df4b9f7eae` |
| 9 | `lemma` | [triangleMapOfHomotopy_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/trianglemapofhomotopy-comm--9474de0d8af797c98b58cc7d.md) | 117 | `result-track:9474de0d8af797c98b58cc7d150c66341554b7f070cf289813690346cea70385` |
| 10 | `def` | [trianglehMapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/trianglehmapofhomotopy--febe3a761a091ffb8bba121e.md) | 136 | `declaration-track:febe3a761a091ffb8bba121e49da4672bb7ba3d332a68be5786516434c8fc3c3` |
| 11 | `def` | [map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/map--ff10d424a4b89b359152bba8.md) | 161 | `declaration-track:ff10d424a4b89b359152bba816ffc80dedc2a45d746fa66d1a5c720982e8d176` |
| 12 | `lemma` | [map_eq_mapOfHomotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/map-eq-mapofhomotopy--5503051c736ba4e4f89e2f7f.md) | 167 | `result-track:5503051c736ba4e4f89e2f7f105b263a36dcb67b5acf6f0928588409ef3a4c08` |
| 13 | `lemma` | [map_id](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/map-id--16003b5174688b7118ab4f2e.md) | 170 | `result-track:16003b5174688b7118ab4f2e3763a13e36130fcd770c7d2cf362b66509b8277a` |
| 14 | `lemma` | [map_comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/map-comp--a4dd348994b70c7f3f736475.md) | 177 | `result-track:a4dd348994b70c7f3f73647583411b6ea5389b5e5fd41a1d7f0c7d973ee8f76b` |
| 15 | `def` | [triangleMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/trianglemap--a593735bab2fccece1ec9bc5.md) | 187 | `declaration-track:a593735bab2fccece1ec9bc5261ecfd15d326b2df8943bb22fb3c404ceb3d702` |
| 16 | `def` | [rotateHomotopyEquiv](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotatehomotopyequiv--e7ab75f44344f49b1ee22391.md) | 208 | `declaration-track:e7ab75f44344f49b1ee22391ca4186be069cf5313263ddcae4f6935eb7495183` |
| 17 | `def` | [rotateHomotopyEquivComm₂Homotopy](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotatehomotopyequivcomm-homotopy--7920f4ce7e6f0d7f02f4c4bf.md) | 237 | `declaration-track:7920f4ce7e6f0d7f02f4c4bf30608f9c24c110676d3f0852e2120b01466f6ca7` |
| 18 | `lemma` | [rotateHomotopyEquiv_comm₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotatehomotopyequiv-comm--17db55d1e7bbd922027ac005.md) | 249 | `result-track:17db55d1e7bbd922027ac0055e363a120ef9dfd616bd613ff65af38e5e97e2e2` |
| 19 | `lemma` | [rotateHomotopyEquiv_comm₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotatehomotopyequiv-comm--2d5892b918a3e1c057121016.md) | 258 | `result-track:2d5892b918a3e1c057121016ae3c6ce9d8fe0895890018599cef9b8056c9a2f4` |
| 20 | `def` | [rotateTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotatetrianglehiso--bba6dff5959ea218deb50783.md) | 267 | `declaration-track:bba6dff5959ea218deb507837ed1ae035d16e6b81565245aa30bb4e23f897ae1` |
| 21 | `def` | [shiftIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/shiftiso--9f2a5be24bbf32f93cb39870.md) | 285 | `declaration-track:9f2a5be24bbf32f93cb3987072725e82d84da40e338deea2359dd75886b8c1bc` |
| 22 | `def` | [shiftTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/shifttriangleiso--3b89150cd54c759b9cec43bb.md) | 318 | `declaration-track:3b89150cd54c759b9cec43bbf3bad54e6f6df7b0361c214e895c4742446e1dfc` |
| 23 | `def` | [shiftTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/shifttrianglehiso--e214b091baf1b17e9d217b85.md) | 342 | `declaration-track:e214b091baf1b17e9d217b85368f82b7eebcd3a389ddb0f7d42e6d45db16095a` |
| 24 | `lemma` | [map_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/map--8b9e4a9bb0c2fe09da3d2542.md) | 357 | `result-track:8b9e4a9bb0c2fe09da3d2542fdcca138ece473477da18277110a2b2c09baf8bc` |
| 25 | `def` | [mapTriangleIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/maptriangleiso--4e1fa2b8259f838f867285de.md) | 378 | `declaration-track:4e1fa2b8259f838f867285deccc171623f39b03e8dac55ec2d4c5eed6c3b778e` |
| 26 | `def` | [mapTrianglehIso](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/maptrianglehiso--f5d4d7a42175e49281e19f3a.md) | 391 | `declaration-track:f5d4d7a42175e49281e19f3a53321e7dc43f67141b436e2215435bda895a33de` |
| 27 | `def` | [distinguishedTriangles](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/distinguishedtriangles--78809c01b9b6af83d040a782.md) | 415 | `declaration-track:78809c01b9b6af83d040a782586bce3bd44024c8c61a74bc9df83a7e6cf6161d` |
| 28 | `lemma` | [isomorphic_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/isomorphic-distinguished--4567167a3a70f328450535b6.md) | 421 | `result-track:4567167a3a70f328450535b60d20d420bdc69c113e6ee7059c4c7efbb9d3e205` |
| 29 | `lemma` | [contractible_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/contractible-distinguished--177e2b4876c225d8202ba037.md) | 430 | `result-track:177e2b4876c225d8202ba0376a9c8fb4a727b579b5fdbbf775e067c6d3643ebf` |
| 30 | `lemma` | [distinguished_cocone_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/distinguished-cocone-triangle--76e0ee879f10352b30bd4e8d.md) | 438 | `result-track:76e0ee879f10352b30bd4e8dfc079e4ea0e2df4a06954afc2918dec3e295bf5d` |
| 31 | `lemma` | [rotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotate-distinguished-triangle--cd1c8ddc72be152d5352701d.md) | 444 | `result-track:cd1c8ddc72be152d5352701dd49162267e9f55854998ac4408b1e383f7d7d9e0` |
| 32 | `lemma` | [shift_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/shift-distinguished-triangle--0e0f1da915588dfc570decd1.md) | 449 | `result-track:0e0f1da915588dfc570decd150cc2965601bda2711ad0f6acc31a9ed5093273d` |
| 33 | `lemma` | [invRotate_distinguished_triangle'](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/invrotate-distinguished-triangle--d932c16354d12957174ac289.md) | 455 | `result-track:d932c16354d12957174ac289786237e1812722f0c0b64f83f3cfc1c74e7bf8e0` |
| 34 | `lemma` | [rotate_distinguished_triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/rotate-distinguished-triangle--6242ceb8b2ae4e570ab23375.md) | 462 | `result-track:6242ceb8b2ae4e570ab23375c644fc7253a2a2eddf61d32dcb12a55f1c1c084e` |
| 35 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/complete-distinguished-triangle-morphism--9aff176afdab4c5375c39257.md) | 473 | `result-track:9aff176afdab4c5375c3925702a54059315295e1d731477aea42e584b45bf4de` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/instance--33bf735a36ebd2ea86332ec1.md) | 515 | `declaration-track:33bf735a36ebd2ea86332ec104ef6a773f5346486d9a6dca8c54e4392ebd2aad` |
| 37 | `lemma` | [mappingCone_triangleh_distinguished](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/mappingcone-triangleh-distinguished--71bfd1e40fd741d606ebe94c.md) | 526 | `result-track:71bfd1e40fd741d606ebe94c7f9f27aa0be9d406416ef4f0bb1351a791b93863` |
| 38 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/declarations/instance--9021c1068d9075e49b7155e0.md) | 532 | `declaration-track:9021c1068d9075e49b7155e070ca37c6195cc869bb8b6dabe96696cea5dbb8f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
