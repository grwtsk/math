# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexAbelian.Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd41d3e1f95015b12e2de4ba2f8b744149f4e78",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd41d3e1f95015b12e2de4ba2f8b744149f4e78`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/instance--94dd82e8cf89c66b812e0314.md) | 34 | `declaration-track:94dd82e8cf89c66b812e0314800c59efc0f50bdebcccdcd7f415930066a430f2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/instance--0744ca76c30d02f169ca5ed3.md) | 39 | `declaration-track:0744ca76c30d02f169ca5ed3c493684e32a4f231e574c73594cdfdf13885774b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/instance--802fca1d71bdb02e5614e226.md) | 44 | `declaration-track:802fca1d71bdb02e5614e22650640fa78d581f43e8d5a5f095f6317480874470` |
| 4 | `lemma` | [exact_of_degreewise_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/exact-of-degreewise-exact--28c55c116cf2e9b490630345.md) | 48 | `result-track:28c55c116cf2e9b490630345c8181f5a6d2a9ee1b080c80444d9e12f3fa4c6cd` |
| 5 | `lemma` | [shortExact_of_degreewise_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/shortexact-of-degreewise-shortexact--260e21578340cd08508f894d.md) | 55 | `result-track:260e21578340cd08508f894de4a7f14e2163bc6f71b78286063f6a891b6b7b37` |
| 6 | `lemma` | [exact_iff_degreewise_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/exact-iff-degreewise-exact--90b3690ef654b6996d71b9ac.md) | 62 | `result-track:90b3690ef654b6996d71b9ac547c4540afe22ef728b103eaf0fd1834ded96bf5` |
| 7 | `lemma` | [shortExact_iff_degreewise_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant03b082747f194680416e5b55723f531fe71700df7c70be537694cd8504638e4b.lean/declarations/shortexact-iff-degreewise-shortexact--918a6f8245f72b7c1bf18fc2.md) | 69 | `result-track:918a6f8245f72b7c1bf18fc279106c4dfb51c7e0702ed5d09077343afe0dd016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
