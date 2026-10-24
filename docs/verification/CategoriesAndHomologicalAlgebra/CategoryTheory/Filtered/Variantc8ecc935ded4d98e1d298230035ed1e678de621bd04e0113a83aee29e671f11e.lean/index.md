# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4eebd930b38c9d2c6be6d8c9cfb54e1ee6431e1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4eebd930b38c9d2c6be6d8c9cfb54e1ee6431e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/rel--7ebc253fab0020884d578b07.md) | 39 | `declaration-track:7ebc253fab0020884d578b0747ea85c20aad372935658f62e1bc14219ecc4015` |
| 2 | `theorem` | [rel_of_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/rel-of-quot-rel--ee0f903e3b85042d5845ce12.md) | 42 | `result-track:ee0f903e3b85042d5845ce12d89822cb1bcbdabf3290fb88b8e2a00cd720ba5c` |
| 3 | `theorem` | [eqvGen_quot_rel_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/eqvgen-quot-rel-of-rel--eb5aa75a161e6e8486c400a7.md) | 46 | `result-track:eb5aa75a161e6e8486c400a7f57e8f302edd8701cb908ba6e7e489abb14a1638` |
| 4 | `def` | [isColimitOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/iscolimitof--36bf1e6210c1496799682465.md) | 53 | `declaration-track:36bf1e6210c1496799682465372f7855a840afe5f0a73c56a8d112ac66805e0d` |
| 5 | `def` | [isColimitOf'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/iscolimitof--5dc17db873264cce27e42992.md) | 80 | `declaration-track:5dc17db873264cce27e42992ff9d22fccd62bdac3560df49c22c74deff6b0c72` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/rel-equiv--5b018a3051c6849e655ea7cd.md) | 88 | `result-track:5b018a3051c6849e655ea7cd59c2e4bf3f5f7e2c4f90cbfe452b6b40bb6f3346` |
| 7 | `theorem` | [rel_eq_eqvGen_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/rel-eq-eqvgen-quot-rel--9e179476508f18112a8a8fb8.md) | 104 | `result-track:9e179476508f18112a8a8fb86b4b77f4857f473c4e001ec1ced6c48231e19c8f` |
| 8 | `theorem` | [colimit_eq_iff_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/colimit-eq-iff-aux--868c30f85a209404e4f47f7e.md) | 112 | `result-track:868c30f85a209404e4f47f7e2b88e8a43d7b9f5dd5480a98f3cb90cfdbe82590` |
| 9 | `theorem` | [isColimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/iscolimit-eq-iff--0aa51f4404675e0c1cae469f.md) | 119 | `result-track:0aa51f4404675e0c1cae469f74785e757be395e21cfe1ac385ec690a413510eb` |
| 10 | `theorem` | [isColimit_eq_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/iscolimit-eq-iff--a2cce3d53a253a1dc7d2a07f.md) | 131 | `result-track:a2cce3d53a253a1dc7d2a07f1de6cfa4a2bb0fe071d8e94d6a8b5e22f6c2579a` |
| 11 | `theorem` | [colimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc8ecc935ded4d98e1d298230035ed1e678de621bd04e0113a83aee29e671f11e.lean/declarations/colimit-eq-iff--5526e72e28f809843f13d198.md) | 142 | `result-track:5526e72e28f809843f13d198e0da59c23a64fb7c38b74b19a925f770b6b1a24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
