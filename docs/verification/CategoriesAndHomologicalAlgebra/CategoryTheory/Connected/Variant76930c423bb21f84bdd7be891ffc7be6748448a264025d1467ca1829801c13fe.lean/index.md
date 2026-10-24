# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c69eb72152ad5c1b743ead1cd7c8aaaceb6ab384",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c69eb72152ad5c1b743ead1cd7c8aaaceb6ab384`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/constcone--1fc2c1be421c7d76bb5bccf6.md) | 58 | `declaration-track:1fc2c1be421c7d76bb5bccf6258d846b31fde787966e63378371bb4ac1162928` |
| 2 | `def` | [constCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/constcocone--c753032f812a75662b766585.md) | 64 | `declaration-track:c753032f812a75662b7665853d12c798b05bfc45605215a2ff7c8db3a3f17105` |
| 3 | `def` | [isLimitConstCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/islimitconstcone--ed23f457170e79e53cb7080c.md) | 72 | `declaration-track:ed23f457170e79e53cb7080cf8e48f72a9906941b26b81fffa3dc64691f63611` |
| 4 | `def` | [isColimitConstCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/iscolimitconstcocone--aa7bddee8dffe0bfea81d35f.md) | 83 | `declaration-track:aa7bddee8dffe0bfea81d35fe41fc0b0d043dad5ea13a89574c6fdbdf3ac97d2` |
| 5 | `instance` | [hasLimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/haslimit-const-of-isconnected--f0ca5058c55c855570298920.md) | 92 | `declaration-track:f0ca5058c55c855570298920ab8fa5a669c90c8b6b4f485455e34f64d4a07eed` |
| 6 | `instance` | [hasColimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/hascolimit-const-of-isconnected--9d733bcbed2079d5024f902d.md) | 95 | `declaration-track:9d733bcbed2079d5024f902d4a8281a6d5e901f2b469c404cd9a74d449ff7fce` |
| 7 | `def` | [Cone.isLimitOfIsIsoLimMapπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/cone-islimitofisisolimmap--ea7e0a5941e0909f32712d72.md) | 107 | `declaration-track:ea7e0a5941e0909f32712d725318c0d05c7d9754b1137d906ed5d70f0b302993` |
| 8 | `theorem` | [IsLimit.isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/islimit-isiso-limmap--d850a5264192f563f8c8806d.md) | 117 | `result-track:d850a5264192f563f8c8806dc7c61fc869950e0427a93f00a8ebfe7393b1b8d0` |
| 9 | `theorem` | [Cone.isLimit_iff_isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/cone-islimit-iff-isiso-limmap--bc1b92318874a9d80787f7c9.md) | 128 | `result-track:bc1b92318874a9d80787f7c9654640bcc88228eed6908689baadad7e3e043150` |
| 10 | `def` | [Cocone.isColimitOfIsIsoColimMapι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/cocone-iscolimitofisisocolimmap--d180121a84f0740b756cc9fb.md) | 135 | `declaration-track:d180121a84f0740b756cc9fb46bfee3021bf72ebe38b41af992bb4246518f24c` |
| 11 | `theorem` | [IsColimit.isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/iscolimit-isiso-colimmap--1434a7ffb9e3efd3000633ad.md) | 140 | `result-track:1434a7ffb9e3efd3000633adeea2513e138c9378eb8f49dc395d3bafd1473c90` |
| 12 | `theorem` | [Cocone.isColimit_iff_isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/cocone-iscolimit-iff-isiso-colimmap--5c07c28bdc9dd3882d4e3866.md) | 151 | `result-track:5c07c28bdc9dd3882d4e38663e100fd77f69b5f9e909918105682185ffa0160e` |
| 13 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/widepullbackshape-connected--1ba048a7a8f4b3baf91c93ed.md) | 163 | `declaration-track:1ba048a7a8f4b3baf91c93ed582e3602bbdd3f7c8a81f8b423e3ee2e0a898872` |
| 14 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/widepushoutshape-connected--ce2bab736e24c37c230cbb81.md) | 170 | `declaration-track:ce2bab736e24c37c230cbb81982fa2de14015cd701d5815a62fcdc0d03b0916a` |
| 15 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/parallelpairinhabited--6ae5d17e70487c9c64d663ac.md) | 177 | `declaration-track:6ae5d17e70487c9c64d663ac9f55a8df5fcb4e12bde52e513b6b29949c5c2286` |
| 16 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/parallel-pair-connected--6e05eb63a9e2d5aa0cd5af92.md) | 180 | `declaration-track:6e05eb63a9e2d5aa0cd5af92ab899e793d1fab41237c2c7ac289239b422f6340` |
| 17 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/anonymous--ba54a45b923ef7b1546d6fb9.md) | 197 | `declaration-track:ba54a45b923ef7b1546d6fb97f83800573606966feb63e3784ae0ee5c17b8381` |
| 18 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/anonymous--446a9599d5a0042e61603777.md) | 201 | `declaration-track:446a9599d5a0042e616037775fd4a49d49ac5e23ea8c38bcccac568d56bc5858` |
| 19 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/forgetcone--076d0c881f1659522a7dbb75.md) | 207 | `declaration-track:076d0c881f1659522a7dbb75ead7f44c8f2f6ee632c11197175f6d95ddc8a5f1` |
| 20 | `lemma` | [prod_preservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/declarations/prod-preservesconnectedlimits--0b9e60b8cacee0c8c5aa91c1.md) | 220 | `result-track:0b9e60b8cacee0c8c5aa91c125e1f1475c4980ef19c6cf6b87f6cb278331cf63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
