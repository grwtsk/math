# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInvertedBy.Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e68e6813a7da16b07fa6c424812e5a9f6405c318",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e68e6813a7da16b07fa6c424812e5a9f6405c318`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby--2d6ed7b7f7b93d26490552c9.md) | 31 | `declaration-track:2d6ed7b7f7b93d26490552c9f6d42b2883858055b3e0425a47b0edc1fcc5c85a` |
| 2 | `lemma` | [of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/of-le--1749ea3eb453c1ce3f479e36.md) | 36 | `result-track:1749ea3eb453c1ce3f479e36461db74da0fe45a1bf23924f5643fe2139ff9af6` |
| 3 | `theorem` | [of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/of-comp--49558e322824e9b1b18e2f28.md) | 40 | `result-track:49558e322824e9b1b18e2f287754af035e9e49db6d8bf090a9d41da490a55438` |
| 4 | `theorem` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/op--f65341a84d35bdf05e04fe42.md) | 47 | `result-track:f65341a84d35bdf05e04fe42a8971c55961514c971435a6c16a8739e784595b9` |
| 5 | `theorem` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/rightop--2d8c448c9abcaec8bd572512.md) | 53 | `result-track:2d8c448c9abcaec8bd5725121bbd73cdf3b601fee8c333bf557fa2199446da5e` |
| 6 | `theorem` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/leftop--c18abc745d5560596157265a.md) | 59 | `result-track:c18abc745d5560596157265ad0731981a72c8f24bbfd4b03e55a29f0a62eabe0` |
| 7 | `theorem` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/unop--a711214de1f7e8cecea833fb.md) | 65 | `result-track:a711214de1f7e8cecea833fb381a59802d4f2723de5d90556301134fb898bcc0` |
| 8 | `lemma` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/prod--ba3228efda8fffeee8c18cc1.md) | 71 | `result-track:ba3228efda8fffeee8c18cc17ad38c13c5a0c5d3de83c6531b31b1dbd640704c` |
| 9 | `lemma` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/pi--2f54f1f90ed9e83c5801e864.md) | 79 | `result-track:2f54f1f90ed9e83c5801e864be768e08c34ba5737edf64c7976442b6fb2ac48a` |
| 10 | `def` | [FunctorsInverting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/functorsinverting--d400ab62c2b29f8b6aeb2a56.md) | 92 | `declaration-track:d400ab62c2b29f8b6aeb2a569d1da28699fd8fc0b7cbb526217211ff59539f9a` |
| 11 | `lemma` | [FunctorsInverting.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/functorsinverting-ext--f987368b8b8a49840fbe4a95.md) | 96 | `result-track:f987368b8b8a49840fbe4a95007f8ee7e20477ce8c9c49b65c9847c3b8db34d3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/instance--cfaf56dee7502f2f868b58d7.md) | 103 | `declaration-track:cfaf56dee7502f2f868b58d74e445d45f7fad79b3f3c0bf2371e4232a4ee8076` |
| 13 | `lemma` | [FunctorsInverting.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/functorsinverting-hom-ext--29eb9a5a4c34d60f886f4bdf.md) | 107 | `result-track:29eb9a5a4c34d60f886f4bdf0956c6fbfb6affd8a658ef70c467fefdecda1959` |
| 14 | `def` | [FunctorsInverting.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/functorsinverting-mk--7b2b2ccc85bc3b603cd123d7.md) | 112 | `declaration-track:7b2b2ccc85bc3b603cd123d777accdcef3e4f2f733c665e95c28c5d7e1846ec5` |
| 15 | `theorem` | [IsInvertedBy.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-iff-of-iso--25fec8f898907286dfded742.md) | 116 | `result-track:25fec8f898907286dfded742ffd51ca7aa61386fbc898c1d00b94df689d3464e` |
| 16 | `lemma` | [IsInvertedBy.isoClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-isoclosure-iff--7b691ff8865a32623f00819e.md) | 122 | `result-track:7b691ff8865a32623f00819ea385b57ee1a3273e09f200fee04ad2490e943394` |
| 17 | `lemma` | [IsInvertedBy.iff_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-iff-comp--550e3f54c6de4a432f61bd37.md) | 133 | `result-track:550e3f54c6de4a432f61bd37344b786647fe5ddeaf95c05be0689c9314f1589a` |
| 18 | `lemma` | [IsInvertedBy.iff_le_inverseImage_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-iff-le-inverseimage-isomorphisms--0ed37279f65fb6e5264497a0.md) | 143 | `result-track:0ed37279f65fb6e5264497a01296f22d9fae22ba4807f03e7b4068af1651217e` |
| 19 | `lemma` | [IsInvertedBy.iff_map_le_isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-iff-map-le-isomorphisms--88bb3fc639f3d8d3dbbd5e77.md) | 146 | `result-track:88bb3fc639f3d8d3dbbd5e779484e4df37c60fb2b4a1d0bcc1e577855cbd5e87` |
| 20 | `lemma` | [IsInvertedBy.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean/declarations/isinvertedby-map-iff--713d22027c814e00f2f5830f.md) | 150 | `result-track:713d22027c814e00f2f5830f7518684a55d4b1a090055fe5008180cd0a76dfab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
