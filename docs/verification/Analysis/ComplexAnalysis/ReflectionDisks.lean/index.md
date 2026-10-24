# Verification target: GRWTSK.Analysis.Complex.ReflectionDisks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cd3ce974c13e37a251b69fc2fa19fba8ed4f5ff",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ReflectionDisks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cd3ce974c13e37a251b69fc2fa19fba8ed4f5ff`.

Source path: `GRWTSK/Analysis/Complex/ReflectionDisks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ReflectionDisks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../../mathematics/Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrencea153b0b637ddbb38a27f21e0.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fixed_iff](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/fixed-iff--400bf81ba9c9407f5864f3f1.md) | 21 | `result-track:400bf81ba9c9407f5864f3f172b34229dde3d81d9eb22d368ba4b51a139c5d32` |
| 2 | `theorem` | [sub_reflected](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/sub-reflected--17c783c05dd3c239f9efb13e.md) | 34 | `result-track:17c783c05dd3c239f9efb13e8d728b20a150d97a16521b65543cc0586aef975e` |
| 3 | `theorem` | [norm_sub_reflected](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/norm-sub-reflected--ab39c4370877f17b365be881.md) | 39 | `result-track:ab39c4370877f17b365be88106a8c78fbe6ea447a104b0a7acc4c213ec5cfe7c` |
| 4 | `theorem` | [norm_sub_fixed_center](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/norm-sub-fixed-center--ccc7fb536f7ef3f7c047f7f1.md) | 44 | `result-track:ccc7fb536f7ef3f7c047f7f19388f2829b675908cd547b08e59381572c2675af` |
| 5 | `theorem` | [mem_closedDisk_reflection_iff](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/mem-closeddisk-reflection-iff--bc8b4e580f88f476a8ae533a.md) | 49 | `result-track:bc8b4e580f88f476a8ae533a11af94296f7dee21809fb4bfa10dd110c15a0ef5` |
| 6 | `theorem` | [norm_sub_conjugated](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/norm-sub-conjugated--e36463a09ceceeb6d6842123.md) | 56 | `result-track:e36463a09ceceeb6d68421238d3cf8d36d24d999e4531bf2e509e85f6ce9dbce` |
| 7 | `theorem` | [norm_conjugate_sub_center](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/norm-conjugate-sub-center--680147c9915566b2abd10901.md) | 59 | `result-track:680147c9915566b2abd109018be23f5272bc05700c911e8a72c7d2fea351b8c4` |
| 8 | `theorem` | [imaginary_enclosure](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/imaginary-enclosure--2e4dc0108f2155e92cd20455.md) | 63 | `result-track:2e4dc0108f2155e92cd2045596cad395dd64d32a3d9f7221d4edcd3b41acb1f4` |
| 9 | `theorem` | [norm_sub_eq_imaginary](../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/declarations/norm-sub-eq-imaginary--8f28f8eeab6573806027435e.md) | 69 | `result-track:8f28f8eeab6573806027435ef0ca3fdaac897a7fb3b7399822b75e4ac3c6216e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
