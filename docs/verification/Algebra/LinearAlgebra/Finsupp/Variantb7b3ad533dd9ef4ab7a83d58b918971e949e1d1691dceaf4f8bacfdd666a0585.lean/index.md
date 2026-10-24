# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25c1f11c49a0f63a9210f1d0c54bcad75fd196f1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25c1f11c49a0f63a9210f1d0c54bcad75fd196f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppTensorFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp--93eaad7aba042bf5c0f1d002.md) | 46 | `declaration-track:93eaad7aba042bf5c0f1d00253c6eaf031d39d00532e23dc1ed9442be535a1fb` |
| 2 | `theorem` | [finsuppTensorFinsupp_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp-single--e8f1e01109e4d7398db07775.md) | 54 | `result-track:e8f1e01109e4d7398db07775f53bfad36bd51da5d644018a298bedb51b474feb` |
| 3 | `theorem` | [finsuppTensorFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp-apply--7a17794a04d0844d057421ac.md) | 62 | `result-track:7a17794a04d0844d057421ac8853d38ea484f2a5b804ac98e6110ddbcb9e91e4` |
| 4 | `theorem` | [finsuppTensorFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp-symm-single--1f6657cb9de89fa333d97a3b.md) | 85 | `result-track:1f6657cb9de89fa333d97a3be55dfdd1e00b9fae4a6f43701d569d0102152c49` |
| 5 | `def` | [finsuppTensorFinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp--a87b4beaf5b8a619febf538c.md) | 96 | `declaration-track:a87b4beaf5b8a619febf538c6002f33b8bdcee1f3fe74d6ccaf9e4e8e26fc3ef` |
| 6 | `theorem` | [finsuppTensorFinsupp'_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp-apply-apply--aff5dd1e625aa668469ae647.md) | 101 | `result-track:aff5dd1e625aa668469ae6470203d34bbe9f5bb9498927cee44e81ad151aa293` |
| 7 | `theorem` | [finsuppTensorFinsupp'_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantb7b3ad533dd9ef4ab7a83d58b918971e949e1d1691dceaf4f8bacfdd666a0585.lean/declarations/finsupptensorfinsupp-single-tmul-single--50f274465fd6068029662645.md) | 106 | `result-track:50f274465fd6068029662645c7e395b3fb190d5a46f1b7759b429bf00a86a495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
