# Verification target: GRWTSK.Algebra.Invertible.Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5fca414770e20d89b5575641102e9f981152662",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5fca414770e20d89b5575641102e9f981152662`.

Source path: `GRWTSK/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Invertible.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Invertible.ne_zero](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invertible-ne-zero--72b9551921f2c36746ef94d5.md) | 29 | `result-track:72b9551921f2c36746ef94d513c8fd07355caeee34f0bdb8d84e7a92b24d48c7` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/instance--2ece3b47b603c2e9525a8531.md) | 36 | `declaration-track:2ece3b47b603c2e9525a85318a79d4332cc6a4137e4e7da13a2693148c6b3b03` |
| 3 | `theorem` | [Ring.inverse_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/ring-inverse-invertible--30791d1faaeb62271fd153b3.md) | 45 | `result-track:30791d1faaeb62271fd153b3d87ae2c3a84ea9987f711b7a2881f5fe99c336f3` |
| 4 | `def` | [invertibleOfNonzero](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invertibleofnonzero--01fdb72af13deab0433649ca.md) | 54 | `declaration-track:01fdb72af13deab0433649cab391f566f8942d45243a82b14a249884415e9d8d` |
| 5 | `theorem` | [invOf_eq_inv](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invof-eq-inv--40e91fff9b7029bf537d476c.md) | 58 | `result-track:40e91fff9b7029bf537d476cd875082cecccf452027efb08e199d4856d09fe07` |
| 6 | `theorem` | [inv_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/inv-mul-cancel-of-invertible--d1f89a25524cc4214c9b6eca.md) | 62 | `result-track:d1f89a25524cc4214c9b6eca5c19b3a9165d4326a11b6ca9c866394c52748197` |
| 7 | `theorem` | [mul_inv_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/mul-inv-cancel-of-invertible--e2160b0a8e539a32e09db4b9.md) | 66 | `result-track:e2160b0a8e539a32e09db4b93c3dea193da23dae5a58e7b97a06f318afd0a81b` |
| 8 | `def` | [invertibleInv](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invertibleinv--cffa7222b4eda7f9c14481fa.md) | 70 | `declaration-track:cffa7222b4eda7f9c14481fa76c3907ddaf5e5467b7f7e7ac41b09fb8b3a56d3` |
| 9 | `theorem` | [div_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/div-mul-cancel-of-invertible--6c9e057c1010b6e45d8456d9.md) | 74 | `result-track:6c9e057c1010b6e45d8456d9a1c1521582eea7d473074f130ae04f9d6386465d` |
| 10 | `theorem` | [mul_div_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/mul-div-cancel-of-invertible--be2cc5e31cd282783930e3de.md) | 78 | `result-track:be2cc5e31cd282783930e3de964ca5c30271bc3b60d359a74aebc5c544d2e4f4` |
| 11 | `theorem` | [div_self_of_invertible](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/div-self-of-invertible--28fb07385647850873888412.md) | 82 | `result-track:28fb073856478508738884125e49ff434d6ac428cf07c2909bd36936d2ee8d8d` |
| 12 | `def` | [invertibleDiv](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invertiblediv--bf6ab6bd3508cb4242b0eb7e.md) | 86 | `declaration-track:bf6ab6bd3508cb4242b0eb7e3f603d29d463cb7433ae5e9fc9179efcd6c1d028` |
| 13 | `theorem` | [invOf_div](../../../../mathematics/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/declarations/invof-div--78bcec31d9634555e8bfb17e.md) | 89 | `result-track:78bcec31d9634555e8bfb17e75c88fee6a0c01ea13e4f51920bf6e7000dc3787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
