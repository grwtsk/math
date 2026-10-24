# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "868bea8cd8cb23244e6853ba17176911eb5ce174",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `868bea8cd8cb23244e6853ba17176911eb5ce174`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/instance--61dbfd2571fbb654941673ee.md) | 22 | `declaration-track:61dbfd2571fbb654941673ee07810b8a28ee8b92bc5e6c3839fbb1ae066fec4e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/instance--317e91063b036ceefe7694a8.md) | 31 | `declaration-track:317e91063b036ceefe7694a89f554c3e4604dd0b4dc504ac2e8868be5ae2a2c1` |
| 3 | `instance` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/toisorderedmonoid--3c4bf27ff2153acd2733356c.md) | 44 | `declaration-track:3c4bf27ff2153acd2733356c7b9b1c927c711fc1a9059eef01769869c0b1aedd` |
| 4 | `instance` | [toIsOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/toisorderedcancelmonoid--4252d2f6bc23e2452af14df0.md) | 52 | `declaration-track:4252d2f6bc23e2452af14df0e0e029c00fe6f13c91c3dc149919899016235f1d` |
| 5 | `def` | [oneLE](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/onele--08d973f8683ecf80f2d2772c.md) | 62 | `declaration-track:08d973f8683ecf80f2d2772c6f0760657fa866c15a780ea50a06cbde2ffee172` |
| 6 | `lemma` | [mem_oneLE](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f.lean/declarations/mem-onele--a7bf7f66822e8bdb7691ee14.md) | 69 | `result-track:a7bf7f66822e8bdb7691ee142d13f4991f65173efa3a0a3642b5162092d78353` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
