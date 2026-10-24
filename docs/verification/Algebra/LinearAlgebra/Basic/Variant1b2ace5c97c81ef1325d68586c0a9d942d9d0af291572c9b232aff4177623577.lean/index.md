# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Transvection` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/macro-rules--8d0df5e4a46cde12f0d1e3a0.md) | 45 | `declaration-track:8d0df5e4a46cde12f0d1e3a0f1cc680a32f72be8164eb89db307d642149cd16e` |
| 2 | `theorem` | [volume_eq_stieltjes_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-eq-stieltjes-id--7eb6ab311561c52627e7ff25.md) | 64 | `result-track:7eb6ab311561c52627e7ff25c8bfeab8c28df26987085b242113047329d3e884` |
| 3 | `theorem` | [volume_val](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-val--ce0496bb443d6ae647ab6bb9.md) | 83 | `result-track:ce0496bb443d6ae647ab6bb96f39b5eaf22f80c4bb632df4a11097507e835459` |
| 4 | `theorem` | [volume_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ico--7ee74ca949fb435080054035.md) | 88 | `result-track:7ee74ca949fb435080054035fa2db6694f94b2d0d4775ddd7b58453105eb5814` |
| 5 | `theorem` | [volume_Icc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-icc--474b29945e0d71c0356f8bc0.md) | 92 | `result-track:474b29945e0d71c0356f8bc04498d381630921bd0f156df4e3391876aba69a13` |
| 6 | `theorem` | [volume_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ioo--8944a3f91b5161ede5caac1f.md) | 96 | `result-track:8944a3f91b5161ede5caac1f97a6c2c3635ce697b74647706e61eeba373206a7` |
| 7 | `theorem` | [volume_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ioc--106c418ce61dc22281c9f7ba.md) | 100 | `result-track:106c418ce61dc22281c9f7baba540a44a4f9d60b0f8b39cb207cfdfea51c1c12` |
| 8 | `theorem` | [volume_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-singleton--7130593fdc017fbd19965674.md) | 104 | `result-track:7130593fdc017fbd1996567417eac78ba28784220d66af846e119cf13d65f36d` |
| 9 | `theorem` | [volume_univ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-univ--e45671f74cae5702fe86954f.md) | 108 | `result-track:e45671f74cae5702fe86954f83af1bcfa65fec0ef55582292655b0c9530f550c` |
| 10 | `theorem` | [volume_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ball--60b9d7bebab72ab7caf843f7.md) | 116 | `result-track:60b9d7bebab72ab7caf843f7a65881242db4ca9c34c61c3494b7297ed7a39d3b` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-closedball--7fce42c7dfdef2f8fb20a190.md) | 121 | `result-track:7fce42c7dfdef2f8fb20a19010ea29a103201b7a5fa6439707da260a8af24ab7` |
| 12 | `theorem` | [volume_emetric_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-emetric-ball--42f8af1cfe47ae5b62da5af6.md) | 126 | `result-track:42f8af1cfe47ae5b62da5af655c3a575bb719de1d99fc28adfe9c9ecb5ac4121` |
| 13 | `theorem` | [volume_emetric_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-emetric-closedball--89320f962b1ab269d9b914e0.md) | 135 | `result-track:89320f962b1ab269d9b914e0375cdbb9113409a60493dcfb810c743261d62c71` |
| 14 | `instance` | [noAtoms_volume](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/noatoms-volume--4651e2778141147d813c7a06.md) | 143 | `declaration-track:4651e2778141147d813c7a0661969937e3bc149ec4796db89cfc36bd98b40715` |
| 15 | `theorem` | [volume_interval](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-interval--2c16cb824342e1bd1754d058.md) | 148 | `result-track:2c16cb824342e1bd1754d058fb7fd023cfabce28cdf38272037e8fec94694aeb` |
| 16 | `theorem` | [volume_Ioi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ioi--94e463eb5dd38d990cc34bd7.md) | 153 | `result-track:94e463eb5dd38d990cc34bd77f16c4ba6516c70884460c9c26dcbe7102cf6405` |
| 17 | `theorem` | [volume_Ici](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-ici--ee9fd79d191f097de1253b5b.md) | 162 | `result-track:ee9fd79d191f097de1253b5badba594c5333aa38c275602a33edf05a070ad497` |
| 18 | `theorem` | [volume_Iio](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-iio--897233ed559ca83ef66a6c69.md) | 166 | `result-track:897233ed559ca83ef66a6c6939345ca2534278a85eb0816f02ca2efba01a1211` |
| 19 | `theorem` | [volume_Iic](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-iic--8d54637e8eaa010845133135.md) | 175 | `result-track:8d54637e8eaa01084513313507822d5979e9906208a492006669bcc09ba7dd76` |
| 20 | `instance` | [locallyFinite_volume](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/locallyfinite-volume--b154a4b7102388f3b9765428.md) | 178 | `declaration-track:b154a4b7102388f3b97654283b91b3f494242ece1f2fed0de8d23a5c020976fa` |
| 21 | `instance` | [isFiniteMeasure_restrict_Icc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/isfinitemeasure-restrict-icc--7338ae0d993161793962fba4.md) | 185 | `declaration-track:7338ae0d993161793962fba450f05c06cf532176537e01f8c91750b7ee3539cf` |
| 22 | `instance` | [isFiniteMeasure_restrict_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/isfinitemeasure-restrict-ico--94d7add1b5b9fe3795a78799.md) | 189 | `declaration-track:94d7add1b5b9fe3795a787994edd1cd27fe020c44af111004779bc0a167ab4a0` |
| 23 | `instance` | [isFiniteMeasure_restrict_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/isfinitemeasure-restrict-ioc--70053dcf0cd55de8e2f0b665.md) | 193 | `declaration-track:70053dcf0cd55de8e2f0b665550e084afed034ceccf2b4e0c1a9117d03d113c5` |
| 24 | `instance` | [isFiniteMeasure_restrict_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/isfinitemeasure-restrict-ioo--c8cfa9640e8ba47fada1db35.md) | 197 | `declaration-track:c8cfa9640e8ba47fada1db35b3d3cc8eafe8bb05d9db2cb355f2b1525259ed29` |
| 25 | `theorem` | [volume_le_diam](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-le-diam--c0b82d5687dd18ab834d1938.md) | 201 | `result-track:c0b82d5687dd18ab834d1938198940826217ff421e4ab9aaa6189aa845d823ee` |
| 26 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.VolumeEqStieltjesId.Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.Filter.Eventually.volume_pos_of_nhds_real](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/root-grwtsk-algebra-linearalgebra-volumeeqstieltjesid-variant47e916a8abd--5b46a6159951f3352a26aa86.md) | 208 | `result-track:5b46a6159951f3352a26aa86cb4ac2fac5ad32306b205d8fa0ac80515ea01756` |
| 27 | `theorem` | [volume_Icc_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-icc-pi--add58a48af0148d2ef863bb3.md) | 220 | `result-track:add58a48af0148d2ef863bb387a1362413e671718ba9d81e9b40b05ea08a652c` |
| 28 | `theorem` | [volume_Icc_pi_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-icc-pi-toreal--b6249b209d7df52d8d929237.md) | 226 | `result-track:b6249b209d7df52d8d92923797acaa922bcdec5b330aa10858b8f0f6789421f4` |
| 29 | `theorem` | [volume_pi_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ioo--5b48cac82ca07c758274b3c4.md) | 231 | `result-track:5b48cac82ca07c758274b3c477ba1847625bd66131233be0f02c776252cae09c` |
| 30 | `theorem` | [volume_pi_Ioo_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ioo-toreal--a048c6a59e3f200fbeb37e2c.md) | 237 | `result-track:a048c6a59e3f200fbeb37e2c7994acaa0cf5c51a5c769e4872d2245efbcf8ca4` |
| 31 | `theorem` | [volume_pi_Ioc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ioc--13db46ad1ef7f49e52434d6b.md) | 242 | `result-track:13db46ad1ef7f49e52434d6bf0ba2b740087fd50a124d39b4b46c1b604c69282` |
| 32 | `theorem` | [volume_pi_Ioc_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ioc-toreal--8a8f5ed857db6c8b47fdaa1f.md) | 248 | `result-track:8a8f5ed857db6c8b47fdaa1f2edf263771cf6fdaf587ad1898fab1b14019f134` |
| 33 | `theorem` | [volume_pi_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ico--17b485784f0dad0f68bf1789.md) | 253 | `result-track:17b485784f0dad0f68bf1789bb89975a5995768b667c93dca7f31c021cebda6b` |
| 34 | `theorem` | [volume_pi_Ico_toReal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ico-toreal--f47d4f0ac5be98dd887e2dcf.md) | 259 | `result-track:f47d4f0ac5be98dd887e2dcf670c39bf07f777cd9aeb53c03723a45c4065e21c` |
| 35 | `theorem` | [volume_pi_ball](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-ball--a80b97646e3069b6619bc4c2.md) | 265 | `result-track:a80b97646e3069b6619bc4c2a5332aacfbef63a24f7fe42e7aa5ec9b7af5e116` |
| 36 | `theorem` | [volume_pi_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-closedball--52b024773b1b4e7588d5b72c.md) | 272 | `result-track:52b024773b1b4e7588d5b72cc166d84ec9ee931115cf2c3afa2d4110d5248af1` |
| 37 | `theorem` | [volume_pi_le_prod_diam](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-le-prod-diam--8948b920090b047ba5bcd585.md) | 278 | `result-track:8948b920090b047ba5bcd58512eb83bc4b6e0930a4b0b95b7ba4e4398403660f` |
| 38 | `theorem` | [volume_pi_le_diam_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-pi-le-diam-pow--ed9bed88fcd10d36222519c7.md) | 289 | `result-track:ed9bed88fcd10d36222519c7e87fd5343dea1307f0eea8e375150d43836ee0ec` |
| 39 | `theorem` | [smul_map_volume_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/smul-map-volume-mul-left--743a9043e53f44b9da209b09.md) | 303 | `result-track:743a9043e53f44b9da209b094aa5ce1d031947486fd531eb16054785045a89b0` |
| 40 | `theorem` | [map_volume_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/map-volume-mul-left--23254c991f423589c2116d10.md) | 316 | `result-track:23254c991f423589c2116d10fe6db0dd55feae7e6e84fd885ac4c203bdfe1a33` |
| 41 | `theorem` | [volume_preimage_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-preimage-mul-left--9b4ae8a9301d8e86e9d3725c.md) | 324 | `result-track:9b4ae8a9301d8e86e9d3725c82e04be01b23b768c8e2fcd4a0b40b9a2d30058c` |
| 42 | `theorem` | [smul_map_volume_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/smul-map-volume-mul-right--98df72701896a7d461aa6b31.md) | 332 | `result-track:98df72701896a7d461aa6b316b9de6b1d367037cffeb53cf3bc94b2b5e418574` |
| 43 | `theorem` | [map_volume_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/map-volume-mul-right--e2b99d497427a7436d0abd6a.md) | 337 | `result-track:e2b99d497427a7436d0abd6a351801b657d698445888583d1b6eac0612f9be75` |
| 44 | `theorem` | [volume_preimage_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-preimage-mul-right--25fb2fadc48f4f3fef780cfc.md) | 343 | `result-track:25fb2fadc48f4f3fef780cfc683cc7ac1ea8c5b439a69a7b5abd24b13cd23264` |
| 45 | `theorem` | [smul_map_diagonal_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/smul-map-diagonal-volume-pi--9a13854db0dbcaa8a609d3b7.md) | 361 | `result-track:9a13854db0dbcaa8a609d3b79a17b444f4936ff8fd6728a829ffa7fcff1f388b` |
| 46 | `theorem` | [volume_preserving_transvectionStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-preserving-transvectionstruct--fd587fbad8acf0cfadd629ae.md) | 387 | `result-track:fd587fbad8acf0cfadd629ae403996c013329086e3b7b3bc54e8a8af751f0aa1` |
| 47 | `theorem` | [map_matrix_volume_pi_eq_smul_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/map-matrix-volume-pi-eq-smul-volume-pi--8a7353e40d3daa9eecb5156c.md) | 431 | `result-track:8a7353e40d3daa9eecb5156cbfab4059acb5e92c8e3d442016649fa6df44bfaf` |
| 48 | `theorem` | [map_linearMap_volume_pi_eq_smul_volume_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/map-linearmap-volume-pi-eq-smul-volume-pi--be4cd0b7deae98b1d796ce75.md) | 454 | `result-track:be4cd0b7deae98b1d796ce75d90f0347f8ab4f6670938d525b4ef8145910b556` |
| 49 | `def` | [regionBetween](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/regionbetween--a219b2568762c8e4a7c73fcc.md) | 474 | `declaration-track:a219b2568762c8e4a7c73fcc4405ced53e846e0fde8bcc917f2303c3846ca881` |
| 50 | `theorem` | [regionBetween_subset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/regionbetween-subset--a7ad0953fededc49e2d84a3f.md) | 478 | `result-track:a7ad0953fededc49e2d84a3f1acad72e16b21ac4e5098dc4a5b07b2567286b71` |
| 51 | `theorem` | [measurableSet_regionBetween](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/measurableset-regionbetween--06daf41e1dee21e862972ae9.md) | 485 | `result-track:06daf41e1dee21e862972ae95bbcb785b07f2156e1900b6a2a4c04b1c30cbbb5` |
| 52 | `theorem` | [measurableSet_region_between_oc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/measurableset-region-between-oc--00df05e5cb38ac5944ee11f9.md) | 497 | `result-track:00df05e5cb38ac5944ee11f91f20117c61c1800f3d91ad32d8a9ada8d0ed9b36` |
| 53 | `theorem` | [measurableSet_region_between_co](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/measurableset-region-between-co--05625250a6bdef9be3fba199.md) | 510 | `result-track:05625250a6bdef9be3fba1992c4a9388bc62c4d063b42d6edf6b0a38f1d441d7` |
| 54 | `theorem` | [measurableSet_region_between_cc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/measurableset-region-between-cc--b715bf7388d04f1a802b51e4.md) | 523 | `result-track:b715bf7388d04f1a802b51e491d6ca4fc90fe37ba1260c1917499fbf2b5424d3` |
| 55 | `theorem` | [measurableSet_graph](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/measurableset-graph--99ed7b0c972f53a14a22e309.md) | 535 | `result-track:99ed7b0c972f53a14a22e30946f7430309b4d957d8c21d4e7a7c8cb1eba0fdb1` |
| 56 | `theorem` | [volume_regionBetween_eq_lintegral'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-regionbetween-eq-lintegral--8bcdac85649228abad934f67.md) | 539 | `result-track:8bcdac85649228abad934f676f4c5c39f39c007ecda4b51b466e89027bd84612` |
| 57 | `theorem` | [volume_regionBetween_eq_lintegral](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/volume-regionbetween-eq-lintegral--961c778c97ec1360861711e7.md) | 561 | `result-track:961c778c97ec1360861711e710a2864553a499e668ddd3b73f18dd81d1166793` |
| 58 | `theorem` | [ae_restrict_of_ae_restrict_inter_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/ae-restrict-of-ae-restrict-inter-ioo--23a8bffff22600e22a766ef4.md) | 593 | `result-track:23a8bffff22600e22a766ef42304a00cee22e78a1954a7e13aaf0af0c4bb780a` |
| 59 | `theorem` | [ae_of_mem_of_ae_of_mem_inter_Ioo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/declarations/ae-of-mem-of-ae-of-mem-inter-ioo--f2c39305505b83ad61e6125b.md) | 628 | `result-track:f2c39305505b83ad61e6125b36b934803ab9f0fa027f2711dc8ddb39b0dc8291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
