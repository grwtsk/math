# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7dc5d5c3e8f0432f3196a3ffa68ac42848b3e69",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7dc5d5c3e8f0432f3196a3ffa68ac42848b3e69`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairwise_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwise-iunion--27b102b6fda5f7a68a3ca631.md) | 33 | `result-track:27b102b6fda5f7a68a3ca6312d694a6ff60bf8237f9fd64e4974cb25dea5f492` |
| 2 | `theorem` | [pairwise_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwise-sunion--c0b730969765a2fb5d694693.md) | 44 | `result-track:c0b730969765a2fb5d6946935c42f54a550d8c60fe7270146e9cb499064c6ba8` |
| 3 | `theorem` | [pairwiseDisjoint_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-iunion--677f1bed6f8ba6b63d80910a.md) | 58 | `result-track:677f1bed6f8ba6b63d80910ad468ebc42db0d46ad63ac290af35c431c92d8608` |
| 4 | `theorem` | [pairwiseDisjoint_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-sunion--ec5ca6aff97ade9408ac4658.md) | 62 | `result-track:ec5ca6aff97ade9408ac46580e85648ed3f321b563a30c60161cb2a665222bae` |
| 5 | `theorem` | [PairwiseDisjoint.biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-biunion--10236754fd1ae2003f32c13f.md) | 74 | `result-track:10236754fd1ae2003f32c13f07879d0ab5ca018825254f8767b01d125d6997ed` |
| 6 | `theorem` | [PairwiseDisjoint.prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-prod-left--e73018c1dde36fb9c1163795.md) | 89 | `result-track:e73018c1dde36fb9c1163795363b69dc226f29af7f97d1649b91df14b7d5325a` |
| 7 | `theorem` | [pairwiseDisjoint_prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-prod-left--5e0265b0d61206f4246785d7.md) | 109 | `result-track:5e0265b0d61206f4246785d7aa5b2fdea0f744a434d3e9a4ec819e0bc3a16e68` |
| 8 | `theorem` | [biUnion_diff_biUnion_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/biunion-diff-biunion-eq--e7d4bc3eed65687f847f69cd.md) | 122 | `result-track:e7d4bc3eed65687f847f69cd5f28f09c09a8a45c54642103e379cc07ded4071d` |
| 9 | `def` | [biUnionEqSigmaOfDisjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/biunioneqsigmaofdisjoint--3d61a406fee7df6848816121.md) | 132 | `declaration-track:3d61a406fee7df68488161211e6f43cfad1a60642fa76054db4ea5fa29a4f5c8` |
| 10 | `lemma` | [Set.pairwiseDisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/set-pairwisedisjoint-iff--5c4798b54b74dc359e341f91.md) | 143 | `result-track:5c4798b54b74dc359e341f910cdea9672effec8c25cc595d1adbccbcf3ef2f6b` |
| 11 | `lemma` | [Set.pairwiseDisjoint_pair_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/set-pairwisedisjoint-pair-insert--a6a269e4c09e1d3add462b1c.md) | 148 | `result-track:a6a269e4c09e1d3add462b1cdc692d499f660af47d1c04ca62e1ec1930245198` |
| 12 | `theorem` | [Set.PairwiseDisjoint.subset_of_biUnion_subset_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/set-pairwisedisjoint-subset-of-biunion-subset-biunion--03137193f59205c4cb438ada.md) | 155 | `result-track:03137193f59205c4cb438adada627091040b4d6221c4c6fc98b1d8c6c4db4a4f` |
| 13 | `theorem` | [Pairwise.subset_of_biUnion_subset_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwise-subset-of-biunion-subset-biunion--1e3f57873073871f78ea3f26.md) | 163 | `result-track:1e3f57873073871f78ea3f26d2a302ecfed10694ee1030a14d194b0cfe8659f6` |
| 14 | `theorem` | [Pairwise.biUnion_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwise-biunion-injective--4c6335e167d4578b2b758dae.md) | 167 | `result-track:4c6335e167d4578b2b758dae90c37710387068a210246ed3903986ebb190b615` |
| 15 | `theorem` | [pairwiseDisjoint_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/declarations/pairwisedisjoint-unique--165937f5009780399ea572a9.md) | 173 | `result-track:165937f5009780399ea572a9e9cf161bd762b74b27507ec5ed1d356d12247be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
