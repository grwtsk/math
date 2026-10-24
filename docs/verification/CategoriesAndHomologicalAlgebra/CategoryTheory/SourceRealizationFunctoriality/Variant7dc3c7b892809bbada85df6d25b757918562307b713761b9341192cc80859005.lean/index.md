# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SourceRealizationFunctoriality.Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd106a071c35d4ffaf95f6d6b85c0061fce8825f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd106a071c35d4ffaf95f6d6b85c0061fce8825f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Totalization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceRealization.Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/sourcerealization-hom--79d134745bffbf1745a629cc.md) | 30 | `declaration-track:79d134745bffbf1745a629cc7595ef28ee50105910f61f6f1f9f82a20bc8caee` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/id--869d733c5d0f39775c851818.md) | 47 | `declaration-track:869d733c5d0f39775c851818a35cfe559014e211c73ea6af26b9c5c9aa4be6e4` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/comp--6da76330f2a55b5ab8184b64.md) | 58 | `declaration-track:6da76330f2a55b5ab8184b64ba2a2fd105f9833145f32daf59bb89f25536ecbd` |
| 4 | `def` | [toPrismaticMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/toprismaticmap--61d706910392456833556950.md) | 72 | `declaration-track:61d7069103924568335569501a65a23fddab5741575455aa8ce339073e4db4f6` |
| 5 | `theorem` | [toPrismaticMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/toprismaticmap-id--f36f785543b12809cda7cdc7.md) | 84 | `result-track:f36f785543b12809cda7cdc7c73f82b65d263b82117ffbff3ac0cb3e7d0a9d8b` |
| 6 | `theorem` | [toPrismaticMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant7dc3c7b892809bbada85df6d25b757918562307b713761b9341192cc80859005.lean/declarations/toprismaticmap-comp--12e709bee41ff1894c0feeda.md) | 94 | `result-track:12e709bee41ff1894c0feedafdda815cfdd24615b413831e244ac885b029c2a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
