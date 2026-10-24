# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c052fcbb3036d200af320f7cfeadda31e40ba73e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c052fcbb3036d200af320f7cfeadda31e40ba73e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Localization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Center.Linear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/linear--d353048842f05ed62741def9.md) | 33 | `declaration-track:d353048842f05ed62741def97155e74d0e0b4ebde02d6456d07a414c699a52a8` |
| 2 | `lemma` | [functor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/functor-linear--ccd590749cec5cb1b4dd775c.md) | 36 | `result-track:ccd590749cec5cb1b4dd775ced7ce75e8d71c6141153f5f4c9537a8bf573d150` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/instance--c6f730ef7775be8295870556.md) | 50 | `declaration-track:c6f730ef7775be82958705566a70e1b9e4c4e6ed5424c339d7e88ad28c225ba2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/instance--5157a7480d6a5268ecc53c34.md) | 52 | `declaration-track:5157a7480d6a5268ecc53c34685a43216688ac841a6ec782abf0d8d4914092ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/instance--abb43dc55dc807b9e3d203a7.md) | 60 | `declaration-track:abb43dc55dc807b9e3d203a78cc9e2f3c0dc84fd77b299b6f94ebf2dd32ba6cf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/instance--02cc7656831bd66767ddc5c0.md) | 62 | `declaration-track:02cc7656831bd66767ddc5c039b3982ccbbfaaa76213a233202f5914c8ff3b61` |
| 7 | `lemma` | [functor_linear_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant41fe034a7c9374974f6be78e8006efdd112cd0ba564465f993773ca9e89b658f.lean/declarations/functor-linear-iff--78d60b1acfaee05331e3744b.md) | 73 | `result-track:78d60b1acfaee05331e3744b757c3c6eda29674bb342fd9d337feace13743858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
