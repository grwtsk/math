# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bits.Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fcccc90f5462c13192c0b2a557ddc4f3c9b0cc5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fcccc90f5462c13192c0b2a557ddc4f3c9b0cc5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Bitwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boddDiv2_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bodddiv2-eq--6aa99028bd4af26704c9906b.md) | 38 | `result-track:6aa99028bd4af26704c9906bcc46c7f5ba3b0bf6a5f5bf3ce9c12ed222667025` |
| 2 | `theorem` | [bodd_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bodd-bit0--af4743278b31060f8edfb5bd.md) | 43 | `result-track:af4743278b31060f8edfb5bda7251e686dfc6bbfef37144ef1604abeaca7a643` |
| 3 | `theorem` | [bodd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bodd-bit1--43178776feadae79f03b461c.md) | 48 | `result-track:43178776feadae79f03b461c9b52274885968f956a1e241f32233cc22a6648a0` |
| 4 | `theorem` | [div2_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/div2-bit0--ec8d8a23f6b8862921057ca3.md) | 53 | `result-track:ec8d8a23f6b8862921057ca3d8bfc6a118a234057acb1f371882ea03b23a76eb` |
| 5 | `theorem` | [div2_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/div2-bit1--02472b85a8ad4a3e49ce90ab.md) | 58 | `result-track:02472b85a8ad4a3e49ce90ab3a2763f1dfa81c0c282406036ef4be8b97bef473` |
| 6 | `theorem` | [bit0_eq_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit0-eq-bit0--0221173aad243498c623b712.md) | 70 | `result-track:0221173aad243498c623b712183b43986556dd83e631dd0db96de37a09768997` |
| 7 | `theorem` | [bit1_eq_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit1-eq-bit1--54f2aba1d7d77d2a8ea9ec93.md) | 75 | `result-track:54f2aba1d7d77d2a8ea9ec9389a3a45c8c4afadb045e96e6e129145c2851e6f6` |
| 8 | `theorem` | [bit1_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit1-eq-one--f0afaf57c477c986833b2c9c.md) | 80 | `result-track:f0afaf57c477c986833b2c9c6f450ebba6f1fdf4efd0bcaa7b8bdd885199afbf` |
| 9 | `theorem` | [one_eq_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/one-eq-bit1--8ca9212436c9b0d6e32e4a71.md) | 85 | `result-track:8ca9212436c9b0d6e32e4a710924627ff972568264dc26ae510966e5eea3f426` |
| 10 | `theorem` | [bit_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-add--d4a72375ae4a2c5b8a1d0275.md) | 89 | `result-track:d4a72375ae4a2c5b8a1d0275a389684ae5683a441e8b16a1c79103ba8dcfad16` |
| 11 | `theorem` | [bit_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-add--6a2336ca15001d0b48894d03.md) | 94 | `result-track:6a2336ca15001d0b48894d034b1f1b04cdc87c04b61f8014340bc15308bc3d7c` |
| 12 | `theorem` | [bit_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-ne-zero--67007116c744714a0d6f48fa.md) | 99 | `result-track:67007116c744714a0d6f48fa4e15b30b547af8904e4190c2efeb2c376299351e` |
| 13 | `theorem` | [bit0_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit0-mod-two--ae78c7dec6b35462ce40cbd5.md) | 103 | `result-track:ae78c7dec6b35462ce40cbd5da3ff22a10bc23fa6822d270ecc84db37e36bf03` |
| 14 | `theorem` | [bit1_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit1-mod-two--be70af32ef0c43534f312b5a.md) | 108 | `result-track:be70af32ef0c43534f312b5a4bb19f938fa139f32959e64725a0b87674d5b088` |
| 15 | `theorem` | [pos_of_bit0_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/pos-of-bit0-pos--bf17ccbd915c713a53f70109.md) | 113 | `result-track:bf17ccbd915c713a53f7010958715a3257f38a7344cd33d4a9b236a230d6b8ed` |
| 16 | `theorem` | [bitCasesOn_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bitcaseson-bit--0b8cace2b0fb5d5f88086def.md) | 120 | `result-track:0b8cace2b0fb5d5f88086defb69ada1fab99fc0d600b04a834495a74886e97ba` |
| 17 | `theorem` | [bitCasesOn_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bitcaseson-bit0--fa877aeaa48a022273119224.md) | 126 | `result-track:fa877aeaa48a02227311922499435e52da500f996974268368d1c4e6cf31e0f3` |
| 18 | `theorem` | [bitCasesOn_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bitcaseson-bit1--7acf141e3646d609cfe9025a.md) | 132 | `result-track:7acf141e3646d609cfe9025a219238137c8cdb92d3f81f0a177f07fa3b0436cb` |
| 19 | `theorem` | [bit_cases_on_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-cases-on-injective--5bf06a062499f8c8b9479eac.md) | 137 | `result-track:5bf06a062499f8c8b9479eac63bda8d73f759d8e9452e857ca1db95a6facf02a` |
| 20 | `theorem` | [bit_cases_on_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-cases-on-inj--39a1d8bd72b5e3e58f856b3b.md) | 145 | `result-track:39a1d8bd72b5e3e58f856b3b8fee4aacd5d735ae9e8ddf325d86e1a67f0a94cf` |
| 21 | `theorem` | [bit0_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit0-eq-zero--d7c328be7c82062def80e111.md) | 150 | `result-track:d7c328be7c82062def80e1111633c6674b8c90906f22b11106baf74688e4691b` |
| 22 | `theorem` | [bit_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit-eq-zero-iff--823d392f55b24623c6f7542b.md) | 154 | `result-track:823d392f55b24623c6f7542bb82de3afdc358cd11e5206257fbed8e1185d3197` |
| 23 | `theorem` | [binaryRec_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/binaryrec-eq--debe0253d6a436cd71763e52.md) | 166 | `result-track:debe0253d6a436cd71763e52baaba14238edd7b0dc2197e7fca281f9ff4a1617` |
| 24 | `def` | [binaryRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/binaryrec--e4786691fd53e2b9a79ce017.md) | 188 | `declaration-track:e4786691fd53e2b9a79ce017e00a5ffcd3b6f63e3b816354156c90e75093bc66` |
| 25 | `def` | [binaryRecFromOne](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/binaryrecfromone--0e66088aaf63fb61c750a1d9.md) | 200 | `declaration-track:0e66088aaf63fb61c750a1d98bab356e30cd2c1888fb5dfe795af4fddf503012` |
| 26 | `theorem` | [zero_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/zero-bits--8f1458063c60024b4d1c98bb.md) | 210 | `result-track:8f1458063c60024b4d1c98bbab0bf9a603d3c0b01401bf9049d307ad7711e147` |
| 27 | `theorem` | [bits_append_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bits-append-bit--bd80991733596571b668698f.md) | 214 | `result-track:bd80991733596571b668698f7ac91abd2e2d47f719b321aa9b2812b044f6fb9d` |
| 28 | `theorem` | [bit0_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit0-bits--b3e526c2d6b1c4680d799c15.md) | 221 | `result-track:b3e526c2d6b1c4680d799c15929c5c57e577f6b6088d77af5d158aee4d004276` |
| 29 | `theorem` | [bit1_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bit1-bits--f063c458593986624207898c.md) | 226 | `result-track:f063c458593986624207898c988e85d54011a0cd9d620c17fff0b6c7efb977fe` |
| 30 | `theorem` | [one_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/one-bits--2d01310747a08766e63e2556.md) | 231 | `result-track:2d01310747a08766e63e2556ed8f08c9775ff48405bb0c5a6d8eeffcf0cd56ae` |
| 31 | `theorem` | [bodd_eq_bits_head](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/bodd-eq-bits-head--a040ce2686f39b1cafa4acb4.md) | 239 | `result-track:a040ce2686f39b1cafa4acb4b1afbf6e4bdcb936907ae6ad106f41d3ed3b90cd` |
| 32 | `theorem` | [div2_bits_eq_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/declarations/div2-bits-eq-tail--41b722bae1415e7b8c61b951.md) | 244 | `result-track:41b722bae1415e7b8c61b9518292d73e59a89e8d1ecaec2f2051c2db95459c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
