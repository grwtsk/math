# Verification target: GRWTSK.Algebra.ZMod.Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16381a6b9fb6ef3f7c7e23245aa6c63bd11f6692",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16381a6b9fb6ef3f7c7e23245aa6c63bd11f6692`.

Source path: `GRWTSK/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ZMod.ker_intCastRingHom](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/declarations/zmod-ker-intcastringhom--9f701a8c0edb699d6c51ecb6.md) | 33 | `result-track:9f701a8c0edb699d6c51ecb6ef109bc90cec69f7be10519fa547000eb945079a` |
| 2 | `theorem` | [ZMod.ringHom_eq_of_ker_eq](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/declarations/zmod-ringhom-eq-of-ker-eq--df6def93969b684811eb08d0.md) | 40 | `result-track:df6def93969b684811eb08d005eae0b61829a8f0523b7bf9a86671e817ab5b14` |
| 3 | `theorem` | [isReduced_zmod](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/declarations/isreduced-zmod--f273fa13feb15ca3e8ab3743.md) | 48 | `result-track:f273fa13feb15ca3e8ab374397bb5d6eca52d1eeaa8f637fb838e40beb5456be` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant94df31800001b52dfd570ef2102ea68e9ad41f9569cf6d9bec579a6bf6d3989a.lean/declarations/instance--655dbafd4600b9e83f75d24c.md) | 54 | `declaration-track:655dbafd4600b9e83f75d24cb93fa6c53218393a416da878924e10147880b8ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
