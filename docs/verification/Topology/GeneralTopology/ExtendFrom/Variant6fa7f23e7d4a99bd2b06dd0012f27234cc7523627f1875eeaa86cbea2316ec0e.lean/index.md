# Verification target: GRWTSK.Topology.GeneralTopology.ExtendFrom.Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0925a236a2231adc2bed4c3c308171a60a0ab708",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0925a236a2231adc2bed4c3c308171a60a0ab708`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/extendfrom--ac050fffe04b5afb38f0797c.md) | 45 | `declaration-track:ac050fffe04b5afb38f0797c719acb3ad8cc2ec3d2b424fb952b1ea28a09e4d5` |
| 2 | `theorem` | [tendsto_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/tendsto-extendfrom--3265d610d5453601e1cdfcea.md) | 50 | `result-track:3265d610d5453601e1cdfcea76e26fadd5a8c02191477cc740499669c579b8a5` |
| 3 | `theorem` | [extendFrom_eq](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/extendfrom-eq--ac2ec29113816da9e1d85663.md) | 54 | `result-track:ac2ec29113816da9e1d85663be9e7daf9597e5a141d32a55c5add6f204abe102` |
| 4 | `theorem` | [extendFrom_extends](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/extendfrom-extends--0a666fd10a962e8b48fa4c1a.md) | 59 | `result-track:0a666fd10a962e8b48fa4c1ad5c5bfd1f80653ad046d5bbc15bfcc0ffa7911c2` |
| 5 | `theorem` | [continuousOn_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/continuouson-extendfrom--19e81f3e717dc99a33e6ab78.md) | 65 | `result-track:19e81f3e717dc99a33e6ab78e6eb64cc1c698f5a98798635b04452f091fbb772` |
| 6 | `theorem` | [continuous_extendFrom](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant6fa7f23e7d4a99bd2b06dd0012f27234cc7523627f1875eeaa86cbea2316ec0e.lean/declarations/continuous-extendfrom--83b3475856780585f432d929.md) | 87 | `result-track:83b3475856780585f432d929c215b74e7f231773b155bddeb1ee2551960f34d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
