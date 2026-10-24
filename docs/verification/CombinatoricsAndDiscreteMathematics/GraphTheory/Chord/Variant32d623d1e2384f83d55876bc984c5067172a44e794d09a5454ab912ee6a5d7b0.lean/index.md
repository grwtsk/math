# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chord.Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dc079f4a51c9dadd94fb1eff6c185813575619d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dc079f4a51c9dadd94fb1eff6c185813575619d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsChord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/ischord--0de0c392d287a469614f6221.md) | 43 | `declaration-track:0de0c392d287a469614f6221e8f7feba94ddc319a88fd3d41d3aa4fbff8140b6` |
| 2 | `theorem` | [isChord_sym2Mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/ischord-sym2mk--9b8622739bb3faad96324948.md) | 47 | `result-track:9b8622739bb3faad963249487e94a75d2b7bdb629674ca1072bee36bca784997` |
| 3 | `def` | [IsChordless](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/ischordless--55a09d2e1950ec69e3eaf06b.md) | 53 | `declaration-track:55a09d2e1950ec69e3eaf06bc3ffc1045e7ceea65619954f96379eaf75d982cd` |
| 4 | `theorem` | [isChordless_iff_forall_mem_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/ischordless-iff-forall-mem-edges--d6fac975ff6db61adacd53be.md) | 56 | `result-track:d6fac975ff6db61adacd53be2374eb95e682ba5f1cd2edbf38e39009e56d7fe2` |
| 5 | `theorem` | [IsChordless.mem_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/ischordless-mem-edges--c238bc03bf9a9d6a91d3d433.md) | 61 | `result-track:c238bc03bf9a9d6a91d3d433014fe320fcaa19c0cdab8c61b2a3b5e5099a096a` |
| 6 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0.SimpleGraph.Adj.isChordless_toWalk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-ischord-vari--ec9c18ae253d873881905d64.md) | 65 | `result-track:ec9c18ae253d873881905d645ea55dee1e4431ed6bad930b3be7b0562407ec2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
