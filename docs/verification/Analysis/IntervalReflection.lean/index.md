# Verification target: GRWTSK.Analysis.IntervalReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e3af7d5527966f226e2d1851e29dce90d5cfcc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntervalReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Analysis/IntervalReflection.lean/index.md) · [Full source](../../../mathematics/Analysis/IntervalReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e3af7d5527966f226e2d1851e29dce90d5cfcc`.

Source path: `GRWTSK/Analysis/IntervalReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntervalReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalReflection](../../../mathematics/Analysis/IntervalReflection.lean/declarations/intervalreflection--c8b29f31f2bce34d7c3556c7.md) | 31 | `declaration-track:c8b29f31f2bce34d7c3556c71e1dd957c27b7be89e2168e4cee28daaeb8ae65d` |
| 2 | `theorem` | [interval_reflection_involutive](../../../mathematics/Analysis/IntervalReflection.lean/declarations/interval-reflection-involutive--7679a83760c38e0355a473eb.md) | 36 | `result-track:7679a83760c38e0355a473eb61ad43b275733a53e4711cc888da598081fd2879` |
| 3 | `theorem` | [interval_reflection_mem_Icc_iff](../../../mathematics/Analysis/IntervalReflection.lean/declarations/interval-reflection-mem-icc-iff--c11a678eb44c7ea660227916.md) | 45 | `result-track:c11a678eb44c7ea6602279168c57b634db79d100f36906554d5450a2a1365617` |
| 4 | `def` | [evenPart](../../../mathematics/Analysis/IntervalReflection.lean/declarations/evenpart--c4cea77006d6bd617698384e.md) | 53 | `declaration-track:c4cea77006d6bd617698384e408fbcd6af4739303d338d3a79ebf606a12f578a` |
| 5 | `def` | [oddPart](../../../mathematics/Analysis/IntervalReflection.lean/declarations/oddpart--1f28259d67096ca7cba6bc24.md) | 59 | `declaration-track:1f28259d67096ca7cba6bc244845f77ee622d673ddf828e56bff23c1149ba62a` |
| 6 | `theorem` | [even_add_odd](../../../mathematics/Analysis/IntervalReflection.lean/declarations/even-add-odd--ab2e0a5ec83df8df7803fdfc.md) | 64 | `result-track:ab2e0a5ec83df8df7803fdfc222e05b039ec51506c37fe499b0f80d21a3db13b` |
| 7 | `theorem` | [even_part_reflection](../../../mathematics/Analysis/IntervalReflection.lean/declarations/even-part-reflection--da34368fe830ccf9cfd7f0c7.md) | 71 | `result-track:da34368fe830ccf9cfd7f0c7dab8b3b8565aa129d3122c20e97d6f1c4f801f18` |
| 8 | `theorem` | [odd_part_reflection](../../../mathematics/Analysis/IntervalReflection.lean/declarations/odd-part-reflection--4d397af00e22764e8f9ff8c3.md) | 78 | `result-track:4d397af00e22764e8f9ff8c3c68613a9870609473982290cfdc86a3f2e24f90e` |
| 9 | `theorem` | [integral_reflection](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-reflection--e5d9e834ae225ffc98b76739.md) | 86 | `result-track:e5d9e834ae225ffc98b7673913fea76ca6725f89dfe77eaa7b8d58d3a3045181` |
| 10 | `theorem` | [integral_eq_zero_of_reflection_odd](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-eq-zero-of-reflection-odd--fa764957c50a155a01ff4d8c.md) | 95 | `result-track:fa764957c50a155a01ff4d8c479370f7003ad254085a0d6eed3b64f0fa3d3ea2` |
| 11 | `theorem` | [integral_even_mul_odd](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-even-mul-odd--1a0692b064bd584fbb6d0626.md) | 105 | `result-track:1a0692b064bd584fbb6d0626945788643472b778951148645459e20392fe51d3` |
| 12 | `theorem` | [integral_odd_mul_even](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-odd-mul-even--67fd3ba30f09bd4a61477869.md) | 114 | `result-track:67fd3ba30f09bd4a61477869f800850dc60b713046999538062cef16c4d2f1e7` |
| 13 | `theorem` | [integral_product_eq_signed_squares](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-product-eq-signed-squares--192bbe28c8d5042a3312f4af.md) | 122 | `result-track:192bbe28c8d5042a3312f4af2dab0b74fb33b0597aa1f3fe3e937b6acb75d994` |
| 14 | `theorem` | [integral_product_eq_even_add_odd](../../../mathematics/Analysis/IntervalReflection.lean/declarations/integral-product-eq-even-add-odd--55b196017ace0cbd65af2dcf.md) | 140 | `result-track:55b196017ace0cbd65af2dcf1afc6cf1871b7f3108b1bf252cf979c0758da80e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
