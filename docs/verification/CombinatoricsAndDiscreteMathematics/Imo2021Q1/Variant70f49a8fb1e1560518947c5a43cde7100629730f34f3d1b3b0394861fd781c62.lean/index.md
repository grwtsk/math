# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2021Q1.Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_numbers_in_interval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/declarations/exists-numbers-in-interval--ffaa7a74baecac3d4de000d1.md) | 56 | `result-track:ffaa7a74baecac3d4de000d15454efad950cc1186fbfc46f4f3bf28c1beb4532` |
| 2 | `theorem` | [exists_triplet_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/declarations/exists-triplet-summing-to-squares--75b7e7b35743488ba7a8f229.md) | 74 | `result-track:75b7e7b35743488ba7a8f229c9442b02db7be034e0abc6fa68e7c13faf6c2e3d` |
| 3 | `theorem` | [exists_finset_3_le_card_with_pairs_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/declarations/exists-finset-3-le-card-with-pairs-summing-to-squares--2099402be380920a3eb09c45.md) | 89 | `result-track:2099402be380920a3eb09c455e8074ceb7b868327ffe871ac903ade06c1b0670` |
| 4 | `theorem` | [imo2021_q1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/declarations/imo2021-q1--f0c5ae6f9377d96b5e5a836f.md) | 119 | `result-track:f0c5ae6f9377d96b5e5a836fe292281fcb92fa96f49366a0889c8cdac4cc37b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
