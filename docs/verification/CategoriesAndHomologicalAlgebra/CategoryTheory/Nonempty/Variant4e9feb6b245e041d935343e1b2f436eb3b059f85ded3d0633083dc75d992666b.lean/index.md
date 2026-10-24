# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nonempty.Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efd273696760b535f2957e6d434ed0233b9216e1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efd273696760b535f2957e6d434ed0233b9216e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Iteration.ExtendToSucc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Iteration.FunctorOfCocone` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOfBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/mkofbot--0b53aeab844be4c642290655.md) | 37 | `declaration-track:0b53aeab844be4c6422906555eed6251c9dc332d896abbe42f15b11ac3ebf2f1` |
| 2 | `def` | [mkOfSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/mkofsucc--4b24d2d478c2077a78a0739d.md) | 48 | `declaration-track:4b24d2d478c2077a78a0739df374f4f4b12baa199c1b0ed4ce20345b5ec94f35` |
| 3 | `def` | [inductiveSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/inductivesystem--2e9fed2ed152d014732b9391.md) | 79 | `declaration-track:2e9fed2ed152d014732b93912c8808d98e90d0ce4ee0aed7a6dd37dc9e37284b` |
| 4 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/functor--e51e5915cd3405b9ee1ec578.md) | 86 | `declaration-track:e51e5915cd3405b9ee1ec578d85604c32df13130c1739926d6ed81dca520f173` |
| 5 | `lemma` | [functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/functor-obj--04c13f4adf417e4b10d480d3.md) | 90 | `result-track:04c13f4adf417e4b10d480d31b8cb009c8b4fe68b342e48361f4fa29f0ed2740` |
| 6 | `lemma` | [arrowMap_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/arrowmap-functor--33162c26c79e8361e058af90.md) | 96 | `result-track:33162c26c79e8361e058af904995070b63655aa424d6c58a60c84fffa676f831` |
| 7 | `lemma` | [arrowMap_functor_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/arrowmap-functor-to-top--3bc0e7984a8b1817ffe95de0.md) | 102 | `result-track:3bc0e7984a8b1817ffe95de0965235d29e8a8fe5152652af4e55b4ba9db4a47b` |
| 8 | `def` | [mkOfLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/mkoflimit--ee60d14628be6408a8b5aaa7.md) | 113 | `declaration-track:ee60d14628be6408a8b5aaa7a81c295bc0f6c8cd8daf55de7f60359489baf4a3` |
| 9 | `instance` | [nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nonempty/Variant4e9feb6b245e041d935343e1b2f436eb3b059f85ded3d0633083dc75d992666b.lean/declarations/nonempty--9e998a03202c6cb6e94fb754.md) | 143 | `declaration-track:9e998a03202c6cb6e94fb754ae1127f3bd57ba2cd3d304b78700f5f3b0fdc5d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
