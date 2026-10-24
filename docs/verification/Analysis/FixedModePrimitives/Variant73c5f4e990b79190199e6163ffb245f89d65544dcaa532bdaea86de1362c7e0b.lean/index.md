# Verification target: GRWTSK.Analysis.FixedModePrimitives.Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71b14b5637c0859afa0d4ef5f30e21fd4f6a2184",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/index.md) · [Full source](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71b14b5637c0859afa0d4ef5f30e21fd4f6a2184`.

Source path: `GRWTSK/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteMobiusJet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/primitive--c2e05947d9cf45d19c8941b2.md) | 23 | `declaration-track:c2e05947d9cf45d19c8941b2950787b18d3db11029d91fd1a9699d52e183e2cf` |
| 2 | `theorem` | [order_zero](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/order-zero--5e07aeb0b89abed6f8097376.md) | 25 | `result-track:5e07aeb0b89abed6f8097376d6e431a63f753ada8366a18a1fbeda4f8dcfa52e` |
| 3 | `theorem` | [primitive_derivative](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/primitive-derivative--b3fab08fdffdeb7eb02086cd.md) | 28 | `result-track:b3fab08fdffdeb7eb02086cd067261337c6e4121563f068ae5476487bbe451d3` |
| 4 | `theorem` | [exact_real_time_norm](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/exact-real-time-norm--54df62635b545c94fe6dba82.md) | 37 | `result-track:54df62635b545c94fe6dba82f41fc067db42a9ab774163c19b98fe8dd3c812f0` |
| 5 | `theorem` | [unchanged_exponential_rate](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/unchanged-exponential-rate--d17dfac349c83fea02c3de1e.md) | 41 | `result-track:d17dfac349c83fea02c3de1e3a55b9647bd0dde781d20fe8b32f2c0754ebda7d` |
| 6 | `theorem` | [faster_exponential_comparison](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/faster-exponential-comparison--7fdca1f4fe0135d2efe3bff2.md) | 45 | `result-track:7fdca1f4fe0135d2efe3bff206894c0b027d7015a75727de2a530afb1e36fced` |
| 7 | `theorem` | [no_eventual_smaller_rate_cap](../../../../mathematics/Analysis/FixedModePrimitives/Variant73c5f4e990b79190199e6163ffb245f89d65544dcaa532bdaea86de1362c7e0b.lean/declarations/no-eventual-smaller-rate-cap--0c4c0c9b90f52659ac0928f3.md) | 59 | `result-track:0c4c0c9b90f52659ac0928f3d5c07df6d02872bf491abe78e8d4dfe40729e47e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
