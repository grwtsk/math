# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLatCat.Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9f57374758d83c4297340cea203b02e10bc9ef1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9f57374758d83c4297340cea203b02e10bc9ef1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLatCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompleteLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/completelatcat--b2bb8927929d3154f2d2083b.md) | 32 | `declaration-track:b2bb8927929d3154f2d2083b1a80e962026b43656a5ed2e4da12b0ba333e9155` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/instance--b3248432174387f08b640247.md) | 38 | `declaration-track:b3248432174387f08b6402476bd5bb2bcf82baa7bdc6ee8d5f3bae1194ac2723` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/instance--48376519e4d7711dd5e6e6b0.md) | 41 | `declaration-track:48376519e4d7711dd5e6e6b0a1e329b531af4426c911bbb708e694bc1d87430d` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/of--b23541336ec748dc6092069d.md) | 45 | `declaration-track:b23541336ec748dc6092069d216780ef42c6010b31f9820f41cca083e56657b7` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/coe-of--8aa2ad3d605e3b4a9f4a672a.md) | 50 | `result-track:8aa2ad3d605e3b4a9f4a672a3e5b49b17faaa1f3255f3b048b9c06cf5f6fa505` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/instance--0b69de16f145abfdf0df6ab0.md) | 54 | `declaration-track:0b69de16f145abfdf0df6ab095a2a6e0c3a28de9351f8a39d194716a54c7b51d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/instance--ad353940c8676153eb26dc99.md) | 57 | `declaration-track:ad353940c8676153eb26dc99b01783dd2dce0daa7b0343d3bac64d802d50ddf2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/instance--d0574db84ac37a83a078fecc.md) | 65 | `declaration-track:d0574db84ac37a83a078feccc874e3528e47f79fe5e509d63dbe89dbc3f36fb2` |
| 9 | `instance` | [hasForgetToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/hasforgettobddlat--1e26312b396326a80473fa0c.md) | 68 | `declaration-track:1e26312b396326a80473fa0cd70491db1db3f0e1bbeb9db00888e6ef545bf58e` |
| 10 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/iso-mk--e845cabd05290e62b96ae80d.md) | 77 | `declaration-track:e845cabd05290e62b96ae80df7f2871e2d1d61840010a1496102757aa293867d` |
| 11 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/dual--9dd4ef85f4293e4f4b74f59a.md) | 86 | `declaration-track:9dd4ef85f4293e4f4b74f59a8d56d3346bc326c3f1c775f5f93cada48ed237f9` |
| 12 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/dualequiv--566fca1c9b51b19f283e7d10.md) | 93 | `declaration-track:566fca1c9b51b19f283e7d106b187b6dd94c69e6bdeffa02482c762139283578` |
| 13 | `theorem` | [completeLatCat_dual_comp_forget_to_bddLatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean/declarations/completelatcat-dual-comp-forget-to-bddlatcat--2d35bc543c137a58fa828291.md) | 102 | `result-track:2d35bc543c137a58fa8282912c03a38b238d0fb8b09f11a01d79ccd967adfa43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
