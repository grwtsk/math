# Verification target: GRWTSK.Algebra.GroupTheory.Nat.Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a47d00cdf09b9b7d0a6d840f89e909069ea5b8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a47d00cdf09b9b7d0a6d840f89e909069ea5b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instmulzeroclass--47bb7c5387e61ef2d14ae3d2.md) | 22 | `declaration-track:47bb7c5387e61ef2d14ae3d220ad4d96da0eee3e376046344acbd5b90c729f6a` |
| 2 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instsemigroupwithzero--bcce1bda1d71ed4204e71c1e.md) | 26 | `declaration-track:bcce1bda1d71ed4204e71c1e76692af72cc20f55e055b2fe602319a651231b16` |
| 3 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instmonoidwithzero--d5a6cbf64c47810c92d16f53.md) | 30 | `declaration-track:d5a6cbf64c47810c92d16f53d1a1f78b5d8cc53afbbb1a960cc7461acdb4ef89` |
| 4 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instcommmonoidwithzero--4906aa8a6f936f3ab95cfa84.md) | 35 | `declaration-track:4906aa8a6f936f3ab95cfa8423d6c6a63aa00115c27e987cf911ede7d8536a93` |
| 5 | `instance` | [instIsLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instisleftcancelmulzero--737a90343f1d3606a6aa2a0f.md) | 39 | `declaration-track:737a90343f1d3606a6aa2a0f300b7b549bf18acc5c53324ab16509da977dc902` |
| 6 | `instance` | [instCancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instcancelcommmonoidwithzero--85fa8f20e49074cbff04042c.md) | 42 | `declaration-track:85fa8f20e49074cbff04042cc1c1f20e593bafe23ee063e82feb3525ae645da1` |
| 7 | `instance` | [instMulDivCancelClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instmuldivcancelclass--b5e580c5159e987f7364b013.md) | 46 | `declaration-track:b5e580c5159e987f7364b0132729922798d1b33c45a620e81b0f37e163f9d4d5` |
| 8 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299.lean/declarations/instmulzerooneclass--f3a70e22e8fb300424ab4644.md) | 49 | `declaration-track:f3a70e22e8fb300424ab4644a4bef72d4f4ef90d77414fd244f551769965ac55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
