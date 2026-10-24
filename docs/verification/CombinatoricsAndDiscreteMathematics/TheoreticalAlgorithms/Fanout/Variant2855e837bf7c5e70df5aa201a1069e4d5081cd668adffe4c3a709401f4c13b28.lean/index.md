# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fanout.Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cc5c2240fbcd1458b04adf6752064758cd6af55",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cc5c2240fbcd1458b04adf6752064758cd6af55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Agreement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FanoutBranchId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanoutbranchid--dab10262e08ce203cfbeea52.md) | 20 | `declaration-track:dab10262e08ce203cfbeea52a1c0b105d07072f45b485f3892d993c7a7bdb860` |
| 2 | `inductive` | [FanoutDisposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanoutdisposition--47f355fdb725b343f61608f9.md) | 22 | `declaration-track:47f355fdb725b343f61608f940ce6cc0bd85a12c65b5db1d299dc6c41c499efb` |
| 3 | `inductive` | [FanoutMergeStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanoutmergestatus--a528c22cd16055fa4d1d4d8a.md) | 30 | `declaration-track:a528c22cd16055fa4d1d4d8a33c86a42e8048e4929845a745b32bba74c45d425` |
| 4 | `structure` | [FanoutBudget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanoutbudget--f64af1f168444b8b5e7148bb.md) | 39 | `declaration-track:f64af1f168444b8b5e7148bb6ae38d035cd2652d3aaa13b7fb432571da2ceb04` |
| 5 | `structure` | [FanoutBranch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanoutbranch--003dc53591bfbaa9b24e06cc.md) | 45 | `declaration-track:003dc53591bfbaa9b24e06cc8fa087bc8222b5b3bb99a0edfcd900efdeb0b4d7` |
| 6 | `structure` | [FanoutTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanouttree--0d06e058a04a8220d95a391f.md) | 65 | `declaration-track:0d06e058a04a8220d95a391f467dd5b6e522250c6feb9e4249582ec5e5afd9f6` |
| 7 | `theorem` | [FanoutTree.rejected_retained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fanout/Variant2855e837bf7c5e70df5aa201a1069e4d5081cd668adffe4c3a709401f4c13b28.lean/declarations/fanouttree-rejected-retained--d3778bb4ec288c5da0341c87.md) | 93 | `result-track:d3778bb4ec288c5da0341c87dd10b5ebeffd02eecafc6e00f938d7cc7e789558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
