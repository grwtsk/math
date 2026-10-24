# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25453765d2a7a87e845f127a59dfccc75094d93d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25453765d2a7a87e845f127a59dfccc75094d93d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PosIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/positerator--4039b8d4204e0f1e19eb7936.md) | 31 | `declaration-track:4039b8d4204e0f1e19eb7936b0046c82b547905f15573081e42f125ddbae518d` |
| 2 | `def` | [positionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/positionsfrom--8215d59d985ff28378b24863.md) | 39 | `declaration-track:8215d59d985ff28378b248638ee1d72608894d6ba24dd4411854f733a3c3d136` |
| 3 | `def` | [positions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/positions--62680de0e6b34d9accd936bd.md) | 53 | `declaration-track:62680de0e6b34d9accd936bdbef9a33bc64656f8c0f209e68263d847fdff91be` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--3a2bc7115cac36aa4ac730f0.md) | 60 | `declaration-track:3a2bc7115cac36aa4ac730f09fc378e1d3f2640edfadc8b5fc019861d57fc302` |
| 5 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/finitenessrelation--e1a1a3b22855a3cc0b2afd16.md) | 75 | `declaration-track:e1a1a3b22855a3cc0b2afd16a1558c3ee579560913662adc7eacd8e91d3dc3e2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--6f97b21f6d60aad04ebb03e6.md) | 93 | `declaration-track:6f97b21f6d60aad04ebb03e6a9980346901d359731a11aa5f9bfb941873540ae` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--0e4b0be76796be44c8f4ab73.md) | 96 | `declaration-track:0e4b0be76796be44c8f4ab73137412bb34f9c57418cd17fde715f4325d258fb4` |
| 8 | `def` | [chars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/chars--8e5c703654cf4bbd5bfcf9e0.md) | 111 | `declaration-track:8e5c703654cf4bbd5bfcf9e02a7574c6de9123f04128f3f997dfd985dad2429a` |
| 9 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/length--c900884f486ad39d5445ccbc.md) | 115 | `declaration-track:c900884f486ad39d5445ccbc3287089ea4636604bf035eae50e81c7ccba6d2d1` |
| 10 | `structure` | [RevPosIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revpositerator--08f33b22c942a22a5018cd28.md) | 118 | `declaration-track:08f33b22c942a22a5018cd28aa5e2f66b21308b88ca7a31b73d802d9adda55cb` |
| 11 | `def` | [revPositionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revpositionsfrom--cb7c6b612cd3f066f006a754.md) | 126 | `declaration-track:cb7c6b612cd3f066f006a754a66fac776097dd9086f81253f90cd31759d67708` |
| 12 | `def` | [revPositions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revpositions--9c6230b112400caf4a964fb1.md) | 140 | `declaration-track:9c6230b112400caf4a964fb10066c827f56d938c29c3080f89919983bf7e2daa` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--baff0d81281e1dadd4742d95.md) | 147 | `declaration-track:baff0d81281e1dadd4742d956423634fba2bfbb369eb20e8fe361b0f1900251a` |
| 14 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/finitenessrelation--191e47911c03e91590f0375b.md) | 163 | `declaration-track:191e47911c03e91590f0375ba30c4398bced6b3153acfe3d71f851703cd830f7` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--07b76698585692277941e09f.md) | 180 | `declaration-track:07b76698585692277941e09feacf0e68d3c6c458dbf4bd2d76603fc6934d72ce` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--c15ec7de096ba62abf8cd4a9.md) | 183 | `declaration-track:c15ec7de096ba62abf8cd4a943dc3119353d8b3c7ed82dd0e18c6cbb721cd701` |
| 17 | `def` | [revChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revchars--84d7174b86f1695745fb6e6f.md) | 199 | `declaration-track:84d7174b86f1695745fb6e6f75ac6123a11ae2e0503e9543a15d6b44a97673ed` |
| 18 | `structure` | [ByteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/byteiterator--977843841faeaec83debf40e.md) | 202 | `declaration-track:977843841faeaec83debf40e1d56123cd57dfa03912b10e77fdd18f5ba2797a3` |
| 19 | `def` | [bytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/bytes--fde99a9789748bff1613dbd9.md) | 215 | `declaration-track:fde99a9789748bff1613dbd9b28bfefed156080374a90ccf369228c4e3d92468` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--2b2b56729755ea390034840a.md) | 222 | `declaration-track:2b2b56729755ea390034840abd4c88326c745fb305b3efab480fbfb3a42d2551` |
| 21 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/finitenessrelation--f56788f884be512b94622250.md) | 237 | `declaration-track:f56788f884be512b9462225021e0562e7b1432b13fc9541c7cc98d07e803314a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--38a254ee8604a58c068f4e5d.md) | 256 | `declaration-track:38a254ee8604a58c068f4e5d86baf7082a294a4f478a1930c646043328219ee2` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--150a4b77abb124fe97ecc702.md) | 259 | `declaration-track:150a4b77abb124fe97ecc7023fabccf729f63ad61167f869f1369db89ec0a645` |
| 24 | `structure` | [RevByteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revbyteiterator--72be782aab5a0e8cd2cae75a.md) | 266 | `declaration-track:72be782aab5a0e8cd2cae75a77e53e22a4d7398fab73db814abbd370e731609c` |
| 25 | `def` | [revBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revbytes--21256f157fb33305cada6898.md) | 280 | `declaration-track:21256f157fb33305cada6898c65e85966f0b30588073aed37a0beeea6caf77e8` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--e87128369bf8a6934a0f0766.md) | 285 | `declaration-track:e87128369bf8a6934a0f07662742c4429a0ede065f1f396cfa5cfc2305fada77` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--5b19d9311ff2b6b1b6da456e.md) | 292 | `declaration-track:5b19d9311ff2b6b1b6da456e301f5566eac1c73d76bdc05a973dc417bc9a58d2` |
| 28 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/finitenessrelation--4981661568ef052f5adc3c56.md) | 316 | `declaration-track:4981661568ef052f5adc3c567f94d6acd18edf5a91afcea0afcc4c176b24d3d1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--66ba5d353e5c2d1de56efa05.md) | 333 | `declaration-track:66ba5d353e5c2d1de56efa05b5bc2733ad6c4e778a43017e530ddab17ae9a2a0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--77fb24865aed4dffd680af7a.md) | 336 | `declaration-track:77fb24865aed4dffd680af7aef6633db23ec34d60f0462cd4ddba841991e0de6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--75c667dc9192e8c1d2c59a55.md) | 341 | `declaration-track:75c667dc9192e8c1d2c59a55805507f5e5094bec723e05de2137c34e8d02a1cf` |
| 32 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/foldl--bea4aa577d742d44d535739d.md) | 356 | `declaration-track:bea4aa577d742d44d535739d08d1120b21b14acf8c6764a849491557182f33f4` |
| 33 | `def` | [foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/foldr--edf6146b3c4eb73f1b05ec55.md) | 369 | `declaration-track:edf6146b3c4eb73f1b05ec55e6f03ab1d6c5a74b6a5f2ef43004c5a194455261` |
| 34 | `def` | [Internal.ofToSliceWithProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/internal-oftoslicewithproof--50ff30655156f7a18936149b.md) | 375 | `declaration-track:50ff30655156f7a18936149bad4771e4cb9a6f05e71cf7872c92d4c47dd5dd27` |
| 35 | `def` | [positionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/positionsfrom--552f279db67d56ea9c2cb5f6.md) | 382 | `declaration-track:552f279db67d56ea9c2cb5f6fb332d5ca393fc489b295c09a6c31859ac316d54` |
| 36 | `def` | [positions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/positions--d3f311d909ce0a3759abc6a9.md) | 396 | `declaration-track:d3f311d909ce0a3759abc6a98b6b33a04de40f7d5330da5e00e1acb8af3ae681` |
| 37 | `def` | [chars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/chars--58e63dea89463820d86b9bdf.md) | 407 | `declaration-track:58e63dea89463820d86b9bdf0eb710d6731b78ca94d6ddf91c1111005b961451` |
| 38 | `def` | [revPositionsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revpositionsfrom--358d87d3f67df8837b7fc399.md) | 414 | `declaration-track:358d87d3f67df8837b7fc3993ef8ea4844b0a8dc3d91ededce1969c0925d2da1` |
| 39 | `def` | [revPositions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revpositions--06d017d27c6ccd674d35ddf4.md) | 429 | `declaration-track:06d017d27c6ccd674d35ddf4f7dd1bc9e56363af1807301ac7fbcb93bada0eb1` |
| 40 | `def` | [revChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revchars--b2e3b3b54a591bf490a4a464.md) | 441 | `declaration-track:b2e3b3b54a591bf490a4a4641b68ec149702487fb44ed96c07efc4d29f466694` |
| 41 | `def` | [byteIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/byteiterator--4b140f82da0245cde374eb4f.md) | 452 | `declaration-track:4b140f82da0245cde374eb4fb8aab63fbd7a31af45276528580772f589916e07` |
| 42 | `def` | [revBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/revbytes--fd1439f0e000a75303d914b0.md) | 464 | `declaration-track:fd1439f0e000a75303d914b0e312a0e1ec5d453997300e1e718fd1a13b46ef1a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/instance--73b7aeea1115e58c601667dc.md) | 467 | `declaration-track:73b7aeea1115e58c601667dc64738735ae5928226a70391e675fda5bef3e23bc` |
| 44 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/foldl--7c0db43720bbd4508820a23c.md) | 479 | `declaration-track:7c0db43720bbd4508820a23cb6fd23293f3b9ad06e4c6f27aeafb8295cdc3054` |
| 45 | `def` | [Internal.foldlImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/internal-foldlimpl--f1fb224e4f451f3747edf2f0.md) | 483 | `declaration-track:f1fb224e4f451f3747edf2f0bae240738b334d8aa4909daf9ff2edfd797e3c89` |
| 46 | `def` | [foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant20f2c3b155571fddfc7ebbdb57684ed4ba86237609a80329ed006cfe66fdebad.lean/declarations/foldr--eebe79f3993b11640f6b9c6c.md) | 495 | `declaration-track:eebe79f3993b11640f6b9c6c9fe5551bf55179fea37d3d1eab56a3870b8df2eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
