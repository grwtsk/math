# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43000f8972d6701de387186a74332bb94ff2a737",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43000f8972d6701de387186a74332bb94ff2a737`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/condensed--5f431b132eed1ac94553c862.md) | 50 | `declaration-track:5f431b132eed1ac94553c862cfcb3826efc64592a7764830a4a951561f98a4b0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/instance--9e46e6e7aafe576639ac92b4.md) | 53 | `declaration-track:9e46e6e7aafe576639ac92b4061c95d51c171f2598970de5e363e4064b9669bf` |
| 3 | `abbrev` | [CondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/condensedset--be17c23ef3560edfe480aa6d.md) | 60 | `declaration-track:be17c23ef3560edfe480aa6d86398b05a4fbdba95bbc293cf819e7fe939950e6` |
| 4 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/id-val--46e0fc9a6a1fcf2c9d55559d.md) | 67 | `result-track:46e0fc9a6a1fcf2c9d55559de309f8a8b4f70f9e5a93aae85235805030b1c49f` |
| 5 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/comp-val--6dc542d8e49832a27be66b7c.md) | 70 | `result-track:6dc542d8e49832a27be66b7c10e868960b99d4414abc239a32ee983e790e9b57` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/hom-ext--b71a7c0cf457d4fd118157e6.md) | 74 | `result-track:b71a7c0cf457d4fd118157e6942ac78569fbf15638d76751550dcb8994868fbb` |
| 7 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant64abe7bf4e2f8f72df08c599bbe584bfb8c05a303680d64725235ff8b7baf677.lean/declarations/hom-naturality-apply--984fe21425e035b4e00d924d.md) | 88 | `result-track:984fe21425e035b4e00d924d5019d5c8981023cbfaeda8e120f6d1fe4eb60fc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
