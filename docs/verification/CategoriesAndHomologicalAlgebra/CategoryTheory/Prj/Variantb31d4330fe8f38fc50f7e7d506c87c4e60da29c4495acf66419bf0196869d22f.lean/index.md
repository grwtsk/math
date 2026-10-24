# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b11eea1253f1d7039e6707174e42abd402ee951",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b11eea1253f1d7039e6707174e42abd402ee951`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj--f5bffc1a95e75dcdf7edfa6e.md) | 24 | `declaration-track:f5bffc1a95e75dcdf7edfa6eaacdc47302546ea8e0f2b479103e105eab623597` |
| 2 | `instance` | [Prj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-inhabited--bd80b175c84ef22e03195041.md) | 26 | `declaration-track:bd80b175c84ef22e03195041a20144869be04770b4ab65658ab4077a7daf1307` |
| 3 | `def` | [Prj.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-map--1df1a4048decc85867a7bd4b.md) | 30 | `declaration-track:1df1a4048decc85867a7bd4b3e7dcaa1e751ba3707f34f98a26d12518d072915` |
| 4 | `instance` | [Prj.mvfunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-mvfunctor--0dc238121960d383d59374a1.md) | 32 | `declaration-track:0dc238121960d383d59374a1781ba8da2e1634f9568c8e3d94070bfa976a77c0` |
| 5 | `def` | [Prj.P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-p--a9a721a9e47ab7f9645dead2.md) | 35 | `declaration-track:a9a721a9e47ab7f9645dead2f705b2169483e58b186b0420475e48ef5eea998d` |
| 6 | `def` | [Prj.abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-abs--4010437edde0a42bc94667b8.md) | 40 | `declaration-track:4010437edde0a42bc94667b82d60ca237fb44b5da69c36a3c06e1fe250ede97f` |
| 7 | `def` | [Prj.repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-repr--5b42cd5b57922b7f8b9dc4aa.md) | 44 | `declaration-track:5b42cd5b57922b7f8b9dc4aa747a92c888bc3fa60a3e8ead27157be41279a713` |
| 8 | `instance` | [Prj.mvqpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f.lean/declarations/prj-mvqpf--d46cf0b67ba124c4dcf7a36b.md) | 47 | `declaration-track:d46cf0b67ba124c4dcf7a36b207c025992bfcb5220e9c0410c41cf5c2f0f365d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
