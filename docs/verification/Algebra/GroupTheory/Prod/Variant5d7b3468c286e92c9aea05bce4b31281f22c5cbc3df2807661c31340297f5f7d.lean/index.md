# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355b2cfd6033daa6d63d8c8facc81d5cf63385ed",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355b2cfd6033daa6d63d8c8facc81d5cf63385ed`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_dvd_iff](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/declarations/prod-dvd-iff--85cccdb27f87522e8c2b12d1.md) | 16 | `result-track:85cccdb27f87522e8c2b12d122d961b682bdc4d3bd285307e825fdb7b01ecf7a` |
| 2 | `theorem` | [Prod.mk_dvd_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/declarations/prod-mk-dvd-mk--f0f9079eb7bdbcc3252c77f6.md) | 23 | `result-track:f0f9079eb7bdbcc3252c77f61b763e6247cfd006187a53fe0febfe9308813949` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/declarations/instance--e385f79e965617ea90772cae.md) | 27 | `declaration-track:e385f79e965617ea90772cae9b37777e432c6cb0a5abed4089212b02dd73b6bb` |
| 4 | `theorem` | [pi_dvd_iff](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/declarations/pi-dvd-iff--d2f27c2571a2751fb6e36a49.md) | 35 | `result-track:d2f27c2571a2751fb6e36a49b50cd520dbba836245292352e856bb5861f4ca51` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5d7b3468c286e92c9aea05bce4b31281f22c5cbc3df2807661c31340297f5f7d.lean/declarations/instance--affda769313a3ecafa2f2dde.md) | 38 | `declaration-track:affda769313a3ecafa2f2dde88fb18b882047f884e89095235adbc1936796123` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
