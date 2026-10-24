# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f27b27c4354f2a520fae672a0aa78f896b4397db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f27b27c4354f2a520fae672a0aa78f896b4397db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiforkEvaluationCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/multiforkevaluationcone--7af843473f7f09a0f1576c22.md) | 67 | `declaration-track:7af843473f7f09a0f1576c221c8b479d95d9098849b237db9532731eda62f570` |
| 2 | `def` | [isLimitMultiforkOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/islimitmultiforkofislimit--20c50bcaf3324e25ae09f5d4.md) | 102 | `declaration-track:20c50bcaf3324e25ae09f5d467df73aebf398b93528a4d64b3c9442c8946290b` |
| 3 | `theorem` | [isSheaf_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/issheaf-of-islimit--f21c77fef812fed4a593c7f3.md) | 140 | `result-track:f21c77fef812fed4a593c7f3e270aab22adef9778aa9730ab6e42fc7e7accd1a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--c4e4e2c059516b52b9a9a2f1.md) | 146 | `declaration-track:c4e4e2c059516b52b9a9a2f1ace3da177f633b9b57a1518c103881cdedabca66` |
| 5 | `instance` | [createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/createslimitsofshape--fe8774d842bb1563a6f4c611.md) | 163 | `declaration-track:fe8774d842bb1563a6f4c611dbd30e783ae650fd163a1110627f21e4a7a87cfd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--39d335f6d043e4179d0572b6.md) | 165 | `declaration-track:39d335f6d043e4179d0572b64cda951d78dcdc8fa9466428663c2aa330771619` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--a054a6d9abfd762f1c2b5906.md) | 168 | `declaration-track:a054a6d9abfd762f1c2b5906660c8efa8da44b18c0e15787a04c09531b86273a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--68056581548276145b10f576.md) | 171 | `declaration-track:68056581548276145b10f57605b61a778f273ffa096f0ea77df7f6b806cdfbda` |
| 9 | `instance` | [createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/createslimits--b028b6fd806c86b621ce5f2b.md) | 176 | `declaration-track:b028b6fd806c86b621ce5f2b73221c401f14e7dac87686f7f5b28759946118c9` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/haslimitsofsize--520f9ce425489c5db5a2a278.md) | 180 | `declaration-track:520f9ce425489c5db5a2a278013a3972afc035a0ad93267ebedac545a09e9f1a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/example--36f70d38c0e802359c5be673.md) | 185 | `declaration-track:36f70d38c0e802359c5be6730d03d46caf3ef124b0d7e2e5ebac2ac4ce0549ba` |
| 12 | `def` | [sheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/sheafifycocone--9cbb5c65c8a03a82f925574a.md) | 198 | `declaration-track:9cbb5c65c8a03a82f925574ab714625ca38e60b80cf0f9c940f983dc47f0fab0` |
| 13 | `def` | [isColimitSheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/iscolimitsheafifycocone--e6ad93ef2461c113ecec27b7.md) | 206 | `declaration-track:e6ad93ef2461c113ecec27b7c9574937418d6cb3be40697ed793fae12e155eb8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--00a6fb4e4503d3801c6d160c.md) | 211 | `declaration-track:00a6fb4e4503d3801c6d160cd3e0e5ecfe1401d07a7f21325256c1284eb7d6c0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--4b02454175d1a1c12f1da96a.md) | 215 | `declaration-track:4b02454175d1a1c12f1da96a95f95ad21e72ea2e05f028018e05adb94a8e1de4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--bf98b2e233243996e6c1592a.md) | 218 | `declaration-track:bf98b2e233243996e6c1592a0c982761db0fd7f034c71ac4033069ffe2c327ea` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/instance--b675f4f8453725a09918a4e4.md) | 221 | `declaration-track:b675f4f8453725a09918a4e4a1dcc7a73902af31c7af34364e64e8d7d3da8d59` |
| 18 | `def` | [createsColimitOfIsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/createscolimitofissheaf--1550afa8876b89acd79ba5d9.md) | 231 | `declaration-track:1550afa8876b89acd79ba5d97dae2c4cd27a068d5b635108edfe6f47568f63a4` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1249b2965c06f697235b943d0eb77adff34735775ff484aea03593192d0d56ed.lean/declarations/example--c0145054f28e3ae594f696e1.md) | 248 | `declaration-track:c0145054f28e3ae594f696e1985e95f06789f33d5c4384fc80031aa956d4eabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
