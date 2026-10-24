# Verification target: GRWTSK.Algebra.LinearAlgebra.Functoriality.Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7edce014e6da13d878bd8e6120afd83bc51325cb",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7edce014e6da13d878bd8e6120afd83bc51325cb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduceModIdealAux](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/reducemodidealaux--b773f849370222305354d877.md) | 38 | `declaration-track:b773f849370222305354d87771d73f9c4fa3ce59b6d0504e387f4d0a34a56945` |
| 2 | `theorem` | [reduceModIdealAux_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/reducemodidealaux-apply--e0536dbdb5f5fa155f5dabc9.md) | 47 | `result-track:e0536dbdb5f5fa155f5dabc916b6a5a4d1c87e4a6a8b3339e9a8d33a53de281c` |
| 3 | `def` | [reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/reducemodideal--2771a3469e032e454f6147f9.md) | 53 | `declaration-track:2771a3469e032e454f6147f935670c00f195c3ad0859f3a1a1e8ebc10e1177d5` |
| 4 | `theorem` | [reduceModIdeal_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/reducemodideal-apply--d2bc3efadb5d947393d0356a.md) | 65 | `result-track:d2bc3efadb5d947393d0356a32a2b48436d51af5bfed198e3bfcc1d56d170237` |
| 5 | `theorem` | [transitionMap_comp_reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/transitionmap-comp-reducemodideal--4af94ae747991a3bfb1162d1.md) | 76 | `result-track:4af94ae747991a3bfb1162d1f8181f63c0069e02401ebc3013c702d4ea8b20e4` |
| 6 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map--ed3432d8922db0c8ee9a4ad1.md) | 86 | `declaration-track:ed3432d8922db0c8ee9a4ad1ecb4c03033856daab9faed77c26193c077e6e994` |
| 7 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-id--6460cf6fbf6845dc167e1faf.md) | 98 | `result-track:6460cf6fbf6845dc167e1faf89bd244eaf65123511e08dc3848c41f2eb09a74b` |
| 8 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-comp--29e11d4af65c68c611cb04ac.md) | 101 | `result-track:29e11d4af65c68c611cb04ac8b84644e1e3c50a2d80c459e559be6e6422f3397` |
| 9 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-comp-apply--290f1adbeefa2327cec5e14f.md) | 105 | `result-track:290f1adbeefa2327cec5e14f70f11b09c4df8273267864a23e0ca74ebc804114` |
| 10 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-zero--34a2cb2e23051123e0aed2aa.md) | 110 | `result-track:34a2cb2e23051123e0aed2aa9774a54e3a0342a87a4543175ec7a9aa1d95afa7` |
| 11 | `def` | [adicCompletionAux](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/adiccompletionaux--24a4e4ada51fe97374eeb2df.md) | 116 | `declaration-track:24a4e4ada51fe97374eeb2dff6b8a7c8a17472a096ed80c4a70c71f47a9257d3` |
| 12 | `theorem` | [adicCompletionAux_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/adiccompletionaux-val-apply--9c76bfd98f7052df8a3eb944.md) | 123 | `result-track:9c76bfd98f7052df8a3eb944614931b32e89c7d9d08f14195b7f32dfd6d30644` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map--2b04928c2f57022ff63b2941.md) | 128 | `declaration-track:2b04928c2f57022ff63b294162c7137455297dcdf1878226b556591f1f1bf0f3` |
| 14 | `theorem` | [map_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-val-apply--a928c1c5a2244460c46050b9.md) | 138 | `result-track:a928c1c5a2244460c46050b9058ed1843b678edabbc1d56f4b7acdf75029cc0b` |
| 15 | `theorem` | [map_ext](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-ext--d9441fd41f4c51d60d629476.md) | 143 | `result-track:d9441fd41f4c51d60d62947602861e7d40c08748112cd9d3601ac4fb4362ac2e` |
| 16 | `theorem` | [map_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-ext--0aebf97f4c7d3d56d4c58683.md) | 152 | `result-track:0aebf97f4c7d3d56d4c58683641d8c5ad38348e02d6bef7c14ec8f4f6022494d` |
| 17 | `theorem` | [map_ext''](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-ext--77b67334001619b96ded4b7b.md) | 161 | `result-track:77b67334001619b96ded4b7b7fce06480c4d3b29f6e4a07e09141eef028d3435` |
| 18 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-id--7857522bfc8feb1ffc0e3207.md) | 169 | `result-track:7857522bfc8feb1ffc0e320739c5b8a04ab722fb0c04a325c5ba80874d11271e` |
| 19 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-comp--b39996dd7f6cdeebed48c318.md) | 175 | `result-track:b39996dd7f6cdeebed48c3187b3cde353c74f6b58d925402b0ba448ae497b0f5` |
| 20 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-comp-apply--545c62f49e0d694b1e2353dd.md) | 180 | `result-track:545c62f49e0d694b1e2353ddc41efa9e9ddda164b2b08c45f1c7ea3ccf1a56bc` |
| 21 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-mk--4cbc35512437ac68cf71af2e.md) | 186 | `result-track:4cbc35512437ac68cf71af2e186a40023b77b6eb844dec24c4e89f02b2abafcc` |
| 22 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/map-zero--24b945f59f31ee226c1194c8.md) | 192 | `result-track:24b945f59f31ee226c1194c801c45a6ad6248bbbdf2cc354dc457d6ebc1f45fc` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/congr--871938ad0a17f47541eaacc0.md) | 197 | `declaration-track:871938ad0a17f47541eaacc04d6bcf3aeca51a8b8757d41688d82d6c06b34612` |
| 24 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/congr-apply--3a96a0fb53f04146cfb8fe6c.md) | 203 | `result-track:3a96a0fb53f04146cfb8fe6ce2be52c34bce4e37a82ee5ce0717103264590a4d` |
| 25 | `theorem` | [congr_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/congr-symm-apply--d538bbf8c112f6a329515ca3.md) | 208 | `result-track:d538bbf8c112f6a329515ca3c3cd23ae8cacb6c494892bb55707eede4eb868ea` |
| 26 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/pi--238598eb55947a9f628ed77c.md) | 236 | `declaration-track:238598eb55947a9f628ed77ce6f18708b903b38c1ec7cb7b2a28093c9fb1543f` |
| 27 | `def` | [sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sum--ef870b43833e059f16354f73.md) | 247 | `declaration-track:ef870b43833e059f16354f736945b715884b1756058209cbf37ca8c99bf7036d` |
| 28 | `theorem` | [sum_lof](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sum-lof--c2a2238e09eb18705a05ebc8.md) | 253 | `result-track:c2a2238e09eb18705a05ebc8fd4f9304460a95a842dc2951ecaebbacd78e2511` |
| 29 | `theorem` | [sum_of](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sum-of--64f67113d2debcf5b2c4fd05.md) | 259 | `result-track:64f67113d2debcf5b2c4fd05f9c66d47d3ce26d6e540783d71debf29596e717a` |
| 30 | `def` | [sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/suminv--af2b77a25228448206457998.md) | 269 | `declaration-track:af2b77a252284482064579988a47350f4012565bc2e9f3a99aee6efa3a2385f0` |
| 31 | `theorem` | [component_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/component-suminv--4ee799b5d64b769122cccc60.md) | 275 | `result-track:4ee799b5d64b769122cccc60a7a9d8a7cc5ba0cd0df9998777c5071714b66d63` |
| 32 | `theorem` | [sumInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/suminv-apply--c4ffa27a75bf7d2e02e2a075.md) | 282 | `result-track:c4ffa27a75bf7d2e02e2a075e80f97e2099def797f7b891bdb1ecf439ebeea7e` |
| 33 | `theorem` | [sumInv_comp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/suminv-comp-sum--a192d75f6915317ebd16537b.md) | 289 | `result-track:a192d75f6915317ebd16537be4f814d92104bbb004a2cfe07a1598d08276af79` |
| 34 | `theorem` | [sum_comp_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sum-comp-suminv--533f0e3121a56fe1c088dc2a.md) | 300 | `result-track:533f0e3121a56fe1c088dc2a500b66bfab99d7cf1493f1508438a7013e48addb` |
| 35 | `def` | [sumEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sumequivoffintype--8b29fe2362e1e9c44151014c.md) | 311 | `declaration-track:8b29fe2362e1e9c44151014c5d51bb51657daac524a4f1433f880432aef49c20` |
| 36 | `theorem` | [sumEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sumequivoffintype-apply--a8dcba7216b48a60af3d29b4.md) | 316 | `result-track:a8dcba7216b48a60af3d29b4e1b199f323df9ea735e1a2a013d5d06681ef5ed3` |
| 37 | `theorem` | [sumEquivOfFintype_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/sumequivoffintype-symm-apply--b3b24d02fdc376fbdac4a0b7.md) | 321 | `result-track:b3b24d02fdc376fbdac4a0b7c6350328a20efe26af52b1aed7576b44a9d413ea` |
| 38 | `def` | [piEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/piequivoffintype--d6d62414a2fb5461b3486436.md) | 334 | `declaration-track:d6d62414a2fb5461b3486436df49edcbf1c378595e0ad8054dcbe3ea9819a74f` |
| 39 | `theorem` | [piEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/piequivoffintype-apply--dd7699b28b824f6a5968160b.md) | 341 | `result-track:dd7699b28b824f6a5968160b68ab2f30855db1fe4efbe56a08b93ef21239da22` |
| 40 | `def` | [piEquivFin](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/piequivfin--0b137631bdd9065eb33c4191.md) | 346 | `declaration-track:0b137631bdd9065eb33c4191d32cedb3797298c540b8079c5976f55799876662` |
| 41 | `theorem` | [piEquivFin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variant095bd1d5e28e7f5c9747748ddf36178ae73097f62754d62b3fdb61589d31096d.lean/declarations/piequivfin-apply--1eaec1e6c8be643590eeaf35.md) | 351 | `result-track:1eaec1e6c8be643590eeaf35f5f28790fc0303e6c2b1a1cf62a69a5ce1f749fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
