# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dcb1041126e7b8304f4fc67a813aaa4794a212f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dcb1041126e7b8304f4fc67a813aaa4794a212f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.List` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/instance--2fb0889cca589ae28419a6a2.md) | 22 | `declaration-track:2fb0889cca589ae28419a6a2caf5dd3d362a4f1967f97a2143ac8ebbbc8cb612` |
| 2 | `theorem` | [Finset.pairwiseDisjoint_range_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/finset-pairwisedisjoint-range-singleton--ca784d63f078632e52c42c17.md) | 26 | `result-track:ca784d63f078632e52c42c177c3442a7dc01e55af6e574dfee4bc64219022dca` |
| 3 | `theorem` | [PairwiseDisjoint.elim_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwisedisjoint-elim-finset--ce82e03bf23cc2306844aec4.md) | 33 | `result-track:ce82e03bf23cc2306844aec4c60f34fad1c8e75a5d86d9643a979d8be32d755b` |
| 4 | `theorem` | [PairwiseDisjoint.image_finset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwisedisjoint-image-finset-of-le--f302d0294134b4edeb8fc236.md) | 41 | `result-track:f302d0294134b4edeb8fc236277aec9e405b66bbf7ba22cad8e383f026ab89e7` |
| 5 | `theorem` | [PairwiseDisjoint.attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwisedisjoint-attach--a7f2e20aba72179925974054.md) | 47 | `result-track:a7f2e20aba7217992597405491e6a6abbff5b826c666dbe8c7ca4259d69c7e31` |
| 6 | `theorem` | [PairwiseDisjoint.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwisedisjoint-biunion-finset--2ec0ad57ddc3807e16e91c3b.md) | 57 | `result-track:2ec0ad57ddc3807e16e91c3b531bacb89b5124a2f7a449ce1b72fcd589790837` |
| 7 | `theorem` | [pairwise_of_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwise-of-coe-tofinset-pairwise--2acb26afed4c4e053b924446.md) | 74 | `result-track:2acb26afed4c4e053b9244464a17bcf6f38f5d2838c2e56a6994ee12e567f675` |
| 8 | `theorem` | [pairwise_iff_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwise-iff-coe-tofinset-pairwise--87c88cb580796d453ac79198.md) | 79 | `result-track:87c88cb580796d453ac791980f228a5d5e751c014fac02a56c712083d7f18544` |
| 9 | `theorem` | [pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwise-disjoint-of-coe-tofinset-pairwisedisjoint--b3e3b70424d814a3ed9ab5a7.md) | 86 | `result-track:b3e3b70424d814a3ed9ab5a762db12f46315af7f08ad15a8838c9c175983feed` |
| 10 | `theorem` | [pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variantc1de7e922c3dbc8209101bb3512b6f9abf673dc65020c0f18c1c170990bf3b95.lean/declarations/pairwisedisjoint-iff-coe-tofinset-pairwise-disjoint--bb8983f8a8ff2cd495cdd98b.md) | 91 | `result-track:bb8983f8a8ff2cd495cdd98b739f1e66de7a7ac34032f76fe1fbd6f810d7117e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
