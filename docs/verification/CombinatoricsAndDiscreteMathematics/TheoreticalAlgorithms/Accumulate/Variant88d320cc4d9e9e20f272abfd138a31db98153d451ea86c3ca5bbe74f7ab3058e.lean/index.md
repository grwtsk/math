# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "519deeac7ea3ecf63f3feac943dd8ec5b0c7909d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `519deeac7ea3ecf63f3feac943dd8ec5b0c7909d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate--acb82fb9cf9f95cfd451fc35.md) | 28 | `declaration-track:acb82fb9cf9f95cfd451fc3525834cc30a5a00ce80ed7d244334d2e90a9723a6` |
| 2 | `theorem` | [accumulate_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate-def--c0a8a44fc2be667059fdf2f0.md) | 31 | `result-track:c0a8a44fc2be667059fdf2f041bd11e905f9be16d2ec15dfb3da6b3e6b2bf4fe` |
| 3 | `theorem` | [mem_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/mem-accumulate--325fc41afd42706bbfbf0676.md) | 35 | `result-track:325fc41afd42706bbfbf067650445f93ebca5d7ca6b447ac2ffc81f3d7886833` |
| 4 | `theorem` | [subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/subset-accumulate--f0c1a10b08bae6373a8c939e.md) | 38 | `result-track:f0c1a10b08bae6373a8c939e10dd73117f51a981e7d3e23a0179024caab67e7b` |
| 5 | `theorem` | [accumulate_subset_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate-subset-iunion--03d9f3b617019555bd921ba5.md) | 40 | `result-track:03d9f3b617019555bd921ba5b9e0979cd115ef4254bf4f3c341a673c9ceb28c5` |
| 6 | `theorem` | [monotone_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/monotone-accumulate--747e6e8253b609e1bbb92ad7.md) | 43 | `result-track:747e6e8253b609e1bbb92ad7183fcedaecd190705bd97fc6bbf18ebcdcacefab` |
| 7 | `theorem` | [accumulate_subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate-subset-accumulate--d070a211921b5b8f0a182223.md) | 47 | `result-track:d070a211921b5b8f0a182223ea3b649afa79c36f6299e179a2335928e6ef3b25` |
| 8 | `theorem` | [biUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/biunion-accumulate--189ab665fa1e7e1517b16d2b.md) | 51 | `result-track:189ab665fa1e7e1517b16d2beae891e59414ddd25b3dde33ddf7e27774f6a44d` |
| 9 | `theorem` | [iUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/iunion-accumulate--bba03c13d487078d9316a9e1.md) | 56 | `result-track:bba03c13d487078d9316a9e19c90129847ac9231e413cfad0c6c4541e638c54d` |
| 10 | `lemma` | [accumulate_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate-bot--222293b6b8a79af975a66290.md) | 64 | `result-track:222293b6b8a79af975a6629076560cdbd1078a6dbfe3a657d0b87822dd00242e` |
| 11 | `lemma` | [accumulate_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/accumulate-zero-nat--42a0babca0edeb739e714eef.md) | 68 | `result-track:42a0babca0edeb739e714eefffd89a380d528f5e8c09a0d9a9c15274efccefff` |
| 12 | `theorem` | [disjoint_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant88d320cc4d9e9e20f272abfd138a31db98153d451ea86c3ca5bbe74f7ab3058e.lean/declarations/disjoint-accumulate--c6a71608cbc7e88ccfccb5cb.md) | 72 | `result-track:c6a71608cbc7e88ccfccb5cb7feabce52b1d834aa8447a8758d247cc3b1dabcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
