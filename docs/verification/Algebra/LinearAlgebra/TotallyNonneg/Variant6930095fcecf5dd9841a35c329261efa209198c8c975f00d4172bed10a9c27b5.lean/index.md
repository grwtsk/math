# Verification target: GRWTSK.Algebra.LinearAlgebra.TotallyNonneg.Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a0159c0c3e49a44b0835fb1e03f259b97f4eab2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a0159c0c3e49a44b0835fb1e03f259b97f4eab2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyNonneg](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg--fc0c3db5ef8bc9abc1978082.md) | 42 | `declaration-track:fc0c3db5ef8bc9abc1978082c9f61b35afe5b5d6ae58af8cd20804f3dff1d93e` |
| 2 | `lemma` | [IsTotallyNonneg.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-submatrix--b1a46290a4135aa9f49544d8.md) | 46 | `result-track:b1a46290a4135aa9f49544d8f563426674e8357ef0cff8e0681de0a2f3ba81ff` |
| 3 | `lemma` | [IsTotallyNonneg.nonneg](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-nonneg--d49868a669f4af66b481f9fb.md) | 50 | `result-track:d49868a669f4af66b481f9fb9ed56365697a3b5ba30cd729f2a5a4f6589c7fde` |
| 4 | `lemma` | [IsTotallyNonneg.zero](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-zero--e50bb16fe4446542776aa084.md) | 57 | `result-track:e50bb16fe4446542776aa084a93c9e069c3e6956b843ebcadc4f5d90aa49ee74` |
| 5 | `lemma` | [IsTotallyNonneg.diagonal](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-diagonal--51aa16900270dccd8fd9e732.md) | 62 | `result-track:51aa16900270dccd8fd9e732dfaa91e987b52775d657220696c7b508e0eb3c78` |
| 6 | `lemma` | [isTotallyNonneg_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-diagonal-iff--739b07eb1cc6f42e14d897a4.md) | 74 | `result-track:739b07eb1cc6f42e14d897a4932b2915c95a86f78ded954a3c8f360eade921ce` |
| 7 | `lemma` | [IsTotallyNonneg.one](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-one--2912639e4e5a9d75e6bd1bb6.md) | 78 | `result-track:2912639e4e5a9d75e6bd1bb6e45997fe37b1aef46fb218ec8c616842a61fadea` |
| 8 | `lemma` | [IsTotallyNonneg.smul](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-smul--137335e9defe2be71d61ec08.md) | 82 | `result-track:137335e9defe2be71d61ec08868ac0ab45941a09c0a94e780d0abce194a9e41a` |
| 9 | `theorem` | [isTotallyNonneg_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/declarations/istotallynonneg-smul-iff--20dfd040e058978c99efbdaa.md) | 89 | `result-track:20dfd040e058978c99efbdaaae7cfc5bb5c5c69cd80f64ec1180e5ec4cae9189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
