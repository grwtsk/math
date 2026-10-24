# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.StronglyRegular.Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0c16c2dd9c973bd9bdf30d4cd3ba58562110603",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0c16c2dd9c973bd9bdf30d4cd3ba58562110603`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSRGWith](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith--90fde3098a5daf1c289cd471.md) | 53 | `declaration-track:90fde3098a5daf1c289cd47137fe49a9e576d8e737cbb74e185efcee374dac60` |
| 2 | `theorem` | [bot_strongly_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/bot-strongly-regular--c6040a7d1fe89f06e4007941.md) | 63 | `result-track:c6040a7d1fe89f06e40079415b6a68b8833d354690ffc7ed1804324de787bde8` |
| 3 | `theorem` | [IsSRGWith.top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-top--d61a1e8541d251c1aa529b92.md) | 81 | `result-track:d61a1e8541d251c1aa529b92de166bac7cb2a9b838e251760125c082c59a8b15` |
| 4 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-card-neighborfinset-union-eq--dc05a99d04e2ad4ebfe6f172.md) | 88 | `result-track:dc05a99d04e2ad4ebfe6f1720c90aaf90e14d8f0d35866d72dc4566e393d8411` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--530a344680343bb9f08d3200.md) | 101 | `result-track:530a344680343bb9f08d320038dc57a8933f5d42dba65b9c3a1b3583f9af9370` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--63b64b2d3b2cb6b3c3368fb4.md) | 107 | `result-track:63b64b2d3b2cb6b3c3368fb43f2440a63c07d6c8505b63c5c83f95fc77e74129` |
| 7 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/compl-neighborfinset-sdiff-inter-eq--c69d53c2e9bc7c8afcf15b18.md) | 112 | `result-track:c69d53c2e9bc7c8afcf15b1835542738b0a842f8632acdd87a5455689bb4b80b` |
| 8 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/sdiff-compl-neighborfinset-inter-eq--39ccba639449becd33717fe6.md) | 119 | `result-track:39ccba639449becd33717fe6eb39f2af703ded0f1a51f4fa81959f33515fd486` |
| 9 | `theorem` | [IsSRGWith.compl_is_regular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-compl-is-regular--f045eb5719aeeb03422a5b0d.md) | 130 | `result-track:f045eb5719aeeb03422a5b0d57bb883b574481b49a08a7136e21fa5f8dde7169` |
| 10 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--4b3f1065f90a8071951beb65.md) | 135 | `result-track:4b3f1065f90a8071951beb65ba5475e79e84f8c7cdb7fa265ae9622cd2b7c0ad` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--8fa535aef812aa3693db75dd.md) | 149 | `result-track:8fa535aef812aa3693db75dd480c32fabac3a59fe040446f7e0f9023eab49e9f` |
| 12 | `theorem` | [IsSRGWith.compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-compl--b48895ce0b3680e32747649f.md) | 160 | `result-track:b48895ce0b3680e32747649f1c399e3d1e52d451821fb488d887498276f9f276` |
| 13 | `theorem` | [IsSRGWith.param_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-param-eq--d56834d1e572e08f64ed4d00.md) | 169 | `result-track:d56834d1e572e08f64ed4d000cd49659abd0c89ad1a8c163efc5acb3bace7430` |
| 14 | `theorem` | [IsSRGWith.matrix_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/declarations/issrgwith-matrix-eq--15b6e164412b7f008baa10ce.md) | 204 | `result-track:15b6e164412b7f008baa10cef03ec619e487b398e005df8d5e89ebb5c4c1245b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
