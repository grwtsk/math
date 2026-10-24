# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitBy.Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6b02b88ea30ad783dcee724a00d556cb1fe064d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6b02b88ea30ad783dcee724a00d556cb1fe064d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitBy_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/splitby-nil--d3c42bff3155704a44d3f8f4.md) | 35 | `result-track:d3c42bff3155704a44d3f8f448712b6815b687dbea1f3cdde4e7ef97594d35f5` |
| 2 | `theorem` | [splitByLoop_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/splitbyloop-eq-append--0ff2828d53def41e610e4480.md) | 38 | `result-track:0ff2828d53def41e610e44808cb848e5aa639234273513656c247913921fb1b5` |
| 3 | `theorem` | [flatten_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/flatten-splitbyloop--95eb7808ca159239e6657435.md) | 48 | `result-track:95eb7808ca159239e665743549699f3a0cd91b3f34be0e48483a8f2b7ae55807` |
| 4 | `theorem` | [flatten_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/flatten-splitby--b936088af9a2c8ac3d78e0f8.md) | 57 | `result-track:b936088af9a2c8ac3d78e0f850850e7220bf7342be83bc6319e3def0ffa4b2b5` |
| 5 | `theorem` | [nil_notMem_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/nil-notmem-splitbyloop--000e10a7793e48e8b877261c.md) | 62 | `result-track:000e10a7793e48e8b877261c4efcf413031a424403c14e266ac512a456bda18f` |
| 6 | `theorem` | [nil_notMem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/nil-notmem-splitby--fa9eeaf7d192ae40a5c46e1c.md) | 76 | `result-track:fa9eeaf7d192ae40a5c46e1caa47eb4c6b40310e2536c0bac63f2e53be26a64c` |
| 7 | `theorem` | [ne_nil_of_mem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/ne-nil-of-mem-splitby--659c958316931906aa54d138.md) | 83 | `result-track:659c958316931906aa54d138f3f8b10c6749c074f2e43ab67a4e3f4250c39c74` |
| 8 | `theorem` | [chain'_of_mem_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/chain-of-mem-splitbyloop--9839816631c638e69cd8262c.md) | 87 | `result-track:9839816631c638e69cd8262c5231c2f1295ae66a674e511d1610e90eb53ec2ad` |
| 9 | `theorem` | [chain'_of_mem_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/chain-of-mem-splitby--0d195b9e15795308107786cc.md) | 113 | `result-track:0d195b9e15795308107786cc184fcc1830773ca8beb099d7c0ddff4025ee3753` |
| 10 | `theorem` | [chain'_getLast_head_splitByLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/chain-getlast-head-splitbyloop--0c71fcc71827f675ef7634b5.md) | 122 | `result-track:0c71fcc71827f675ef7634b5db0d3054ec24440957b3ec26783e6d755ad08050` |
| 11 | `theorem` | [chain'_getLast_head_splitBy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variantbf23732e63ea791f130090af2e8fdbdbf3d6a26718e45a9a3a8fc4bc1bc4c6ec.lean/declarations/chain-getlast-head-splitby--a09678f73d7dd7502ddcb402.md) | 146 | `result-track:a09678f73d7dd7502ddcb402861ea604c6fcb6344b6ab6c4702fa6f9a2f97023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
