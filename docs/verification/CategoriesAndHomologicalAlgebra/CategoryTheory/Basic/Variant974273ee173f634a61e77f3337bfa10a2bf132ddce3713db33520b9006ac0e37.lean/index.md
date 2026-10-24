# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b555cd0314c3bc45846307e61d8f2a2f45baf4f1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b555cd0314c3bc45846307e61d8f2a2f45baf4f1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalmono--92f0cb4dca56a6081cae1643.md) | 51 | `declaration-track:92f0cb4dca56a6081cae16433c8228d5b73830f45f6dea630c4e8fefed85609b` |
| 2 | `def` | [equivalenceReflectsNormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/equivalencereflectsnormalmono--ea37816390477f705d299eae.md) | 62 | `declaration-track:ea37816390477f705d299eae118bb3e3fc628046fa07aa5a2e046b3c8eaa7b3b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/instance--5fb1f2fbc9f1c1a24f9acaca.md) | 79 | `declaration-track:5fb1f2fbc9f1c1a24f9acacaa5412c61e547df9fabbd2876c4ca40d690665d46` |
| 4 | `def` | [NormalMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalmono-lift--d486b316d5513b38c5e794ce.md) | 87 | `declaration-track:d486b316d5513b38c5e794ce249ec29c9f55ed4e0ec9772285d182c3cce1e626` |
| 5 | `def` | [normalOfIsPullbackSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalofispullbacksndofnormal--669cb6595d7dd780f854692e.md) | 96 | `declaration-track:669cb6595d7dd780f854692e28c1be6ce466a9d819ae09cc2b0d0521fbe2d744` |
| 6 | `def` | [normalOfIsPullbackFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalofispullbackfstofnormal--f8c0762918b593d67e03ca81.md) | 115 | `declaration-track:f8c0762918b593d67e03ca81c32f571ad4d5a08b7ef964e928d90ec7d641aa3c` |
| 7 | `class` | [IsNormalMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/isnormalmonocategory--ad25ceb0503b67e502ed8869.md) | 125 | `declaration-track:ad25ceb0503b67e502ed88693e65c05cd0e4289b70ea615f5fb2996d3b5e8241` |
| 8 | `def` | [normalMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalmonoofmono--613b362ba0ef28f413198db9.md) | 136 | `declaration-track:613b362ba0ef28f413198db9941ef38292600609add00602088ceeef2cd73235` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/instance--0b98ab54fdd39dec4ea7bc0c.md) | 139 | `declaration-track:0b98ab54fdd39dec4ea7bc0c5526c0230ae13305e20bddf284c8af95cb53f35c` |
| 10 | `class` | [NormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalepi--4a8ffdceed555168506a790f.md) | 152 | `declaration-track:4a8ffdceed555168506a790feb350917d8199220c71e98f24a749f969dc5dd1a` |
| 11 | `def` | [equivalenceReflectsNormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/equivalencereflectsnormalepi--1e44d5e486a8798c5439119a.md) | 163 | `declaration-track:1e44d5e486a8798c5439119ada2f91849e2bcfc0579223f655940d8b16761dd4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/instance--649aa0d10a0860d4be267339.md) | 177 | `declaration-track:649aa0d10a0860d4be267339a13940c75c95fa958c69ada0248d7f9bb100180b` |
| 13 | `def` | [NormalEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalepi-desc--39f03c9ad4983b5b97763d9b.md) | 185 | `declaration-track:39f03c9ad4983b5b97763d9bb5a1ca62e74bc257a5111180095cdd488dbc4b1f` |
| 14 | `def` | [normalOfIsPushoutSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalofispushoutsndofnormal--07de45e2943172c34f7aa92a.md) | 194 | `declaration-track:07de45e2943172c34f7aa92a1998e5db83dfbc0eb2d77e65fdaa5a2c5fb14f4b` |
| 15 | `def` | [normalOfIsPushoutFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalofispushoutfstofnormal--3172e6fc8b764051c3827268.md) | 213 | `declaration-track:3172e6fc8b764051c3827268f9afbf4e0aa4fc913d8dc4ab89d6b2b367fcd5ef` |
| 16 | `def` | [normalEpiOfNormalMonoUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalepiofnormalmonounop--65cf00f8ae85d95a7a608b54.md) | 225 | `declaration-track:65cf00f8ae85d95a7a608b5488039effd28fc113470afd4f7ce2b3da209eec79` |
| 17 | `def` | [normalMonoOfNormalEpiUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalmonoofnormalepiunop--b0d75f348b7add2040f3d504.md) | 243 | `declaration-track:b0d75f348b7add2040f3d504340b3db0080d4c9c02b16570c59ec76433dd86c7` |
| 18 | `class` | [IsNormalEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/isnormalepicategory--79376b8e28e8571a20ec9727.md) | 265 | `declaration-track:79376b8e28e8571a20ec9727efb0b89297c0e8a59bd5777d1ee8a71d78b81d5e` |
| 19 | `def` | [normalEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/normalepiofepi--46efe9338eceff6a1b5976d8.md) | 276 | `declaration-track:46efe9338eceff6a1b5976d8583437db00949bf7dc75e98c5c290a0da08f8288` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant974273ee173f634a61e77f3337bfa10a2bf132ddce3713db33520b9006ac0e37.lean/declarations/instance--53347153fcfd5a0541fd395b.md) | 279 | `declaration-track:53347153fcfd5a0541fd395b82d3293cd1267c9af7cf6ccadad1c679c7c8cf3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
