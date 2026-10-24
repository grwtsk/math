# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84779e8376c74bd02e9c2ba6c0653b0404a1fb5a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84779e8376c74bd02e9c2ba6c0653b0404a1fb5a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.EffectiveEpi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LightCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/lightcondensed--3898ac27bed3394ebe48fbc9.md) | 25 | `declaration-track:3898ac27bed3394ebe48fbc9a2badf68d92763efea35cd5341af50b28fdfcd2b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/instance--d57e8346da17caa10abcaf20.md) | 28 | `declaration-track:d57e8346da17caa10abcaf201b83e730503450dfb7418b42fb5b80416d47dda2` |
| 3 | `abbrev` | [LightCondSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/lightcondset--4ed28fcb2038578b9a4e6c9d.md) | 35 | `declaration-track:4ed28fcb2038578b9a4e6c9d3a18755924a874c2c8235df58c1e431e42e3dc3a` |
| 4 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/id-val--ce46c0937bf837a563a5ad36.md) | 42 | `result-track:ce46c0937bf837a563a5ad36c83c816343eed0913f4e08b249ce9ec75081b90b` |
| 5 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/comp-val--bb99870810ebd454edab1cd5.md) | 45 | `result-track:bb99870810ebd454edab1cd5d52a18ea4b9bfe1eedb7677d20076d567edbc5b7` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/hom-ext--987ab4c88254f7ba836e88cd.md) | 50 | `result-track:987ab4c88254f7ba836e88cd1081a70348a1545986c748e09f399ba72450d8e9` |
| 7 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce074641c1af9ef9ededd9864537d9219314a18759a7a5b6559751a648d8df9e.lean/declarations/hom-naturality-apply--d622fb04101bfb2a4005ae87.md) | 64 | `result-track:d622fb04101bfb2a4005ae875fea20679acd03d0df8186fb6c94f35ac5eb086d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
