# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cb3dc550b999e346a8aeb597e5a620bb34674ea",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cb3dc550b999e346a8aeb597e5a620bb34674ea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/instance--0e2defd00fd063c324ec403f.md) | 39 | `declaration-track:0e2defd00fd063c324ec403f7dcbc40deb30a5e8a463b2dcea474089a5c3e712` |
| 2 | `lemma` | [NatTrans.mono_iff_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/nattrans-mono-iff-mono-app--9e2c72dd5068dd15fd926eb8.md) | 42 | `result-track:9e2c72dd5068dd15fd926eb848fcd3e8551c66b146104c962eb11a96d2f663ec` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/instance--8fa1a9cf689a49221733bdbc.md) | 45 | `declaration-track:8fa1a9cf689a49221733bdbccc27f59d2e70cc115e816f49cb4c1f1c02123521` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/instance--a3e557d2dbb2db35500039e8.md) | 56 | `declaration-track:a3e557d2dbb2db35500039e8fdff7e76643710a00508878f3cb1430086cb37f5` |
| 5 | `lemma` | [NatTrans.epi_iff_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/nattrans-epi-iff-epi-app--12dbdbfd5e194e6596c219f6.md) | 59 | `result-track:12dbdbfd5e194e6596c219f63acc5e1230d0a8e35a8824a38c1da33712cb0cf9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant920653933c63509e536722249ec8345d06767c14908f888974eb787aefaf4350.lean/declarations/instance--898f1ef2c981bc4661513bfa.md) | 62 | `declaration-track:898f1ef2c981bc4661513bfab2bc5f320a8bd351eb06697cb7fb28a9aa7d06be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
