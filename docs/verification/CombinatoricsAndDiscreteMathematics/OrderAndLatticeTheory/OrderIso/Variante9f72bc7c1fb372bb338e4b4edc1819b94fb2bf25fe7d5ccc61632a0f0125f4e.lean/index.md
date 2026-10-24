# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bbd9919b077771add1d61d9fb3ff193202a21d8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bbd9919b077771add1d61d9fb3ff193202a21d8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OrderIso.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-inv--368d986dfd8d07c7c9ef7c0a.md) | 45 | `declaration-track:368d986dfd8d07c7c9ef7c0a8581fd17b77e8c8cd6778b5e677bf5cd20832510` |
| 2 | `theorem` | [inv_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/inv-le--eda17eea12f9fbba583657e6.md) | 56 | `result-track:eda17eea12f9fbba583657e628eab0ff66b1ba523297a2095dc9cf85efbeef11` |
| 3 | `theorem` | [le_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/le-inv--af82032211e4d8c01391fdbd.md) | 68 | `result-track:af82032211e4d8c01391fdbd55e3c948a9f4aff9dc6a953a433b602185cda7ee` |
| 4 | `def` | [OrderIso.divLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-divleft--4293e0a2d8eefb14c825bd5f.md) | 75 | `declaration-track:4293e0a2d8eefb14c825bd5fcc55a6ed26dc6c835f72ac6209205995960e0f2f` |
| 5 | `def` | [OrderIso.mulRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-mulright--50710f403137db2ccb334750.md) | 102 | `declaration-track:50710f403137db2ccb33475077fdaea62aa95a459df07d10859cc50cae0be243` |
| 6 | `theorem` | [OrderIso.mulRight_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-mulright-symm--1076692522030e9161489007.md) | 111 | `result-track:1076692522030e9161489007f911a398e6bea0902ef4ce7f6f49ed1728c6c05c` |
| 7 | `def` | [OrderIso.divRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-divright--6f84cee63c59fa4851d741df.md) | 119 | `declaration-track:6f84cee63c59fa4851d741dfa66bac550c98f0934f3d2d1e9be27ea29fa49262` |
| 8 | `def` | [OrderIso.mulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-mulleft--4394db1b4709b25987992bd8.md) | 134 | `declaration-track:4394db1b4709b25987992bd805da6e5c1e556746cdd77391a96e51c0c35ec5f9` |
| 9 | `theorem` | [OrderIso.mulLeft_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e.lean/declarations/orderiso-mulleft-symm--86d1efd07ea52a6298f94b15.md) | 144 | `result-track:86d1efd07ea52a6298f94b1524705256711139d0c3c3f174ffb4c8bf5365d7bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
