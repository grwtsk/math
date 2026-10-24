# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71d4e101e67eb7efb5c483c02f9ad024339f997",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71d4e101e67eb7efb5c483c02f9ad024339f997`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pairwise.forall_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-forall-of-forall--9fc79c45816d35cfdfe62387.md) | 46 | `result-track:9fc79c45816d35cfdfe62387194a82fac822fae52172da1d9764a995eb828e68` |
| 2 | `theorem` | [Pairwise.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-forall--5ccac860f6c3ce4b3795ff00.md) | 50 | `result-track:5ccac860f6c3ce4b3795ff008f0a7c725a325af653e8aa261bd6ed53f56997bf` |
| 3 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-set-pairwise--4b12bee0f33eeab9e66708ba.md) | 57 | `result-track:4b12bee0f33eeab9e66708badf277801b4f3b18ab78e001a48b9fa20030812a8` |
| 4 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-of-reflexive-of-forall-ne--c3da2b005e5db89ddcc48f2a.md) | 60 | `result-track:c3da2b005e5db89ddcc48f2a61dcefbdf365f25c119bb2f68edf7d5ca2261452` |
| 5 | `theorem` | [Pairwise.rel_head_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-head-tail--a83c61cf7ee373baabf37267.md) | 70 | `result-track:a83c61cf7ee373baabf37267d3af3934857c9b34c6b61638f64afb0552fd2bf4` |
| 6 | `theorem` | [Pairwise.rel_head_of_rel_head_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-head-of-rel-head-head--4573d3fc571bccd38de6c70a.md) | 76 | `result-track:4573d3fc571bccd38de6c70a4a842cc4afbe678eef996ae45197799702b5f785` |
| 7 | `theorem` | [Pairwise.rel_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-head--ca90acd7e44b8ba71621ee5d.md) | 83 | `result-track:ca90acd7e44b8ba71621ee5db6c560bfaaa2cb56b0a18d654650353e33fc27e2` |
| 8 | `theorem` | [Pairwise.rel_dropLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-droplast-getlast--8c2e2e1ec521b048dbc9f130.md) | 87 | `result-track:8c2e2e1ec521b048dbc9f1300c839060f16c99eed69672f6be8f2f11b6c2a30c` |
| 9 | `theorem` | [Pairwise.rel_getLast_of_rel_getLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-getlast-of-rel-getlast-getlast--48a0d921f97555cfed1cae2a.md) | 93 | `result-track:48a0d921f97555cfed1cae2a3408c7d510e2b9eb1b40abbb83c841997b23b6c0` |
| 10 | `theorem` | [Pairwise.rel_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variante3a2d6a27cf969b1aace22b50edddd2bc98807daec408bbcd2429fd385105134.lean/declarations/pairwise-rel-getlast--26f11ecbc646155c9aaf7f4d.md) | 99 | `result-track:26f11ecbc646155c9aaf7f4dce80a2a7e273c405eb55402a6900cb61cb74ecc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
