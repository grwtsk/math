# Verification target: GRWTSK.Algebra.PowerBasis.Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea84f5e04d127797b96e535ffaa546ca20b03ed8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md) · [Full source](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea84f5e04d127797b96e535ffaa546ca20b03ed8`.

Source path: `GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/adjoin-powerbasisaux--39c7a5ab6c2425c326c4a809.md) | 41 | `declaration-track:39c7a5ab6c2425c326c4a809d1ab85ed04d32b30b582d7e6bed6ec7d802f29d4` |
| 2 | `def` | [adjoin.powerBasis](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/adjoin-powerbasis--564038d73db2096d8adf6bbc.md) | 70 | `declaration-track:564038d73db2096d8adf6bbc976aa8cbfbc990f023356ea13135fa93ec575908` |
| 3 | `def` | [PowerBasis.ofGenMemAdjoin](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/powerbasis-ofgenmemadjoin--e1ac9af4227453d99c00898c.md) | 85 | `declaration-track:e1ac9af4227453d99c00898cf24d933642041b73e12e9fb9fa1e413720022026` |
| 4 | `theorem` | [repr_gen_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/repr-gen-pow-isintegral--9cc06f722e289c4be2bb2868.md) | 110 | `result-track:9cc06f722e289c4be2bb28683f77e69399c2b434d1bfc2f18a81652167b42831` |
| 5 | `theorem` | [repr_mul_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/repr-mul-isintegral--5849f0a4b8e54b4f7fe01899.md) | 143 | `result-track:5849f0a4b8e54b4f7fe01899205271ed49bb2c09142f8fba748556d159cb0bee` |
| 6 | `theorem` | [repr_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/repr-pow-isintegral--b361d4b86b83c394e05b9315.md) | 162 | `result-track:b361d4b86b83c394e05b9315395280710c087a6571369bab0c12e87ac93409d6` |
| 7 | `theorem` | [toMatrix_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/declarations/tomatrix-isintegral--a4025b46491e6d4e73f0a770.md) | 186 | `result-track:a4025b46491e6d4e73f0a7708869ed6c90561d51b811add06667994e8cae7ff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
