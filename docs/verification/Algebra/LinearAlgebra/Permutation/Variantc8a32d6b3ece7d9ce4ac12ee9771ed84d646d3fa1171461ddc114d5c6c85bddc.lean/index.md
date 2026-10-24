# Verification target: GRWTSK.Algebra.LinearAlgebra.Permutation.Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c992a161dc31a15f1bfa666b3a9ba4b879b39f8e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c992a161dc31a15f1bfa666b3a9ba4b879b39f8e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.PEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Equiv.Perm.permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/declarations/equiv-perm-permmatrix--a04b46bacc6fc52ae8568f8e.md) | 34 | `declaration-track:a04b46bacc6fc52ae8568f8e31be9e7aba804f2561a297afba563b814b5203f2` |
| 2 | `lemma` | [transpose_permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/declarations/transpose-permmatrix--5b141203f24dbb3d81200a4a.md) | 40 | `result-track:5b141203f24dbb3d81200a4a8b4acf7bbbaca65610d4c1d31b3b3be4520c914f` |
| 3 | `lemma` | [conjTranspose_permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/declarations/conjtranspose-permmatrix--9db98663af0903cd0d6f47b7.md) | 44 | `result-track:9db98663af0903cd0d6f47b780143ab3db079a2af82268840c57ae3e84188cd4` |
| 4 | `theorem` | [det_permutation](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/declarations/det-permutation--b1ac5f368777cadcb694342c.md) | 53 | `result-track:b1ac5f368777cadcb694342c720ba9d9ff9a6d9fa6c224154a3a5349e6a14040` |
| 5 | `theorem` | [trace_permutation](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variantc8a32d6b3ece7d9ce4ac12ee9771ed84d646d3fa1171461ddc114d5c6c85bddc.lean/declarations/trace-permutation--817f82bc53eae7cd42954f41.md) | 58 | `result-track:817f82bc53eae7cd42954f41f7a61d7a8d943c3777a324ea805fba7cebb4a95f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
