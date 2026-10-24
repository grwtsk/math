# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "007de4f5d6689a1ac71f4583d3f13caa1b938183",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `007de4f5d6689a1ac71f4583d3f13caa1b938183`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/accumulate--ce958c89ebc8030ba70edc73.md) | 22 | `declaration-track:ce958c89ebc8030ba70edc738b394a58934d2a0a92e8399fd531f440f7f676f0` |
| 2 | `theorem` | [accumulate_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/accumulate-def--0a5fe45590aadbd66c13d368.md) | 26 | `result-track:0a5fe45590aadbd66c13d368365234563083796c68d3621836ed327b3aa5b67d` |
| 3 | `theorem` | [mem_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/mem-accumulate--46a9b5cc29b665e890ebbef8.md) | 31 | `result-track:46a9b5cc29b665e890ebbef8896ca6f3cc3c19f0c6c0184dfa064f806a37107c` |
| 4 | `theorem` | [subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/subset-accumulate--b847646c1407f45ce6ff35b3.md) | 35 | `result-track:b847646c1407f45ce6ff35b3b44ddc1636c8b624abb95e02ae11749a6b169636` |
| 5 | `theorem` | [monotone_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/monotone-accumulate--307f326413a401feb136987b.md) | 38 | `result-track:307f326413a401feb136987bd79e4e236fd8b583b5f7ea581073adcee590ec5e` |
| 6 | `theorem` | [biUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/biunion-accumulate--72acc122e0b76117c257d8dc.md) | 42 | `result-track:72acc122e0b76117c257d8dcc8f7af22385c05537e065e850f02c19eb190ee35` |
| 7 | `theorem` | [iUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9.lean/declarations/iunion-accumulate--7979909d1211051740d71cef.md) | 48 | `result-track:7979909d1211051740d71cef8d527848cd801f5dab544c13d9c5d47b4810aae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
