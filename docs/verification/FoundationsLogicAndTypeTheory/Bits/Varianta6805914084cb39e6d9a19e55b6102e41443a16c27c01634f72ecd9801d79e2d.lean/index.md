# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Bits.Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c12bd1a77d162124ea8d50d799a6cdd9c73002",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c12bd1a77d162124ea8d50d799a6cdd9c73002`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Bitwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boddDiv2_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bodddiv2-eq--57c0005745edff843d74b6c7.md) | 46 | `result-track:57c0005745edff843d74b6c73665e30f2e2a1739d234ca4c7ddba2ec7e7a0c91` |
| 2 | `theorem` | [bodd_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bodd-bit0--f38075e274b8ded1a61ca7d4.md) | 51 | `result-track:f38075e274b8ded1a61ca7d4fe7f8d3d183902398823deee2a1945e491d6d46a` |
| 3 | `theorem` | [bodd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bodd-bit1--ee16dfa7bc5069e7892b34a7.md) | 56 | `result-track:ee16dfa7bc5069e7892b34a734ff086479dc5c3832798977438e5b83e30a5663` |
| 4 | `theorem` | [div2_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/div2-bit0--ff39bcda184cd22ca0f6a6e6.md) | 61 | `result-track:ff39bcda184cd22ca0f6a6e6e1eab30de47a1f407879d6c7416074faaaa91aae` |
| 5 | `theorem` | [div2_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/div2-bit1--eadaccacf8b52705aa33f346.md) | 66 | `result-track:eadaccacf8b52705aa33f346b0cdbc8162bb586f6d2145259fbeae293b8be8cd` |
| 6 | `theorem` | [bit0_eq_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit0-eq-bit0--95738e524fc1541ac343afc4.md) | 78 | `result-track:95738e524fc1541ac343afc419a2ec4f4bf06aab38d2193a9b0f56af18cd9bc7` |
| 7 | `theorem` | [bit1_eq_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit1-eq-bit1--e74ecd2fc9a34f89367506d6.md) | 83 | `result-track:e74ecd2fc9a34f89367506d687ca6470b9870d21ab66c8a4eb9d6ce8e2f9c526` |
| 8 | `theorem` | [bit1_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit1-eq-one--7737d66becb0312262d9fc4a.md) | 88 | `result-track:7737d66becb0312262d9fc4a3a44b576eb2da24c12d347b638cfb37a9b32f765` |
| 9 | `theorem` | [one_eq_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/one-eq-bit1--0ae86979626156a5d19a2237.md) | 93 | `result-track:0ae86979626156a5d19a223751e5cbcc2083e7d7b17ca264086e2644897afde3` |
| 10 | `theorem` | [bit_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-add--4c9a6a32a0db74681713a77d.md) | 97 | `result-track:4c9a6a32a0db74681713a77d8f46ff066a13679b9a5a87faeec63126ac359d3a` |
| 11 | `theorem` | [bit_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-add--387f21d077e35bb6198ac02c.md) | 102 | `result-track:387f21d077e35bb6198ac02cf5b55b0e99775eebde988005e3c72a99a25e8fea` |
| 12 | `theorem` | [bit_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-ne-zero--135d40dea305d48e07f7db34.md) | 107 | `result-track:135d40dea305d48e07f7db342481afa996321a8f3d3bc19a50c396fafd719194` |
| 13 | `theorem` | [bit0_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit0-mod-two--64932b4aba09b3f7f62d145c.md) | 111 | `result-track:64932b4aba09b3f7f62d145c9e77905567e6d1e0779f0633909155bc6ce70d42` |
| 14 | `theorem` | [bit1_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit1-mod-two--c240892cd4f4e234ea2c8f74.md) | 116 | `result-track:c240892cd4f4e234ea2c8f74badb5f7e734c1fe0703564e11a3b9b35ae50682e` |
| 15 | `theorem` | [pos_of_bit0_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/pos-of-bit0-pos--805fdb1e97d833d774d8de25.md) | 121 | `result-track:805fdb1e97d833d774d8de25d21598b8e464d4d487cb130ee6ac8837538fe476` |
| 16 | `theorem` | [bitCasesOn_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bitcaseson-bit--d6e252314547b2080ad0e012.md) | 128 | `result-track:d6e252314547b2080ad0e012e5e0c482d782bb4df58e213856d968af82d60e19` |
| 17 | `theorem` | [bitCasesOn_bit0](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bitcaseson-bit0--cfde850772569c434b20fdbf.md) | 134 | `result-track:cfde850772569c434b20fdbfeb17a2cb7d5bdfd277d15c6910ca71e9009e9198` |
| 18 | `theorem` | [bitCasesOn_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bitcaseson-bit1--778a0afee665ada0d26a80f2.md) | 140 | `result-track:778a0afee665ada0d26a80f22bf837ec413b1d95b554793fa632b738ce28b5b5` |
| 19 | `theorem` | [bit_cases_on_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-cases-on-injective--a6178d43961b8c27b0220996.md) | 145 | `result-track:a6178d43961b8c27b02209964ed8091dbc78d2f405b0fee04b07321442bc29c8` |
| 20 | `theorem` | [bit_cases_on_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-cases-on-inj--06ff7f8b22c70a71e42dfe04.md) | 153 | `result-track:06ff7f8b22c70a71e42dfe04c0ca54ed62c1b0a6bc3bdc14fa60eafd1eeb9da1` |
| 21 | `theorem` | [bit0_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit0-eq-zero--a97aecc07734d05f8d9da9da.md) | 158 | `result-track:a97aecc07734d05f8d9da9da6180b6ad7698623850bf0c2c58c7c2012a5795a3` |
| 22 | `theorem` | [bit_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit-eq-zero-iff--2de87d151b3cd0760cf23905.md) | 162 | `result-track:2de87d151b3cd0760cf23905959a57f2eaadbf418274b379fc00816a44e1c993` |
| 23 | `theorem` | [binaryRec_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/binaryrec-eq--ea67d66fdc5ac67ec4b08721.md) | 174 | `result-track:ea67d66fdc5ac67ec4b0872128a928d78c3b1a3fee29ce02e0285f5fcf1dd7bb` |
| 24 | `def` | [binaryRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/binaryrec--8986e13fdc1eb1530df009fa.md) | 196 | `declaration-track:8986e13fdc1eb1530df009fa8275d5344e1d6251f6af09a073ba9bfc23c0ff25` |
| 25 | `def` | [binaryRecFromOne](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/binaryrecfromone--bc1047faa43e9731028da14e.md) | 208 | `declaration-track:bc1047faa43e9731028da14e94dd02ce319f4826b04e79af11bb37ea70976074` |
| 26 | `theorem` | [zero_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/zero-bits--bd0048b22fc89ca9297e309b.md) | 218 | `result-track:bd0048b22fc89ca9297e309b14868ef981844b28e48824f12c3edad67a08bbe2` |
| 27 | `theorem` | [bits_append_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bits-append-bit--07746e55e7a8e0e1bb179061.md) | 222 | `result-track:07746e55e7a8e0e1bb179061f805f90ef2332bb992fe14abd3934af32f8c688a` |
| 28 | `theorem` | [bit0_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit0-bits--90f6471f3a390b748b80b1fd.md) | 229 | `result-track:90f6471f3a390b748b80b1fd348af7f90e5efb87be962d65554ec0378f7c8a93` |
| 29 | `theorem` | [bit1_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bit1-bits--17147d5e9f13902b01bfce85.md) | 234 | `result-track:17147d5e9f13902b01bfce85db04dad6c804a75736960c7d67b21921feb4e4bc` |
| 30 | `theorem` | [one_bits](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/one-bits--ffcb3baaa92121b76043a538.md) | 239 | `result-track:ffcb3baaa92121b76043a5387efe28999f42166a9bb92d141430ad69573c9608` |
| 31 | `theorem` | [bodd_eq_bits_head](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/bodd-eq-bits-head--fa40c972ffa3129bcff4ffd3.md) | 247 | `result-track:fa40c972ffa3129bcff4ffd3f32c200e9a70468f1c7c46ec70e911e902a72795` |
| 32 | `theorem` | [div2_bits_eq_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/declarations/div2-bits-eq-tail--2df80b4b1e0a810d2b9cb3de.md) | 252 | `result-track:2df80b4b1e0a810d2b9cb3de5f6542ea4a6e7134153fdc147b334570f7f0d687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
