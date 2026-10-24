# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa06d839837963a08c4de3378a3d6a7ca006d118",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa06d839837963a08c4de3378a3d6a7ca006d118`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/instcoalgebrastruct--57e215dd4eac3f62b7486656.md) | 40 | `declaration-track:57e215dd4eac3f62b7486656be6fb48ba660bbe38c863af1b16522635d9e22d8` |
| 2 | `lemma` | [comul_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/comul-def--fd84f755e8650a0b865b0327.md) | 46 | `result-track:fd84f755e8650a0b865b0327474679e812be863900455d7365287b93ea299e70` |
| 3 | `lemma` | [counit_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/counit-def--1242d9e77c0476cd6e6f15c1.md) | 54 | `result-track:1242d9e77c0476cd6e6f15c19acd7bae6cd4cd655d481e82532904c85baadbdc` |
| 4 | `lemma` | [comul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/comul-tmul--298845ab95a2ce098da61944.md) | 62 | `result-track:298845ab95a2ce098da61944521e7fbab677396f58dc26f1f7d5483869410be1` |
| 5 | `lemma` | [counit_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/counit-tmul--b41659e602f78d90e5b1ad7b.md) | 67 | `result-track:b41659e602f78d90e5b1ad7b01aceae7fdb749625821247eec3255a956350bf5` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/macro--d3fbe0f62bd1b2dafd36e16f.md) | 74 | `declaration-track:d3fbe0f62bd1b2dafd36e16fdad8bdeb699e4acd774fd58e5a1ee61d9572e7cb` |
| 7 | `lemma` | [coassoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/coassoc--697dfb0ccd649ba0791877fd.md) | 85 | `result-track:697dfb0ccd649ba0791877fdcde0ef0aace1b0db763b932ee813822ca324b261` |
| 8 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/instcoalgebra--0c20c6e52219e8ef82f3936b.md) | 118 | `declaration-track:0c20c6e52219e8ef82f3936be45f1f4b5e5b9f00b12c20439915cc19d7bc1a56` |
| 9 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/map--4fe815059da1de9558535287.md) | 160 | `declaration-track:4fe815059da1de95585352878c83d30736a7acab203967eb0098bdb0c9711b29` |
| 10 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/map-tmul--3c7f2710b8456fdd541a56e9.md) | 173 | `result-track:3c7f2710b8456fdd541a56e98d81f0ebcbb0aff4028bc56fc33d56e395fed997` |
| 11 | `theorem` | [map_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/map-tolinearmap--9c95f487b5fac2a6141ca8a0.md) | 178 | `result-track:9c95f487b5fac2a6141ca8a0e42a2b12cc494cd27e72ba4e9579d900f0b7a99d` |
| 12 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/assoc--6a100318c5c4bba0b75fe3a9.md) | 184 | `declaration-track:6a100318c5c4bba0b75fe3a98d20d689ce6d029ca6d8d9b0d7e0bc17383e4607` |
| 13 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/assoc-tmul--adc24e49c1cf589319616433.md) | 199 | `result-track:adc24e49c1cf589319616433a557dde7a87286904c06ec9665e7b88a92bacf74` |
| 14 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/assoc-symm-tmul--ca71e755cbc6ed798f0464dd.md) | 204 | `result-track:ca71e755cbc6ed798f0464dd5e2810bcfcbd843d1239f943a00b8d0a218e8370` |
| 15 | `theorem` | [assoc_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/assoc-tolinearequiv--86ca8a96d1482211f369b927.md) | 209 | `result-track:86ca8a96d1482211f369b92737d2f354e82e4cfda4c832353002f596eee3db34` |
| 16 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/lid--270d08fe48214158a386f114.md) | 216 | `declaration-track:270d08fe48214158a386f114d28a9d51c05884bf9df07638d1218aefff7820e0` |
| 17 | `theorem` | [lid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/lid-tolinearequiv--b94623750dfbd95cd085f775.md) | 229 | `result-track:b94623750dfbd95cd085f7752b95b97428d6b440b0b1a0f6cc76d375cccbf695` |
| 18 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/lid-tmul--29914c9e3452c72024b5037a.md) | 233 | `result-track:29914c9e3452c72024b5037a4cd045101b5d49af1aac691010e7310fcc0ebff6` |
| 19 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/lid-symm-apply--1b76b0b1ba5409f68a8943f1.md) | 236 | `result-track:1b76b0b1ba5409f68a8943f134d5ced21ad9622c4814eed969dc0d4253b33bdb` |
| 20 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/rid--8284e36b73142ced66e9c4e8.md) | 242 | `declaration-track:8284e36b73142ced66e9c4e8a7a7bc588f3c153868d59e13abd58771a935b760` |
| 21 | `theorem` | [rid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/rid-tolinearequiv--5eb72280fcd5b992a63786a3.md) | 255 | `result-track:5eb72280fcd5b992a63786a3ff3855abbe91660d41f7d00ea41dff1a7fa3534d` |
| 22 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/rid-tmul--71963ddf63a69fc70cf5f26f.md) | 259 | `result-track:71963ddf63a69fc70cf5f26f7654425332bfb903ca38060a3b3ea0d7876a85fc` |
| 23 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/rid-symm-apply--ac79fa6a37e2a11c6dac0315.md) | 262 | `result-track:ac79fa6a37e2a11c6dac03151474930cec90bec90909422ffe946f46d1d9a101` |
| 24 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/ltensor--217c1124dfc6eab8762b7889.md) | 277 | `declaration-track:217c1124dfc6eab8762b7889220ff8f8af72ce71394587d7844f9898cc68a2dc` |
| 25 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant0fa776e1bfd8b741687383a6191141c552ba9d85bcb7a5e07ff31d2b193cd90e.lean/declarations/rtensor--91fcf04f20be2016dcc09dbc.md) | 281 | `declaration-track:91fcf04f20be2016dcc09dbc42537c7085e7403fcf4c91b1ea635777b83f1702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
