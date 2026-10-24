# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForgetCorepresentable.Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604960ec32dd8d0ca09b700221a335db375ca355",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604960ec32dd8d0ca09b700221a335db375ca355`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftZMultiplesHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/uliftzmultipleshom--2f059f4c67950b4d343376e9.md) | 31 | `declaration-track:2f059f4c67950b4d343376e985e26118e9dc6dbbed2d9c9d1f4c76f59215aafb` |
| 2 | `def` | [uliftZPowersHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/uliftzpowershom--36274604d00d84bcd6e4d1bc.md) | 36 | `declaration-track:36274604d00d84bcd6e4d1bc0158cead04d2b4a5e1432012c682614b4ec25e73` |
| 3 | `def` | [fromMultiplicativeIntEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/frommultiplicativeintequiv--407e03cd876ee9de227b57d4.md) | 43 | `declaration-track:407e03cd876ee9de227b57d443eab3eac2b7f3e4b999713c0e0fb963c44c130f` |
| 4 | `def` | [fromULiftMultiplicativeIntEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/fromuliftmultiplicativeintequiv--85425a29c650503a6234f301.md) | 48 | `declaration-track:85425a29c650503a6234f301687532ea2332cb6db4a204652832b945256020ef` |
| 5 | `def` | [fromIntEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/fromintequiv--5a75dc4d9ee31a1cc5a91bcf.md) | 58 | `declaration-track:5a75dc4d9ee31a1cc5a91bcf61e119788cfa9003c16096aad711a33ba5ce7f8e` |
| 6 | `def` | [fromULiftIntEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/fromuliftintequiv--7309f974be5a5ee23aa5cdb1.md) | 62 | `declaration-track:7309f974be5a5ee23aa5cdb115d4ac69d080c830a083e5b0418c55188b535a2e` |
| 7 | `def` | [Grp.coyonedaObjIsoForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/grp-coyonedaobjisoforget--8e5f9e8ce09b4969f95b3ed0.md) | 68 | `declaration-track:8e5f9e8ce09b4969f95b3ed0fb7f8e991ebeeb2638d17f221c6e56e4dddba95d` |
| 8 | `def` | [CommGrp.coyonedaObjIsoForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/commgrp-coyonedaobjisoforget--d548d30e12ad135bfbe0cf05.md) | 74 | `declaration-track:d548d30e12ad135bfbe0cf0530929a1cf07d1876e040a1e8058c3f8e810e87f4` |
| 9 | `def` | [AddGrp.coyonedaObjIsoForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/addgrp-coyonedaobjisoforget--3bbe89cbb8cb40bf2a34120f.md) | 80 | `declaration-track:3bbe89cbb8cb40bf2a34120f1ddefa9c9c3bd4c4cc77f6b369f1338f1ff25fa6` |
| 10 | `def` | [AddCommGrp.coyonedaObjIsoForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/addcommgrp-coyonedaobjisoforget--5d8c10341e49449e6a8b9842.md) | 86 | `declaration-track:5d8c10341e49449e6a8b9842eb49a49d1778b4a34bc5a3873dd1251e4443fadb` |
| 11 | `instance` | [Grp.forget_isCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/grp-forget-iscorepresentable--666de3803db0aa8a4fcd4a34.md) | 91 | `declaration-track:666de3803db0aa8a4fcd4a3494935b5b41131df470bc7ef4f5a26ea278bb9a24` |
| 12 | `instance` | [CommGrp.forget_isCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/commgrp-forget-iscorepresentable--8033b5011d3d1aedb853ad41.md) | 95 | `declaration-track:8033b5011d3d1aedb853ad41e7e978ad7cfd866f11b10e1e85780c3236c7ad78` |
| 13 | `instance` | [AddGrp.forget_isCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/addgrp-forget-iscorepresentable--ef972c30161c2d5afb0a6c29.md) | 99 | `declaration-track:ef972c30161c2d5afb0a6c29ae2e8ca4ea3c37fe6c2f29f035b6a33c73d2254d` |
| 14 | `instance` | [AddCommGrp.forget_isCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variant2e54928d454a9c624d5181608a806047c7db25f28509d19d78825385302d7bd4.lean/declarations/addcommgrp-forget-iscorepresentable--bf7dddf76c0f0d5e9f73611c.md) | 103 | `declaration-track:bf7dddf76c0f0d5e9f73611c365d1643383c844186cd64d9a9003201535e15e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
