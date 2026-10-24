# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba10f7fbc38b039bc255d18820720d69d062a548",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba10f7fbc38b039bc255d18820720d69d062a548`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsColimit.pullbackOfHasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/iscolimit-pullbackofhasexactcolimitsofshape--3e62b29c7edeb4c577919bd9.md) | 51 | `declaration-track:3e62b29c7edeb4c577919bd9fb360f26cda125db6fab9ac33728cb642b6daa1e` |
| 2 | `theorem` | [IsColimit.pullback_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/iscolimit-pullback-hom-ext--53c26682cd53a375087e7dcf.md) | 64 | `result-track:53c26682cd53a375087e7dcf03d575b0163169d29a33de872f43da626b37480c` |
| 3 | `theorem` | [IsColimit.pullback_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/iscolimit-pullback-zero-ext--599ab6fecd6b16f7de21df5e.md) | 75 | `result-track:599ab6fecd6b16f7de21df5efb22a5d5437c8225315b0bc6a62ed807ed4478df` |
| 4 | `def` | [IsLimit.pushoutOfHasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/islimit-pushoutofhasexactlimitsofshape--e2166dcd1c72ac615a361fda.md) | 88 | `declaration-track:e2166dcd1c72ac615a361fda4dbf8ce8a7a939f3b34e1da25066967242840cb8` |
| 5 | `theorem` | [IsLimit.pushout_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/islimit-pushout-hom-ext--0145e0289bbbeeaef937a418.md) | 101 | `result-track:0145e0289bbbeeaef937a418e09e0491cd52993d5963508a8a8aea2cc5d17219` |
| 6 | `theorem` | [IsLimit.pushout_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant4795b20bcadf748e843f10e8f9857e888e563660304969f3dfd882e735fad857.lean/declarations/islimit-pushout-zero-ext--4e9870f50760a021d342d76c.md) | 112 | `result-track:4e9870f50760a021d342d76cb627a7d0a05afb2c97d6ce8db27ad0e1acf38b15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
