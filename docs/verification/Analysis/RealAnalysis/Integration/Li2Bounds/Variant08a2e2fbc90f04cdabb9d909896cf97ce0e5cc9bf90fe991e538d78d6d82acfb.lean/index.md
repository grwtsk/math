# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Bounds.Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19747a22de61254525bf1a65bbd96596666286a3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19747a22de61254525bf1a65bbd96596666286a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.Li2Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [li](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li--d03fc77d99625a31b0d50d67.md) | 37 | `declaration-track:d03fc77d99625a31b0d50d675d04839ad906a3a05ffe23f9043c0f5180921e41` |
| 2 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/g--e5167e84d1ed45ebae274a81.md) | 46 | `declaration-track:e5167e84d1ed45ebae274a814020e0a36d0bee32c98cb53aa7a879ab39de4b46` |
| 3 | `def` | [li2_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric--5e310a8a939bc748f8190864.md) | 50 | `declaration-track:5e310a8a939bc748f8190864f4b451eae317ad7120f564746b98a802bee8ad1c` |
| 4 | `theorem` | [li2_symmetric_eq_Li2_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric-eq-li2-li2--e266260f1336798accb5d41f.md) | 53 | `result-track:e266260f1336798accb5d41f40fcffbd2434fada7ab686d1889826030dff6c7f` |
| 5 | `theorem` | [log_one_minus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/log-one-minus-integrable--4b972565f57255a6746949b8.md) | 58 | `result-track:4b972565f57255a6746949b804c629b8298d5401c133716960aa9309c0cc440a` |
| 6 | `theorem` | [log_one_plus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/log-one-plus-integrable--8060635ffbc236bb1e74ea0f.md) | 76 | `result-track:8060635ffbc236bb1e74ea0ffea9ab6592d5fab89598a5206ef04ef618174c1d` |
| 7 | `theorem` | [g_intervalIntegrable_full](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/g-intervalintegrable-full--7e02cb67e9a996389058391b.md) | 87 | `result-track:7e02cb67e9a996389058391b885f96ebc9f41b0cc50fc0e84a58e7e8cc87c0fa` |
| 8 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/g-intervalintegrable--1ff11d2bcb1c59d4e0f36a2d.md) | 98 | `result-track:1ff11d2bcb1c59d4e0f36a2d58283350c1bcf5aeb4e9a380f45603c60d45a121` |
| 9 | `theorem` | [li2_symmetric_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric-lower--588665465c023c9877d3da5b.md) | 112 | `result-track:588665465c023c9877d3da5bd63e129e90029b5d2391fe3b9e1ed4c406fbadcf` |
| 10 | `theorem` | [li2_symmetric_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric-upper--ad6de726d02923c7d1bb8d4d.md) | 122 | `result-track:ad6de726d02923c7d1bb8d4d480371d0e7000692081bee5fd87562b95e0b63f1` |
| 11 | `theorem` | [li2_symmetric_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric-bounds--77d334621689c7045f1b024f.md) | 132 | `result-track:77d334621689c7045f1b024fbc27b66008dedbcdf00312336e3473f1a151baf0` |
| 12 | `theorem` | [integral_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/integral-sub-left--d7738e81225bdbe985476b6b.md) | 139 | `result-track:d7738e81225bdbe985476b6bb7c6839ca3adbdfe2f40d39f0a85349cdec2922f` |
| 13 | `theorem` | [integral_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/integral-sub-right--f58cacdf7e87f9ab56bf41a2.md) | 145 | `result-track:f58cacdf7e87f9ab56bf41a2463f88944cacbd1da060337fc82ab5b3ab931bc7` |
| 14 | `theorem` | [pv_integral_eq_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/pv-integral-eq-symmetric--f194d72b08cc11576c9bcd69.md) | 155 | `result-track:f194d72b08cc11576c9bcd6962ed592f4d8b92cf7ffb5e9ebb9aa8d94e86f504` |
| 15 | `theorem` | [limit_integral_g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/limit-integral-g--ddeb7878bdb445cb2964de9e.md) | 165 | `result-track:ddeb7878bdb445cb2964de9ecb34fc835a2a92224b5d6f917ac32447ebe79331` |
| 16 | `theorem` | [setDiff_decompose](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/setdiff-decompose--da1f14e07e4327704a8deed4.md) | 190 | `result-track:da1f14e07e4327704a8deed44d4b71dde8ad9e5a447768198468da96600554d3` |
| 17 | `theorem` | [setDiff_integral_eq_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/setdiff-integral-eq-split--731b2bf77fa57d668d3abf9c.md) | 195 | `result-track:731b2bf77fa57d668d3abf9c3c36501d86dba2fef911ba519b52c4de2d06c77a` |
| 18 | `theorem` | [pv_tendsto_li2_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/pv-tendsto-li2-symmetric--5506c1cfbe51cc45257c6112.md) | 223 | `result-track:5506c1cfbe51cc45257c61125f606a2e2f9cfa114b228a76ebbcf5cc6f137758` |
| 19 | `theorem` | [li2_symmetric_eq_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-symmetric-eq-li2--49cea36b9bd10743e4886449.md) | 237 | `result-track:49cea36b9bd10743e4886449d3c50424177ead2e26e5a8710dda2492903f0e6d` |
| 20 | `theorem` | [li2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li2-bounds--a5721c4204da7afaba4a4679.md) | 241 | `result-track:a5721c4204da7afaba4a46795c06f2fbc11f1ba1385368ca443e7756ce100cbe` |
| 21 | `theorem` | [li_two_approx_weak_proof](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/declarations/li-two-approx-weak-proof--8bd11cc9fcadaf7a04678a5c.md) | 246 | `result-track:8bd11cc9fcadaf7a04678a5c9f46637824d6cc87510fc763daf19a0bbc44d8dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
