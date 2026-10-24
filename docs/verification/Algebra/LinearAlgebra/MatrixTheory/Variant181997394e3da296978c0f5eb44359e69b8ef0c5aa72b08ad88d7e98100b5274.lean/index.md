# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49ddbd56c32ffdb893f51f971915d0573744fc85",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49ddbd56c32ffdb893f51f971915d0573744fc85`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieEquivMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/lieequivmatrix--e8a5060353b27d7350a050b8.md) | 40 | `declaration-track:e8a5060353b27d7350a050b883c0600ba52f95ea662e3183bb06f12fecd0392d` |
| 2 | `theorem` | [lieEquivMatrix'_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/lieequivmatrix-apply--9287b365cc950af676ff5d62.md) | 49 | `result-track:9287b365cc950af676ff5d628343f4c3ee6d3e4b1a4b2bd116496a6b0a503e1b` |
| 3 | `theorem` | [lieEquivMatrix'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/lieequivmatrix-symm-apply--ecbeb07f2be331628dda83e5.md) | 54 | `result-track:ecbeb07f2be331628dda83e51a768f45e639c71e13013f6071e1cdaeaa471007` |
| 4 | `def` | [Matrix.lieConj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-lieconj--54980bcbf0a15441d7a366d0.md) | 59 | `declaration-track:54980bcbf0a15441d7a366d083ffb6270d519685c0f469377e987c73b517a93b` |
| 5 | `theorem` | [Matrix.lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-lieconj-apply--2d3581e78c95b8ab36b2151a.md) | 63 | `result-track:2d3581e78c95b8ab36b2151ad31539660555ab062063b50c5d0b04250441afed` |
| 6 | `theorem` | [Matrix.lieConj_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-lieconj-symm-apply--0653b82747741fc5940eec09.md) | 69 | `result-track:0653b82747741fc5940eec09d0172706bd2d690b88339ad0fc92aa7f583894c6` |
| 7 | `def` | [Matrix.reindexLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-reindexlieequiv--4b630bee851a90e0d0a0a5f7.md) | 78 | `declaration-track:4b630bee851a90e0d0a0a5f7aea768435b106e3f8e9761c6ee165537fc1cb753` |
| 8 | `theorem` | [Matrix.reindexLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-reindexlieequiv-apply--e153fa3cc42b29fc3b9255f0.md) | 86 | `result-track:e153fa3cc42b29fc3b9255f009c6bda5a362ea0abec7926f8b49a1a25389ce21` |
| 9 | `theorem` | [Matrix.reindexLieEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant181997394e3da296978c0f5eb44359e69b8ef0c5aa72b08ad88d7e98100b5274.lean/declarations/matrix-reindexlieequiv-symm--75f2e3cb91d59d5a847adc85.md) | 91 | `result-track:75f2e3cb91d59d5a847adc8515ec326970089ef3f19bebf37bc7239e7fb71d80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
