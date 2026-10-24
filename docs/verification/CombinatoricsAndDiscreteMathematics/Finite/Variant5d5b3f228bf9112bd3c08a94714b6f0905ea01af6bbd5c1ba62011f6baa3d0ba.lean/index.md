# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2675aeea08efd962257154d9442a9d1133d4ede2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2675aeea08efd962257154d9442a9d1133d4ede2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hall_cond_of_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-cond-of-erase--136f4e7ece087672b5d4dca2.md) | 57 | `result-track:136f4e7ece087672b5d4dca23d19bf974495f1bd65b81167c54186bc38806655` |
| 2 | `theorem` | [hall_hard_inductive_step_A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-hard-inductive-step-a--8de1aa19ddee399e9302e922.md) | 84 | `result-track:8de1aa19ddee399e9302e9229d0ab49514f39ba0cc1277b47ec61882c184655c` |
| 3 | `theorem` | [hall_cond_of_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-cond-of-restrict--5beaf4c60208808b292337dd.md) | 130 | `result-track:5beaf4c60208808b292337dd043b26f6403e8829c48ddb63ef09bd6100c99e07` |
| 4 | `theorem` | [hall_cond_of_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-cond-of-compl--9ad97bb9dc35d7746c80b392.md) | 140 | `result-track:9ad97bb9dc35d7746c80b39213a8fd07963243181c3ac526258f64bc26ff3543` |
| 5 | `theorem` | [hall_hard_inductive_step_B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-hard-inductive-step-b--4ebcf7b480312147ce4711d2.md) | 169 | `result-track:4ebcf7b480312147ce4711d26a834bc90896930a9e642c9b7fa4b96836e74419` |
| 6 | `theorem` | [hall_hard_inductive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/hall-hard-inductive--502980844a78e0b11d655c3a.md) | 227 | `result-track:502980844a78e0b11d655c3af4f8a0777f501649e8d8fe7f03717c26988e5783` |
| 7 | `theorem` | [Finset.all_card_le_biUnion_card_iff_existsInjective'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5d5b3f228bf9112bd3c08a94714b6f0905ea01af6bbd5c1ba62011f6baa3d0ba.lean/declarations/finset-all-card-le-biunion-card-iff-existsinjective--f0c386cbb0e341658b1f5d6f.md) | 257 | `result-track:f0c386cbb0e341658b1f5d6fdbae1610d9282832d1e94b0a729f59c8509f9dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
