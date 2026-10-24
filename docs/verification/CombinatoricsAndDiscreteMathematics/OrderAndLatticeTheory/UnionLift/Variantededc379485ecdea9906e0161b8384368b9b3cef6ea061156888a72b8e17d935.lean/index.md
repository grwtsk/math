# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UnionLift.Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db0431687fcacd957e88c1f1bf50f798d63a5a6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db0431687fcacd957e88c1f1bf50f798d63a5a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iUnionLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift--8d97e7d3e5b5cc1c74de45af.md) | 51 | `declaration-track:8d97e7d3e5b5cc1c74de45af1d98b3d6e08456a253c0a4ec8c1610b1fe7b35bb` |
| 2 | `theorem` | [iUnionLift_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-mk--13912076911a5c1bef6bb724.md) | 62 | `result-track:13912076911a5c1bef6bb7240062145569863e954eede2212ea7336ca67a9963` |
| 3 | `theorem` | [iUnionLift_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-inclusion--4c4ff37b8b351ccfbcd08dae.md) | 65 | `result-track:4c4ff37b8b351ccfbcd08dae3024fc7cde4754717632b967887e19fa57209b09` |
| 4 | `theorem` | [iUnionLift_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-of-mem--437908390b9a55d01aa2b7e0.md) | 69 | `result-track:437908390b9a55d01aa2b7e0c8e7c65350d54f0b1a5820a242da4315fd78976b` |
| 5 | `theorem` | [preimage_iUnionLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/preimage-iunionlift--4bfcbc29537478fee7bbd8c8.md) | 72 | `result-track:4bfcbc29537478fee7bbd8c83731fee12d4199c05f3b34b04fba2f18d2a4bd0e` |
| 6 | `theorem` | [iUnionLift_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-const--ecae27df4fd3422d57128a4c.md) | 89 | `result-track:ecae27df4fd3422d57128a4c47c1375b2079df9a840f0fb1304e384e2d61c413` |
| 7 | `theorem` | [iUnionLift_unary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-unary--47883ca6755fc9d860c7fbeb.md) | 99 | `result-track:47883ca6755fc9d860c7fbeb8c40085971884b6384062ff38d99ffe4f57317db` |
| 8 | `theorem` | [iUnionLift_binary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/iunionlift-binary--3c0c453f52cecbe6ecc13c34.md) | 118 | `result-track:3c0c453f52cecbe6ecc13c347117b474915d5b3b5f975edbdba6daa820352263` |
| 9 | `def` | [liftCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/liftcover--22d3b434146d95470c60a686.md) | 150 | `declaration-track:22d3b434146d95470c60a686e345f71dd0a79e10480b92f9139b01809e0b56af` |
| 10 | `theorem` | [liftCover_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/liftcover-coe--58f74e31f954882bfda652b7.md) | 156 | `result-track:58f74e31f954882bfda652b7290603967bececf5332a69b8fcaf7bf8ebbc5035` |
| 11 | `theorem` | [liftCover_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/liftcover-of-mem--e03a8e15d7b2667bfb2c58c2.md) | 159 | `result-track:e03a8e15d7b2667bfb2c58c222f1688cb15a85ded0fb9f3eeb99d8664d338e0b` |
| 12 | `theorem` | [preimage_liftCover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/declarations/preimage-liftcover--f1113ada6aba3ffbd0734cbf.md) | 163 | `result-track:f1113ada6aba3ffbd0734cbf3f61d8ab379d5bbb2ed9d7b3e7fd4df5a29dcb4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
