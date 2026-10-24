# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61e3c118ecc8851464b19e001456d59ad2b004b8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61e3c118ecc8851464b19e001456d59ad2b004b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Derangements.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/instance--611a481f915ecbe2b8ff9cb6.md) | 33 | `declaration-track:611a481f915ecbe2b8ff9cb6a9d972a3db1958ae75a2c1fbad4d3d3623679ba2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/instance--77202d81929082292dcc63e1.md) | 36 | `declaration-track:77202d81929082292dcc63e1cfb6f1d166c9699d768640ef6faa8f4bfd8eb599` |
| 3 | `theorem` | [card_derangements_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/card-derangements-invariant--ff5a7825a8ea8d21d0508ff9.md) | 38 | `result-track:ff5a7825a8ea8d21d0508ff98f46371e383b32a40261299d99bfd26fdc2c43b9` |
| 4 | `theorem` | [card_derangements_fin_add_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/card-derangements-fin-add-two--aa56085d54dc8d67a47cf6c3.md) | 42 | `result-track:aa56085d54dc8d67a47cf6c38bbf321a197f0520e8242ecf3b113336d35e0e46` |
| 5 | `def` | [numDerangements](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements--f923a273ea65c5ccd2c28d59.md) | 64 | `declaration-track:f923a273ea65c5ccd2c28d59548d0e44fe424a889994700bb114e6937062ce30` |
| 6 | `theorem` | [numDerangements_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements-zero--7b6844da101947a3a5404f11.md) | 70 | `result-track:7b6844da101947a3a5404f112c619688acd6f0345100321a10e5339ef167c81f` |
| 7 | `theorem` | [numDerangements_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements-one--cf3b8a1f957560735b9453b8.md) | 74 | `result-track:cf3b8a1f957560735b9453b81f7224d9814347e1badde18720f330401663af36` |
| 8 | `theorem` | [numDerangements_add_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements-add-two--86444b5def7717ed703046e6.md) | 77 | `result-track:86444b5def7717ed703046e6ce6b100f89d5765ac1d5f10d6e5fae3c6005db0b` |
| 9 | `theorem` | [numDerangements_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements-succ--5d6eb3affa5971fe204b5cf2.md) | 81 | `result-track:5d6eb3affa5971fe204b5cf20f11542d828e6b200c7ce44fd981600c41f3085a` |
| 10 | `theorem` | [card_derangements_fin_eq_numDerangements](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/card-derangements-fin-eq-numderangements--d1c475df91b9594e5b9e062e.md) | 89 | `result-track:d1c475df91b9594e5b9e062efa98de897ed4c57a7d5b07b4105c371b3c1a04de` |
| 11 | `theorem` | [card_derangements_eq_numDerangements](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/card-derangements-eq-numderangements--5053a14a3b119b3a4b8e18d1.md) | 100 | `result-track:5053a14a3b119b3a4b8e18d1eedb3b2f4715ec69e27ced326c416e7f09c2f54c` |
| 12 | `theorem` | [numDerangements_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant43f41265eab5ab76dfc72d85298420019ac027debe46888548fd07f93e977a09.lean/declarations/numderangements-sum--f28c946eb5db79fed99c0eb4.md) | 105 | `result-track:f28c946eb5db79fed99c0eb4fed389d16c62f98145cccdef38b56589a34e1988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
