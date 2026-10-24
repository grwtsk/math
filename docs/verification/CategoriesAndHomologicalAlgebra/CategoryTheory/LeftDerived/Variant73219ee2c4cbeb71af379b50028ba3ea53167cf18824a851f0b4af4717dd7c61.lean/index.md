# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f710e650b3010d98e75877bd94510907b8ca7ddd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f710e650b3010d98e75877bd94510907b8ca7ddd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.ProjectiveResolution` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/functor-leftderived--ad8fe8257419479d92b0a40d.md) | 70 | `declaration-track:ad8fe8257419479d92b0a40d23f1e4c40f17bff0d4db0d127731f47733a2a576` |
| 2 | `def` | [Functor.leftDerivedObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/functor-leftderivedobjiso--2ca85c99f9a9216a2c976ad4.md) | 77 | `declaration-track:2ca85c99f9a9216a2c976ad455c78f6488aefc098be2c11bad9dbaf268cb1470` |
| 3 | `def` | [Functor.leftDerivedObjProjectiveZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/functor-leftderivedobjprojectivezero--f8c5a5d19fb5201bc84f6203.md) | 93 | `declaration-track:f8c5a5d19fb5201bc84f620320a6b1bd0238af4ba97be8330ae06a0706dd45df` |
| 4 | `def` | [Functor.leftDerivedObjProjectiveSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/functor-leftderivedobjprojectivesucc--2a78fe89611eac765bd4497a.md) | 104 | `declaration-track:2a78fe89611eac765bd4497a6536f8c4e5fdd6cea02b7d24a46afcc7233de6c9` |
| 5 | `theorem` | [Functor.leftDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/functor-leftderived-map-eq--a8d71e3763e609e4b08310e2.md) | 116 | `result-track:a8d71e3763e609e4b08310e2b611d06503830b5365629c122e052053206758c7` |
| 6 | `def` | [NatTrans.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/nattrans-leftderived--b4ac8d690a4dbab57895192b.md) | 137 | `declaration-track:b4ac8d690a4dbab57895192b028ca03cc8a0b02b30d075343e34b77b37cf225f` |
| 7 | `theorem` | [NatTrans.leftDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/nattrans-leftderived-id--e287c9e147127337f6acc9c0.md) | 144 | `result-track:e287c9e147127337f6acc9c03c684810ce4294def2d9cde05701d2eb8d565460` |
| 8 | `theorem` | [NatTrans.leftDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/nattrans-leftderived-comp--f57a478e919ce562e5d7fcd3.md) | 152 | `result-track:f57a478e919ce562e5d7fcd30d037cf62e8c52318a493752478fef41a27ef61d` |
| 9 | `theorem` | [NatTrans.leftDerived_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant73219ee2c4cbeb71af379b50028ba3ea53167cf18824a851f0b4af4717dd7c61.lean/declarations/nattrans-leftderived-eq--d59097a2b472f82de4f757e9.md) | 161 | `result-track:d59097a2b472f82de4f757e9bc9f61794f1b71503b9a78badf9c1e34014c501a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
