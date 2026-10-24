# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fbc679a19e01e4ac9213dbce295304ad6a0ab97",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fbc679a19e01e4ac9213dbce295304ad6a0ab97`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiforkEvaluationCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/multiforkevaluationcone--e27a7d4ff1e96c507d1121a8.md) | 59 | `declaration-track:e27a7d4ff1e96c507d1121a8e22c0ed214ecf2f6034a935fecbc2544cfe12af7` |
| 2 | `def` | [isLimitMultiforkOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/islimitmultiforkofislimit--98ba185051e2cb3633684f85.md) | 94 | `declaration-track:98ba185051e2cb3633684f8594a3eb93f42df386e7d0c519db23c5a3feff1547` |
| 3 | `theorem` | [isSheaf_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/issheaf-of-islimit--c293c6448ebbd872ed7057e7.md) | 132 | `result-track:c293c6448ebbd872ed7057e7bd72c496c2759cb934d53f6aa793d6aa5ce5e3b6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--261a2be49eb9756c4639d73f.md) | 138 | `declaration-track:261a2be49eb9756c4639d73f13064a4b2dee0d4c2dd582dd906d09cde3b70e8d` |
| 5 | `instance` | [createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/createslimitsofshape--9bc6718afb5888eec26be37b.md) | 155 | `declaration-track:9bc6718afb5888eec26be37b8059de9b403a17e365d70b2d1e6543555e02d89b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--f0a33c21839f38f7b831e512.md) | 157 | `declaration-track:f0a33c21839f38f7b831e5122257fac403253144ad4fb99361e9a717aee12ef8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--efd08b35a42692c403e7cd88.md) | 160 | `declaration-track:efd08b35a42692c403e7cd880749d680252f8489aa692eb8fe362f4a7ea275cc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--4d20820bd5e0dd9600c0f0d2.md) | 163 | `declaration-track:4d20820bd5e0dd9600c0f0d2f4fe3e1da61a7da52cb58cd04a4cf10e68e3025d` |
| 9 | `instance` | [createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/createslimits--3fcda4f64a6cec84ed02927d.md) | 168 | `declaration-track:3fcda4f64a6cec84ed02927dc3d36cba0329f20ebf1f427a6b134b5f3805c6cf` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/haslimitsofsize--4edb906631e013419804158a.md) | 172 | `declaration-track:4edb906631e013419804158a12c298d6c547a010cd13a0884c1aed33d0a648bf` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/example--1844c2058cb59d9d7c765549.md) | 177 | `declaration-track:1844c2058cb59d9d7c7655493664394aaa7ca4b80f09a48f22bd77e0b4798a94` |
| 12 | `def` | [sheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/sheafifycocone--faea14deef2dd3845fac60b9.md) | 190 | `declaration-track:faea14deef2dd3845fac60b9bf0c78216cad73cc1f6e8e85a13293248b2ab612` |
| 13 | `def` | [isColimitSheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/iscolimitsheafifycocone--9ee2ba45aa8c7eb1cf4c2640.md) | 198 | `declaration-track:9ee2ba45aa8c7eb1cf4c26409fa50caceb66cea2c3ad9828370691994c7fcc9b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--d059d19a4a5c60d600aec196.md) | 203 | `declaration-track:d059d19a4a5c60d600aec1969871cf30370de0e35f6a44b0ab3f1a9223c9aa8a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--a7f0a00a3f32caf1a857c571.md) | 207 | `declaration-track:a7f0a00a3f32caf1a857c571d8ded7ef262dc2230f573c2611b8a504d2cc2db5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--053a36bd5870caefbdaf027d.md) | 210 | `declaration-track:053a36bd5870caefbdaf027de2daa4d1e4af38634a7f092984b78f14ea6e8397` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/instance--31f7a2a886fd117cfb31a890.md) | 213 | `declaration-track:31f7a2a886fd117cfb31a890c21429c668ce6e18dfa35c63c1e34534d0ed7276` |
| 18 | `def` | [createsColimitOfIsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/createscolimitofissheaf--b46a2a972a4dccb76bfbed36.md) | 223 | `declaration-track:b46a2a972a4dccb76bfbed361392a8d2f3c7cb0bbaa4c9da705af6efc82840f2` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4295217b66869eeaa0d98426e345ff4a18938938282d81f26063e39b2ba6db8d.lean/declarations/example--97e92b8d6376de068415bc7e.md) | 240 | `declaration-track:97e92b8d6376de068415bc7ec57cc0306a1b8a30bdedc645d6998e67dd018f43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
