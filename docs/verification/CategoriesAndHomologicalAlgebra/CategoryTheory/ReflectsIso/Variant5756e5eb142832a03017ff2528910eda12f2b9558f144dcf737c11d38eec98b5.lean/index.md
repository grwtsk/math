# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIso.Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85b2ce7aa36c9b2ee3c5888189173a4d0d3963a3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85b2ce7aa36c9b2ee3c5888189173a4d0d3963a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Balanced` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/declarations/reflectsisomorphisms--e4fbd2c9ba83ff746e5136a9.md) | 49 | `declaration-track:e4fbd2c9ba83ff746e5136a93218e95a74b6020ba7ccadc48da12566eace22ae` |
| 2 | `theorem` | [isIso_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/declarations/isiso-of-reflects-iso--badceedb948524fee1e30205.md) | 55 | `result-track:badceedb948524fee1e30205184fe9b2fadc4a92b940e06de7d13b54f712c3f7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/declarations/instance--7f2feb52090b041a7a356ae2.md) | 60 | `declaration-track:7f2feb52090b041a7a356ae223396d2da6f1bad533ffde18f3087df6a3266100` |
| 4 | `instance` | [reflectsIsomorphisms_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/declarations/reflectsisomorphisms-of-comp--112676d70f5fd20ca971f413.md) | 67 | `declaration-track:112676d70f5fd20ca971f4130f896dd770e99ac9feea4c39dd54327384d980df` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant5756e5eb142832a03017ff2528910eda12f2b9558f144dcf737c11d38eec98b5.lean/declarations/instance--5594b162dec3b20bad54ab8b.md) | 74 | `declaration-track:5594b162dec3b20bad54ab8b6abbb7e5a768d37b7a146478f6d1ef402b80c0cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
