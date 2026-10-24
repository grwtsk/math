# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2021Q1.Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5447246f6848331cbfa401f5034f9c4bb193a819",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5447246f6848331cbfa401f5034f9c4bb193a819`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_numbers_in_interval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/declarations/exists-numbers-in-interval--18f87fae3d488d111fd38539.md) | 48 | `result-track:18f87fae3d488d111fd38539b58abd606487a5d92d5cf7409a0ce5b974875a6a` |
| 2 | `theorem` | [exists_triplet_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/declarations/exists-triplet-summing-to-squares--11185b124697ab18e64df453.md) | 66 | `result-track:11185b124697ab18e64df453f3d26abdd909e8ca4bae3806d0b93d1d3ed0d443` |
| 3 | `theorem` | [exists_finset_3_le_card_with_pairs_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/declarations/exists-finset-3-le-card-with-pairs-summing-to-squares--790d1feca52c8b7ae7beb29a.md) | 81 | `result-track:790d1feca52c8b7ae7beb29aa6d7cdfe94f0e732bdb39cdc5e1df70808649c4e` |
| 4 | `theorem` | [imo2021_q1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/declarations/imo2021-q1--19542f38a7c530b3ebca02ba.md) | 111 | `result-track:19542f38a7c530b3ebca02ba983806eb7679cec6a061a83bfa93a78a220a6586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
