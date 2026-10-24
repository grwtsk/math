# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GradedObject.Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd16074bb345157d4056e051b076cc1923f5dc6b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd16074bb345157d4056e051b076cc1923f5dc6b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/gradedobject--c55f695280fa2ee8124b5c16.md) | 40 | `declaration-track:c55f695280fa2ee8124b5c16f9bd03bc084d87f8a8a270d6af6e057b20d2aa2b` |
| 2 | `instance` | [inhabitedGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/inhabitedgradedobject--c923a912a3606043b26d20f5.md) | 45 | `declaration-track:c923a912a3606043b26d20f5bf73589bdff1ca281dd768e0adda3b6635011296` |
| 3 | `abbrev` | [GradedObjectWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/gradedobjectwithshift--c83079100bfbb58dd8c9dcd3.md) | 55 | `declaration-track:c83079100bfbb58dd8c9dcd316b3f8ba19e6259b55b83ff751d3618eddf03491` |
| 4 | `instance` | [categoryOfGradedObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/categoryofgradedobjects--f64d7bac7b7635a7db2cde00.md) | 64 | `declaration-track:f64d7bac7b7635a7db2cde00b60ad0d87b4030a0dda9427f754f34a7917a79e6` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/hom-ext--658b76a9f96d2c78cf5ecf01.md) | 70 | `result-track:658b76a9f96d2c78cf5ecf01ad9f6028dc99810adfb475312e8d44dc00974099` |
| 6 | `def` | [eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/eval--01973353c494270acd327272.md) | 76 | `declaration-track:01973353c494270acd327272ef2484d59bade0f36ad136d498e3f3592df80df1` |
| 7 | `abbrev` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/comap--8bb86e98a13466e64d5cfcad.md) | 87 | `declaration-track:8bb86e98a13466e64d5cfcad2a3208f3f3a1e7d73843bf62d36fc91273e25800` |
| 8 | `theorem` | [eqToHom_proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/eqtohom-proj--094cbf055f86445da3196832.md) | 92 | `result-track:094cbf055f86445da3196832aa46c79faf1c0d7db889eb31fe0469718596a384` |
| 9 | `def` | [comapEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/comapeq--b716292783de05080c4d8b18.md) | 101 | `declaration-track:b716292783de05080c4d8b188d6497fc57c19b958e7d50752b4827cfe907b178` |
| 10 | `theorem` | [comapEq_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/comapeq-symm--87b6c5cb3528dce788ceefc9.md) | 106 | `result-track:87b6c5cb3528dce788ceefc95a119b92ddf296b92c676c080087fa886521e012` |
| 11 | `theorem` | [comapEq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/comapeq-trans--f5ff9071d8829a8ffa85b59e.md) | 110 | `result-track:f5ff9071d8829a8ffa85b59ee9dc94cbc1ad0de7cfafaebb413c8c3d8d654e60` |
| 12 | `theorem` | [eqToHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/eqtohom-apply--4ec079cc134771c7bc863494.md) | 115 | `result-track:4ec079cc134771c7bc8634947191bd2ebb1a78378e4f0d4de1ac559f3a61c157` |
| 13 | `def` | [comapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/comapequiv--b507fc4bb64f34dbfada1a4f.md) | 125 | `declaration-track:b507fc4bb64f34dbfada1a4f2b1e35fcf189154d54a5115a16604257fa16dd98` |
| 14 | `instance` | [hasShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/hasshift--19a4d9340b8e7c591d349262.md) | 137 | `declaration-track:19a4d9340b8e7c591d3492625fd2725d413d2fd595cdb6c99e4821956b08af27` |
| 15 | `theorem` | [shiftFunctor_obj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/shiftfunctor-obj-apply--4744da8d88a3916cd256b0e6.md) | 146 | `result-track:4744da8d88a3916cd256b0e659ec11295bf582acace82660c3957b2b01f97b40` |
| 16 | `theorem` | [shiftFunctor_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/shiftfunctor-map-apply--a40331cdad8408c347023471.md) | 152 | `result-track:a40331cdad8408c3470234710159bda001d69117987d80e599ebf04723305c96` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/instance--75b51c0a5b2c328454ab83c1.md) | 158 | `declaration-track:75b51c0a5b2c328454ab83c1ae6d9eff8e1995ab51c5f77b2f6f39df172aaf65` |
| 18 | `theorem` | [zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/zero-apply--b972b74639cf26f3154cfae8.md) | 162 | `result-track:b972b74639cf26f3154cfae87aa2559cc1a5a2ab5e6310866c458daf6e203f64` |
| 19 | `instance` | [hasZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/haszeromorphisms--d1d78c96acb98c7337d1c031.md) | 167 | `declaration-track:d1d78c96acb98c7337d1c031d5a9fff48c8ecadeefc7ac062d2d652ee293c1b1` |
| 20 | `instance` | [hasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/haszeroobject--3dc9bab8cc38c923c3bee0df.md) | 175 | `declaration-track:3dc9bab8cc38c923c3bee0dfc5e6f7cc669dd0e60fca1502c290b0048fd04dfe` |
| 21 | `def` | [total](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/total--d7cdfc44e9495e2ec5c87502.md) | 200 | `declaration-track:d7cdfc44e9495e2ec5c875024eab4fe842fdf3be66ee2993caaa3094ce9664de` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/instance--24f79d5257dc5770a19d23d7.md) | 214 | `declaration-track:24f79d5257dc5770a19d23d7d16ca4761af83f882abed5c9c74d06a1fc0baf14` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/instance--ac9382328f4edba59bba2e39.md) | 233 | `declaration-track:ac9382328f4edba59bba2e396bb48eda62d15915fdd9c424518899f347ffe7e7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantf300f211c0e87405f1c26db32972430c5ddc66b6aa7b544ff5ea4dc6840830b0.lean/declarations/instance--e2929310d2422083f4c63dcb.md) | 235 | `declaration-track:e2929310d2422083f4c63dcb93402c8fbe2dd552ec8350c22c122b0b2b8c201a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
