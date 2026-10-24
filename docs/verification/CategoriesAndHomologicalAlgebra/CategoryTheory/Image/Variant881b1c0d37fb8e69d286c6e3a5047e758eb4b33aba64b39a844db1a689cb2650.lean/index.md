# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46887ee78b364428b1ffb72a7eeffa9ba6d01aa",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46887ee78b364428b1ffb72a7eeffa9ba6d01aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range--dd656507bde435f00b1c95bd.md) | 32 | `declaration-track:dd656507bde435f00b1c95bd15ba8c291f644152261ff5cdb0d73f109c22da26` |
| 2 | `lemma` | [range_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range-id--aee982dc7dc5ff1cb4e83509.md) | 39 | `result-track:aee982dc7dc5ff1cb4e8350919d6eb01fac52b4a2e7362e6f0cc8c9db04ca576` |
| 3 | `lemma` | [range_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range--ddc730a9988371f4993f24e9.md) | 42 | `result-track:ddc730a9988371f4993f24e989faaef8fa7ae893bb6fb9c5eb19e4c115e154a6` |
| 4 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/lift--a0064c4f0f8eed6dc31e717e.md) | 52 | `declaration-track:a0064c4f0f8eed6dc31e717eaa7051ab93e3153cf72fac4df5779a08b2f625a5` |
| 5 | `theorem` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/lift--9f0348f5a9789c9a13c10a9a.md) | 59 | `result-track:9f0348f5a9789c9a13c10a9ae8a476a952d563cba16d0635c0adc4a253312e78` |
| 6 | `def` | [toRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/torange--d63f08af3d08a3fdde93d907.md) | 69 | `declaration-track:d63f08af3d08a3fdde93d907ca6a50a8cc8e19e5a40bac3f672528019df6779f` |
| 7 | `lemma` | [toRange_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/torange--636a9cb6313945428cd454b1.md) | 74 | `result-track:636a9cb6313945428cd454b103ae083ace86a367d6b07d3456bcca50064058b2` |
| 8 | `lemma` | [toRange_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/torange-app-val--0d4ad155fdd0cea733413d97.md) | 76 | `result-track:0d4ad155fdd0cea733413d97095cc3d32f7cc04789500770dd9e8cc8404bede9` |
| 9 | `lemma` | [range_toRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range-torange--4e9d1f2bd5d47309ddab77f6.md) | 81 | `result-track:4e9d1f2bd5d47309ddab77f6ab3b5f7a3661d5eb600c7616ddcc3d4ded24f849` |
| 10 | `lemma` | [epi_iff_range_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/epi-iff-range-eq-top--f357f65fc20fa8fe98659352.md) | 89 | `result-track:f357f65fc20fa8fe98659352df9bf5b5f9c95d5a05489c1f4692727a1e688c40` |
| 11 | `lemma` | [range_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range-eq-top--e1991630b50739af92ead0b5.md) | 94 | `result-track:e1991630b50739af92ead0b509bdcda2ff4c37b0530c413cd15991658febd9f7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/instance--06bbb8d54cc891fe0517d485.md) | 96 | `declaration-track:06bbb8d54cc891fe0517d48548dae9179c6f8d9580381bad63e0ca708b0d010b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/instance--5d7b3cc934f9a3707f492381.md) | 98 | `declaration-track:5d7b3cc934f9a3707f492381d3f24b17a925c5e92d21599822b07e284da703a6` |
| 14 | `lemma` | [range_comp_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range-comp-le--26f74849aa21ee8a20c0257f.md) | 109 | `result-track:26f74849aa21ee8a20c0257ff37601f954c4bd9247cd0556b4a02cf997a588e9` |
| 15 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/image--f5d7180a6ce5a5dba6012a3b.md) | 120 | `declaration-track:f5d7180a6ce5a5dba6012a3b7f9463f7c21eef69ac4f30d8ac416ad0e19bc87a` |
| 16 | `lemma` | [image_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/image-top--21338124962cf9f8e4ea7b1d.md) | 126 | `result-track:21338124962cf9f8e4ea7b1d0d0e06b0145af4b61e6dc3be022b7423288b6f6b` |
| 17 | `lemma` | [image_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/image-isup--9186feda3574aff5078c0b6c.md) | 129 | `result-track:9186feda3574aff5078c0b6c3ef559b46a67e379ab70547216e4335fbfead975` |
| 18 | `lemma` | [image_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/image-comp--4556977e29a8b81424702979.md) | 132 | `result-track:4556977e29a8b81424702979b802c3d20718d415c1f3844b33a7868e391b484c` |
| 19 | `lemma` | [range_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/range-comp--97ce07a366ae0bd57411dd3b.md) | 135 | `result-track:97ce07a366ae0bd57411dd3be0d8fbfb8f4d4b6c7e42699b576f8a48e1c2c252` |
| 20 | `def` | [preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/preimage--6fd49e438d77669259193f9e.md) | 144 | `declaration-track:6fd49e438d77669259193f9e1c739a4f94a9974cb7747c38994da08af8041f75` |
| 21 | `lemma` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/preimage-id--6af2a9cdad694d9b3ec958e6.md) | 151 | `result-track:6af2a9cdad694d9b3ec958e6636ae2076edd6f3de8d1b3b8950853232fae0c2f` |
| 22 | `lemma` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/preimage-comp--6c580e873ff8af1baf821d16.md) | 154 | `result-track:6c580e873ff8af1baf821d169f1edbb5ad385ec65c0e3c9a6ce4e2395251ba39` |
| 23 | `lemma` | [image_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/image-le-iff--b220fba2a546a2e9a5e93906.md) | 157 | `result-track:b220fba2a546a2e9a5e9390685e79397d5bb3c3ae7841a03ebbac3ff463059be` |
| 24 | `def` | [fromPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/frompreimage--5d0f2a9b3a465e717eac55ed.md) | 163 | `declaration-track:5d0f2a9b3a465e717eac55edbaddff7557be3b899734669c2ec35fd87d67e7ea` |
| 25 | `lemma` | [fromPreimage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/frompreimage--8494ff692f0c30d38d32825a.md) | 169 | `result-track:8494ff692f0c30d38d32825a25dcc9268be808c64797cd305318753c265e758f` |
| 26 | `lemma` | [preimage_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/preimage-eq-top-iff--16d99adf2f726739ee563be8.md) | 172 | `result-track:16d99adf2f726739ee563be82c69506c1a49d69c813675e5cee6f3f24a871b1c` |
| 27 | `lemma` | [preimage_image_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variant881b1c0d37fb8e69d286c6e3a5047e758eb4b33aba64b39a844db1a689cb2650.lean/declarations/preimage-image-of-epi--8d10c1fdfeaafa7d7c693835.md) | 178 | `result-track:8d10c1fdfeaafa7d7c693835855ea1003018bbc50bba3d030f8d46da067f3ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
