# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SInt.Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c3e90508ff240b37158cdc71c856a30afa33ad",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c3e90508ff240b37158cdc71c856a30afa33ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Pow` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring.ToInt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int8.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int8-natcast--6c89c5715c905f7b94a9155e.md) | 24 | `declaration-track:6c89c5715c905f7b94a9155e345ad64a1fd38d3a17d39f0ae6401a9fa097a4b4` |
| 2 | `def` | [Int8.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int8-intcast--d202371cc700b9bc6d1ddac4.md) | 28 | `declaration-track:d202371cc700b9bc6d1ddac4bf67465a9a41730b775c18d89a4ba2f3fbc6f437` |
| 3 | `theorem` | [Int8.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int8-intcast-neg--1d197a0cad9a72e5779a8fd5.md) | 32 | `result-track:1d197a0cad9a72e5779a8fd5b7ae41bf61c8410cf7c2ee87c9cd5628299c0fb9` |
| 4 | `theorem` | [Int8.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int8-intcast-ofnat--d6efef96362e8f4719c89619.md) | 36 | `result-track:d6efef96362e8f4719c896193fe37d628da4e976e9b07a1c651d399c104aa79c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--824ed33bf6f3a59dfb43c6ce.md) | 39 | `declaration-track:824ed33bf6f3a59dfb43c6ceb57df0f5af35d63cfd6caca91425f875845c15f6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--875041d017a02a17ff3c48f3.md) | 64 | `declaration-track:875041d017a02a17ff3c48f3a2615cc58b3144578f56f2930f9d3100603226a2` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--1014dbbb38d07dd9b9aecc87.md) | 72 | `declaration-track:1014dbbb38d07dd9b9aecc877a8736f1e3d6f04033466dcd553ed6d37e7dccf1` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--ea1d869acfdac9987989248d.md) | 73 | `declaration-track:ea1d869acfdac9987989248d9dba534707ea9366b8787f814b830afbd347f507` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--68603647c71de3688ff9f169.md) | 74 | `declaration-track:68603647c71de3688ff9f1690412982fc2da06b2c56a00d4f3e6fe9be7ce6994` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--a373508fb74c9747c341fe0f.md) | 76 | `declaration-track:a373508fb74c9747c341fe0f6d9b3e06f6f7510002fc84524beedbbeb1a8fe0d` |
| 11 | `def` | [Int16.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int16-natcast--1b77dcd49d71f9fb837286cb.md) | 79 | `declaration-track:1b77dcd49d71f9fb837286cbe9428baf6bc041b4d10f1cdc30d772e269942c99` |
| 12 | `def` | [Int16.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int16-intcast--4ee7fb093abf09422daa23b9.md) | 83 | `declaration-track:4ee7fb093abf09422daa23b9f21f04253f09e0eceb9b261c4f832d1f5ea922c9` |
| 13 | `theorem` | [Int16.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int16-intcast-neg--6711fe07308d92b391ce67ef.md) | 87 | `result-track:6711fe07308d92b391ce67ef9ffa16cdd5fe6fbd910cb67bc4e919c90bd8fe47` |
| 14 | `theorem` | [Int16.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int16-intcast-ofnat--af70458b4e8740b2ebcf7726.md) | 91 | `result-track:af70458b4e8740b2ebcf77267c4d0f8f5289ee59019f025ad542166af46fd588` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--4dc5524baab71a4261abfb60.md) | 94 | `declaration-track:4dc5524baab71a4261abfb60a894328961d30b8f06af5f9139a5491e8924be27` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--d5cea91c9551ff04c2b59672.md) | 119 | `declaration-track:d5cea91c9551ff04c2b5967265368fee72bcdf5fe73f427eabcb89bc7f5c8b58` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--80da4e821e66a45afdabbbc2.md) | 127 | `declaration-track:80da4e821e66a45afdabbbc26ebff7dfba2a797adb318f1092f480e95798ee1f` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--1e079a07ae3325bea2593857.md) | 128 | `declaration-track:1e079a07ae3325bea259385796e5be0117cb4668e1ad2337d2efe31bdb13af1b` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--72e02e3be5386e672950afa8.md) | 129 | `declaration-track:72e02e3be5386e672950afa8eead3af48c47b29dcfe4914beaead268674d1fe1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--d221131198afd783ae4bee97.md) | 131 | `declaration-track:d221131198afd783ae4bee972411dd52223530c55831f3c368cb7289092d81ec` |
| 21 | `def` | [Int32.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int32-natcast--2c9dc4d2905b361fb9988933.md) | 134 | `declaration-track:2c9dc4d2905b361fb9988933f860a4d298c3e97eca4664bfcdd777eab2120b09` |
| 22 | `def` | [Int32.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int32-intcast--1fd637080f238f12fc737654.md) | 138 | `declaration-track:1fd637080f238f12fc7376547b43057716ccb5a6de7dfb269c105967832c2c8d` |
| 23 | `theorem` | [Int32.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int32-intcast-neg--6b5e30cbe14b1725759cdfaa.md) | 142 | `result-track:6b5e30cbe14b1725759cdfaa784703cf301fcee6202e3d6e211880d7356c98ec` |
| 24 | `theorem` | [Int32.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int32-intcast-ofnat--4571546a0cc1be3db0303bf8.md) | 146 | `result-track:4571546a0cc1be3db0303bf8d7b827dce50730a84ba6820e076484aff085422a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--6fde40bf92bc8e32dda4d324.md) | 149 | `declaration-track:6fde40bf92bc8e32dda4d3245c0315491f22ad4113ff55b39311f834208b5414` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--f6d71e4bdc123b34f2e2c930.md) | 174 | `declaration-track:f6d71e4bdc123b34f2e2c930923640fcffc9bd8b84f63cbd387b138602adeec4` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--3d0166112cbd3b2d7596d80a.md) | 182 | `declaration-track:3d0166112cbd3b2d7596d80ad50abb31acb6b97b69a690481438ee2e00d9f60f` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--3a3796f0e4ca664d84737082.md) | 183 | `declaration-track:3a3796f0e4ca664d847370829945d3230813f8fe4bf532812f0ddf14150a88aa` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--37ca66f983c5d402b1351b65.md) | 184 | `declaration-track:37ca66f983c5d402b1351b65acd67635017f4870d718a053ecf9e14c03413e9a` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--b4a838c94e087e3f262bcf4f.md) | 186 | `declaration-track:b4a838c94e087e3f262bcf4fb6706c4d898b5545f75539c32d44434b49ca9fed` |
| 31 | `def` | [Int64.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int64-natcast--576997a304bc227b8fbf470e.md) | 189 | `declaration-track:576997a304bc227b8fbf470e5405212f0b6e5bae6d36be6ba722a3b5f4f68af5` |
| 32 | `def` | [Int64.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int64-intcast--7f498a885fb56cda45496a23.md) | 193 | `declaration-track:7f498a885fb56cda45496a23fd3b263a1c3d707ad0914bcedd59570cc1802f3a` |
| 33 | `theorem` | [Int64.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int64-intcast-neg--5a7613fcbdbc19ddff529f76.md) | 197 | `result-track:5a7613fcbdbc19ddff529f7615a21e5863b1cf7cd38a9684072f8b5ffc8b04a4` |
| 34 | `theorem` | [Int64.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/int64-intcast-ofnat--1582a362aedc8504b78b7012.md) | 201 | `result-track:1582a362aedc8504b78b70120487ab1ec1c0528817c069a0b5a6e15e9872443a` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--b70c92bc66b000b7c2deffbd.md) | 204 | `declaration-track:b70c92bc66b000b7c2deffbd72a6324ccc31d3236a1c7947fffefd333dde0189` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--f394b2cdc28f49fc58a14a49.md) | 229 | `declaration-track:f394b2cdc28f49fc58a14a49bddca903bf34c67d3444cbae15f2c1747517e28c` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--7c1f2404448bae85dc6a638a.md) | 237 | `declaration-track:7c1f2404448bae85dc6a638a6c965480f08f6e7aa2324370000693f4415ba785` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--689b1170c6baa72ebb27e4a6.md) | 238 | `declaration-track:689b1170c6baa72ebb27e4a6f01388683bbc4d82816596d5bbed22ddc9b5f9a3` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--172871dc2e27d1d1e2519273.md) | 239 | `declaration-track:172871dc2e27d1d1e25192733bc04bf349862c3f6692a7b7e5fe23ca9a08a605` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--156b8ec0ac4fb30c3b08ed6f.md) | 241 | `declaration-track:156b8ec0ac4fb30c3b08ed6f921ee3d5888aa1bfaf9da59b431dd5740eb1aef4` |
| 41 | `def` | [ISize.natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/isize-natcast--86bd0f3f9311c2494e2b6617.md) | 244 | `declaration-track:86bd0f3f9311c2494e2b6617bb57311df0dd02fc6540d1ff59924c4c1de9cee2` |
| 42 | `def` | [ISize.intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/isize-intcast--cd0d3aa225e35f3420480831.md) | 248 | `declaration-track:cd0d3aa225e35f34204808318abac37d27e07f6c02d95845557f7f977ae26711` |
| 43 | `theorem` | [ISize.intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/isize-intcast-neg--9276722725c6ec11845f32de.md) | 252 | `result-track:9276722725c6ec11845f32de418d541085fc4f59c625c410d83ee42bbdfaa3af` |
| 44 | `theorem` | [ISize.intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/isize-intcast-ofnat--7e6c99a94acace397b8fb841.md) | 256 | `result-track:7e6c99a94acace397b8fb84106b9be915eb551ebb55e8600a620c2a231f9e8fa` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--480da742e9f9f386fb99a135.md) | 259 | `declaration-track:480da742e9f9f386fb99a135412ffa8152cf9a0ad7216fd7793ff0d113360721` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--3c0a16f15bceffa821f40a13.md) | 286 | `declaration-track:3c0a16f15bceffa821f40a139198085a9e2ec13271817cf4a5ec6738823c893d` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--0d5a834ca16da0d3bb67b204.md) | 294 | `declaration-track:0d5a834ca16da0d3bb67b2045493280a91255fd36d135e0151805b44aec1001d` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--5eca59ff82eeb0fa18834c67.md) | 295 | `declaration-track:5eca59ff82eeb0fa18834c6780cfc923bd8118b211ea47958954a249a715d9b0` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/example--2e6e4a3d093533f921d2e763.md) | 296 | `declaration-track:2e6e4a3d093533f921d2e7639bc1c68d3884020b9566dfaf4509dcba65751cf2` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variantd8930c50a3705412dd5e532b67e57b66ab4cc6ca8ce050c8e22a331cc6f3ae14.lean/declarations/instance--1fecd375ad43db894ceb1557.md) | 298 | `declaration-track:1fecd375ad43db894ceb1557559aa78c4bdbfa01299a46ff0720ec3a24e805e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
