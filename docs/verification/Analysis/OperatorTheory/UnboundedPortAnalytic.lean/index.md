# Verification target: GRWTSK.Analysis.Operator.UnboundedPortAnalytic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "909e3f7520f37d7c5742ec7db796b7a49c4ef31c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/UnboundedPortAnalytic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `909e3f7520f37d7c5742ec7db796b7a49c4ef31c`.

Source path: `GRWTSK/Analysis/Operator/UnboundedPortAnalytic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/UnboundedPortAnalytic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Operator.UnboundedPortEquivalence`](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousFramedEquivalence](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/continuousframedequivalence--9c74d6885498c38470ad778c.md) | 14 | `declaration-track:9c74d6885498c38470ad778c4f669ef4bfd032ecd35710254c85bd548bf614e2` |
| 2 | `def` | [toAlgebraic](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/toalgebraic--5567562180e1e4abe99d31dc.md) | 28 | `declaration-track:5567562180e1e4abe99d31dc8e719b52d8834b873d5cededd2b8b1707604191c` |
| 3 | `def` | [symm](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/symm--3ccb7d5e5444c2ea5475fc29.md) | 36 | `declaration-track:3ccb7d5e5444c2ea5475fc2975f3ff318dc627b528d79eff8adf829b0f4d8211` |
| 4 | `theorem` | [image_domain](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/image-domain--0c71bf8143fd06590b7f803c.md) | 44 | `result-track:0c71bf8143fd06590b7f803c4e99de9db7f4e77ecedb27bc03148b0c5fb91291` |
| 5 | `theorem` | [dense_domain](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/dense-domain--601704d4746c4880fa6f9623.md) | 55 | `result-track:601704d4746c4880fa6f96235840f880926b2bdf82346f7e497e7f0b39099165` |
| 6 | `theorem` | [dense_domain_iff](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/dense-domain-iff--b016024cc47f7a494b67e894.md) | 65 | `result-track:b016024cc47f7a494b67e8942735f0310cf77f73f94f9af9088c438641620bda` |
| 7 | `def` | [pairFrame](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/pairframe--4575bd30d2d096629a18e86f.md) | 72 | `declaration-track:4575bd30d2d096629a18e86fd171bf409bb2e2f3e555925ea5ba433595ba0f20` |
| 8 | `theorem` | [image_graphSet](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/image-graphset--4ba796a0cd1138b2eb319f2c.md) | 77 | `result-track:4ba796a0cd1138b2eb319f2cdd4df3f4419e75f2ad0ae727c690ed5733a7c14f` |
| 9 | `theorem` | [closed_graph_iff](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/closed-graph-iff--a5d5e4baa3358a922a8dd382.md) | 97 | `result-track:a5d5e4baa3358a922a8dd382fae3e790ec924ed6a206cc0463b1053ad7ab9941` |
| 10 | `structure` | [AnalyticProfile](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/analyticprofile--6272a4307b2d60a1703624c1.md) | 103 | `declaration-track:6272a4307b2d60a1703624c10e0b4f029e90b7ce71e7f7a52b62efb7558cbc72` |
| 11 | `theorem` | [transportProfile](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/declarations/transportprofile--57ecc3e133ceda6c59c4df40.md) | 108 | `result-track:57ecc3e133ceda6c59c4df403cbe4b152ff78757ef941b42d254bd4137e22a82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
