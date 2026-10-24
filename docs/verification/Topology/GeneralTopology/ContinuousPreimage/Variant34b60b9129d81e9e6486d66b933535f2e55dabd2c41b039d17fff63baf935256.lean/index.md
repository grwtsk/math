# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousPreimage.Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3512a31a6da15f2231983046dcdb0996669cc29c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3512a31a6da15f2231983046dcdb0996669cc29c`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_measure_symmDiff_preimage_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean/declarations/tendsto-measure-symmdiff-preimage-nhds-zero--83ca27b8e7e45c1e6d2bc8d1.md) | 53 | `result-track:83ca27b8e7e45c1e6d2bc8d1603695197b9e200262e8028f838f5f747e64d0dc` |
| 2 | `theorem` | [isClosed_setOf_preimage_ae_eq](../../../../../mathematics/Topology/GeneralTopology/ContinuousPreimage/Variant34b60b9129d81e9e6486d66b933535f2e55dabd2c41b039d17fff63baf935256.lean/declarations/isclosed-setof-preimage-ae-eq--c30c036f85e462f111067361.md) | 114 | `result-track:c30c036f85e462f11106736148562ef6f94d054c30d6b536379d52cd987b9d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
