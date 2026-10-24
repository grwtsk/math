# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c3c17774cd1fad6e2b043042b05294a8065b8c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c3c17774cd1fad6e2b043042b05294a8065b8c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/counit-eq-alghom-tolinearmap--a4c9e05af1e7549af9d6d5da.md) | 36 | `result-track:a4c9e05af1e7549af9d6d5da931de4de0ca980b7fce98e306da71dfbb0b92817` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/comul-eq-alghom-tolinearmap--240da4fa223200a682713b1c.md) | 42 | `result-track:240da4fa223200a682713b1c7e8e5418bb11967551064e6c31a711aa784e29b9` |
| 3 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.CounitEqAlgHomToLinearMap.Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.TensorProduct.instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/root-grwtsk-algebra-linearalgebra-couniteqalghomtolinearmap-varianta5e28--af5ae6fdddab3ed9055b95ac.md) | 49 | `declaration-track:af5ae6fdddab3ed9055b95ac4eed8fb4aa169173c5ce3148a4425121a6fc16a3` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/map--9a242adbab870f47ffd97398.md) | 59 | `declaration-track:9a242adbab870f47ffd97398df37e3863c5d15689ff0d36d89e1aa2a4a2a57ef` |
| 5 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/map-tmul--c84c5650bd816ceeb519579a.md) | 65 | `result-track:c84c5650bd816ceeb519579adf28619067a3f354ae7af979495deb6f26cb8174` |
| 6 | `theorem` | [map_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/map-tocoalghom--78775baf8d7c223f6cba3a92.md) | 70 | `result-track:78775baf8d7c223f6cba3a929a432d653c8d6ca050b93f71803c82a367e5cb41` |
| 7 | `theorem` | [map_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/map-toalghom--01a6a2457625c94439999255.md) | 74 | `result-track:01a6a2457625c94439999255e335a0d2c07fa270d15fb79749899a6a795464f7` |
| 8 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/assoc--e86f5fa4eafaff8f7bab9254.md) | 81 | `declaration-track:e86f5fa4eafaff8f7bab9254c75208ab2cca3a2960a4a69207540987810c9464` |
| 9 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/assoc-tmul--deb129365949a9f7e902df09.md) | 86 | `result-track:deb129365949a9f7e902df09315d011a899629bb90546ef98a64468a7fad4d5f` |
| 10 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/assoc-symm-tmul--5c933064109e22a5f40d5b24.md) | 91 | `result-track:5c933064109e22a5f40d5b246191824a2d43099f037fba31508319fc7b10d7c6` |
| 11 | `theorem` | [assoc_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/assoc-tocoalgequiv--a26bebbf5e7dc414d41cbbf3.md) | 96 | `result-track:a26bebbf5e7dc414d41cbbf3dc89e5dd274c685b9f0c820b8a6abe19ae316034` |
| 12 | `theorem` | [assoc_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/assoc-toalgequiv--589b75f15ef59ff8f51acc0a.md) | 101 | `result-track:589b75f15ef59ff8f51acc0aef1200e4a34fc4c98707e60a2cf7d9214f58bef1` |
| 13 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/lid--d36456bac0c6a0ae032b4023.md) | 108 | `declaration-track:d36456bac0c6a0ae032b4023e890a15f0f79fb0abace8c770a31a66955898644` |
| 14 | `theorem` | [lid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/lid-tocoalgequiv--7a187357290d7ecb219557d0.md) | 112 | `result-track:7a187357290d7ecb219557d0a6ac8a7ce57dd58dce50829773b63158daf697b4` |
| 15 | `theorem` | [lid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/lid-toalgequiv--ad3b38e8d9e727a8fb71f422.md) | 116 | `result-track:ad3b38e8d9e727a8fb71f4228bfa7b718f5e17ed9588da00e63210ff21c7d310` |
| 16 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/lid-tmul--cfcbfc21d3a65cdad1a3a616.md) | 120 | `result-track:cfcbfc21d3a65cdad1a3a6169f81a686f71e503e8d36a883294e91a13e19c59a` |
| 17 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/lid-symm-apply--12cfc809fbffc16c16a66f2c.md) | 123 | `result-track:12cfc809fbffc16c16a66f2c996fb8d560e5a410375ebaaf3a5fdf16bab33fde` |
| 18 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/coalgebra-rid-eq-algebra-rid-apply--a63d59889e8f09cdb9e320fa.md) | 127 | `result-track:a63d59889e8f09cdb9e320faed86a956c849fd7c30dcf2618dccb82b55c9f17f` |
| 19 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rid--69fcab994f808efc97f90f15.md) | 133 | `declaration-track:69fcab994f808efc97f90f15f077c0306226e4daa0acb2b2c701a4f7c9f4eb80` |
| 20 | `theorem` | [rid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rid-tocoalgequiv--ff7de2213a1148a061baa4e6.md) | 141 | `result-track:ff7de2213a1148a061baa4e66199467bbd8cd85263783ae7e910825214f44312` |
| 21 | `theorem` | [rid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rid-toalgequiv--1544b305f55445722889b4aa.md) | 145 | `result-track:1544b305f55445722889b4aacded8e2cfc4f2e484a61db373572b6a9c27defaa` |
| 22 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rid-tmul--cb90be68c70fadd66b787ac5.md) | 151 | `result-track:cb90be68c70fadd66b787ac591bb42e32b57403d908f13da0cff3c095aa2a62e` |
| 23 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rid-symm-apply--86648b892afa20eaf4072426.md) | 154 | `result-track:86648b892afa20eaf4072426b5576b7f1a78f867e0dba8d433fa16820c486437` |
| 24 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/ltensor--019ef075f1c4c0c4a00ceb8f.md) | 165 | `declaration-track:019ef075f1c4c0c4a00ceb8f845cb251acb80d2f0c9b1a66c053aa87ec94ad19` |
| 25 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant425c4c6a4b9dbdb22633cbb6326604512fe046fa24c14ed43060b22bb4ac4235.lean/declarations/rtensor--167610fac04b70c15f311c39.md) | 169 | `declaration-track:167610fac04b70c15f311c395bf5fe4d7ae8221cb3ffde9115008d676e7374f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
