# Verification target: GRWTSK.Algebra.GroupTheory.Unitary.Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "284e5628a1c4a6e3e455d895234c936077f64888",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `284e5628a1c4a6e3e455d895234c936077f64888`.

Source path: `GRWTSK/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/unitary--2546d818fe8a45499cdad4fd.md) | 29 | `declaration-track:2546d818fe8a45499cdad4fdbf82699d1df599008dc1e2beb228f036262914c8` |
| 2 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mem-iff--ac76e97698e5228c9525ee70.md) | 51 | `result-track:ac76e97698e5228c9525ee70a2f2a2f7fa0b03033702291759541315a97546c9` |
| 3 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-mul-self-of-mem--6dd5a301c5c7b16fd3ec4a60.md) | 55 | `result-track:6dd5a301c5c7b16fd3ec4a60bebf48e64ca40e3aa64c6b94f8e643e7bfd1b2c5` |
| 4 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mul-star-self-of-mem--84e0096b6a87f4e9b3e85d94.md) | 59 | `result-track:84e0096b6a87f4e9b3e85d94d6db9de1eac42244199a88a43e19fbb1b279e1b3` |
| 5 | `theorem` | [star_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-mem--151cfa09bd051b94a28fd8d7.md) | 62 | `result-track:151cfa09bd051b94a28fd8d7082c96109647ad04d955e92f8eac769c21663e60` |
| 6 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-mem-iff--ef1159d10ce18f3b32950fb6.md) | 66 | `result-track:ef1159d10ce18f3b32950fb6e646e836d58ee576ce5d609f56dc51cfcff6c79a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--8123990eb886b07d31bac483.md) | 69 | `declaration-track:8123990eb886b07d31bac48354240ba04f3eaa52e034546ecca01d74f986b9bc` |
| 8 | `theorem` | [coe_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-star--3fff8d6a877e461fdb564ee8.md) | 73 | `result-track:3fff8d6a877e461fdb564ee8b5b75ae27e75464d49c06a3ad3b5d545b1804323` |
| 9 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-star-mul-self--849ad8d856cd1da06968ea1e.md) | 76 | `result-track:849ad8d856cd1da06968ea1e1180800cc08c827ab9335f3ee18537571abf41e2` |
| 10 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-mul-star-self--ac9cf1a5eac822120452d88e.md) | 79 | `result-track:ac9cf1a5eac822120452d88ecccc0a5a6539656312f66a0329964005ca33831d` |
| 11 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-mul-self--d7cdde27a6189ec151e3fc63.md) | 83 | `result-track:d7cdde27a6189ec151e3fc636abed450482f9e2990e4a726912f76ac1f11aa69` |
| 12 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mul-star-self--768300a7d49d71eced9980e6.md) | 87 | `result-track:768300a7d49d71eced9980e688df48dc61c2958ce74d68b15f1541eb7be2fd83` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--5baeac2a169622b8edc1b9a5.md) | 90 | `declaration-track:5baeac2a169622b8edc1b9a505d0296d1fc959ed33ff7169142764db7fff9b04` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--64786882f27fbfadad2e60ea.md) | 95 | `declaration-track:64786882f27fbfadad2e60eaf90f9a1e659ff96557a69534c1c1c712750c571b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--e9cf1e0447603282c83f8ec7.md) | 101 | `declaration-track:e9cf1e0447603282c83f8ec7539522ce2c2380869aafa3b83fb641f6e6cec8b2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--1f018ada677c03f04b9a5351.md) | 107 | `declaration-track:1f018ada677c03f04b9a5351a45a44809f617fc503d0fb709a00ed1af47d4607` |
| 17 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-eq-inv--7eddea4db3e9f46d109ec041.md) | 110 | `result-track:7eddea4db3e9f46d109ec04128ddd9e8c9ac28fe0cee7cd604ad223b02b86305` |
| 18 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/star-eq-inv--913c0171311f4e5befcda010.md) | 113 | `result-track:913c0171311f4e5befcda0101703efeeca2cef0be2c1cb6e723451a027b0d471` |
| 19 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/tounits--77c1dd1afee32cfba26c0151.md) | 118 | `declaration-track:77c1dd1afee32cfba26c0151137249d7515369d4d744fbf98722d2ee31978c72` |
| 20 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/tounits-injective--d8df874e1c9401148288e149.md) | 123 | `result-track:d8df874e1c9401148288e149077fdc8606224e753ed9fb6aa26a4d1335d8f345` |
| 21 | `theorem` | [_root_.IsUnit.mem_unitary_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-isunit-mem-unitary-iff-star-mul-self--0cbc122983cc0dfb277e3a0f.md) | 126 | `result-track:0cbc122983cc0dfb277e3a0f59f737a18b15e1fbd7afc7625f958f02ff6eebb8` |
| 22 | `theorem` | [_root_.IsUnit.mem_unitary_iff_mul_star_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-isunit-mem-unitary-iff-mul-star-self--3a5d2caac4f509d1a95e2087.md) | 132 | `result-track:3a5d2caac4f509d1a95e20876a4c83cac4d0cab85939dc694696dbcb7faedbf1` |
| 23 | `lemma` | [mul_inv_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mul-inv-mem-iff--cac4962f00fa4e766f631572.md) | 139 | `result-track:cac4962f00fa4e766f631572084877903eec75890a0aefcf8a2c8b6910d7cc46` |
| 24 | `lemma` | [inv_mul_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/inv-mul-mem-iff--33a664942b2899072c263832.md) | 144 | `result-track:33a664942b2899072c263832a212ad1d51320c160c4c007cfc33d329df45ce10` |
| 25 | `theorem` | [_root_.Units.unitary_eq](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-units-unitary-eq--a72b4eb88d5697d95d60dcc9.md) | 148 | `result-track:a72b4eb88d5697d95d60dcc9be825202a7e382d4300b111800f6bfad1a9adc3a` |
| 26 | `lemma` | [_root_.Units.mul_inv_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-units-mul-inv-mem-unitary--25f57bbc94e39172f0a82481.md) | 153 | `result-track:25f57bbc94e39172f0a824813dd561015cb665e3cea94e00c3dcf4ed124ebc51` |
| 27 | `lemma` | [_root_.Units.inv_mul_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-units-inv-mul-mem-unitary--88d899390b2c84caac878e92.md) | 158 | `result-track:88d899390b2c84caac878e9278fc5ccacd2721e2ba0e536b57740028ef0a9567` |
| 28 | `instance` | [instIsStarNormal](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instisstarnormal--149845addc535ac33aa2475b.md) | 162 | `declaration-track:149845addc535ac33aa2475b66544bf1e9c1af1b6097f291be06a71037046433` |
| 29 | `instance` | [coe_isStarNormal](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-isstarnormal--d4a4f7384b3e9ed9a4f43d60.md) | 165 | `declaration-track:d4a4f7384b3e9ed9a4f43d60a0438c9622a15642db81970caa3e59e0a2396c9f` |
| 30 | `lemma` | [_root_.isStarNormal_of_mem_unitary](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/root-isstarnormal-of-mem-unitary--39f64f146c396c07e7ca53c1.md) | 169 | `result-track:39f64f146c396c07e7ca53c105f949387b205c28697bfa35c4ee0d8d8f09ba96` |
| 31 | `lemma` | [map_mem](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/map-mem--6e776c4600d3ab7583eb09fd.md) | 179 | `result-track:6e776c4600d3ab7583eb09fd447c9a1e51addca9af28fa6f531c3f2116174ede` |
| 32 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/map--fca50978dda5691bf6085e7b.md) | 186 | `declaration-track:fca50978dda5691bf6085e7bcf5e4ff8182a2a9a23bce7eea4d91dd93151c5f5` |
| 33 | `lemma` | [toUnits_comp_map](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/tounits-comp-map--95d4a0265c538fb6052e014f.md) | 191 | `result-track:95d4a0265c538fb6052e014f9c8b82df24f49526d1e5016b4ec1a4f92909f4d3` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--02da5e6c19aa344651337503.md) | 199 | `declaration-track:02da5e6c19aa34465133750373dd9e524761ecacf3199b44a8f204f1d84cb298` |
| 35 | `theorem` | [mem_iff_star_mul_self](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mem-iff-star-mul-self--0b4c4aa8d2175b009ad05ccd.md) | 202 | `result-track:0b4c4aa8d2175b009ad05ccd5db11554d4f923568c511d06f22f49d67886e5e0` |
| 36 | `theorem` | [mem_iff_self_mul_star](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/mem-iff-self-mul-star--cb92e5c5be489b759a1e2adc.md) | 205 | `result-track:cb92e5c5be489b759a1e2adc5727218971923d9b7378857d0504043b56d8d2f4` |
| 37 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-inv--c2d14abf9657b0db009f45af.md) | 215 | `result-track:c2d14abf9657b0db009f45afb4535fc834a059a18e77d28f5899d130477ee4eb` |
| 38 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-div--bb98ac08428509df07074025.md) | 219 | `result-track:bb98ac08428509df070740253bb5b79faeadf709968c6698f686aa6c5bd9a82e` |
| 39 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-zpow--017a0127221e87677ca10859.md) | 223 | `result-track:017a0127221e87677ca1085925b2a76da9a087a289a11964452fb9124d2a09f0` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--63ac3025217ab21f2117112d.md) | 234 | `declaration-track:63ac3025217ab21f2117112d6b9ddbfa427e89ae7eed37571f1fae3faf657db0` |
| 41 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/coe-neg--7e464bb1625e0990b691bb2d.md) | 239 | `result-track:7e464bb1625e0990b691bb2dc3d96823dae78746251b9e18bff0cd8ef7704569` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/instance--78d389078f3f60af847292d3.md) | 242 | `declaration-track:78d389078f3f60af847292d3c7e495bdb25d76eba91239a2b33cbe74f6233a4b` |
| 43 | `lemma` | [spectrum.unitary_conjugate](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/spectrum-unitary-conjugate--87be23072facd815f0c65ef9.md) | 255 | `result-track:87be23072facd815f0c65ef93093e808c707f09dee53a5f34117c57422e6bf05` |
| 44 | `lemma` | [spectrum.unitary_conjugate'](../../../../../mathematics/Algebra/GroupTheory/Unitary/Variant02b4c1653651e808f59c5e907733d9f75dfb955d1a0791e66282ee4cc5d49ad1.lean/declarations/spectrum-unitary-conjugate--5edae915dce3b2d156283abb.md) | 261 | `result-track:5edae915dce3b2d156283abb305a09c4bf04c784f3015115dc58c80e360a2c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
