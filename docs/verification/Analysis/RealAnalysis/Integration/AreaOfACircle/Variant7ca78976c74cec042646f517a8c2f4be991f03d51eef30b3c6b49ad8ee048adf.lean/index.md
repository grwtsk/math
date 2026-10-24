# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AreaOfACircle.Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bef2e89a74af86dc7bb3904fcd4209380121d89",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bef2e89a74af86dc7bb3904fcd4209380121d89`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/declarations/disc--8eaf4e418d07a542ff8fa90b.md) | 59 | `declaration-track:8eaf4e418d07a542ff8fa90b79511902642ca0e3253f3dbbab75ca4a2486ab4c` |
| 2 | `theorem` | [disc_eq_regionBetween](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/declarations/disc-eq-regionbetween--5ae52c7902ca3ccb82a0630f.md) | 66 | `result-track:5ae52c7902ca3ccb82a0630f813a2aea6e212243e4d186679af8df649922c1d1` |
| 3 | `theorem` | [measurableSet_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/declarations/measurableset-disc--c4f242a28f907cdaa6c9a0d3.md) | 81 | `result-track:c4f242a28f907cdaa6c9a0d39220a678d4513dd16918f142d3f198d702cd8536` |
| 4 | `theorem` | [area_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant7ca78976c74cec042646f517a8c2f4be991f03d51eef30b3c6b49ad8ee048adf.lean/declarations/area-disc--51f83ebb32c035e7fb2fcef2.md) | 85 | `result-track:51f83ebb32c035e7fb2fcef272e0d80fa465eb0e0a845a56d734604a047bb693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
