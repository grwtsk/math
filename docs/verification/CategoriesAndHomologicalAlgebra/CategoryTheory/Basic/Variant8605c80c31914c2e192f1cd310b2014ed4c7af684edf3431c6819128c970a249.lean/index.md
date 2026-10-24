# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b67f80b810707563623896c33a620fe0b68195ed",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b67f80b810707563623896c33a620fe0b68195ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Endomorphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CatCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/declarations/catcenter--141b20b1f0ff60c49a18749b.md) | 29 | `declaration-track:141b20b1f0ff60c49a18749bcf3eb001bb7bda9aec76e959c64fa7ae296cae90` |
| 2 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/declarations/ext--f3d8c3f10663df0b193b2c6d.md) | 36 | `result-track:f3d8c3f10663df0b193b2c6d787e8809ba30b3a70a3014eda5d0ba538c691595` |
| 3 | `lemma` | [mul_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/declarations/mul-app--0a07c871d62e734c97bd7c34.md) | 40 | `result-track:0a07c871d62e734c97bd7c34f283d953521355de3e4c16f65cb903073c57d356` |
| 4 | `lemma` | [mul_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/declarations/mul-app--5a31e2c3d5957b407c8a8029.md) | 43 | `result-track:5a31e2c3d5957b407c8a8029a5ef87a62e22c947cb6cbdc292bb1747bfc55cb5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8605c80c31914c2e192f1cd310b2014ed4c7af684edf3431c6819128c970a249.lean/declarations/instance--4030e7410eec618720f5123b.md) | 47 | `declaration-track:4030e7410eec618720f5123b0dd6acde573fb94a2329f0cb1ee8fb4021de27da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
