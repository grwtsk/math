# Verification target: GRWTSK.Algebra.NonUnitalSubsemiring.Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4337f4d644e7a980a21ba14b6230239391d2c4c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4337f4d644e7a980a21ba14b6230239391d2c4c`.

Source path: `GRWTSK/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Center` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubStarSemigroup](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/substarsemigroup--b4253d9e79bd551a3b49c123.md) | 35 | `declaration-track:b4253d9e79bd551a3b49c12316834ce6277f613f276198aab0614ce1683d9f25` |
| 2 | `structure` | [NonUnitalStarSubsemiring](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/nonunitalstarsubsemiring--6995049013c6cb8fa96d0f41.md) | 45 | `declaration-track:6995049013c6cb8fa96d0f41497e02165f80da7110fc4e0a75593656b8d781f5` |
| 3 | `instance` | [instSetLike](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/instsetlike--5470667ad6a097b784518c04.md) | 57 | `declaration-track:5470667ad6a097b784518c04d10fd8a1a82902dcef7951a027520c58a398a7aa` |
| 4 | `def` | [ofClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/ofclass--7fd505d454130375ef9aa5b1.md) | 69 | `declaration-track:7fd505d454130375ef9aa5b15fd7ed4821cd3fe6cb533730c1313f55cb9639b1` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/instance--207e2646a1f88ecc8c282273.md) | 77 | `declaration-track:207e2646a1f88ecc8c282273b387df5b78f4de1490ea5b7924d95bedce201906` |
| 6 | `instance` | [instNonUnitalSubsemiringClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/instnonunitalsubsemiringclass--1a22ffbc65cbeea1c04c725b.md) | 89 | `declaration-track:1a22ffbc65cbeea1c04c725b75d02141939cbe2f174ac5a340e0282cb438ee8b` |
| 7 | `instance` | [instStarMemClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/inststarmemclass--72c272fee9ace68960ca1d31.md) | 95 | `declaration-track:72c272fee9ace68960ca1d31d2478859f013457162612d70121df9d45b8d42e2` |
| 8 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/mem-carrier--792bb4f1bec8644a95026103.md) | 98 | `result-track:792bb4f1bec8644a950261032063e568ec7ac786e3091dd179c94ca4c9167cff` |
| 9 | `def` | [copy](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/copy--fb10ddaa11b144e8a7f760b2.md) | 103 | `declaration-track:fb10ddaa11b144e8a7f760b2a168121cbdd085ee9ffde8a6bc5a3d4856168d81` |
| 10 | `theorem` | [coe_copy](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/coe-copy--5f7d2d402465c5166ad06d91.md) | 112 | `result-track:5f7d2d402465c5166ad06d91562aa85e03dcc24154fd833e6f0df986428529e3` |
| 11 | `theorem` | [copy_eq](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/copy-eq--9db701d341b851acdbdba0a7.md) | 116 | `result-track:9db701d341b851acdbdba0a7ced704394d82997e6c432789e64836046882ab8e` |
| 12 | `def` | [center](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant3f0cc0a3fa8a70eb993d3c1900d4329a801f01fc17a44a2867f6ec2e9a84ce81.lean/declarations/center--c37ac3746d43dd3b959865bd.md) | 126 | `declaration-track:c37ac3746d43dd3b959865bddb9cf21feab64377ea638d38e4a50da0eaaa1281` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
