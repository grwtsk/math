# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34db52aeb4ad237cd4fc6c9790ccf627d2e9dfb3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34db52aeb4ad237cd4fc6c9790ccf627d2e9dfb3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/finset-fintype--7dadb763324f03aae2c17e67.md) | 26 | `declaration-track:7dadb763324f03aae2c17e67231fb1d31e465e5605ebf08b622700d4ae62bd74` |
| 2 | `theorem` | [Fintype.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/fintype-card-finset--56d7a1ba3d4c3ccbbdd30eb2.md) | 30 | `result-track:56d7a1ba3d4c3ccbbdd30eb27b090e4b4866caa263c76c41f91118e37e9a4073` |
| 3 | `lemma` | [powerset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/powerset-univ--9b9405580e1cad266acf5a94.md) | 36 | `result-track:9b9405580e1cad266acf5a946013b0159d5f79ffe1a36d69243040c108a38c92` |
| 4 | `lemma` | [filter_subset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/filter-subset-univ--68aa96cc9fffc0a04f27d35d.md) | 39 | `result-track:68aa96cc9fffc0a04f27d35d62ff09dd0edf146d47e848f8a6b4f9ad46550b44` |
| 5 | `lemma` | [powerset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/powerset-eq-univ--b24106c95692809b6922886f.md) | 42 | `result-track:b24106c95692809b6922886f70fb65571a5a9e8a9642b0370f9892bc5daf8248` |
| 6 | `lemma` | [mem_powersetCard_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/mem-powersetcard-univ--fb62a5ce0f04fc00b143ce14.md) | 45 | `result-track:fb62a5ce0f04fc00b143ce14df4a0cd5c6cd33196bd44029c5b65521f87d394c` |
| 7 | `lemma` | [univ_filter_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/univ-filter-card-eq--8d876daf77deae8fa4e8d6c3.md) | 50 | `result-track:8d876daf77deae8fa4e8d6c3f25975f6e49715e612a45ba8c3cd5b06d3cdd402` |
| 8 | `theorem` | [Fintype.card_finset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/fintype-card-finset-len--25306c0fae95f82e99611f16.md) | 56 | `result-track:25306c0fae95f82e99611f16cd9c1d28b6b5c47e743808ff216a92638189c15f` |
| 9 | `instance` | [Set.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/set-fintype--81ad7311dd5008c2de11c22c.md) | 60 | `declaration-track:81ad7311dd5008c2de11c22cfdea2a7aa2194517049a459971d2b4dc25eb145f` |
| 10 | `instance` | [Set.instFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/set-instfinite--59e925e20db2614e5b17e6f8.md) | 67 | `declaration-track:59e925e20db2614e5b17e6f80fad17136f1df75a0e7fb2f094f7f4d5752123d3` |
| 11 | `theorem` | [Fintype.card_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant5cc7b5abf1da35a40de0cad11a70d9c7c899ca5ddb8c1289aa3e42a73f46b497.lean/declarations/fintype-card-set--05236fdaeeb49dbccba185bb.md) | 72 | `result-track:05236fdaeeb49dbccba185bbe6a68c61fe4ca560eb48ffb6bf5a808234a61279` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
