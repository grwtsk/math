# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41fb3520abbe9a71326c88971e40fb09c6577997",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41fb3520abbe9a71326c88971e40fb09c6577997`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairwise_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwise-iunion--aa7fcb5912eed5c205dc1710.md) | 25 | `result-track:aa7fcb5912eed5c205dc17104e705311cf16c77b96db543ba6a392487135a4dd` |
| 2 | `theorem` | [pairwise_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwise-sunion--5c5dd410078a2fd14152b64d.md) | 36 | `result-track:5c5dd410078a2fd14152b64d98a73084066dfcc4b32cd81daf96d5675ff58e29` |
| 3 | `theorem` | [pairwiseDisjoint_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-iunion--071c3ba76ab4ed233c15b01e.md) | 50 | `result-track:071c3ba76ab4ed233c15b01ece5d6f843248561735e3e43a76cb67d3ea355847` |
| 4 | `theorem` | [pairwiseDisjoint_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-sunion--c6734d84e7746ccbf66bbf0b.md) | 54 | `result-track:c6734d84e7746ccbf66bbf0bb13674a7da7e1a140fafbbb75ec73bec8bb690bf` |
| 5 | `theorem` | [PairwiseDisjoint.biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-biunion--1261ea71ef1eea10f5346fb3.md) | 66 | `result-track:1261ea71ef1eea10f5346fb3c858bc1d40bf28bc9055c4a258006381fd9f6d2d` |
| 6 | `theorem` | [PairwiseDisjoint.prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-prod-left--4c87cc685427d7bba9cd969c.md) | 81 | `result-track:4c87cc685427d7bba9cd969c748fb279d5154e84ed1634e1cf1fc3ce863e9570` |
| 7 | `theorem` | [pairwiseDisjoint_prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-prod-left--cb9232211b70520ae59b3857.md) | 101 | `result-track:cb9232211b70520ae59b3857f16b3a5e4b7de29c18859219863a3e3ac5e55568` |
| 8 | `theorem` | [biUnion_diff_biUnion_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/biunion-diff-biunion-eq--b9f360b460f7f666510b96c4.md) | 114 | `result-track:b9f360b460f7f666510b96c46746b95c0a99dc5eea761a7bcd101e5850ef24a3` |
| 9 | `def` | [biUnionEqSigmaOfDisjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/biunioneqsigmaofdisjoint--a08bafdcd7fc619ca1bc2cc8.md) | 124 | `declaration-track:a08bafdcd7fc619ca1bc2cc8c1f586eebd249a219d8861d0de0e508009f3379a` |
| 10 | `lemma` | [Set.pairwiseDisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/set-pairwisedisjoint-iff--b8ed3b7b25e2d1406c394674.md) | 135 | `result-track:b8ed3b7b25e2d1406c3946741402c18995fd6d71d3a824c7d5663ba233eb288d` |
| 11 | `lemma` | [Set.pairwiseDisjoint_pair_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/set-pairwisedisjoint-pair-insert--f34d46837780aabc5b5b0589.md) | 140 | `result-track:f34d46837780aabc5b5b058913cc8ddbc18c7527ab18d2c4374c40bb4add899f` |
| 12 | `theorem` | [Set.PairwiseDisjoint.subset_of_biUnion_subset_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/set-pairwisedisjoint-subset-of-biunion-subset-biunion--b34e57503ed96b576dc00d22.md) | 147 | `result-track:b34e57503ed96b576dc00d227b8f1cac550e1ccdbdc4cc182e5946271e694fc6` |
| 13 | `theorem` | [Pairwise.subset_of_biUnion_subset_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwise-subset-of-biunion-subset-biunion--2430a6332579083831ac2263.md) | 155 | `result-track:2430a6332579083831ac2263154ee98f248e81209a927ab71a60329f6b1c0fef` |
| 14 | `theorem` | [Pairwise.biUnion_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwise-biunion-injective--ddda1fa35d540e27a0c934b7.md) | 159 | `result-track:ddda1fa35d540e27a0c934b772f70332961ac67a380a4cea6f7465b1f72d6f75` |
| 15 | `theorem` | [pairwiseDisjoint_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantd8f873c94366d89e4b558aa723808429d012548edcda93fd57ef15a801244f05.lean/declarations/pairwisedisjoint-unique--a03024a452f46cf148a5a633.md) | 165 | `result-track:a03024a452f46cf148a5a633d0ad84129cce1aa4aec3c10e017b8d22ef221647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
