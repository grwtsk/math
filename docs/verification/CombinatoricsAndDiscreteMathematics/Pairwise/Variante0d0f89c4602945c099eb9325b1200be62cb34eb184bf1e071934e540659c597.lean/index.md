# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83610784ce0aeca6b56e477ace2a8febafd83749",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83610784ce0aeca6b56e477ace2a8febafd83749`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.List` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/instance--b5df9546d93204dafc0201d6.md) | 30 | `declaration-track:b5df9546d93204dafc0201d600b6165043fc83d4b937ec4b54c7d21e48ab0821` |
| 2 | `theorem` | [Finset.pairwiseDisjoint_range_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/finset-pairwisedisjoint-range-singleton--e1632b84f15144bd75dbb2cd.md) | 34 | `result-track:e1632b84f15144bd75dbb2cd5796edbda7ecef1fafef8e07c130427fec1787ea` |
| 3 | `theorem` | [PairwiseDisjoint.elim_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwisedisjoint-elim-finset--4f5bbe29b24e6d18e15fc1c5.md) | 41 | `result-track:4f5bbe29b24e6d18e15fc1c5fda74c348208595bfe2d498064a8d5b05b9ee6ca` |
| 4 | `theorem` | [PairwiseDisjoint.image_finset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwisedisjoint-image-finset-of-le--7b974d4cb2e896bb8a9815de.md) | 49 | `result-track:7b974d4cb2e896bb8a9815de4a47a0cb92ea3a9dcbe128174aa662708460df16` |
| 5 | `theorem` | [PairwiseDisjoint.attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwisedisjoint-attach--772a5875e468449a218f8ec4.md) | 55 | `result-track:772a5875e468449a218f8ec4ea4649d69f5602daf3ed83ace0c61573fd64b161` |
| 6 | `theorem` | [PairwiseDisjoint.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwisedisjoint-biunion-finset--beabe71d17625821c21ca186.md) | 65 | `result-track:beabe71d17625821c21ca18605929d3a102d7f32c0005465d1ac1f178b65e869` |
| 7 | `theorem` | [pairwise_of_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwise-of-coe-tofinset-pairwise--6ef9defd26ab50a1803ec9ca.md) | 82 | `result-track:6ef9defd26ab50a1803ec9caccde3868ddd0c23c5d237508af92388ebc362480` |
| 8 | `theorem` | [pairwise_iff_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwise-iff-coe-tofinset-pairwise--c9ea18fd6fe3acf65176431d.md) | 87 | `result-track:c9ea18fd6fe3acf65176431d4274ec246d7505d5519377c883de353ce82be674` |
| 9 | `theorem` | [pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwise-disjoint-of-coe-tofinset-pairwisedisjoint--ff01c93394c797298fc93d81.md) | 94 | `result-track:ff01c93394c797298fc93d814a3dfa341e6e0edb9b1eadf2ccab793f88554eed` |
| 10 | `theorem` | [pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean/declarations/pairwisedisjoint-iff-coe-tofinset-pairwise-disjoint--aedf54c516e229f984cd998f.md) | 99 | `result-track:aedf54c516e229f984cd998f4af9a44517ea8498dae10de4f1ab8db85c09570d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
