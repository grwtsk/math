# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4b292453a51362ed76723606f50b366e8971b5d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4b292453a51362ed76723606f50b366e8971b5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range--90b3d0d4846ae4bf51008435.md) | 40 | `declaration-track:90b3d0d4846ae4bf51008435747f07fe4419253a4e51051d30324577ef5dd9b0` |
| 2 | `lemma` | [range_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range-id--ad4bf01c9a5b7f193cda09d3.md) | 47 | `result-track:ad4bf01c9a5b7f193cda09d3cb9a63be8b7c7918169daf0bff64be363bd92b60` |
| 3 | `lemma` | [range_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range--be08245506cfc47ee04e6a69.md) | 50 | `result-track:be08245506cfc47ee04e6a69dbdf5b8fc04c02debab73cdd5809b6690dc91e92` |
| 4 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/lift--328d9747aef298f16827422d.md) | 60 | `declaration-track:328d9747aef298f16827422db4de589871ec5c01f0feb4781e089281d423fe3d` |
| 5 | `theorem` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/lift--e49a31cdcc3f3b6562fc7604.md) | 67 | `result-track:e49a31cdcc3f3b6562fc7604cc7ea744c5ef34227f6bdd8c9bb79746131eb35f` |
| 6 | `def` | [toRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/torange--cfa084d32e40fbd157e760df.md) | 77 | `declaration-track:cfa084d32e40fbd157e760df6ea76cb1d436918c4d44abbf21b3578e11262804` |
| 7 | `lemma` | [toRange_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/torange--9c60d5972299067c64664fe8.md) | 82 | `result-track:9c60d5972299067c64664fe8c823f1028e53e7e8c1342e05df1da4c319d6fb4a` |
| 8 | `lemma` | [toRange_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/torange-app-val--d2c89966563af280a678a807.md) | 84 | `result-track:d2c89966563af280a678a8077fbad9995a9a43b6edb7395ad18ab951223cc1a0` |
| 9 | `lemma` | [range_toRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range-torange--2603386e0aa65d078da51634.md) | 89 | `result-track:2603386e0aa65d078da51634d7e4d91c9c609401bb3bc220e3a0c5ecca348996` |
| 10 | `lemma` | [epi_iff_range_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/epi-iff-range-eq-top--d0346a28d7ff37e4c7ffefa2.md) | 97 | `result-track:d0346a28d7ff37e4c7ffefa226b9dafcdb31baed4e5b20b333e5a486afec6bb1` |
| 11 | `lemma` | [range_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range-eq-top--0a13ec6a2df413432875e255.md) | 102 | `result-track:0a13ec6a2df413432875e2550fbd3768fbb65e9645c3c80b3bf333fc3f99aab0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/instance--6793986e269efc6d400bad11.md) | 104 | `declaration-track:6793986e269efc6d400bad11f9468acc6adcb4c1a9661ee7bfc186e5a68153ef` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/instance--f8aa7ad2c6d5a4e93acb5618.md) | 106 | `declaration-track:f8aa7ad2c6d5a4e93acb56180af57f8d2778ff587c7c452a5c63bef87b3a6a08` |
| 14 | `lemma` | [range_comp_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range-comp-le--bba4ddf3df1ee575e97516a1.md) | 117 | `result-track:bba4ddf3df1ee575e97516a11bac10ccd1a6868144c4ff4647c41214f4634ce4` |
| 15 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/image--0482e60969684dcbcadf6d80.md) | 128 | `declaration-track:0482e60969684dcbcadf6d8090b0b01e348efceb1b6304747d73710fbc21f32d` |
| 16 | `lemma` | [image_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/image-top--dc79deae679044f5570743d3.md) | 134 | `result-track:dc79deae679044f5570743d36a9ff03fb94c3800a0ffb097da950cf6a7eb50a5` |
| 17 | `lemma` | [image_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/image-isup--7cd964a1a6d50f8129c1eacb.md) | 137 | `result-track:7cd964a1a6d50f8129c1eacb589efd99f5aae3a5b53b98cd8382eab123136b3d` |
| 18 | `lemma` | [image_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/image-comp--63dc43bad0b926199fe87990.md) | 140 | `result-track:63dc43bad0b926199fe87990a92c66dbe2e8937bb399f3166d6b9f3f07651117` |
| 19 | `lemma` | [range_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/range-comp--2924b1658f95dd2d27e2f2f5.md) | 143 | `result-track:2924b1658f95dd2d27e2f2f5e65a523c1c6dd823b00d18351023fe1b440f1716` |
| 20 | `def` | [preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/preimage--c47e7d3be394728a9e3cf1f5.md) | 152 | `declaration-track:c47e7d3be394728a9e3cf1f56fd8d1143b3909e21ffd104c04611165c8b0162a` |
| 21 | `lemma` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/preimage-id--f42bd2909bbd0c5aa2e9fddf.md) | 159 | `result-track:f42bd2909bbd0c5aa2e9fddf0648860350c95f22f63518291a0e4fbb44730efe` |
| 22 | `lemma` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/preimage-comp--ea3dc8e9d034246f9ea82de1.md) | 162 | `result-track:ea3dc8e9d034246f9ea82de12eca42498960bd7871dfa1b67e3fe04de299e97d` |
| 23 | `lemma` | [image_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/image-le-iff--1286ec61cba860a279e2e624.md) | 165 | `result-track:1286ec61cba860a279e2e6246aa574f6d2e7ec33d78c5a35e40bb81c4dabfc77` |
| 24 | `def` | [fromPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/frompreimage--27e4d3def631fb0ed448c82a.md) | 171 | `declaration-track:27e4d3def631fb0ed448c82a197cd97f3d0cbff9c8a6b39cee9e7b303572733e` |
| 25 | `lemma` | [fromPreimage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/frompreimage--d52d22615abc942ed9fb9728.md) | 177 | `result-track:d52d22615abc942ed9fb9728170bac2f7cd32ecb79da1c5b61da011bcfd64170` |
| 26 | `lemma` | [preimage_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/preimage-eq-top-iff--6219f9422fe4fc35cb966986.md) | 180 | `result-track:6219f9422fe4fc35cb966986ce88daca67061c390452b489cd8d8ec74984421c` |
| 27 | `lemma` | [preimage_image_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Image/Variantb8d8cefb76e0b8c277e6dfacc4e397c05cff9851d9ab6d7dd97c454aa245e732.lean/declarations/preimage-image-of-epi--2f6953d56f614ba0cf500493.md) | 186 | `result-track:2f6953d56f614ba0cf500493b872078158e8e08f725341e6a6131b592d0f714e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
