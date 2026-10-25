# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Short.Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18bbc42ca1dc866f62b38b1d52d595c77a9a6c99",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18bbc42ca1dc866f62b38b1d52d595c77a9a6c99`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short--014864bee09dd1dac6b1ff50.md) | 37 | `declaration-track:014864bee09dd1dac6b1ff5051d9f020ba20e521e3b73658e0b6ab6b8c8c82dc` |
| 2 | `instance` | [subsingleton_short](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/subsingleton-short--55ea1aca5cab036bd3d7b410.md) | 50 | `declaration-track:55ea1aca5cab036bd3d7b410e56ff594d5c2970a0f28922f837f149cf534ea5f` |
| 3 | `theorem` | [subsingleton_short_example](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/subsingleton-short-example--eb06d6e4274b2fb69241f9d0.md) | 62 | `result-track:eb06d6e4274b2fb69241f9d0749a91de10d1b089eb3425ff150c3eec032797e9` |
| 4 | `def` | [Short.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short-mk--318e60c3e5e1f7fe8da0a36d.md) | 88 | `declaration-track:318e60c3e5e1f7fe8da0a36d40b48269af00544e6713af211d18b46b8d379b41` |
| 5 | `def` | [fintypeLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/fintypeleft--286a196a742b5b2740e0e0ef.md) | 102 | `declaration-track:286a196a742b5b2740e0e0efd7c72a116743e5fb09560c3fdaadc7d606187550` |
| 6 | `instance` | [fintypeLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/fintypeleftmoves--f960b02bb911b6e5e640e2da.md) | 108 | `declaration-track:f960b02bb911b6e5e640e2da53496a008d6549058923a07686072115010bbe97` |
| 7 | `def` | [fintypeRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/fintyperight--434a079277c59c67fe043421.md) | 115 | `declaration-track:434a079277c59c67fe043421c6219eefe38f798cba419182394ed03b9ff0e291` |
| 8 | `instance` | [fintypeRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/fintyperightmoves--443cb661225f5a0bcd631711.md) | 121 | `declaration-track:443cb661225f5a0bcd63171181e8c4cd640ca70557e6b816a2944d9e864cfd8a` |
| 9 | `instance` | [moveLeftShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/moveleftshort--3f4873bd29468693ab021323.md) | 125 | `declaration-track:3f4873bd29468693ab0213231e79a2117b88c42a2b317e8943b7275037ed037a` |
| 10 | `def` | [moveLeftShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/moveleftshort--35ef2d49c5d64b9ce2b84cfb.md) | 133 | `declaration-track:35ef2d49c5d64b9ce2b84cfba5c9af1825b05e0e13ae574ac91d37992552471b` |
| 11 | `instance` | [moveRightShort](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/moverightshort--a839fd8b0fa16df450f79636.md) | 139 | `declaration-track:a839fd8b0fa16df450f7963699984f884d585a16a77be208c4e7f1bedf550586` |
| 12 | `def` | [moveRightShort'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/moverightshort--d29c0867b4b22a5ee7613afc.md) | 147 | `declaration-track:d29c0867b4b22a5ee7613afce6402a04ff9a19bd8a91b806d09e02f2c4db7536` |
| 13 | `theorem` | [short_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short-birthday--ec9d875a1ccd7439c9f4b23c.md) | 153 | `result-track:ec9d875a1ccd7439c9f4b23c07049a086ad6cc42d53d6b99702b547b782a8d14` |
| 14 | `def` | [Short.ofIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short-ofisempty--7ef5b21ea4cc5143079254f4.md) | 172 | `declaration-track:7ef5b21ea4cc5143079254f4b36541b6ebd7977836da7c4142106d53c7a1eab4` |
| 15 | `instance` | [short0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short0--df4496730782efb446039e47.md) | 176 | `declaration-track:df4496730782efb446039e4725a7567ca50f96ff4e2bdb0ee432c3a71096283b` |
| 16 | `instance` | [short1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/short1--22179f55d9600c09ef486822.md) | 180 | `declaration-track:22179f55d9600c09ef486822db194c4584e92a7e4bfbca2066965dfeccc9d7af` |
| 17 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/inductive--0fc6886cbcc67f4e62aa5771.md) | 185 | `declaration-track:0fc6886cbcc67f4e62aa5771c462c29bc1215326c7c272c300e7da07ea7b6458` |
| 18 | `instance` | [ListShort.cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/listshort-cons--d5142576cceb584440ab1f8d.md) | 195 | `declaration-track:d5142576cceb584440ab1f8d4e984d4a0414c7330c7b917755890fef637755b6` |
| 19 | `instance` | [listShortGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/listshortget--15f3b55e9a467823ae276569.md) | 202 | `declaration-track:15f3b55e9a467823ae276569eca4d91e380fab9725b0de8e34771daea1051865` |
| 20 | `instance` | [listShortNthLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/listshortnthle--fe9fa086cc2f5523928d53e2.md) | 215 | `declaration-track:fe9fa086cc2f5523928d53e29f0a9c8ba4db6fd4b4800362c01980edf3dd1d70` |
| 21 | `instance` | [shortOfLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortoflists--25b436042d09d3e310180868.md) | 221 | `declaration-track:25b436042d09d3e310180868379cdbb0f5cfe2911c1107d51eb58aa271dae456` |
| 22 | `def` | [shortOfRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortofrelabelling--5ceb3b9cf110105cb561b5e1.md) | 229 | `declaration-track:5ceb3b9cf110105cb561b5e1c1d60ea6bd3f90d672f96a680e43988e64c02565` |
| 23 | `instance` | [shortNeg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortneg--a04595d5781204b542cacd24.md) | 239 | `declaration-track:a04595d5781204b542cacd24807be602ed9b18704aca581b875f265658d29b60` |
| 24 | `instance` | [shortAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortadd--020cc89e7aad99cfab002e88.md) | 245 | `declaration-track:020cc89e7aad99cfab002e881cda0ea5165d07ad743928a23e42458f9c97235a` |
| 25 | `instance` | [shortNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortnat--e822049a237d9a665151203a.md) | 257 | `declaration-track:e822049a237d9a665151203aece544423be9431f37a2f0b3a87d9b16ac476540` |
| 26 | `instance` | [shortOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortofnat--47fb33392df08a6bea5cf75d.md) | 262 | `declaration-track:47fb33392df08a6bea5cf75dc5d2492509dc295a3a75a9f068fc8c04efd1ba34` |
| 27 | `instance` | [shortBit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortbit0--59b662dc41325353727ef6a2.md) | 266 | `declaration-track:59b662dc41325353727ef6a25858c18ac7dedd82f904798c1cc402f9f5967e37` |
| 28 | `instance` | [shortBit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/shortbit1--dce8c349fe212b242255234d.md) | 270 | `declaration-track:dce8c349fe212b242255234d19e88bd5b11760006f92c1f00dae2b93fd8cd733` |
| 29 | `def` | [leLfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/lelfdecidable--45bc992d2c63f4a8d8fd5cae.md) | 277 | `declaration-track:45bc992d2c63f4a8d8fd5caec0c48cda9ca86805577d965a55f5ade0e0cee089` |
| 30 | `instance` | [leDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/ledecidable--83e1f606fbbbbb73748e443c.md) | 301 | `declaration-track:83e1f606fbbbbb73748e443cafe22633054fcc23ef64b47e74a0ba194cf12ff7` |
| 31 | `instance` | [lfDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/lfdecidable--cf45f7a885774e5c1f3fdcdc.md) | 305 | `declaration-track:cf45f7a885774e5c1f3fdcdc9723feb3ee9947c717cf69f59a6c9cd460d38864` |
| 32 | `instance` | [ltDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/ltdecidable--43fb04b2d3f37b88561355cd.md) | 309 | `declaration-track:43fb04b2d3f37b88561355cd7f44f9a9a7d5accdb768d3a4d0dcc3b255ae1c27` |
| 33 | `instance` | [equivDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/equivdecidable--9a3d4cf0012bcefe7d2a8568.md) | 313 | `declaration-track:9a3d4cf0012bcefe7d2a856879dfd25fcb3286d8a25599c1d80345a4c148cdbc` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--e5180417fb08dbafb83572d5.md) | 317 | `declaration-track:e5180417fb08dbafb83572d5bdf0aeaf42a8ec2b4c2fd136c6e5fdaaa93adfd0` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--a2b43e8df24d753db6c1f1db.md) | 319 | `declaration-track:a2b43e8df24d753db6c1f1dbc923f05e698bf03ccf8aee7a6665423f2eb749a7` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--07c598e01b586f8ab8b6a8bb.md) | 321 | `declaration-track:07c598e01b586f8ab8b6a8bb40542867a89326139947b8334eae0e6994bb00bd` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--d4a8fac23be2bae449258e4b.md) | 323 | `declaration-track:d4a8fac23be2bae449258e4bdc95c9cd0dffee3181b415e5e74acb9345b5e95b` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--f16a358e6e243437af5d6398.md) | 325 | `declaration-track:f16a358e6e243437af5d63988b5148255110725a02a6a4a6d0e5eda2c8fb3e6a` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--282b8282f3ba352f5c274fa9.md) | 327 | `declaration-track:282b8282f3ba352f5c274fa9c924664fc38fa74e11981e4ac19a8f3f9ad4b28c` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--51b485c897cdb28f92f9975a.md) | 329 | `declaration-track:51b485c897cdb28f92f9975aebefbc405651f36cf7acd5890e0712d08849f18b` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/declarations/example--b6f6612ca4b9b218a333456c.md) | 331 | `declaration-track:b6f6612ca4b9b218a333456c095826f5dee60ba7254536f5c0f72ab9b5c972ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
