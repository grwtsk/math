# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unitor.Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeddad89863fc6642d3d541b07693df4432b483",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeddad89863fc6642d3d541b07693df4432b483`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/leftunitor--cd25181b2299a687ac1d9cfc.md) | 23 | `declaration-track:cd25181b2299a687ac1d9cfc525f9d22734344c541efc78099c3c1ec3f4cb36c` |
| 2 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/rightunitor--d6beb05f4babd44016f10e09.md) | 29 | `declaration-track:d6beb05f4babd44016f10e09f0be1996f95d025ad5307332d57c7c4297f244a3` |
| 3 | `def` | [leftInverseUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/leftinverseunitor--64755c36d45b7aa5ed9ab33e.md) | 35 | `declaration-track:64755c36d45b7aa5ed9ab33e060cefab85d0ef91317cf70c0fe647e10e3f053f` |
| 4 | `def` | [rightInverseUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/rightinverseunitor--62893ee9894e1fd07cfafd3e.md) | 41 | `declaration-track:62893ee9894e1fd07cfafd3ecc06b75bd61e962b189ba8bd45e4d5cf2f7872b4` |
| 5 | `def` | [leftUnitorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/leftunitorequivalence--fda0a843a33920a4a070f816.md) | 47 | `declaration-track:fda0a843a33920a4a070f8168942e7d3909b0a2b1124b736d63e425663c67ee2` |
| 6 | `def` | [rightUnitorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/rightunitorequivalence--f8a6b30d02755772449a92b1.md) | 55 | `declaration-track:f8a6b30d02755772449a92b1208c6fd168f1e0cf0fcb96a42964fc817fa223b9` |
| 7 | `instance` | [leftUnitor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/leftunitor-isequivalence--acafc9cc943c07c5cef62e6b.md) | 61 | `declaration-track:acafc9cc943c07c5cef62e6b0112ae4d36395dfc7328c66c80c8cc93b2d74f4b` |
| 8 | `instance` | [rightUnitor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variantccb005ffd14d127ebe439fc21a38a5da0d3c2b8caea14d6aa22f0320976b9f23.lean/declarations/rightunitor-isequivalence--a2114b0bdccc30cd1e3ce76f.md) | 64 | `declaration-track:a2114b0bdccc30cd1e3ce76f9e6841c94d951a8eff9d8350c0af3de1a8a60e23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
