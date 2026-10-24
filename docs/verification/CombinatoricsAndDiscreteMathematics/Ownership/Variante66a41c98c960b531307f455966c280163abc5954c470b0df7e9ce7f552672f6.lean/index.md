# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ownership.Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3eb52e60a2844b240f1dc44406dded1e929411d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3eb52e60a2844b240f1dc44406dded1e929411d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Reconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece--19c43b62cf057ec1d19ba177.md) | 33 | `declaration-track:19c43b62cf057ec1d19ba177a153f1448939a0658edf5fd8b0acc95908088d2d` |
| 2 | `theorem` | [mem_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/mem-ownedpiece--5d035a2e2c7b0595941090c0.md) | 37 | `result-track:5d035a2e2c7b0595941090c0e947ef7c1b55c4b58cb26cc146f857ce4b0f297b` |
| 3 | `theorem` | [ownedPiece_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece-subset--37c2deaff32083296d7e22fe.md) | 42 | `result-track:37c2deaff32083296d7e22fec67b7e5222a24a1e57f150cb1932cb7ecc2309a6` |
| 4 | `theorem` | [ownedPiece_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece-empty--8e399442a723d7e6d9407bb4.md) | 46 | `result-track:8e399442a723d7e6d9407bb473b100bca2ee854f53453f3cdd0aa5b16c68d377` |
| 5 | `theorem` | [empty_index_cover_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/empty-index-cover-iff--5aa01ae732b73fdd6e0ee5ac.md) | 51 | `result-track:5aa01ae732b73fdd6e0ee5ac4ec5e843de1968587f229f4a7c471e89fa26d5b2` |
| 6 | `theorem` | [ownedPiece_eq_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece-eq-sdiff--c21f4a045017b5de2d82f18e.md) | 63 | `result-track:c21f4a045017b5de2d82f18ef8c751e4a94901e49dc30b0413e7fd7457291c7c` |
| 7 | `theorem` | [ownedPiece_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece-disjoint--8c0e0ae4f04251f5632f18a4.md) | 70 | `result-track:8c0e0ae4f04251f5632f18a4ed0840186e983244f2fa888856836c7326dfda0f` |
| 8 | `theorem` | [exists_unique_owner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/exists-unique-owner--573db6c250a326f7ad486a63.md) | 81 | `result-track:573db6c250a326f7ad486a63d10b701b9f05f96a407c9cbf9f327bedf8f33644` |
| 9 | `theorem` | [ownedPiece_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpiece-first--2ca0ce19d9ec177c1cdc9d49.md) | 102 | `result-track:2ca0ce19d9ec177c1cdc9d49500fb66814f2ee57cba55f7cb0a839ebf088bdd4` |
| 10 | `theorem` | [ownedPieces_reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/ownedpieces-reconstruct--37fa52b622586c825e35ff61.md) | 110 | `result-track:37fa52b622586c825e35ff616f9376583ef4089cc385351d06d57da6ce257180` |
| 11 | `theorem` | [sum_ownedPieces](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/sum-ownedpieces--bf18d4da101fa39b0a2ae831.md) | 123 | `result-track:bf18d4da101fa39b0a2ae831d60371eba2844b23c6cb2f8f2532d00ddc672125` |
| 12 | `theorem` | [sum_ownedPieces_order_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/sum-ownedpieces-order-invariant--b3d7b67ac36ae2c7cb19691a.md) | 135 | `result-track:b3d7b67ac36ae2c7cb19691ab7cdca060432f67e47bd8657bcd2353eaef326e8` |
| 13 | `theorem` | [image_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/image-ownedpiece--e34f94a1a0c744829333ae04.md) | 143 | `result-track:e34f94a1a0c744829333ae04e271aaf9cb01524245b8fcaca36d4108581b99a2` |
| 14 | `theorem` | [equiv_ownedPiece_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/equiv-ownedpiece-card--36ed5d2be59bd21a10765112.md) | 150 | `result-track:36ed5d2be59bd21a10765112af2f0a36d289342061dc3683c6366afab1782e49` |
| 15 | `theorem` | [equiv_ownedPiece_readout](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/equiv-ownedpiece-readout--477d2163a3f0fd9ab9339b1f.md) | 157 | `result-track:477d2163a3f0fd9ab9339b1f1c522b0527705fc7c037cc46c8c922ec454c326e` |
| 16 | `abbrev` | [BlockMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/blockmask--3783ec6a17de87ac69ab521a.md) | 166 | `declaration-track:3783ec6a17de87ac69ab521a9548dbbfc0c201441a52ef3750dcee756d3239af` |
| 17 | `def` | [decodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decodemask--8bf88364923e7cf4455d3c65.md) | 169 | `declaration-track:8bf88364923e7cf4455d3c658ca2c60290e8892215c460e2b3e9e1ec930d8237` |
| 18 | `theorem` | [decodeMask_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decodemask-subset--a852db10e521c632f0faf5c2.md) | 172 | `result-track:a852db10e521c632f0faf5c20f20b14e99a2d2638071030562437c5b6ecb234f` |
| 19 | `def` | [encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/encodemask--cdc432675783b4fbed9b92aa.md) | 179 | `declaration-track:cdc432675783b4fbed9b92aa683acf762cb3e2e338fa3bf837003ffef4457e36` |
| 20 | `theorem` | [decode_encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decode-encodemask--a056057c675183a48bbbeade.md) | 182 | `result-track:a056057c675183a48bbbeadeff541640dca8b9728fe0dda814f8972954af0294` |
| 21 | `theorem` | [decode_ownedPiece_mask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decode-ownedpiece-mask--4479fa23366abd7647361a2f.md) | 193 | `result-track:4479fa23366abd7647361a2f9cb2d26e1084dc928fca31988057a2b6e7d47e0e` |
| 22 | `theorem` | [blockMask_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/blockmask-dimension--aec2271e6a91216ce2d4a30a.md) | 199 | `result-track:aec2271e6a91216ce2d4a30abe1adf215a4d4a065a6092522d733bc2ff39b943` |
| 23 | `theorem` | [decodeMask_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decodemask-card-le--4c9c8cff80b5b4c24d6d3265.md) | 202 | `result-track:4c9c8cff80b5b4c24d6d32652d6cd55af38c269ace0fd32b37eaebb1ecce7058` |
| 24 | `abbrev` | [ReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/reconstructionmasks--4cd4264ab6d52b3e1ba8b6b8.md) | 209 | `declaration-track:4cd4264ab6d52b3e1ba8b6b851cac0f719288f1373b600b085007abc86e33779` |
| 25 | `abbrev` | [MaskSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskslot--f6478435915a67f846a86c29.md) | 213 | `declaration-track:f6478435915a67f846a86c29ef830a0089986c75b04ce0665edfdb2ca7ebc2b4` |
| 26 | `def` | [maskSlotPayloadEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskslotpayloadequiv--933f6e831f43f8fea0f83126.md) | 216 | `declaration-track:933f6e831f43f8fea0f8312640ade9bc86afb4228f81a32104ee7c8fd1d18904` |
| 27 | `def` | [maskStorageSlots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskstorageslots--ec5ab963b6ec7be3a396a12d.md) | 227 | `declaration-track:ec5ab963b6ec7be3a396a12def5b930ed9490db519f3a6798508afdd4bbd91e9` |
| 28 | `theorem` | [maskStorageSlots_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskstorageslots-eq--9f54eea1d5a80be4aeb921b8.md) | 230 | `result-track:9f54eea1d5a80be4aeb921b81ae5270cb9ce0b967fdabfdadddf48ca4d9086a8` |
| 29 | `theorem` | [card_reconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/card-reconstructionmasks--4b152c211a2c1daf654f7346.md) | 238 | `result-track:4b152c211a2c1daf654f73463cf7cd4d6e594aeecaa7d307368b5e872c350776` |
| 30 | `def` | [decodeReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decodereconstructionmasks--7811a87a40671001e844d9e0.md) | 245 | `declaration-track:7811a87a40671001e844d9e0098d4fde6e6d889c7836ce464d2d2d0cfb9b3f9b` |
| 31 | `def` | [encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/encodeownedmasks--7d575e3e4f2b6f8baf4c2195.md) | 249 | `declaration-track:7d575e3e4f2b6f8baf4c2195964be1d223d5a8facfc2030d81b96a7cdbbd85fd` |
| 32 | `theorem` | [decode_encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/decode-encodeownedmasks--b31b18b2b26aa1578f5fd402.md) | 253 | `result-track:b31b18b2b26aa1578f5fd4020b414640bca292e2502ef8973d6946bd7a8c1a55` |
| 33 | `def` | [maskEntryVisits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskentryvisits--cc97f4e5fc8830a818cae19b.md) | 262 | `declaration-track:cc97f4e5fc8830a818cae19bcb42d08a15a4d6942b6bfe2e57f357757e206cad` |
| 34 | `theorem` | [maskEntryVisits_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskentryvisits-eq--a178e2c6e99b6feb28ba0609.md) | 265 | `result-track:a178e2c6e99b6feb28ba0609833ef4aa64b6e4a233387f3e107b41066c202722` |
| 35 | `theorem` | [maskEntryVisits_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskentryvisits-le--af41ad2b586b5be5d6f5ec1b.md) | 269 | `result-track:af41ad2b586b5be5d6f5ec1b5f13a97052aedc88f37ebdc5396e10e396fad9de` |
| 36 | `theorem` | [maskStorageSlots_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/maskstorageslots-le--a78d8cc056e7f74e6b673b26.md) | 279 | `result-track:a78d8cc056e7f74e6b673b264a35a8dd40d6b287de24f8b5dce52cfa2d41992e` |
| 37 | `def` | [fragmentCatalogue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/fragmentcatalogue--6f203ec4ae4a9a6ec19c7e13.md) | 284 | `declaration-track:6f203ec4ae4a9a6ec19c7e13aabe3de6cef43ed8fa8cfbeff51cd7fc039c6cb5` |
| 38 | `theorem` | [card_fragmentCatalogue_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/card-fragmentcatalogue-le--55acc3c4e727a71ce279691d.md) | 287 | `result-track:55acc3c4e727a71ce279691db64558f7694fb9ddd015ac2b9cf2dfc4e0b04471` |
| 39 | `theorem` | [card_fragmentCatalogue_le_uniform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/declarations/card-fragmentcatalogue-le-uniform--45c780f23cfb11d5187ec806.md) | 294 | `result-track:45c780f23cfb11d5187ec8063a4e7196d7573fceec6f81b52276f99ced67e126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
