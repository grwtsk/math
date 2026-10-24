# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b400a8bf2f34462a029b67732f9d12fdccaf3719",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b400a8bf2f34462a029b67732f9d12fdccaf3719`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/evaluationjointlyreflectscolimits--2f0ae2db7ba20b2df486656e.md) | 33 | `declaration-track:2f0ae2db7ba20b2df486656efc906c72a5aafc72dbf2ab53da96fc0f46fffc99` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/instance--d1a9a60396d3797991d66b52.md) | 56 | `declaration-track:d1a9a60396d3797991d66b523fd33c7737fa2cf22c27150620b97a3f7ab57d67` |
| 3 | `def` | [colimitPresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/colimitpresheafofmodules--1ba43b18eae8c4774143e400.md) | 64 | `declaration-track:1ba43b18eae8c4774143e400de47817b999745e4c88070dcc83d88455ed4ef6b` |
| 4 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/colimitcocone--70ca46bb2c85ab19c5462374.md) | 91 | `declaration-track:70ca46bb2c85ab19c546237439ba471a10700b66e084da204862edfb3dec12c8` |
| 5 | `def` | [isColimitColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/iscolimitcolimitcocone--0a7550ac96a827f9421b6869.md) | 105 | `declaration-track:0a7550ac96a827f9421b68694c6d9d74d26ce6a6beecdbded4ff753e771293a4` |
| 6 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/hascolimit--59cc3b42f35971a8c4e4e469.md) | 108 | `declaration-track:59cc3b42f35971a8c4e4e469277489ba2bc04c94806cdef709be2797101990e7` |
| 7 | `instance` | [evaluation_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/evaluation-preservescolimit--3dc8c9524a5e24aa1dc1b4ca.md) | 110 | `declaration-track:3dc8c9524a5e24aa1dc1b4cab26dbdbace66b6753ea02a95b0dcff39b5c93d31` |
| 8 | `instance` | [toPresheaf_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/topresheaf-preservescolimit--8ccc9f923a402baaa2780c55.md) | 117 | `declaration-track:8ccc9f923a402baaa2780c55e060321fc2bbcdbb4d3e749265df4e8fe98d50c9` |
| 9 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/hascolimitsofshape--12970201d576e5803c83c730.md) | 132 | `declaration-track:12970201d576e5803c83c73079eba0a1f3b1856467e3d299983e48dbafde3a09` |
| 10 | `instance` | [evaluation_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/evaluation-preservescolimitsofshape--393dbdc7f5a8c59e46b89f71.md) | 134 | `declaration-track:393dbdc7f5a8c59e46b89f71828f25d1de8b9613d32bc5adb5f64d13593f23f5` |
| 11 | `instance` | [toPresheaf_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/topresheaf-preservescolimitsofshape--564e69e0bb4a6c96937efb28.md) | 137 | `declaration-track:564e69e0bb4a6c96937efb28cb3aba7f9c12cc18fce30a574f2ce543db67594e` |
| 12 | `instance` | [hasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/hasfinitecolimits--cc435c25f5a86ef541d5160b.md) | 144 | `declaration-track:cc435c25f5a86ef541d5160baa828039fe34631b1d1583a9db12848fba089269` |
| 13 | `instance` | [evaluation_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/evaluation-preservesfinitecolimits--5fcb82a88287ca9c794823c2.md) | 147 | `declaration-track:5fcb82a88287ca9c794823c2c73b739a6f6e2d4d0f98001d0f9acfa11ffcb240` |
| 14 | `instance` | [toPresheaf_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a50befcba1bd67724e5f6308360fb67d35779dab425a7096c66e23085e13913.lean/declarations/topresheaf-preservesfinitecolimits--d54178b255162c3e0a442e9e.md) | 150 | `declaration-track:d54178b255162c3e0a442e9e536fcc2ede80a77e8faf30ed184f18e9b0997d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
