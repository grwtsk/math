# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a6dc6b98d498616f71e2caf9081512506724ca9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a6dc6b98d498616f71e2caf9081512506724ca9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnivLE.ofEssSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/univle-ofesssurj--2bdf934230378b60838c2c9f.md) | 30 | `result-track:2bdf934230378b60838c2c9fc4829e5921845b22f3ebde15f8804149884a678e` |
| 2 | `instance` | [EssSurj.ofUnivLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/esssurj-ofunivle--4cfde80cf008e46af83de4bd.md) | 36 | `declaration-track:4cfde80cf008e46af83de4bd534ceb33d5c3f19c8f77fae9a5466e85ce9aefee` |
| 3 | `theorem` | [UnivLE_iff_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/univle-iff-esssurj--d1e8593cdb11fb34893bcc07.md) | 41 | `result-track:d1e8593cdb11fb34893bcc07b58dad149b781b89208c0cd85a6e0fcb34f3e43c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/instance--c9120d611d3144861204c37c.md) | 45 | `declaration-track:c9120d611d3144861204c37ccf4d56712c8f9cbf8a2830e64b14a1519aaaa26d` |
| 5 | `def` | [UnivLE.witness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/univle-witness--5597da7c246e00e4fa40521a.md) | 47 | `declaration-track:5597da7c246e00e4fa40521a4414e2f48611fd6fb4340a255e3c533cd5f922c2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/instance--9990a178b32aeb39d4193069.md) | 50 | `declaration-track:9990a178b32aeb39d41930695d6dcc1574edfd5edb66ccbe9d54588cf30b7f7d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8.lean/declarations/instance--8eb34a83d110dc9f0ece9b92.md) | 53 | `declaration-track:8eb34a83d110dc9f0ece9b92d00de05a6b2ed0fae57773809cf965a641616abf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
