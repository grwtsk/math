# Verification target: GRWTSK.Topology.GeneralTopology.LogBounds.Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480`.

Source path: `GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_lower_taylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/log-lower-taylor--ab79b7cd07e7ef4aea0264d4.md) | 46 | `result-track:ab79b7cd07e7ef4aea0264d4e8a983fc2f7004ef00b75bc0eee8b08163639366` |
| 2 | `theorem` | [log_ge'](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/log-ge--71c3cb48b49ec0bb2fcd4c4d.md) | 65 | `result-track:71c3cb48b49ec0bb2fcd4c4d4484a1480683aae383709b5ab156fab505d32f3d` |
| 3 | `def` | [symmetricLogComb](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb--1d4a4cfa6a1be4b2b19c8a6b.md) | 96 | `declaration-track:1d4a4cfa6a1be4b2b19c8a6bc56f75ae9920b2cf3e625e7e0f3a1d757be5ed37` |
| 4 | `theorem` | [symmetricLogComb_pos](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-pos--0833d37873f9297c96bf814b.md) | 100 | `result-track:0833d37873f9297c96bf814bec721eb3459f24b84be70becb603c1982d6de4aa` |
| 5 | `theorem` | [symmetricLogComb_alt](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-alt--2de969dea5582537eb6735e7.md) | 124 | `result-track:2de969dea5582537eb6735e76d593db6ed58db479ac6c76442936111968a845d` |
| 6 | `theorem` | [symmetricLogComb_le_two](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-le-two--33812e1e9bbfb1d643049955.md) | 142 | `result-track:33812e1e9bbfb1d64304995551fe5248225e7a1ff91963d84760eaa546bd3f26` |
| 7 | `theorem` | [symmetricLogComb_abs_le_two](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-abs-le-two--08d9a90cfaa3f74d6c60643e.md) | 194 | `result-track:08d9a90cfaa3f74d6c60643e1f4c269bf7afd1a5b44ac02c1e4f27dd41cfc139` |
| 8 | `theorem` | [log_three_half_ge](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/log-three-half-ge--b09bd2e7b658712141bde2ce.md) | 217 | `result-track:b09bd2e7b658712141bde2cedc6e7a01a4e141a8296ffe3040316da08bacb08d` |
| 9 | `theorem` | [log_three_half_gt](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/log-three-half-gt--24a6862d4b60ca5e701bcb84.md) | 225 | `result-track:24a6862d4b60ca5e701bcb84820e1670e8b5196ddf649b7ce1d6041c6419eec1` |
| 10 | `theorem` | [symmetricLogComb_half](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-half--123ad4917789152e8a18b3a9.md) | 231 | `result-track:123ad4917789152e8a18b3a966a3bd1e90d78c63ce5154db8eef15362906ea35` |
| 11 | `theorem` | [symmetricLogComb_half_lt_four_thirds](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-half-lt-four-thirds--93b7b19fc33347e21e28a9de.md) | 243 | `result-track:93b7b19fc33347e21e28a9deb067b822610509c596f6401983b3d794bddb95ce` |
| 12 | `theorem` | [symmetricLogComb_le_four_thirds](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-le-four-thirds--941a0cecdfd763681b717708.md) | 268 | `result-track:941a0cecdfd763681b7177082cf65ffaa835612e03b6d659bfd133d89362343d` |
| 13 | `theorem` | [tendsto_log_one_add_div_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/tendsto-log-one-add-div-self--37669256f949961b7ca63bce.md) | 368 | `result-track:37669256f949961b7ca63bce897a6152743e8045f4e15fde75b027f925dc8342` |
| 14 | `theorem` | [tendsto_log_one_sub_div_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/tendsto-log-one-sub-div-self--475a8271e1de9a3054ff6ad8.md) | 379 | `result-track:475a8271e1de9a3054ff6ad80d65d09e49b77a8d63740df1bbf5ca0eadc586af` |
| 15 | `theorem` | [tendsto_log_one_sub_sq_div_sq](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/tendsto-log-one-sub-sq-div-sq--916ab273aaec8fe3de7211f5.md) | 393 | `result-track:916ab273aaec8fe3de7211f5f24f7bf4755af4790e6974c825cfe1824fdf34d5` |
| 16 | `theorem` | [symmetricLogComb_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/declarations/symmetriclogcomb-tendsto-one--6ff3a84e535d65911af0d8f8.md) | 419 | `result-track:6ff3a84e535d65911af0d8f86d5fccd2c2b2931289fd19f98a15c8413a18ee7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
