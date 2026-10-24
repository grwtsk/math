# Verification target: GRWTSK.Algebra.Canonical.Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "426ce4ec8bccffe61f3e258bd115f2a86733f594",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `426ce4ec8bccffe61f3e258bd115f2a86733f594`.

Source path: `GRWTSK/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyOrderedCommSemiring](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/canonicallyorderedcommsemiring--6f7bbf43c1287ff6e0704186.md) | 44 | `declaration-track:6f7bbf43c1287ff6e07041862ee1a4ec14d4df7bda87e92683aa907df22da3b0` |
| 2 | `theorem` | [mul_add_mul_le_mul_add_mul](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-add-mul-le-mul-add-mul--827cb14c1b42dd2c382407bb.md) | 59 | `result-track:827cb14c1b42dd2c382407bbaae86571550654045e9be8399b0d0bdd883a950d` |
| 3 | `theorem` | [mul_add_mul_le_mul_add_mul'](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-add-mul-le-mul-add-mul--5d1eb84ef0bc8e770cbb6bcc.md) | 67 | `result-track:5d1eb84ef0bc8e770cbb6bcc79fc61238490acb9f71e0c9aa5e9262c197c2856` |
| 4 | `theorem` | [mul_add_mul_lt_mul_add_mul](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-add-mul-lt-mul-add-mul--726199371b624426918a22a4.md) | 74 | `result-track:726199371b624426918a22a4ff425973b328201039e7bc473dbc70b79ce9fb6c` |
| 5 | `theorem` | [mul_add_mul_lt_mul_add_mul'](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-add-mul-lt-mul-add-mul--a2e0331eb6c1f5e06b625c7e.md) | 82 | `result-track:a2e0331eb6c1f5e06b625c7e67b81e2e43b169026af89eaffba19ec48ada5057` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/instance--b0a8060c3f36d1207e5f8a2e.md) | 97 | `declaration-track:b0a8060c3f36d1207e5f8a2e37b91ee8ac46a33b13268a36810f310c24ac8a30` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/instance--b8acd1559e2168eb23a69bdb.md) | 102 | `declaration-track:b8acd1559e2168eb23a69bdbf8c4c1def05aa37aad006c926c61a8e68301c153` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/instance--8bfc372a6f255b05669c13fc.md) | 110 | `declaration-track:8bfc372a6f255b05669c13fc38e818c024b7e45535bf1d4d0c7139adc1c1028d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/instance--107b597939dc8ff48faefd44.md) | 115 | `declaration-track:107b597939dc8ff48faefd44ba69626f9a129033bfa30867e489b9f217adebab` |
| 10 | `theorem` | [mul_pos](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-pos--70191d50c7027e4a2ac06b3a.md) | 123 | `result-track:70191d50c7027e4a2ac06b3a347e11e7895832484d28c3602c0916fd11d8d0c3` |
| 11 | `theorem` | [mul_tsub](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-tsub--e127b47ad1b6838b40a1edbd.md) | 139 | `result-track:e127b47ad1b6838b40a1edbd246093b3da4686df3f02b26ed273c2679fabda68` |
| 12 | `theorem` | [tsub_mul](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/tsub-mul--7c4b34c599304dff5e91abb5.md) | 146 | `result-track:7c4b34c599304dff5e91abb5006bc668c8fd3b380ab9417fd888850f63368fe3` |
| 13 | `theorem` | [mul_tsub](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/mul-tsub--861264f207ca800ba94e8132.md) | 155 | `result-track:861264f207ca800ba94e81320518b26d50d8bc4c452d2cd8b4ff2244711010b2` |
| 14 | `theorem` | [tsub_mul](../../../../mathematics/Algebra/Canonical/Variant21f02ea018530e44101cb08675d747bb33fb15318f9c15ba477b9d4c7144a4a3.lean/declarations/tsub-mul--e33407bae3a11ee145562b9a.md) | 159 | `result-track:e33407bae3a11ee145562b9a36a77c6f05189866b4bc7f2c964b773300f0f204` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
