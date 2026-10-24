# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ownership.Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d033511e3537d8b65fb25566a544b57250ff7c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d033511e3537d8b65fb25566a544b57250ff7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Reconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece--7867c8c8b6e91b68f361e5b9.md) | 25 | `declaration-track:7867c8c8b6e91b68f361e5b9a0d93614fa364face87d12c43d8cf98eb2f58978` |
| 2 | `theorem` | [mem_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/mem-ownedpiece--f61cc1f29663cd06515fa60b.md) | 29 | `result-track:f61cc1f29663cd06515fa60ba988936a06542eaf85cd3bdf190166734d6b3a61` |
| 3 | `theorem` | [ownedPiece_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece-subset--1209b12c617e15c2c7a4afcb.md) | 34 | `result-track:1209b12c617e15c2c7a4afcbdb4b8435cf6ae8c688f46fbf905bf850ba045a9e` |
| 4 | `theorem` | [ownedPiece_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece-empty--b6035e3822d9208cf1646b45.md) | 38 | `result-track:b6035e3822d9208cf1646b45a66af8ac745dc84f06eef6e963ca807ce2b0f8a7` |
| 5 | `theorem` | [empty_index_cover_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/empty-index-cover-iff--cac95c272c4d9e7986a0b510.md) | 43 | `result-track:cac95c272c4d9e7986a0b510da00e9e6299ad313f67a962b869db175c45d799c` |
| 6 | `theorem` | [ownedPiece_eq_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece-eq-sdiff--595276c2b2e5d274b35ca251.md) | 55 | `result-track:595276c2b2e5d274b35ca251fa27541c955880a47059ace19e409ef9295d4299` |
| 7 | `theorem` | [ownedPiece_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece-disjoint--d7610361f40a267a787b244f.md) | 62 | `result-track:d7610361f40a267a787b244f626b7bd82ef5338fe5927e76bf7ea5a0fee21f3b` |
| 8 | `theorem` | [exists_unique_owner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/exists-unique-owner--f8f86795891510c7dd075e3d.md) | 73 | `result-track:f8f86795891510c7dd075e3d0892a543e7923873a0822e0ee15d23cc68218009` |
| 9 | `theorem` | [ownedPiece_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpiece-first--c992504fa82dbd29e7c113b8.md) | 94 | `result-track:c992504fa82dbd29e7c113b82e6ff2f49db37ddb2d0c77e124cf170caff3fd49` |
| 10 | `theorem` | [ownedPieces_reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/ownedpieces-reconstruct--d4f4736c76a8f08f99312a7f.md) | 102 | `result-track:d4f4736c76a8f08f99312a7fbb6619425d3c1b54526985db3f9e1872f9cb65c8` |
| 11 | `theorem` | [sum_ownedPieces](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/sum-ownedpieces--a818fd4b226ad3cb722cb6d5.md) | 115 | `result-track:a818fd4b226ad3cb722cb6d536220068184bd56a9f03edc208203408b55c342e` |
| 12 | `theorem` | [sum_ownedPieces_order_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/sum-ownedpieces-order-invariant--60643379131cb6339cf72ac0.md) | 127 | `result-track:60643379131cb6339cf72ac01c4bd6cd8c97c15edef996f6e872226a0e20bb1d` |
| 13 | `theorem` | [image_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/image-ownedpiece--1d1954b9fa81a48ffc4deeb8.md) | 135 | `result-track:1d1954b9fa81a48ffc4deeb83b2c38acf58ff66cbb90e58d1ac413f0fa3b1876` |
| 14 | `theorem` | [equiv_ownedPiece_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/equiv-ownedpiece-card--a3383c47072c8de1e1c54ae8.md) | 142 | `result-track:a3383c47072c8de1e1c54ae8fa4bbce502218f7dccfd0640aac75fafb88f607b` |
| 15 | `theorem` | [equiv_ownedPiece_readout](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/equiv-ownedpiece-readout--3ae738428b1afad1c1f27ba8.md) | 149 | `result-track:3ae738428b1afad1c1f27ba883bb2466b1659ea1ded35f4141e09c1098bca3f4` |
| 16 | `abbrev` | [BlockMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/blockmask--482ee583cc5eee0de46c1c06.md) | 158 | `declaration-track:482ee583cc5eee0de46c1c06f1fe0be68dcef55446ce5f85ebbcac4f2a6fbb9b` |
| 17 | `def` | [decodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decodemask--34fd13379a70b252c765277c.md) | 161 | `declaration-track:34fd13379a70b252c765277c3c7d4acfc1c345a6cd0b2060451ea8c96bb0c562` |
| 18 | `theorem` | [decodeMask_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decodemask-subset--9905c014da77367d147f595b.md) | 164 | `result-track:9905c014da77367d147f595bf64b5a1449cdecc1605cb4aac3f5be832ba79fb9` |
| 19 | `def` | [encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/encodemask--b4ff8e164c2b1119583521c9.md) | 171 | `declaration-track:b4ff8e164c2b1119583521c93e0121d6a69dac44c046f956f25ac17ed123339d` |
| 20 | `theorem` | [decode_encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decode-encodemask--1a48bf1217d7c36be4ab2fe4.md) | 174 | `result-track:1a48bf1217d7c36be4ab2fe4fa38ea75dcb82ceb4ca87a032e5a603d90d0a7ad` |
| 21 | `theorem` | [decode_ownedPiece_mask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decode-ownedpiece-mask--d9593863d289f98ac052ec86.md) | 185 | `result-track:d9593863d289f98ac052ec86ecd0b69121036704fc6836f538711abb0e7c7bc1` |
| 22 | `theorem` | [blockMask_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/blockmask-dimension--1c003e26f26f947b02565711.md) | 191 | `result-track:1c003e26f26f947b02565711900b07e74faed8a246ab1c1f03ecb0b32c1eadb1` |
| 23 | `theorem` | [decodeMask_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decodemask-card-le--864197e86201fc5e648648db.md) | 194 | `result-track:864197e86201fc5e648648dba4addcfdfb431f8395cfe81c3f5ddbf5d77d739e` |
| 24 | `abbrev` | [ReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/reconstructionmasks--d3d283bef392b849f60e0abc.md) | 201 | `declaration-track:d3d283bef392b849f60e0abcbd51ff1296a51c0d3e279adddd7261be53179fa6` |
| 25 | `abbrev` | [MaskSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskslot--bf9f3df96dd7016db76ed6f1.md) | 205 | `declaration-track:bf9f3df96dd7016db76ed6f1a3a05a351457b611be9c825be0e9ded2126f80b8` |
| 26 | `def` | [maskSlotPayloadEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskslotpayloadequiv--2beb0e59cd06857746edb70d.md) | 208 | `declaration-track:2beb0e59cd06857746edb70de5d75ac240c69bcf621e5a4dd9ed3651884925e4` |
| 27 | `def` | [maskStorageSlots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskstorageslots--cb6f05b4249827be43545d82.md) | 218 | `declaration-track:cb6f05b4249827be43545d82055fd8681844b031691e84ec3b0c03dcb2bd7e25` |
| 28 | `theorem` | [maskStorageSlots_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskstorageslots-eq--7203d4e54493d83b2c2d8f38.md) | 221 | `result-track:7203d4e54493d83b2c2d8f38826266949d927dc0a6c55e48ba95d01f119fe1c9` |
| 29 | `theorem` | [card_reconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/card-reconstructionmasks--343b8322622cab00fa490163.md) | 229 | `result-track:343b8322622cab00fa49016384de7a9fe2a1590894587390e00127d240fc7eb2` |
| 30 | `def` | [decodeReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decodereconstructionmasks--4b637d76647aec06bffab69a.md) | 235 | `declaration-track:4b637d76647aec06bffab69a5dffd70bda640c6c12f5e431f8f7083345f9f565` |
| 31 | `def` | [encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/encodeownedmasks--a1fda2e17a5ab1c47e798857.md) | 238 | `declaration-track:a1fda2e17a5ab1c47e7988571d06904804962874ea2826841f540ec6c687257d` |
| 32 | `theorem` | [decode_encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/decode-encodeownedmasks--9ae40fe2d344e1d2c10a6415.md) | 242 | `result-track:9ae40fe2d344e1d2c10a6415781d18f5f3b80ca6a4ede64fb98b7f65f0498bb3` |
| 33 | `def` | [maskEntryVisits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskentryvisits--0aba0e2ac07974688964ceff.md) | 251 | `declaration-track:0aba0e2ac07974688964ceff0e239188114c7f305e98ab4a999d629edb3e8ebf` |
| 34 | `theorem` | [maskEntryVisits_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskentryvisits-eq--66820e53ee69d15ad6c4bff2.md) | 254 | `result-track:66820e53ee69d15ad6c4bff271cb9ffb625dda8307049e3e9f2a6728d86526a6` |
| 35 | `theorem` | [maskEntryVisits_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskentryvisits-le--b50752ff843405322f9c4b2d.md) | 258 | `result-track:b50752ff843405322f9c4b2d9d45632404af4b8df5aa3b1f7e8b82ec7a858fed` |
| 36 | `theorem` | [maskStorageSlots_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/maskstorageslots-le--9aef8197b12e82e87c631b3e.md) | 268 | `result-track:9aef8197b12e82e87c631b3e568d775586db37da460cd9f6a79fce05f1a9d5cd` |
| 37 | `def` | [fragmentCatalogue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/fragmentcatalogue--39dc67b361c590e1738400c1.md) | 273 | `declaration-track:39dc67b361c590e1738400c19927ae17b96ababa80b2eef42bb5d14b750de453` |
| 38 | `theorem` | [card_fragmentCatalogue_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/card-fragmentcatalogue-le--78918e4b9a4f54dcf5eb46a9.md) | 276 | `result-track:78918e4b9a4f54dcf5eb46a929291bdba2214cbdbbae3761e655030520a3b0a8` |
| 39 | `theorem` | [card_fragmentCatalogue_le_uniform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/declarations/card-fragmentcatalogue-le-uniform--29a27d4f52b193324401dd84.md) | 282 | `result-track:29a27d4f52b193324401dd84cdfaf7ff0d35740eb05332f25a493d0d180492fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
