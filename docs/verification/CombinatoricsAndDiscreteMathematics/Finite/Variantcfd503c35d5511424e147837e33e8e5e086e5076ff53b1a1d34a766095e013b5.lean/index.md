# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3afeeec7bfbb8ec128b2d98a6777d23f3b5f06",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3afeeec7bfbb8ec128b2d98a6777d23f3b5f06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hall_cond_of_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-cond-of-erase--e4a479f3b37d2abaa51abf26.md) | 50 | `result-track:e4a479f3b37d2abaa51abf26a47ddc59c02ace316da6665c0b977cd98ca32a88` |
| 2 | `theorem` | [hall_hard_inductive_step_A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-hard-inductive-step-a--4df8f3a4a0431301ced253a8.md) | 78 | `result-track:4df8f3a4a0431301ced253a880af6426218618811bc8f68fc8f669c04f00ddfe` |
| 3 | `theorem` | [hall_cond_of_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-cond-of-restrict--2119aa9263eb8e7162c408fa.md) | 125 | `result-track:2119aa9263eb8e7162c408fa0953efb60c6ebbe4fc7ee909e395b3b9944a886d` |
| 4 | `theorem` | [hall_cond_of_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-cond-of-compl--a77911bbee57f2dbddb3a838.md) | 136 | `result-track:a77911bbee57f2dbddb3a83838e78afd2853029161a22d7550fa54450a79d8ed` |
| 5 | `theorem` | [hall_hard_inductive_step_B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-hard-inductive-step-b--20992fc9d48f6df77526eb51.md) | 166 | `result-track:20992fc9d48f6df77526eb51548b11918b25b26a5e1763ebb762f886c8d020be` |
| 6 | `theorem` | [hall_hard_inductive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/hall-hard-inductive--b47ca88ab8dea243c553a0d1.md) | 226 | `result-track:b47ca88ab8dea243c553a0d19b15dca681a229acc54978fc0f88482748c83c0b` |
| 7 | `theorem` | [Finset.all_card_le_biUnion_card_iff_existsInjective'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantcfd503c35d5511424e147837e33e8e5e086e5076ff53b1a1d34a766095e013b5.lean/declarations/finset-all-card-le-biunion-card-iff-existsinjective--cc001b42c13b96fe3c30422a.md) | 256 | `result-track:cc001b42c13b96fe3c30422ae0acb890d9f51a8644f15860b9d686cc5e96e34d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
