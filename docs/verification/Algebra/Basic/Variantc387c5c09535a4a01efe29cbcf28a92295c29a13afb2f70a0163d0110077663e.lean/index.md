# Verification target: GRWTSK.Algebra.Basic.Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ccde7c42e4033530ff92467eef069619fd0848c",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ccde7c42e4033530ff92467eef069619fd0848c`.

Source path: `GRWTSK/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/isdiscretevaluationring--57276376d7784be15925de55.md) | 58 | `declaration-track:57276376d7784be15925de55693b90f73dfcff6812b7c584b609c482be6eaeda` |
| 2 | `theorem` | [not_a_field](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/not-a-field--df37356e32618b123460e406.md) | 66 | `result-track:df37356e32618b123460e406014b72c384fbe7e16d9b91144b9be4cb69e71d58` |
| 3 | `theorem` | [not_isField](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/not-isfield--7ca01c42827fdbe081d936c2.md) | 70 | `result-track:7ca01c42827fdbe081d936c2b50a8b49ed655d758f0c547931df04faf2044eed` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/irreducible-of-span-eq-maximalideal--c732cdab3aaf70ef993be9c2.md) | 77 | `result-track:c732cdab3aaf70ef993be9c2e435bf6bff3e27b580e42f2f6dd4c88e2f9b2755` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/irreducible-iff-uniformizer--4026f45276369b93a9b33af6.md) | 93 | `result-track:4026f45276369b93a9b33af69ca2807677def549cd86d3c908cc81a2e9dfd302` |
| 6 | `theorem` | [_root_.Irreducible.maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/root-irreducible-maximalideal-eq--549e26cf28e7fd35f5f6f962.md) | 98 | `result-track:549e26cf28e7fd35f5f6f962a25ec39785f27ef2d86259c015a185ce14996313` |
| 7 | `theorem` | [exists_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/exists-irreducible--09494d6d75ef106d88d15b84.md) | 105 | `result-track:09494d6d75ef106d88d15b846d1545f19219018e516c32f68243f87cfb7063a5` |
| 8 | `theorem` | [exists_prime](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/exists-prime--c13e73f6f5aa38c12957c828.md) | 110 | `result-track:c13e73f6f5aa38c12957c828b5af6570d7e2c9a45b7aec3d58a49e6a2a1e4ab2` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/iff-pid-with-one-nonzero-prime--c7eb17365c863356771568b9.md) | 114 | `result-track:c7eb17365c863356771568b90675ae68626e15c2b43767cc96216cb241c9db2d` |
| 10 | `theorem` | [associated_of_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/associated-of-irreducible--bd8cb9f4a6c63af0bc948246.md) | 141 | `result-track:bd8cb9f4a6c63af0bc94824641cdc53f6e56d895f03eec67d67b2034f924f419` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/hasunitmulpowirreduciblefactorization--bddba4123aa275731c5507d6.md) | 149 | `declaration-track:bddba4123aa275731c5507d62e0238bfb1509245d007c8f8f41e86ed9cc01173` |
| 12 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/unique-irreducible--562bf5226b7c5c0da1a8f3ab.md) | 156 | `result-track:562bf5226b7c5c0da1a8f3abfb765be33cbb31af7ceb355b878157d048c5861a` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/touniquefactorizationmonoid--0a73ec764deaca6f447c5515.md) | 183 | `result-track:0a73ec764deaca6f447c5515502c4f901c55ce3184b8c7d2932aa191dc77b2d6` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/of-ufd-of-unique-irreducible--db62ab6ca3a849d04f3f55cf.md) | 213 | `result-track:db62ab6ca3a849d04f3f55cf4f2ea55b06f2bd8446675b3be7c6f8f2aed24012` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/aux-pid-of-ufd-of-unique-irreducible--38f6817aa0ee2a4a6faff3e7.md) | 234 | `result-track:38f6817aa0ee2a4a6faff3e7538af436642b40c60f7cb857ab5561ccd15c443e` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/of-ufd-of-unique-irreducible--0d1df3ac744aeb2a844d636e.md) | 270 | `result-track:0d1df3ac744aeb2a844d636ec1c8986709f635303ec18e7292edc90fb4d844e0` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/ofhasunitmulpowirreduciblefactorization--6632090e6809dad4abb19fee.md) | 293 | `result-track:6632090e6809dad4abb19feeab4c93a566760806b6a173649c8c8e88a74cb99e` |
| 18 | `theorem` | [RingEquivClass.isDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/ringequivclass-isdiscretevaluationring--bca1695deccef6fd1e09f6a5.md) | 301 | `result-track:bca1695deccef6fd1e09f6a5401c0a4d9c1de432ce92f293e9cd39d51b106d76` |
| 19 | `theorem` | [associated_pow_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/associated-pow-irreducible--95bbb3ff098ac94d34b7b861.md) | 321 | `result-track:95bbb3ff098ac94d34b7b8616163deea0a67ace910660bf59134376f0b41114e` |
| 20 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/eq-unit-mul-pow-irreducible--fcaf8ee064f49d818653151d.md) | 338 | `result-track:fcaf8ee064f49d818653151db024db0ce1339f9866d1d7defe665b6c43404fbb` |
| 21 | `lemma` | [exists_units_eq_smul_zpow_of_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/exists-units-eq-smul-zpow-of-irreducible--8d7dae61b7bd5d9dac416993.md) | 349 | `result-track:8d7dae61b7bd5d9dac416993511acaffcd880792d0a40e837a2495f73340db46` |
| 22 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/ideal-eq-span-pow-irreducible--dc7a9e576ecf03c4028f36cd.md) | 364 | `result-track:dc7a9e576ecf03c4028f36cd624cdf38a5088603549a5211beeaceaa7fa01168` |
| 23 | `theorem` | [unit_mul_pow_congr_pow](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/unit-mul-pow-congr-pow--f4cefa4cbdd2f85827c36705.md) | 374 | `result-track:f4cefa4cbdd2f85827c36705854cd69ee215f708fae5192cc4280ab0bf465b71` |
| 24 | `theorem` | [unit_mul_pow_congr_unit](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/unit-mul-pow-congr-unit--1bbf8cff8c54638959c7b9ba.md) | 389 | `result-track:1bbf8cff8c54638959c7b9baa9957c67506dc15d8e907a40eb5fb62637f77021` |
| 25 | `def` | [addVal](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval--b61f1802c58ac2da9ade4539.md) | 404 | `declaration-track:b61f1802c58ac2da9ade45394321fc54a4ab0755dee2e40ad64fbd14ee139e45` |
| 26 | `theorem` | [addVal_def](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-def--8ed68d9c865c2ab4c75b1cb8.md) | 408 | `result-track:8ed68d9c865c2ab4c75b1cb80e82fd2dc2b7b1d22257be58fcbd656209704476` |
| 27 | `theorem` | [addVal_def'](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-def--1c2b0731f0831ea8dffa0fa7.md) | 416 | `result-track:1c2b0731f0831ea8dffa0fa7a4fcde419366d6f8032854e41a9317210498429d` |
| 28 | `theorem` | [addVal_zero](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-zero--8fc611c2f5b4bedbb12979f1.md) | 420 | `result-track:8fc611c2f5b4bedbb12979f13893ea3fe82845a753206a773bb547587a224217` |
| 29 | `theorem` | [addVal_one](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-one--0a070efef973dd443b569f44.md) | 423 | `result-track:0a070efef973dd443b569f446836b3369ad543b4decf7e31cdbf3384ae26a058` |
| 30 | `theorem` | [addVal_uniformizer](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-uniformizer--568df6e1d693b3bc35fe317e.md) | 427 | `result-track:568df6e1d693b3bc35fe317e3fbb2cf5b2f3ff22a2b7bf8a21a08baad7a511a5` |
| 31 | `theorem` | [addVal_mul](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-mul--11ed810cc2863d3f057731a9.md) | 431 | `result-track:11ed810cc2863d3f057731a93b5c70d1c290ec017cde4f457a7166b3cc85dea3` |
| 32 | `theorem` | [addVal_pow](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-pow--9b3241ee6a3802d3865286a5.md) | 435 | `result-track:9b3241ee6a3802d3865286a54c01b396a629243e252612c2ec638183761fcb33` |
| 33 | `theorem` | [_root_.Irreducible.addVal_pow](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/root-irreducible-addval-pow--1dc208e7e81ed0ab1ae3bdac.md) | 438 | `result-track:1dc208e7e81ed0ab1ae3bdacb1e2be289cadc4f8cfadcdd25c7b2a4e131d33a2` |
| 34 | `theorem` | [addVal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-eq-top-iff--b8f9df283fcdf80d005453fc.md) | 442 | `result-track:b8f9df283fcdf80d005453fc0fd623f3c2a797d5d88eef24392792d7639150bf` |
| 35 | `theorem` | [addVal_le_iff_dvd](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-le-iff-dvd--887b3947944c8a097ae68017.md) | 454 | `result-track:887b3947944c8a097ae680178627b85c15970dfd178b050c6f7243a485cf3cef` |
| 36 | `theorem` | [addVal_add](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-add--726b1a3c1350561f1582112d.md) | 468 | `result-track:726b1a3c1350561f1582112db08bd1f03bba45d68a0361def96624627ae015b4` |
| 37 | `lemma` | [addVal_eq_zero_of_unit](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-eq-zero-of-unit--d9dec1b25ae6371ae47a60c0.md) | 472 | `result-track:d9dec1b25ae6371ae47a60c0015d5af5e37fd4a1e76ee0e8c079bf1c428e9f11` |
| 38 | `lemma` | [addVal_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-eq-zero-iff--05f18eb969f3309be86ae2e9.md) | 478 | `result-track:05f18eb969f3309be86ae2e921b0f5f824a119e7f3631ab6672120a8cd45ba01` |
| 39 | `lemma` | [addVal_eq_iff_associated](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/addval-eq-iff-associated--3b0a63f0521208acfc6114ec.md) | 486 | `result-track:3b0a63f0521208acfc6114ec5c4ef50944191135f5dc918ad37883e647f6aa24` |
| 40 | `def` | [idealOrderIsoENat](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/idealorderisoenat--6a067cbf28c73c08c27c48f7.md) | 512 | `declaration-track:6a067cbf28c73c08c27c48f729a13aae2c21f27f5a5d74c91382a568fbfc3c5a` |
| 41 | `theorem` | [idealOrderIsoENat_symm_apply_coe](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/idealorderisoenat-symm-apply-coe--88e83e451808390f58bb7f2c.md) | 539 | `result-track:88e83e451808390f58bb7f2ccee32bcb417bb5121d7ca75d0dc8233ab3b8f426` |
| 42 | `theorem` | [idealOrderIsoENat_symm_apply_coe_of_irreducible](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/idealorderisoenat-symm-apply-coe-of-irreducible--8005fb4ad6b4b4dd379c579d.md) | 544 | `result-track:8005fb4ad6b4b4dd379c579dcbacb583668409dcf2d3fef58eb803f87ecd780e` |
| 43 | `theorem` | [coheight_pow_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/coheight-pow-maximalideal--7c9ed2b04ffb9cff58ed1a89.md) | 548 | `result-track:7c9ed2b04ffb9cff58ed1a89200b5aeb87dd812833ae77a9574741e09ff1ed70` |
| 44 | `theorem` | [length_quotient_pow_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/length-quotient-pow-maximalideal--78e13d4176b49de1264d7cdd.md) | 552 | `result-track:78e13d4176b49de1264d7cddee50945c134d4e4e2264b0718dd43da321ee7b7b` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/instance--8d074119163b043bf94e6a42.md) | 558 | `declaration-track:8d074119163b043bf94e6a42d1e8b8284499534cf8458467c6dbda2b43d30676` |
| 46 | `def` | [quotient](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/quotient--cfcc0ed2f0bc21606ef1cc02.md) | 572 | `declaration-track:cfcc0ed2f0bc21606ef1cc024f8ea224d6df095095cb3ba7ca635683cc5dcaaa` |
| 47 | `def` | [remainder](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/remainder--d2203178c0e184bc8526a8f8.md) | 578 | `declaration-track:d2203178c0e184bc8526a8f800c7e4c686002431fe1a32716ee7748e9f72ca14` |
| 48 | `def` | [toWithBotNat](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/towithbotnat--e084effdb6cd1b0f4509d495.md) | 582 | `declaration-track:e084effdb6cd1b0f4509d495cf342e55f04c2701e7c5d5331a339b9e56bc9fd2` |
| 49 | `lemma` | [toWithBotNat_zero](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/towithbotnat-zero--a83a731f2db83700fe9af289.md) | 585 | `result-track:a83a731f2db83700fe9af289eec3651b5fd08d3380e7d3a33ac906b62ea0ed01` |
| 50 | `lemma` | [toWithBotNat_eq_bot_iff](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/towithbotnat-eq-bot-iff--cd4b345b68851f0f0b23f522.md) | 588 | `result-track:cd4b345b68851f0f0b23f5220451e2bb02c378ac3a8d48411ca680c29e4eec3d` |
| 51 | `lemma` | [bot_lt_toWithBotNat_iff](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/bot-lt-towithbotnat-iff--1f45bf386e3774f06f947887.md) | 591 | `result-track:1f45bf386e3774f06f947887da161a5ad89c5fc9a5206e80e9cefc9bb6acee8c` |
| 52 | `lemma` | [toWithBotNat_le_toWithBotNat_iff](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/towithbotnat-le-towithbotnat-iff--d86002afc1fe003a2a2b9f2d.md) | 594 | `result-track:d86002afc1fe003a2a2b9f2da5eeafe0719dc772290309e2238d9273089648e3` |
| 53 | `lemma` | [dvd_of_toWithBotNat_le_toWithBotNat](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/dvd-of-towithbotnat-le-towithbotnat--dad8018a29d2bd43089ac3be.md) | 608 | `result-track:dad8018a29d2bd43089ac3be9296b5a54e5838b7c60df8f0b3ba473ed720b69f` |
| 54 | `def` | [toEuclideanDomain](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/toeuclideandomain--83370aef71d41d29a068845f.md) | 620 | `declaration-track:83370aef71d41d29a068845fb0f4f45b0396ad35669c9382eba589330c3e6a78` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/instance--a9f2ac992c4cf8cc476cf93b.md) | 654 | `declaration-track:a9f2ac992c4cf8cc476cf93b08c9089c44bfa2ef26ea5f44d6b5ff73b4e89cb9` |
| 56 | `lemma` | [maximalIdeal_eq_setOfPred_le_v_algebraMap](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/maximalideal-eq-setofpred-le-v-algebramap--322d7fd8de7eb29a25d2716a.md) | 664 | `result-track:322d7fd8de7eb29a25d2716ab15488cb08d4f8ca3adee4ec7fc98e6752fab195` |
| 57 | `lemma` | [maximalIdeal_pow_eq_setOfPred_le_v_algebraMap_pow](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/maximalideal-pow-eq-setofpred-le-v-algebramap-pow--93954bc4ca674b4b50ef97c1.md) | 676 | `result-track:93954bc4ca674b4b50ef97c19796e106220aa544a03fec2a0da955473ae85273` |
| 58 | `lemma` | [_root_.Irreducible.maximalIdeal_eq_setOfPred_le_v_coe](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/root-irreducible-maximalideal-eq-setofpred-le-v-coe--5ba4aa757a97c86d71f5e675.md) | 697 | `result-track:5ba4aa757a97c86d71f5e6755913d3b17be0dd93a9d02b6cdee0bae3cf4cc7da` |
| 59 | `lemma` | [_root_.Irreducible.maximalIdeal_pow_eq_setOfPred_le_v_coe_pow](../../../../mathematics/Algebra/Basic/Variantc387c5c09535a4a01efe29cbcf28a92295c29a13afb2f70a0163d0110077663e.lean/declarations/root-irreducible-maximalideal-pow-eq-setofpred-le-v-coe-pow--a968f389eb13b486ebf25550.md) | 706 | `result-track:a968f389eb13b486ebf25550e6f1e0cd9857e0d87eb38818a5fd68112ffe0302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
