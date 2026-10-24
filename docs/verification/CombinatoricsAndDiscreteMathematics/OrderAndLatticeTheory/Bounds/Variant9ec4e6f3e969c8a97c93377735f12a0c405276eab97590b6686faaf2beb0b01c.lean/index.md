# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Bounds.Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c789d6bdd102154c294ff811f014bde05f71eb6b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c789d6bdd102154c294ff811f014bde05f71eb6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGLB.exists_between_self_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/declarations/isglb-exists-between-self-add--6ba4975c93075a36fc8aa1a4.md) | 25 | `result-track:6ba4975c93075a36fc8aa1a4dd12eaa5d8ae683913949184eb22691534e79765` |
| 2 | `theorem` | [IsGLB.exists_between_self_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/declarations/isglb-exists-between-self-add--2a15f2917e148c702c74828b.md) | 28 | `result-track:2a15f2917e148c702c74828b259a213f97d3e26864cc77f44a0486e8d280202b` |
| 3 | `theorem` | [IsLUB.exists_between_sub_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/declarations/islub-exists-between-sub-self--b5469a230a4d39a0e17c6c76.md) | 32 | `result-track:b5469a230a4d39a0e17c6c76b8249b58fa3b35913a4fe396329bd42fc27879c5` |
| 4 | `theorem` | [IsLUB.exists_between_sub_self'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant9ec4e6f3e969c8a97c93377735f12a0c405276eab97590b6686faaf2beb0b01c.lean/declarations/islub-exists-between-sub-self--44b1b2f702bce926a0c14a2c.md) | 35 | `result-track:44b1b2f702bce926a0c14a2c69e4183fc453734bf3e33e0652db76cc62b89f88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
