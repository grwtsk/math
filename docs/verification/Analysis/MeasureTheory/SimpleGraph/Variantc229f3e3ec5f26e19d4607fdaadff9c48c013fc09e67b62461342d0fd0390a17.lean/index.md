# Verification target: GRWTSK.Analysis.MeasureTheory.SimpleGraph.Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6683dbc92910a0a484582f7eafb498af3752be9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6683dbc92910a0a484582f7eafb498af3752be9`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/instance--b92e855f3bd95cd43c2cd7ec.md) | 25 | `declaration-track:b92e855f3bd95cd43c2cd7ec7611c63bef381a433bf281acf0e6feb1f978f05f` |
| 2 | `lemma` | [measurable_iff_adj](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/measurable-iff-adj--a3ca75e09e932aa0299575af.md) | 28 | `result-track:a3ca75e09e932aa0299575af4aaab3b2df060f3f4d9f092955cbd5ebf33d97fc` |
| 3 | `lemma` | [measurable_adj](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/measurable-adj--978e5dae45fa40a3de176a8f.md) | 33 | `result-track:978e5dae45fa40a3de176a8f8dccd1644c01dd0ab4f2915d4e590125364dbcf6` |
| 4 | `lemma` | [measurable_edgeSet](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/measurable-edgeset--6fbba9c863936a35ee326484.md) | 36 | `result-track:6fbba9c863936a35ee3264846a55276e7e1121810317170075402a192a27d216` |
| 5 | `lemma` | [measurable_fromEdgeSet](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/measurable-fromedgeset--c8d88e4f9e4a8f03e1a0a603.md) | 40 | `result-track:c8d88e4f9e4a8f03e1a0a6032d06a0e97c0738142d73597f55a3fc2c02262e2b` |
| 6 | `lemma` | [measurableEmbedding_edgeSet](../../../../../mathematics/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean/declarations/measurableembedding-edgeset--cb0b33da10f315b2418c8898.md) | 43 | `result-track:cb0b33da10f315b2418c88981ecd0a1074aa117fd6f008882c4b26e715844786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
