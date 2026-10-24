# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2ee633d5f9e0234db1361416d29df8e7363e60a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2ee633d5f9e0234db1361416d29df8e7363e60a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.TypeTags` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ENat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/declarations/enat--1179b37ce60a998a5f8c6843.md) | 21 | `declaration-track:1179b37ce60a998a5f8c6843e190e8c1b468d4f3f3a0bf708e9833e5080c0a99` |
| 2 | `instance` | [instNatCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/declarations/instnatcast--250f0908fe8d8806bfba77af.md) | 27 | `declaration-track:250f0908fe8d8806bfba77af9621d80cc5f8fcad373db853a2631ede4e772ef1` |
| 3 | `def` | [recTopCoe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/declarations/rectopcoe--3f7dbc2c5e1445088c126294.md) | 31 | `declaration-track:3f7dbc2c5e1445088c126294bb466c2034147584ba73ea2111962f398f28f70f` |
| 4 | `theorem` | [recTopCoe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/declarations/rectopcoe-top--26a81aeeaa9f2c9b0a13d706.md) | 36 | `result-track:26a81aeeaa9f2c9b0a13d70639cbcce2578078529f442601c64ed1f95f803a1c` |
| 5 | `theorem` | [recTopCoe_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta9c011b264db2b3b4caaf720c0a27c2843aedf5cfb2079da05f6bc69aba9ae69.lean/declarations/rectopcoe-coe--75fb23e3476cf5de4283f3b1.md) | 41 | `result-track:75fb23e3476cf5de4283f3b17aa226b5e67f61366e3cdad5bcdb4400f4a1d57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
