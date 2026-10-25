# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Principal.Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68c6c8e702a156de5d956d82b17329d6fe4f232d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68c6c8e702a156de5d956d82b17329d6fe4f232d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal--83baee62c6b6f7e21c2e31fe.md) | 56 | `declaration-track:83baee62c6b6f7e21c2e31fecce94d50c4d1381553386e71a85131dbce8eedc1` |
| 2 | `theorem` | [principal_swap_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-swap-iff--a0d0aec622fec96fb67d47b2.md) | 59 | `result-track:a0d0aec622fec96fb67d47b254d7e2b630d9bf4004b182ad754c8434b7740cc1` |
| 3 | `theorem` | [not_principal_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/not-principal-iff--8417b5245539945685e5e9ca.md) | 62 | `result-track:8417b5245539945685e5e9caaf8de192bc02dc564ad42a525c0191540538dd35` |
| 4 | `theorem` | [principal_iff_of_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-iff-of-monotone--87b5519e680979938d525622.md) | 65 | `result-track:87b5519e680979938d5256220764b0e8967e0b77447cec033caa101ea27edd0b` |
| 5 | `theorem` | [not_principal_iff_of_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/not-principal-iff-of-monotone--4ca3f5c66ee212ac9f3a09cd.md) | 74 | `result-track:4ca3f5c66ee212ac9f3a09cd4dd63cb387f0542a47e4d478cb7819824bb97a39` |
| 6 | `theorem` | [principal_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-zero--c57007d60865b71649c2cbd3.md) | 79 | `result-track:c57007d60865b71649c2cbd3cda280eceef57c33aae2de7561bd6a126cd5e01a` |
| 7 | `theorem` | [principal_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-one-iff--47cfdb74e3fb263e9e5d1199.md) | 83 | `result-track:47cfdb74e3fb263e9e5d119919eab5c2e6de972d21367f76bee1b0670abf8c46` |
| 8 | `theorem` | [Principal.iterate_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-iterate-lt--bd8b3bc71ae3434f49d1e25d.md) | 89 | `result-track:bd8b3bc71ae3434f49d1e25da305ebec36a95055ea12bdd0278110119998d353` |
| 9 | `theorem` | [op_eq_self_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/op-eq-self-of-principal--3c7230a3642bdb5edddb8292.md) | 95 | `result-track:3c7230a3642bdb5edddb8292b784e4a2bb7a9e4016da6d8a4957286d43a3c783` |
| 10 | `theorem` | [nfp_le_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/nfp-le-of-principal--718d9676f4d4ab43e260daa9.md) | 101 | `result-track:718d9676f4d4ab43e260daa9695ac384809936c1e5857d4b605520c9dd72b37e` |
| 11 | `theorem` | [principal_nfp_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-nfp-isup--6fd2dd68020a84c657fff1af.md) | 109 | `result-track:6fd2dd68020a84c657fff1af5eb1b0aa23bdb9eb994730d1f0b05ae7fbcc4d92` |
| 12 | `theorem` | [not_bddAbove_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/not-bddabove-principal--d94facf54fdddce062f12b57.md) | 130 | `result-track:d94facf54fdddce062f12b57b2ead9816a54d5f068ba4c1a5922b7913990783c` |
| 13 | `theorem` | [principal_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-one--ddb1dc84a262f10c6a05590b.md) | 137 | `result-track:ddb1dc84a262f10c6a05590bd16ee542846975b10a51da0714a5fd24bb9bb6a7` |
| 14 | `theorem` | [principal_add_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-of-le-one--4929f9e5e6949620fdd432ab.md) | 140 | `result-track:4929f9e5e6949620fdd432abdbcdfa4b1fa57ab6b1526604f2f37fad5975ab16` |
| 15 | `theorem` | [isLimit_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/islimit-of-principal-add--caec0aebe35a7d1909f53e50.md) | 145 | `result-track:caec0aebe35a7d1909f53e50c3ee0df0370508f25fcce93fa634f9f36178544b` |
| 16 | `theorem` | [principal_add_iff_add_left_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-iff-add-left-eq-self--e4576ae1256c86b59fb09062.md) | 149 | `result-track:e4576ae1256c86b59fb09062acd0020b55d6dd6b1d002508b7bef03314450db3` |
| 17 | `theorem` | [exists_lt_add_of_not_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/exists-lt-add-of-not-principal-add--1673076218ae908c6c29af6b.md) | 160 | `result-track:1673076218ae908c6c29af6bbf77666bfa7f9a56e5262193deb457c2a7d36bd4` |
| 18 | `theorem` | [principal_add_iff_add_lt_ne_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-iff-add-lt-ne-self--658924b11ce040ab7f30a6f1.md) | 169 | `result-track:658924b11ce040ab7f30a6f16b6cd04ba6270da0c10ff6b23ccf15442157be73` |
| 19 | `theorem` | [principal_add_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-omega0--92748b680a615464d0714d1f.md) | 175 | `result-track:92748b680a615464d0714d1f1384836ee89ece300f2dddc31e5438b26f0d1bd0` |
| 20 | `theorem` | [add_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/add-omega0-opow--7b8d78963f6e2d776c08a9f3.md) | 178 | `result-track:7b8d78963f6e2d776c08a9f3302d841f1f8cc2653750d6d61dfd0fff6fee608b` |
| 21 | `theorem` | [principal_add_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-omega0-opow--06169a6ba3d332dda88ab513.md) | 200 | `result-track:06169a6ba3d332dda88ab51346172130c9b88bdd5e4ab7a1ce39c707d4574f14` |
| 22 | `theorem` | [principal_add_iff_zero_or_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-iff-zero-or-omega0-opow--f9c5f8287b9e73c860c26f1e.md) | 204 | `result-track:f9c5f8287b9e73c860c26f1e83f469516fa98ac32eae9a98a8b5f19a0fb34c03` |
| 23 | `theorem` | [principal_add_opow_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-opow-of-principal-add--d0656ce55ece838e3d222d41.md) | 227 | `result-track:d0656ce55ece838e3d222d41be78a3aba429a6a901b348e2c21ad6d79c03f060` |
| 24 | `theorem` | [add_absorp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/add-absorp--ad62b5683be61c092e1486e5.md) | 237 | `result-track:ad62b5683be61c092e1486e5d4ba5dd0ddfddf2cbea9c94ffd1fa88b6b4c772a` |
| 25 | `theorem` | [principal_add_mul_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-mul-of-principal-add--f5c0a3788edf1737b5ad7c3f.md) | 240 | `result-track:f5c0a3788edf1737b5ad7c3f037a6e5c506ba2e3464f4f0e15902135605e029c` |
| 26 | `theorem` | [principal_mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-one--d444d1819b01e38c2511852e.md) | 259 | `result-track:d444d1819b01e38c2511852ef998ef5acb4453dc02093bcf99e76ce18324fb11` |
| 27 | `theorem` | [principal_mul_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-two--4c1f4f63fb623009f97a6c91.md) | 263 | `result-track:4c1f4f63fb623009f97a6c9175afaf0630d89f5ed2dae879f3016f88efa42367` |
| 28 | `theorem` | [principal_mul_of_le_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-of-le-two--3267491dba8d4e7df1f63369.md) | 269 | `result-track:3267491dba8d4e7df1f63369cc5fb83253aef74cf388ae34d7c80cd8ce84dc3b` |
| 29 | `theorem` | [principal_add_of_principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-of-principal-mul--a460b13f817aaf944c3b6e13.md) | 278 | `result-track:a460b13f817aaf944c3b6e13a9d15aed15722d276099bcda543e4a0484a72765` |
| 30 | `theorem` | [isLimit_of_principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/islimit-of-principal-mul--e11d7e1e951e145cee52ed0a.md) | 289 | `result-track:e11d7e1e951e145cee52ed0a2e3c10333f56fda0572b84ae0f071dcdc905d577` |
| 31 | `theorem` | [principal_mul_iff_mul_left_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-iff-mul-left-eq--769d0169fcc2f94e75d3a224.md) | 293 | `result-track:769d0169fcc2f94e75d3a224bdeb2ee778136696e31ae5dd06f7b0b8551301fd` |
| 32 | `theorem` | [principal_mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-omega0--3fbe8f40a40e82d5eb3d94b0.md) | 308 | `result-track:3fbe8f40a40e82d5eb3d94b0ef74f6dbd9cd597cb39a319194a01a36e107d290` |
| 33 | `theorem` | [mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/mul-omega0--dac8cfd86aeb33a778fc79fd.md) | 314 | `result-track:dac8cfd86aeb33a778fc79fd56aa30f08b5285f901cb992c17f59f1e2ffbb9b5` |
| 34 | `theorem` | [natCast_mul_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/natcast-mul-omega0--81287cb38424121d3d8e279d.md) | 317 | `result-track:81287cb38424121d3d8e279d84db643712530433b2345cd8743bee3a515e6a2e` |
| 35 | `theorem` | [mul_lt_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/mul-lt-omega0-opow--18304cf320d0a615d18c8473.md) | 320 | `result-track:18304cf320d0a615d18c8473eaab26e82e6c92efb29d82aae66686971ac3bee6` |
| 36 | `theorem` | [mul_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/mul-omega0-opow-opow--8fcddc71ae1fcdbc3e03f1a9.md) | 334 | `result-track:8fcddc71ae1fcdbc3e03f1a9fd1ae43aea07be9718cf30d577aac0f4412a2795` |
| 37 | `theorem` | [principal_mul_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-omega0-opow-opow--7013c9d34418cfaa56805ab4.md) | 346 | `result-track:7013c9d34418cfaa56805ab466df6ed92adb1ceb318530c76a220369ee25b6d5` |
| 38 | `theorem` | [principal_add_of_principal_mul_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-add-of-principal-mul-opow--c5b07af9bb2f045ddf7f60f8.md) | 349 | `result-track:c5b07af9bb2f045ddf7f60f82375eca36293b89b44d24d940a4de9b9f51c70ca` |
| 39 | `theorem` | [principal_mul_iff_le_two_or_omega0_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-mul-iff-le-two-or-omega0-opow-opow--1c912c66a8ed9806d9272e44.md) | 357 | `result-track:1c912c66a8ed9806d9272e44ebb48ac7ee66bcb847265e9276f6b4dec794ef9b` |
| 40 | `theorem` | [mul_omega0_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/mul-omega0-dvd--e1394d5c1f2ce6bc8a7ca1d8.md) | 373 | `result-track:e1394d5c1f2ce6bc8a7ca1d87874e993e7e92851e026380eda2bffb5708766a9` |
| 41 | `theorem` | [mul_eq_opow_log_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/mul-eq-opow-log-succ--a75f4af23046d488375cf526.md) | 376 | `result-track:a75f4af23046d488375cf526d03d7e8cfa29d47e356f6b5eb0e442de3a855ff7` |
| 42 | `theorem` | [principal_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/principal-opow-omega0--7308650b8095eb7669a177dd.md) | 394 | `result-track:7308650b8095eb7669a177dd152e935e54c37834cae7f1cb25e066d588fcd4ee` |
| 43 | `theorem` | [opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/opow-omega0--20886beb4ead62c2305d4641.md) | 400 | `result-track:20886beb4ead62c2305d464161252e16a012004eb739606454f581dab21cbfd7` |
| 44 | `theorem` | [natCast_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Varianta2ca5466d5bade6e5d22fa381055297a7b19c8ced18436f0484f32c57a97aac4.lean/declarations/natcast-opow-omega0--82ef7886783a40d91f02e5fe.md) | 405 | `result-track:82ef7886783a40d91f02e5fe0a82808a1490cf26de981ad170df68f104c93adc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
