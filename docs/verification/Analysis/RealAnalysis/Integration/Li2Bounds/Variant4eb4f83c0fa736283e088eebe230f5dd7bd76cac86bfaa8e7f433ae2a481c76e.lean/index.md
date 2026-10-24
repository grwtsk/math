# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Bounds.Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07cb34995bd65d76b2aee043136040f40bf03c9f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07cb34995bd65d76b2aee043136040f40bf03c9f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.Li2Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [li](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li--1d9c83b936dd1fc9aaa71c83.md) | 45 | `declaration-track:1d9c83b936dd1fc9aaa71c832fef6deb25574c048a6896d6a28c4f700df83775` |
| 2 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/g--4a6b229b03c8d00f7e9b39a3.md) | 54 | `declaration-track:4a6b229b03c8d00f7e9b39a3fac3f8320351a8f8619d55eb30fb21b77a55dd80` |
| 3 | `def` | [li2_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric--1b183771744444d2727943c9.md) | 58 | `declaration-track:1b183771744444d2727943c9805ba0a6d12844e61894bfc8cbdcb6ca9adcf21e` |
| 4 | `theorem` | [li2_symmetric_eq_Li2_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric-eq-li2-li2--c1288ef79c6070b8eec5e8f2.md) | 61 | `result-track:c1288ef79c6070b8eec5e8f289c07bf837ee079920e7949b461ddbc10bfd7523` |
| 5 | `theorem` | [log_one_minus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/log-one-minus-integrable--cc3d6607120f3ceac976f3f9.md) | 66 | `result-track:cc3d6607120f3ceac976f3f9e2e62260bfe2e7e3fcada1e39d687aad5a2d771a` |
| 6 | `theorem` | [log_one_plus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/log-one-plus-integrable--2ab789bcaf2b514c0c04a3ef.md) | 84 | `result-track:2ab789bcaf2b514c0c04a3ef2268e606465f6a7082a58c1693bcfba345748894` |
| 7 | `theorem` | [g_intervalIntegrable_full](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/g-intervalintegrable-full--aa6fff3af86effa32202d5df.md) | 95 | `result-track:aa6fff3af86effa32202d5dfcc6e4c052c99fe7449ca4d7cf27115f430303413` |
| 8 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/g-intervalintegrable--09a7c61062a41d17123970e4.md) | 106 | `result-track:09a7c61062a41d17123970e4601fa0ffb005989424f15e6dfd8b5c7345dd80e8` |
| 9 | `theorem` | [li2_symmetric_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric-lower--785524a2b305109315e3b1e5.md) | 120 | `result-track:785524a2b305109315e3b1e5a9c0be7948518e9e4d8a5a061ff5c0ae71190929` |
| 10 | `theorem` | [li2_symmetric_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric-upper--1eca1fb7f27e8bda04a9a502.md) | 130 | `result-track:1eca1fb7f27e8bda04a9a502fb6a27231c7b0b6dcf7ed491da951a11aa049c35` |
| 11 | `theorem` | [li2_symmetric_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric-bounds--b4f61308ceb71e6c5ac157d1.md) | 140 | `result-track:b4f61308ceb71e6c5ac157d1f42ed1fce5ecbfddb89584962ad10bc2eff710ce` |
| 12 | `theorem` | [integral_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/integral-sub-left--126945a223257597ae3ea9e4.md) | 147 | `result-track:126945a223257597ae3ea9e4c4a915418821cd32b62925aab8236813b7933614` |
| 13 | `theorem` | [integral_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/integral-sub-right--17364b7fedbed5568dc8f94e.md) | 153 | `result-track:17364b7fedbed5568dc8f94ec10e46df51011347177dc83678c002c887013ee7` |
| 14 | `theorem` | [pv_integral_eq_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/pv-integral-eq-symmetric--fbef6fd52cd200c66684f89f.md) | 163 | `result-track:fbef6fd52cd200c66684f89f087e347f123b02960c8b3168a46f6522ff05f36b` |
| 15 | `theorem` | [limit_integral_g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/limit-integral-g--e7b325d6042e9e8d35cb1915.md) | 173 | `result-track:e7b325d6042e9e8d35cb1915117cffe9a9d34fd965598a6050fc6eaff2af7eb4` |
| 16 | `theorem` | [setDiff_decompose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/setdiff-decompose--a491fec3de6ee743a34c075b.md) | 198 | `result-track:a491fec3de6ee743a34c075b22c94c523c7bf7c90b38d34f575ee0c5c624bb6e` |
| 17 | `theorem` | [setDiff_integral_eq_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/setdiff-integral-eq-split--1e4876c1845c2ab3e64b68b7.md) | 203 | `result-track:1e4876c1845c2ab3e64b68b722ea67be0931c8f84d7bd290f80f197bf38372e8` |
| 18 | `theorem` | [pv_tendsto_li2_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/pv-tendsto-li2-symmetric--4c3077447b6d8ba54cb6075e.md) | 231 | `result-track:4c3077447b6d8ba54cb6075e4a2514b8c33b3fe4093cc49291458f7ebb0dcbdb` |
| 19 | `theorem` | [li2_symmetric_eq_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-symmetric-eq-li2--c6ae3424d46fb0295799895f.md) | 245 | `result-track:c6ae3424d46fb0295799895f65fcc6351241b645c40a32c96d067d8c8e7eaff1` |
| 20 | `theorem` | [li2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li2-bounds--d58fd1b5c1dc3e9acbd10cb0.md) | 249 | `result-track:d58fd1b5c1dc3e9acbd10cb0c3737bb87f82278bb6853b8b86758210af3c4e96` |
| 21 | `theorem` | [li_two_approx_weak_proof](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/declarations/li-two-approx-weak-proof--cd93ba841a60f67f536fd6e4.md) | 254 | `result-track:cd93ba841a60f67f536fd6e4f1c9f9d7e1fda1a288460411a1b2924c8768a2c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
