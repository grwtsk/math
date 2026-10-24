# Verification target: GRWTSK.Topology.GeneralTopology.Attempt04.Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31eb6babfcb7129f499b527f66be0afafd4116a5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31eb6babfcb7129f499b527f66be0afafd4116a5`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/p--c970bcb3d73565c88023e979.md) | 23 | `declaration-track:c970bcb3d73565c88023e979101ed718618f2b091866a0b6a3c9deec820c0db1` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/normalizedsquare--003c26dfea0c9c8025e10209.md) | 25 | `declaration-track:003c26dfea0c9c8025e10209d6698d73c8ce63ed8d17cd022a3c25d1c11841f4` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/p-coe--daacc2f29ce69921023eb374.md) | 28 | `result-track:daacc2f29ce69921023eb374d2a7f9ed522a8f3c967adde5717f39f9202e5d03` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/actual-scaled-square-real--257afc44ae8b4924ed5085ee.md) | 31 | `result-track:257afc44ae8b4924ed5085ee0fac689562aa98d4a4069b16abac4de4ee4ecf56` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/p-ratio--df4c4372b8a5c64392cf206b.md) | 57 | `result-track:df4c4372b8a5c64392cf206b7f885bb3a0ef11f8283aaf8a7874e17981e04d8e` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/p-ratio-tendsto--816134a2318f9b950228dca4.md) | 61 | `result-track:816134a2318f9b950228dca48f60906092af336a869a0fc6de2d743ac506f3a6` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/normalization-tendsto--0d3343dfbbb6e15c8c2ded94.md) | 77 | `result-track:0d3343dfbbb6e15c8c2ded94d7f2c458e753dc3fac40ebbb41138119103082b0` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/exp-scaled-neg-tendsto--6587d7b8e56e96359322db4c.md) | 85 | `result-track:6587d7b8e56e96359322db4c0558763e912ca96f936542c3faa90fd846cbaeab` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/exp-square-rescale--9c9368430221bc4264fa4461.md) | 90 | `result-track:9c9368430221bc4264fa44610c63d4fc975a4016ad7300a56934e73a6272bf4d` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/scaled-square-exact--5669656c5fda718916549aa4.md) | 99 | `result-track:5669656c5fda718916549aa489a881e970d442efda0df83098b13a482f8d7908` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/scaled-square-tendsto--e3ebb194b82bf1eac26bd77e.md) | 116 | `result-track:e3ebb194b82bf1eac26bd77e67727b9154deeeebead6a48e80bb27aeea663914` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt04/Variant1e5874e1758400be2db48ab5aedb9b440c814ed750fc240895e4659b6b8f5f83.lean/declarations/quarter-scaled-limit--cc02d9f11c56bc4b7777dc4e.md) | 134 | `result-track:cc02d9f11c56bc4b7777dc4e985dc740bfba6be1221fd6710f24405d2e3f534f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
