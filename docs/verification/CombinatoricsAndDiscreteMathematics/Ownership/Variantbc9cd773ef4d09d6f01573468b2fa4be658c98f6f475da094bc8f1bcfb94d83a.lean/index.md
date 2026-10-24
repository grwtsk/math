# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ownership.Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd21904db3f5de21f6a9bb498e39f02973832373",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd21904db3f5de21f6a9bb498e39f02973832373`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean.json)

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
| 1 | `def` | [ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece--fa2e87f2340dae74e8c24e46.md) | 33 | `declaration-track:fa2e87f2340dae74e8c24e4620fc8ea4a6de7bfb80945091d47db97176b0c6b2` |
| 2 | `theorem` | [mem_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/mem-ownedpiece--7e948780cb5e2e52a2e4d74c.md) | 37 | `result-track:7e948780cb5e2e52a2e4d74ce3a9519c7dbbca0c5aaa438342f60f8e1f771a5a` |
| 3 | `theorem` | [ownedPiece_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece-subset--04c76c861a9d132a06b041fc.md) | 42 | `result-track:04c76c861a9d132a06b041fc4164ad8be1a5750c71c6a63d71b1e164845a9316` |
| 4 | `theorem` | [ownedPiece_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece-empty--e7ee27c10ceb06654c466543.md) | 46 | `result-track:e7ee27c10ceb06654c46654332972c621f4e3490c8ab8510ac8fc3c26d3e895a` |
| 5 | `theorem` | [empty_index_cover_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/empty-index-cover-iff--22d745b488894ec6d0235eae.md) | 51 | `result-track:22d745b488894ec6d0235eae45677d6c7a2d317d159aac904a513bbc201ddc6d` |
| 6 | `theorem` | [ownedPiece_eq_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece-eq-sdiff--9c94cabb9e8cf5957eff5e2e.md) | 63 | `result-track:9c94cabb9e8cf5957eff5e2edaa46ea2ff6f9cc9d30c862a62705a0c636af935` |
| 7 | `theorem` | [ownedPiece_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece-disjoint--ac7dbbfd43eac5729efe8110.md) | 70 | `result-track:ac7dbbfd43eac5729efe8110d58906a7d90bb1d4681d10680e84d5b343688e27` |
| 8 | `theorem` | [exists_unique_owner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/exists-unique-owner--71626011e604bdc3f9246c02.md) | 81 | `result-track:71626011e604bdc3f9246c02f5408ca072992c6f35539febcfcefc2abdf32801` |
| 9 | `theorem` | [ownedPiece_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpiece-first--d481ce28782f999d9de59219.md) | 102 | `result-track:d481ce28782f999d9de59219ac3f7b7a394aa5c17b1cae898513d24b6da29b58` |
| 10 | `theorem` | [ownedPieces_reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/ownedpieces-reconstruct--f5112d54f27fb5edc4a77abc.md) | 110 | `result-track:f5112d54f27fb5edc4a77abc1499126e3aff3491637ffb2625b3638858f93b87` |
| 11 | `theorem` | [sum_ownedPieces](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/sum-ownedpieces--89d280a618dc82af9bc0f4d2.md) | 123 | `result-track:89d280a618dc82af9bc0f4d2ba6a125b720dcefc552d299c474825123eb1c918` |
| 12 | `theorem` | [sum_ownedPieces_order_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/sum-ownedpieces-order-invariant--a9225624e7e7440ba42bc301.md) | 135 | `result-track:a9225624e7e7440ba42bc30117c440af0574b9e27ba4d7bfd9385bf3aae96e36` |
| 13 | `theorem` | [image_ownedPiece](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/image-ownedpiece--24f3a6f0bccf2514d1569c0a.md) | 143 | `result-track:24f3a6f0bccf2514d1569c0a4c996af22e3134b1322af2eb8c856bf8c910c374` |
| 14 | `theorem` | [equiv_ownedPiece_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/equiv-ownedpiece-card--52b75e6aab6044da6b5c177e.md) | 150 | `result-track:52b75e6aab6044da6b5c177e03256c53951981fa3b1bb787439817f2d6c1c2c6` |
| 15 | `theorem` | [equiv_ownedPiece_readout](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/equiv-ownedpiece-readout--8caf5f6b68431d80d3a8af5d.md) | 157 | `result-track:8caf5f6b68431d80d3a8af5d3864016874e7e775dd1e47f77412307b3ab12b44` |
| 16 | `abbrev` | [BlockMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/blockmask--b2677b912d8902b94efcf728.md) | 166 | `declaration-track:b2677b912d8902b94efcf728f8208ab5c13c620e2d97251fb2715091abc12cbc` |
| 17 | `def` | [decodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decodemask--dd89953a67ec44bd67a46354.md) | 169 | `declaration-track:dd89953a67ec44bd67a4635421dd0e74db9350a2bf7e1ac14842887738a61c2d` |
| 18 | `theorem` | [decodeMask_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decodemask-subset--c54359467e4ed71dd65c3aad.md) | 172 | `result-track:c54359467e4ed71dd65c3aada3cdb20cdcd852bebda80fab70bf8d593a75665f` |
| 19 | `def` | [encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/encodemask--73149f5ee233ee5139070054.md) | 179 | `declaration-track:73149f5ee233ee51390700546b5c98f48564e59be9dcf32b019376e1dd3538f5` |
| 20 | `theorem` | [decode_encodeMask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decode-encodemask--c0dcd94c1bcf9e1007c270cf.md) | 182 | `result-track:c0dcd94c1bcf9e1007c270cf65d48238087a71cf267b8224fbe5034fa448da82` |
| 21 | `theorem` | [decode_ownedPiece_mask](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decode-ownedpiece-mask--300708eda4153ba29562212b.md) | 193 | `result-track:300708eda4153ba29562212b0e0205f93e803716e9d4445e1a7a727f3af4b3e5` |
| 22 | `theorem` | [blockMask_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/blockmask-dimension--e892271d3f0f1a51290ce57f.md) | 199 | `result-track:e892271d3f0f1a51290ce57f30d85983c35108ae7a4d2fe8bf4e825502b243ba` |
| 23 | `theorem` | [decodeMask_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decodemask-card-le--3cbb3aa42e6dab7586d2aad7.md) | 202 | `result-track:3cbb3aa42e6dab7586d2aad7a501df1b5b158c1923ce9c97bc2a89db74f7504b` |
| 24 | `abbrev` | [ReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/reconstructionmasks--e7bc70fe55d45cf00c251f8f.md) | 209 | `declaration-track:e7bc70fe55d45cf00c251f8f079721e0437e779f9f9ad4b14a6fca1a8e5015bc` |
| 25 | `abbrev` | [MaskSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskslot--c2c05f53dc61193d76dc60ee.md) | 213 | `declaration-track:c2c05f53dc61193d76dc60ee7d2dec3958135b3959c351c33f224751073b20a6` |
| 26 | `def` | [maskSlotPayloadEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskslotpayloadequiv--a4ff29fd581246bb77e37a93.md) | 216 | `declaration-track:a4ff29fd581246bb77e37a93144418e4473b8936a3f2bb65b7df1391cccfb25b` |
| 27 | `def` | [maskStorageSlots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskstorageslots--e676b21e85be97d36de37429.md) | 226 | `declaration-track:e676b21e85be97d36de3742919fbe6d40f6dc1a8b3dc776d3b2814f08b492e18` |
| 28 | `theorem` | [maskStorageSlots_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskstorageslots-eq--51c9e7ee9620f022956bdef5.md) | 229 | `result-track:51c9e7ee9620f022956bdef5c11cebdee4ece1c3db5ee32bcb944858abb964ef` |
| 29 | `theorem` | [card_reconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/card-reconstructionmasks--c01b2ac5973bfa002a77bfef.md) | 237 | `result-track:c01b2ac5973bfa002a77bfefee7309e284251c7854f4267020892df4f4489ca2` |
| 30 | `def` | [decodeReconstructionMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decodereconstructionmasks--6fb0cb840c9976ed0f095abe.md) | 243 | `declaration-track:6fb0cb840c9976ed0f095abe44404c6136b73ed5fc1f927e29d31059aa8e25b3` |
| 31 | `def` | [encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/encodeownedmasks--debe2666eb3f385d283d690b.md) | 246 | `declaration-track:debe2666eb3f385d283d690b2653cb5ed2718cda0c41882232ad04eafabf8fad` |
| 32 | `theorem` | [decode_encodeOwnedMasks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/decode-encodeownedmasks--cb844d2a4e1ba1c4b84f5d01.md) | 250 | `result-track:cb844d2a4e1ba1c4b84f5d0193c5aecac463ae34ce539b24785b9580e3a8f3a4` |
| 33 | `def` | [maskEntryVisits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskentryvisits--5652b2fc9f2dd2a1e83aadc7.md) | 259 | `declaration-track:5652b2fc9f2dd2a1e83aadc73773bb82289ad2ded443c22846ffe041564a1e13` |
| 34 | `theorem` | [maskEntryVisits_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskentryvisits-eq--e2fb0743cbc49cde130fd8ab.md) | 262 | `result-track:e2fb0743cbc49cde130fd8abcbd2f05eb63e8e28805b19a42457909b6fb854c1` |
| 35 | `theorem` | [maskEntryVisits_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskentryvisits-le--84b5f0a6dd003c585c22cebd.md) | 266 | `result-track:84b5f0a6dd003c585c22cebd96b020eaa333ee947218079104b48c2a3abb7c64` |
| 36 | `theorem` | [maskStorageSlots_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/maskstorageslots-le--17665ab3b32d68faf599d183.md) | 276 | `result-track:17665ab3b32d68faf599d183c4926c6d9d500469b0663e61cf8fdbd805c4170a` |
| 37 | `def` | [fragmentCatalogue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/fragmentcatalogue--fc195b3f3e364384e4689270.md) | 281 | `declaration-track:fc195b3f3e364384e468927038f49f21ff0c281d934004ecbb2db8629698bc02` |
| 38 | `theorem` | [card_fragmentCatalogue_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/card-fragmentcatalogue-le--2a2c144f11fba6aa4c106fbc.md) | 284 | `result-track:2a2c144f11fba6aa4c106fbca35f0d889791032114191b303737720c65edadc7` |
| 39 | `theorem` | [card_fragmentCatalogue_le_uniform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ownership/Variantbc9cd773ef4d09d6f01573468b2fa4be658c98f6f475da094bc8f1bcfb94d83a.lean/declarations/card-fragmentcatalogue-le-uniform--e4bed5874c0cd9f948cf00ed.md) | 290 | `result-track:e4bed5874c0cd9f948cf00ed09fc473259b38a4608f03e722e50e61afb1ed67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
