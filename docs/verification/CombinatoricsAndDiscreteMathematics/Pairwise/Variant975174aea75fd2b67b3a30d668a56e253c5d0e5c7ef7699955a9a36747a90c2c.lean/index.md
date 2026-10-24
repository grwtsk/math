# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fa76981ad3b7eab77d2d254970df37893dd7fe4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fa76981ad3b7eab77d2d254970df37893dd7fe4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/instance--f20e592b02c10dc482f20f19.md) | 34 | `declaration-track:f20e592b02c10dc482f20f19cccd7f5940ca1bc9bd9514dbf41f1a4f10fb4d9d` |
| 2 | `theorem` | [Finset.pairwiseDisjoint_range_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/finset-pairwisedisjoint-range-singleton--00e4cc3770883d1d02a5df96.md) | 38 | `result-track:00e4cc3770883d1d02a5df96971e305c3f9d6f87f8016635bc21a8f851e53157` |
| 3 | `theorem` | [PairwiseDisjoint.elim_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwisedisjoint-elim-finset--596b9a9064a0082215c0c6fa.md) | 45 | `result-track:596b9a9064a0082215c0c6faa53afc59f62f5239cc69dcb516d17ee88b9f5a80` |
| 4 | `theorem` | [PairwiseDisjoint.image_finset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwisedisjoint-image-finset-of-le--cf6c91b8bea05e08c2b1c23f.md) | 53 | `result-track:cf6c91b8bea05e08c2b1c23f392a180f0504d8909bd0a649040639c1de0629c4` |
| 5 | `theorem` | [PairwiseDisjoint.attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwisedisjoint-attach--62ee8d0b0e7f45381e21cbd7.md) | 59 | `result-track:62ee8d0b0e7f45381e21cbd7a01b0d193eda6c8ea94179c7ea0bb5aa1e93855c` |
| 6 | `theorem` | [PairwiseDisjoint.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwisedisjoint-biunion-finset--15ad406e0a641ebb192012bf.md) | 69 | `result-track:15ad406e0a641ebb192012bfc04d3412d5c5f975fd92fef4f5c02ed47212f686` |
| 7 | `theorem` | [pairwise_of_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwise-of-coe-tofinset-pairwise--bdc5e951fb5214a8de865daf.md) | 86 | `result-track:bdc5e951fb5214a8de865daf9c4cb7af211b9c49a19f85f80cffe23a10c205e8` |
| 8 | `theorem` | [pairwise_iff_coe_toFinset_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwise-iff-coe-tofinset-pairwise--88a83c72a260ce01da8231a0.md) | 91 | `result-track:88a83c72a260ce01da8231a05708d2055b75ae2746e89d67f76d9ee0e9153479` |
| 9 | `theorem` | [pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwise-disjoint-of-coe-tofinset-pairwisedisjoint--45409751082790e0a8513e9e.md) | 97 | `result-track:45409751082790e0a8513e9e3330fd92fa2d66b4244bcf8b2571bbb7d43557a3` |
| 10 | `theorem` | [pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pairwise/Variant975174aea75fd2b67b3a30d668a56e253c5d0e5c7ef7699955a9a36747a90c2c.lean/declarations/pairwisedisjoint-iff-coe-tofinset-pairwise-disjoint--7d4c7e8feba2d14ed4a576bc.md) | 102 | `result-track:7d4c7e8feba2d14ed4a576bc9f7568489e063553ae03d2fc92841b40e65ac557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
