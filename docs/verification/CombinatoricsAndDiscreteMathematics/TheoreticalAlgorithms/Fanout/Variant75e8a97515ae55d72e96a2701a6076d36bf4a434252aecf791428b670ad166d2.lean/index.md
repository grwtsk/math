# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fanout.Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28661bb82e60a8ead8ab6ccf4618412a3d611121",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28661bb82e60a8ead8ab6ccf4618412a3d611121`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Agreement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FanoutBranchId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanoutbranchid--e88adf5d898bde0a8d3a9d93.md) | 12 | `declaration-track:e88adf5d898bde0a8d3a9d93a9380dbb23a6341f9a3cda9c465a759628ea8b41` |
| 2 | `inductive` | [FanoutDisposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanoutdisposition--5e5aa8d3a64f57ea8434c763.md) | 14 | `declaration-track:5e5aa8d3a64f57ea8434c7630badc0c28b6d9f6ff8336e78d257c71159e2eba1` |
| 3 | `inductive` | [FanoutMergeStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanoutmergestatus--24b6937825e35261818be163.md) | 22 | `declaration-track:24b6937825e35261818be163d750e6841647d95918dfe70014aeadb297c7f75a` |
| 4 | `structure` | [FanoutBudget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanoutbudget--9c8e2964e305daaf46dbadef.md) | 31 | `declaration-track:9c8e2964e305daaf46dbadef4d8e5304726986a07a5adbd2d0057ba612652f74` |
| 5 | `structure` | [FanoutBranch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanoutbranch--a1aca653ee935f3f25a6d1de.md) | 37 | `declaration-track:a1aca653ee935f3f25a6d1de7464454d8379d2a1003dcb403a305949aca58fae` |
| 6 | `structure` | [FanoutTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanouttree--1be8189a33987102813e74ee.md) | 57 | `declaration-track:1be8189a33987102813e74ee557d8ca21881b202f67a1955a3c89f8ddddac3ac` |
| 7 | `theorem` | [FanoutTree.rejected_retained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2.lean/declarations/fanouttree-rejected-retained--7be869af048f1f8e0fd3aada.md) | 85 | `result-track:7be869af048f1f8e0fd3aada9cb18926a1a794b5c61f8e2e235346635bb4b2ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
