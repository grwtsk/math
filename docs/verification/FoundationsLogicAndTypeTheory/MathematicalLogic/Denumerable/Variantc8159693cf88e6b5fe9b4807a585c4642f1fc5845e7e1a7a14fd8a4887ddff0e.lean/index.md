# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Denumerable.Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/denumerable--8f750c3e212d568384ef4dc8.md) | 37 | `declaration-track:8f750c3e212d568384ef4dc8d700f1f3bec71e31109921ab4f742c54811d97b3` |
| 2 | `theorem` | [decode_isSome](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/decode-issome--ad8b4fa448f3c949c7e69bc1.md) | 51 | `result-track:ad8b4fa448f3c949c7e69bc14a5da00f2536924db8b55d074ae4031b6d5c74b9` |
| 3 | `def` | [ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat--c99fcebbb473375d16d5daff.md) | 55 | `declaration-track:c99fcebbb473375d16d5daffb17c6c0d93435167ab32da85ecf71faa3c307b20` |
| 4 | `theorem` | [decode_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/decode-eq-ofnat--b474c63934f5ead56db64129.md) | 59 | `result-track:b474c63934f5ead56db64129c09feb15749833d9c050006885af49e231ee1a8a` |
| 5 | `theorem` | [ofNat_of_decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat-of-decode--24ba78f6114682e93595662d.md) | 63 | `result-track:24ba78f6114682e93595662d98464d0f61f1a24bf967a9ad1ebfd26165f6c62f` |
| 6 | `theorem` | [encode_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/encode-ofnat--730acf59671be362e49c0923.md) | 67 | `result-track:730acf59671be362e49c0923d0a3aa298de06340f7dd7e8a861cd5f0659abe54` |
| 7 | `theorem` | [ofNat_encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat-encode--4d2027d118cceb3e2bd96203.md) | 72 | `result-track:4d2027d118cceb3e2bd96203dc96d1873c6359e456367b8a1951ecb95429f3d0` |
| 8 | `def` | [eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/eqv--b2bade9f1bf242808f58858f.md) | 76 | `declaration-track:b2bade9f1bf242808f58858f843028549d836069dba2534d67e1a5774a59f3e1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/instance--5261fc730221ccca9e93aef6.md) | 80 | `declaration-track:5261fc730221ccca9e93aef62d9ec428561defab8a3a66bab1639bad6a527c79` |
| 10 | `def` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/mk--45ad645bcad58e3f11f48ed3.md) | 84 | `declaration-track:45ad645bcad58e3f11f48ed377f871650bb3e43a10f5024392df006d8c75282f` |
| 11 | `def` | [ofEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofequiv--e3c89d0aeaa843880f75e386.md) | 92 | `declaration-track:e3c89d0aeaa843880f75e386bf486caf0eb353720ae4b8a1c39e02ebc5233c08` |
| 12 | `theorem` | [ofEquiv_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofequiv-ofnat--86c548aa0f50f76cd6fd99bf.md) | 98 | `result-track:86c548aa0f50f76cd6fd99bf2ea6f95ef1795da6ff8bb9a0fe580bd4f68c9881` |
| 13 | `def` | [equiv₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/equiv--ba4641a29a3e698e156457ce.md) | 106 | `declaration-track:ba4641a29a3e698e156457ce03f4ff2c86b66898da0b515958a46fcba49bb4cb` |
| 14 | `instance` | [nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/nat--61d288b61f89ed21203b5fc7.md) | 109 | `declaration-track:61d288b61f89ed21203b5fc73bed9089ebd7bfa1acdc41d55e5b44fed2e1bc36` |
| 15 | `theorem` | [ofNat_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat-nat--d5eb0adda673058118cac489.md) | 113 | `result-track:d5eb0adda673058118cac48956c27f91193ee292cfbd1940a28a0c93f0198e43` |
| 16 | `instance` | [option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/option--f0722c9a040d9c20f3e37830.md) | 117 | `declaration-track:f0722c9a040d9c20f3e37830bfe38fed164c937731f7ad4b7861438dea71a72e` |
| 17 | `instance` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/sum--cf78dffb2e01d5725740055b.md) | 129 | `declaration-track:cf78dffb2e01d5725740055b90d5cd3652d872a6cc960cab24c5f015f5cacb65` |
| 18 | `instance` | [sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/sigma--2baa6671b1c44d1037820e21.md) | 141 | `declaration-track:2baa6671b1c44d1037820e21043606ed469e40e36d97c4f9e6434e75dcdb3afb` |
| 19 | `theorem` | [sigma_ofNat_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/sigma-ofnat-val--8938e326c2e56e66ebbc2ed9.md) | 145 | `result-track:8938e326c2e56e66ebbc2ed99bb85dcdc577eb8fd08562667c02b15897facc9d` |
| 20 | `instance` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/prod--c5639b72ce8ea7698224ef47.md) | 152 | `declaration-track:c5639b72ce8ea7698224ef4724262793bbf3a372e8c299cd765b01ac91206e55` |
| 21 | `theorem` | [prod_ofNat_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/prod-ofnat-val--cd7a0fcbedbb777f917fa350.md) | 155 | `result-track:cd7a0fcbedbb777f917fa3507dff720c790795e47079aba359a1eea2a298863c` |
| 22 | `theorem` | [prod_nat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/prod-nat-ofnat--04b6cfe7629b03586e70148b.md) | 159 | `result-track:04b6cfe7629b03586e70148b6b6c168a98b5ce7af91fea6bdb989234fa799234` |
| 23 | `instance` | [int](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/int--ace95f06db96bcf210cac9a8.md) | 161 | `declaration-track:ace95f06db96bcf210cac9a84b7e7b95b1862a8e528f9d5f3efafcc145c3bc80` |
| 24 | `instance` | [pnat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/pnat--7eb70f0c077347ebbe2c9051.md) | 164 | `declaration-track:7eb70f0c077347ebbe2c905166523a899192ccb4a84e09fff75b7e0215d15a8c` |
| 25 | `instance` | [ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ulift--fbc7bbcaa4d1dda995ae8c5a.md) | 168 | `declaration-track:fbc7bbcaa4d1dda995ae8c5ad2ef204fa8b930b2e241c5c2c4c830aa341459b9` |
| 26 | `instance` | [plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/plift--5c3d76edc2921e5efa8e357a.md) | 172 | `declaration-track:5c3d76edc2921e5efa8e357a16dda3df5594ae024b5274b73a3b0a9d2f0dd237` |
| 27 | `def` | [pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/pair--4032cb551f558d7b436488d2.md) | 176 | `declaration-track:4032cb551f558d7b436488d2bdee8d803feca3cf2bb824bdeb0be120e207df56` |
| 28 | `theorem` | [exists_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/exists-succ--3d14a38583cc05fe7ba01f76.md) | 193 | `result-track:3d14a38583cc05fe7ba01f76aae6ca19060da845a52fcef48e44aabac8547eaa` |
| 29 | `def` | [succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/succ--92fb786b843d1abac0b81e4f.md) | 208 | `declaration-track:92fb786b843d1abac0b81e4f1115237b5557a2b6bddf7ccc89abb4bfeaec12e3` |
| 30 | `theorem` | [succ_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/succ-le-of-lt--44aeca7cb0903be4ac7e7d6a.md) | 212 | `result-track:44aeca7cb0903be4ac7e7d6a360e8c38dd075d484784bc63498b37fc2c774dcd` |
| 31 | `theorem` | [le_succ_of_forall_lt_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/le-succ-of-forall-lt-le--9727f00e07f381e106032d34.md) | 218 | `result-track:9727f00e07f381e106032d347502bf95b522ef4bebdfe357f469d61f76ad9fee` |
| 32 | `theorem` | [lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/lt-succ-self--bcd775cae2a51f11a80f94ba.md) | 225 | `result-track:bcd775cae2a51f11a80f94ba266be6dbe033486a090b3da327f60ac846e5c69a` |
| 33 | `theorem` | [lt_succ_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/lt-succ-iff-le--6bea675b7a8c6db696e7e2ee.md) | 230 | `result-track:6bea675b7a8c6db696e7e2ee7de921e3d00d033301fe9d5dc4eca51679aac74a` |
| 34 | `def` | [ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat--8482ad6c57373e0164c5e859.md) | 235 | `declaration-track:8482ad6c57373e0164c5e859ae8e2ee54a91a4b640e7fba086adcaec9d7b274a` |
| 35 | `theorem` | [ofNat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat-surjective--fd6694330158bc33d735f77d.md) | 239 | `result-track:fd6694330158bc33d735f77d1d37d8c14327d4d42cba4481f00149b0d024c419` |
| 36 | `theorem` | [ofNat_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofnat-range--47f5ba66d4a1e2fcddf298c9.md) | 259 | `result-track:47f5ba66d4a1e2fcddf298c9a26eff9f725dfd858777255264af82a1937b4a78` |
| 37 | `theorem` | [coe_comp_ofNat_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/coe-comp-ofnat-range--662a1fb11eba41f9cbb31c3e.md) | 263 | `result-track:662a1fb11eba41f9cbb31c3ed7f372c4f5beaf93670bcb1908da98b01c9d25a0` |
| 38 | `def` | [toFunAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/tofunaux--3c86fa113134e41524a88935.md) | 266 | `declaration-track:3c86fa113134e41524a88935a3263a4eafc55ea6c7e0ba2d73850ac157c600d1` |
| 39 | `theorem` | [toFunAux_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/tofunaux-eq--45c116a3a1f745dabd37c0b8.md) | 269 | `result-track:45c116a3a1f745dabd37c0b87c8c84c9a0dada469e233179268417300e8bc115` |
| 40 | `theorem` | [right_inverse_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/right-inverse-aux--02d523d9feefd53d92bdb7e3.md) | 276 | `result-track:02d523d9feefd53d92bdb7e3cb2773944a76974216a3f908cd17b9d6a6a62dae` |
| 41 | `def` | [denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/denumerable--a028f63afb5ec70000f4f94c.md) | 301 | `declaration-track:a028f63afb5ec70000f4f94c78c0aa8fff9a87597311c036ed4d5d3dc7ddbdf2` |
| 42 | `def` | [ofEncodableOfInfinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/ofencodableofinfinite--cf8985ebf2a813ac06a18e99.md) | 315 | `declaration-track:cf8985ebf2a813ac06a18e997f8353baa46ea9b9141f928f281080731ec8b8bc` |
| 43 | `theorem` | [nonempty_denumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/nonempty-denumerable--fd5ad41e1c5cffabbf620690.md) | 325 | `result-track:fd5ad41e1c5cffabbf6206902d12be7a6497e09b24b24ea3f2fca04595ed5839` |
| 44 | `theorem` | [nonempty_denumerable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/nonempty-denumerable-iff--1d72f90d9283bd704177920f.md) | 328 | `result-track:1d72f90d9283bd704177920f93e96f1c8bf951915111677b025c0e8b7cfbce54` |
| 45 | `instance` | [nonempty_equiv_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/declarations/nonempty-equiv-of-countable--347d527f48e8c3f677110d0a.md) | 332 | `declaration-track:347d527f48e8c3f677110d0a02a2dc48de396a443a04667efe48262ca1ead457` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
