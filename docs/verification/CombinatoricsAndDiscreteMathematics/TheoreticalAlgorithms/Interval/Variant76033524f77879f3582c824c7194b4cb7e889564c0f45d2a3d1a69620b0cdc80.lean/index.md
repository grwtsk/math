# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ab97df62387a646981fd7985615fe289c8f9b75",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ab97df62387a646981fd7985615fe289c8f9b75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forallB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forallb--91c6cf67973393127183324f.md) | 19 | `declaration-track:91c6cf67973393127183324f8e8b329871ceb7cc968c143af094362eb29cdb20` |
| 2 | `theorem` | [forallB_iff_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forallb-iff-range--394a43b9221ee8a049981df1.md) | 23 | `result-track:394a43b9221ee8a049981df1f3eb79a6978d4c71910fca25b81cb864bc669be1` |
| 3 | `theorem` | [forallB_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forallb-iff--aca12e924f836ed9f0647144.md) | 38 | `result-track:aca12e924f836ed9f06471445211892c762262705ed63533bad42eca076cb0c9` |
| 4 | `theorem` | [forallB_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forallb-iff--8d1230f6cde0576ce4bf8d2f.md) | 42 | `result-track:8d1230f6cde0576ce4bf8d2fc84f0bdba323762ea5bd1416c9d25113e63cc3a0` |
| 5 | `theorem` | [forallB_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forallb-one-iff--1b00232ac1c343f5fe66af3e.md) | 48 | `result-track:1b00232ac1c343f5fe66af3e90ee85ab92974146e7cef8b61387fb904f94bc38` |
| 6 | `theorem` | [forall_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-start--f714afc06565e3e85163ac16.md) | 57 | `result-track:f714afc06565e3e85163ac163425997f463a0f0345b911d2ced7480a09799b83` |
| 7 | `theorem` | [forall_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-step--adfdbd07403aa41fb5004405.md) | 61 | `result-track:adfdbd07403aa41fb50044050831f0116dcf7fca63b7a127298e22c95a01115c` |
| 8 | `theorem` | [forall_bisect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-bisect--a44227ab7c7454f33d196fbd.md) | 66 | `result-track:a44227ab7c7454f33d196fbdbf37258098f606dfed8a0b3ac7c5859efe8a7e19` |
| 9 | `theorem` | [forall_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-succ--fceb0aa308e5010b34a68522.md) | 72 | `result-track:fceb0aa308e5010b34a68522898000a91c901376bfaf3e7112f780a59d11c5f2` |
| 10 | `theorem` | [forall_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-last--0d3a6f3b0064db04cbcc879a.md) | 77 | `result-track:0d3a6f3b0064db04cbcc879abe2dc2085221bd8380aad0805927d0ae24225434` |
| 11 | `theorem` | [forall_exceed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-exceed--cb10905a82d27d8b68e071fb.md) | 81 | `result-track:cb10905a82d27d8b68e071fbf6b47a9e2ccb44ef684be0daae22a8daf2bdabc6` |
| 12 | `theorem` | [forall_mod_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-mod-start--158b2cacf75c9b5f226dbc37.md) | 90 | `result-track:158b2cacf75c9b5f226dbc37f5ef6b0305bd27cd83ed6c2dec97896f823cd592` |
| 13 | `theorem` | [forall_mod_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-mod-step--ce95fcfb0b422720711228df.md) | 95 | `result-track:ce95fcfb0b422720711228dff20d00fa2d4086ae79cd694664b445762e732425` |
| 14 | `theorem` | [forall_mod_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-mod-succ--b195beb7d27b356c1c6f5c1e.md) | 107 | `result-track:b195beb7d27b356c1c6f5c1e02bbf6a0064dbd53ebbee5f8a13afa6aa054a356` |
| 15 | `theorem` | [forall_mod_bisect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-mod-bisect--06291e8240251032aac086dc.md) | 113 | `result-track:06291e8240251032aac086dc26818be0ff490932baf8d89d7874178485097012` |
| 16 | `theorem` | [forall_mod_exceed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/forall-mod-exceed--0d0168a3a0e16528d5420746.md) | 120 | `result-track:0d0168a3a0e16528d542074640a5ad80afeebcc95057649433f3564c66e1053a` |
| 17 | `def` | [makeForallBisectLoHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/makeforallbisectlohi--d987c01a298e72fcc101ad86.md) | 134 | `declaration-track:d987c01a298e72fcc101ad861b008ec749451952a42d9fa23afcd63903a954f9` |
| 18 | `def` | [makeForallBisectHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/makeforallbisecthi--c6090687a57ba065eed01c7d.md) | 144 | `declaration-track:c6090687a57ba065eed01c7d7e76855ffe2fb33b25af375e2194ef4afadfcab7` |
| 19 | `def` | [makeForallModBisectLoHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/makeforallmodbisectlohi--404e58b131b4795bb2e8eec7.md) | 149 | `declaration-track:404e58b131b4795bb2e8eec78199d349842e56e67c5ed94c7887cbefeffcb1bf` |
| 20 | `def` | [makeForallModBisectHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/makeforallmodbisecthi--e48e8ea7ba31dcfc6666ef3c.md) | 161 | `declaration-track:e48e8ea7ba31dcfc6666ef3c88c1a19ce630e5454949f2a83df373008339a428` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/declarations/elab--070ce573d8a80a9df659e2e4.md) | 185 | `declaration-track:070ce573d8a80a9df659e2e4b1eb2463b1eedd36db18fe16c2bb31c8d64a0737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
