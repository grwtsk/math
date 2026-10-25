# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Regular.Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61258d1cf3163882137c4b64371e5b87a861a1e5",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61258d1cf3163882137c4b64371e5b87a861a1e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular--ab3c6e21d4452de34ca5a151.md) | 42 | `declaration-track:ab3c6e21d4452de34ca5a151cfb881254fa120349b2b0d48ba17ef9fbf8b80e1` |
| 2 | `theorem` | [IsRegular.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-eq--17f684d74961718fbecb5aa6.md) | 46 | `result-track:17f684d74961718fbecb5aa682e510a5c780bfee84c0a7c8be5e0b4c3e60e99b` |
| 3 | `instance` | [IsRegular.decidablePred](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-decidablepred--fc0f7da8a75d2b8cefa1ae72.md) | 50 | `declaration-track:fc0f7da8a75d2b8cefa1ae72283aaeb5b67dfdce77519704ff3772c402e2654f` |
| 4 | `theorem` | [isRegular_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-bot--e5bd4b671e8790253abd2d17.md) | 60 | `result-track:e5bd4b671e8790253abd2d17d6da79070fda2767bf666b057c521000cadb42a9` |
| 5 | `theorem` | [isRegular_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-top--ccd6bf4419b78b5001663cc2.md) | 63 | `result-track:ccd6bf4419b78b5001663cc26112df5f1dff4989ec9bb1c9342456b814fce977` |
| 6 | `theorem` | [IsRegular.inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-inf--28d1ca7b6ba43ee3d128b7d3.md) | 66 | `result-track:28d1ca7b6ba43ee3d128b7d3bd9c57257abc415ba3dd551127c7bd3aa0ed8daf` |
| 7 | `theorem` | [IsRegular.himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-himp--880631458bc6f8ffb8fb4be4.md) | 70 | `result-track:880631458bc6f8ffb8fb4be4a2b6e115a247181183e6afa15f07ececd65135d6` |
| 8 | `theorem` | [isRegular_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-compl--c44c4b081c9b7f4fdcacdc7d.md) | 74 | `result-track:c44c4b081c9b7f4fdcacdc7dc0ff20126aa0707c607ea9619f99fe177daa53b1` |
| 9 | `theorem` | [IsRegular.disjoint_compl_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-disjoint-compl-left-iff--38a8263524d23b7244910885.md) | 78 | `result-track:38a8263524d23b72449108857d60db493490a9ebcd26e4b61e2c3f4a84573237` |
| 10 | `theorem` | [IsRegular.disjoint_compl_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-disjoint-compl-right-iff--111f41d6f61dce9caf375a5f.md) | 82 | `result-track:111f41d6f61dce9caf375a5f0f208e3b49d5233dc96befe6e748b719f1cc4fb2` |
| 11 | `def` | [_root_.BooleanAlgebra.ofRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/root-booleanalgebra-ofregular--58ee7da678e38688fe07c4f1.md) | 89 | `declaration-track:58ee7da678e38688fe07c4f1c4d48991b5b7c37b35ea1afafc115dc4418f25a2` |
| 12 | `def` | [Regular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/regular--7da9d0e1db7072670c0a0994.md) | 104 | `declaration-track:7da9d0e1db7072670c0a099400ea0d785df7a45adb5fe8688250b095acda3357` |
| 13 | `def` | [val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/val--a3972a978b46f0d6af83f88b.md) | 114 | `declaration-track:a3972a978b46f0d6af83f88b1443322f003c622f858b8fa8fe216ef3efa65e30` |
| 14 | `theorem` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/prop--083b0f4979e2efe1e67b53e1.md) | 117 | `result-track:083b0f4979e2efe1e67b53e1f6c0cde05e732a2f16bd7244c1daa02de3f06607` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/instance--b2501c43ef5d67b0eaaf42a6.md) | 119 | `declaration-track:b2501c43ef5d67b0eaaf42a611efb613abe4fe76753e02403af46b9141888aa1` |
| 16 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-injective--a82e4ca05448021826581090.md) | 121 | `result-track:a82e4ca054480218265810907803eb5d041fcff449a39fecd3c3cbccd6e0853c` |
| 17 | `theorem` | [coe_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-inj--56a79d16d8850e7b9dd91598.md) | 126 | `result-track:56a79d16d8850e7b9dd915984898bad981537d07e4b0ff75ee07bd7550f63962` |
| 18 | `instance` | [top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/top--f069018d2b877a52363f4b84.md) | 130 | `declaration-track:f069018d2b877a52363f4b849e11b3167bba3efddd94cd03732fcdc0570e6af4` |
| 19 | `instance` | [bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/bot--3d46a4b8315e9d21ad51ba9b.md) | 133 | `declaration-track:3d46a4b8315e9d21ad51ba9b40953787972570124aa4214fd6075f40808d6b99` |
| 20 | `instance` | [inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/inf--55b40c51f07201c7cd709c8d.md) | 136 | `declaration-track:55b40c51f07201c7cd709c8db7d8c6517d42b1bcb52124fcdaa7b7d759346ad3` |
| 21 | `instance` | [himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/himp--e53009ee02df596500a1a9e2.md) | 139 | `declaration-track:e53009ee02df596500a1a9e2e6ebea0609a3f92e90ba776755ff1538751b6287` |
| 22 | `instance` | [hasCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/hascompl--8bc5885c5697a976d756cb48.md) | 142 | `declaration-track:8bc5885c5697a976d756cb48b80fbbce8ed19a0832eb7d32b86c766342b1a036` |
| 23 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-top--54cb8f556b177cbc9d06730b.md) | 146 | `result-track:54cb8f556b177cbc9d06730ba39a22f1bf9ec5f2a24eb1f726ffa677226d09ed` |
| 24 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-bot--46a11b2c91f053e78a543235.md) | 151 | `result-track:46a11b2c91f053e78a543235f20a8753fda04201207918c77a3c184c070e2e60` |
| 25 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-inf--dc69385f04f61ca3deea260d.md) | 156 | `result-track:dc69385f04f61ca3deea260df2ade1c5eec03425ef5cd4a3c664e475c7f0512c` |
| 26 | `theorem` | [coe_himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-himp--4bea8cdfcbfae66a5ebb3733.md) | 161 | `result-track:4bea8cdfcbfae66a5ebb3733e5ff1bd1463c8daa2963249eb572a778a1d9322a` |
| 27 | `theorem` | [coe_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-compl--000acbd3c84f3198a2eb7082.md) | 166 | `result-track:000acbd3c84f3198a2eb7082a5973b3fb2dd7218b11e070b177ed1ec0eb69cd9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/instance--5d8ae21d1e0ee0e576e6ab63.md) | 170 | `declaration-track:5d8ae21d1e0ee0e576e6ab63ea049725c97b5ad4ea39449f538611535c08b5a2` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/instance--403c3c23a89bad520121295d.md) | 173 | `declaration-track:403c3c23a89bad520121295df12f4abba0e6c8212bb4245f7c8d2764576efd4c` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/boundedorder--e02b57437ae5f1b26c29cc99.md) | 176 | `declaration-track:e02b57437ae5f1b26c29cc9950f1009ee361b7cdbb38ed163dae878784d8bb23` |
| 31 | `theorem` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-le-coe--e14d7c25ae97c89d1f0f7250.md) | 180 | `result-track:e14d7c25ae97c89d1f0f72509ba7538a0ee4c546d58830bf0b1318db38b0824b` |
| 32 | `theorem` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-lt-coe--113316f3ba9969c58af70183.md) | 185 | `result-track:113316f3ba9969c58af70183d2fe3009d2e0c10167a16a0b70fa4196246046d3` |
| 33 | `def` | [toRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/toregular--c9e078b77143f9fbe2457414.md) | 190 | `declaration-track:c9e078b77143f9fbe24574142e93e144892d0ee35cb6012717ceeff8ecb20aba` |
| 34 | `theorem` | [coe_toRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-toregular--5e61d55fefce3d4344f19a64.md) | 196 | `result-track:5e61d55fefce3d4344f19a649fde06ba4205d476553ad3e46d7caddc973cbcc0` |
| 35 | `theorem` | [toRegular_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/toregular-coe--ee6b304650106e94cf1d391f.md) | 201 | `result-track:ee6b304650106e94cf1d391fbbf9fb5d0a5b666f0074d364f871b51130f5829e` |
| 36 | `def` | [gi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/gi--fc9b9b8bfe0bb667c8f03acc.md) | 206 | `declaration-track:fc9b9b8bfe0bb667c8f03acc0e7ec88eeaa478c0f120e53a95f752302052eb6d` |
| 37 | `instance` | [lattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/lattice--f3c16c9717547ce91db24824.md) | 216 | `declaration-track:f3c16c9717547ce91db24824f82e13d258bb914f8221b0c2ca6e6c90744a3449` |
| 38 | `theorem` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-sup--9e8326c802f572d13de2ce2c.md) | 220 | `result-track:9e8326c802f572d13de2ce2c78fca91ad1d31b8e8652f8b215aaa07942c24ab9` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/instance--4b79a1aa13deeff5c147bd96.md) | 224 | `declaration-track:4b79a1aa13deeff5c147bd9627953948e5e29b83abe01423d5c6460dd63c60c5` |
| 40 | `theorem` | [coe_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/coe-sdiff--3e79a81ba5526bbf3be284d0.md) | 246 | `result-track:3e79a81ba5526bbf3be284d003095dbb32ba7ad9e6e47f44c673c96333998d7f` |
| 41 | `theorem` | [isRegular_of_boolean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-of-boolean--dde86afd09428485a209f254.md) | 256 | `result-track:dde86afd09428485a209f2541a594154e73304950fb9a976ea65884502a54f51` |
| 42 | `theorem` | [isRegular_of_decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/declarations/isregular-of-decidable--06f0d0d6eb4c5ca9ce298c82.md) | 262 | `result-track:06f0d0d6eb4c5ca9ce298c8224e9cbc5988aa2bff83575ffbb149f58111900d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
