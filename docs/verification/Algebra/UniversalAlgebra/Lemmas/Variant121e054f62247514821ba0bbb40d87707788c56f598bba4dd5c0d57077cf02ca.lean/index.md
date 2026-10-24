# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e938d3bbf69c54dc24b583a11dba8e5e5bd7eece",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e938d3bbf69c54dc24b583a11dba8e5e5bd7eece`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/instance--f2998d2b67d3ac210ee36152.md) | 25 | `declaration-track:f2998d2b67d3ac210ee3615290c0ddce139cda8da6bce779b1fe66fad4789ff8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/instance--a2405129dabc7ca93bb22387.md) | 29 | `declaration-track:a2405129dabc7ca93bb22387e4a847434d5ce5503ba143301eca10eb47b91e21` |
| 3 | `lemma` | [coe_indicator](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/coe-indicator--a5f127bf01f3931276cedd97.md) | 33 | `result-track:a5f127bf01f3931276cedd9737f38b3a7ed8fea4c2582e8fda0e2379d77ae5c4` |
| 4 | `lemma` | [toNNRat_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/tonnrat-inv--9a0401618a4c2760b1a7791f.md) | 45 | `result-track:9a0401618a4c2760b1a7791f6784b5c5b00889a66b97a96a7e8df04b06e634c1` |
| 5 | `lemma` | [toNNRat_div](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/tonnrat-div--9f8af2936a3914c931ca81fc.md) | 51 | `result-track:9f8af2936a3914c931ca81fc8331099221e6718ad11cd25caaf05d2b802dd56f` |
| 6 | `lemma` | [toNNRat_div'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/tonnrat-div--3583a70fa4d8374cdb3b3dae.md) | 54 | `result-track:3583a70fa4d8374cdb3b3daeb32b1a03a4954eb61d27dea87489990ef9f6f752` |
| 7 | `def` | [rec](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant121e054f62247514821ba0bbb40d87707788c56f598bba4dd5c0d57077cf02ca.lean/declarations/rec--b2485665dbc248f1f6c8fa02.md) | 66 | `declaration-track:b2485665dbc248f1f6c8fa0263c3341ff652a076124711cb159696d6bccdacf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
