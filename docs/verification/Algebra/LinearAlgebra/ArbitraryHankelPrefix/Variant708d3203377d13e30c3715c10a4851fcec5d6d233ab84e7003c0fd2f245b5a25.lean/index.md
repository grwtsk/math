# Verification target: GRWTSK.Algebra.LinearAlgebra.ArbitraryHankelPrefix.Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e5e777c3e00254f3f97b5336670b888c863016c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e5e777c3e00254f3f97b5336670b888c863016c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [changeDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/changediagonal--1d0f5448c55a0a388962c82d.md) | 21 | `declaration-track:1d0f5448c55a0a388962c82dd535e18ddac416c9716d3e072bd08c93b2e9b513` |
| 2 | `theorem` | [other_moments_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/other-moments-unchanged--4444e28579f8e58d29375f02.md) | 24 | `result-track:4444e28579f8e58d29375f02a8ce74ff26c31ec4ae5cdb5071473d105b6ebb7a` |
| 3 | `theorem` | [complete_prefix_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/complete-prefix-unchanged--d9aafa438de3d6e3c9d5582d.md) | 28 | `result-track:d9aafa438de3d6e3c9d5582d63f130abb222f6d40c0be5b2a0f112f6ce128c3d` |
| 4 | `theorem` | [tower_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/tower-unchanged--aa0231402f7b0e475cb00f0a.md) | 33 | `result-track:aa0231402f7b0e475cb00f0a4fda1bc97c6b449e98a4b1f74dc0da06dbee1f97` |
| 5 | `theorem` | [both_towers_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/both-towers-unchanged--18fdb1e9e2354a9464de596b.md) | 40 | `result-track:18fdb1e9e2354a9464de596b5e62ca5e505346f498741679a75b0c7a83d32a51` |
| 6 | `theorem` | [next_order_last_basis_value](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/next-order-last-basis-value--0c2aa54f9632aefde02620ac.md) | 48 | `result-track:0c2aa54f9632aefde02620ac1631f98e4e160e3cb2aeb9324af66817bf1584d3` |
| 7 | `theorem` | [next_order_fails](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/next-order-fails--9708c767a8793c8d5a7a1f96.md) | 55 | `result-track:9708c767a8793c8d5a7a1f96a0c6d46ab17b13b5d4f24d69ccd6eeeffeba4101` |
| 8 | `theorem` | [next_order_other_entries_unchanged](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/next-order-other-entries-unchanged--096c705f7b9113e5a6f33f96.md) | 65 | `result-track:096c705f7b9113e5a6f33f96d59adc6e4ebb7eab834a556706c49a42e13535ff` |
| 9 | `theorem` | [psd_prefix_has_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/psd-prefix-has-failing-extension--d40bb45e3d4d28220236369a.md) | 78 | `result-track:d40bb45e3d4d28220236369abedf18aeef6fa439108b8687deeaa73495d21729` |
| 10 | `theorem` | [pd_prefix_has_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/pd-prefix-has-failing-extension--bd7f4780e3b26c532a9eaad5.md) | 94 | `result-track:bd7f4780e3b26c532a9eaad572e257c7b53001e4da6c57956d16fcdf31c15aba` |
| 11 | `theorem` | [smaller_order_posDef](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/smaller-order-posdef--d625b2bab9542643cf1ee895.md) | 110 | `result-track:d625b2bab9542643cf1ee895548317a29d4062facb18892f23ab19396f643179` |
| 12 | `theorem` | [largest_pd_blocks_have_failing_extension](../../../../../mathematics/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/declarations/largest-pd-blocks-have-failing-extension--a96ba78868ccb97e381bef9a.md) | 117 | `result-track:a96ba78868ccb97e381bef9a4c920168cbe2650c46af9ca9530c589355ec6924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
