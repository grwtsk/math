# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694507f2a98e92e07b9a6ebf1a4ede002f767e57",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694507f2a98e92e07b9a6ebf1a4ede002f767e57`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLittleO_const_id_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/declarations/islittleo-const-id-cocompact--8a038a2c8675af509e1dc032.md) | 27 | `result-track:8a038a2c8675af509e1dc032a3f14cbe8c29ffa54928923cd1b2b6d41dbdf6cf` |
| 2 | `theorem` | [isLittleO_const_id_atTop2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/declarations/islittleo-const-id-attop2--cff889de2c32a2ac9a6e9866.md) | 32 | `result-track:cff889de2c32a2ac9a6e986609f155bf43413072798b460d694cfc5612f8df06` |
| 3 | `theorem` | [isLittleO_const_id_atBot2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/declarations/islittleo-const-id-atbot2--2958f15f7dc4787e6ea477f7.md) | 37 | `result-track:2958f15f7dc4787e6ea477f7b0e75daa479262e47bf35770a4a71418ea1493c4` |
| 4 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsLittleOConstIdCocompact.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.Filter.Eventually.natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-islittleoconstidcocompact-varian--7a07808963086e0a466fa3b4.md) | 41 | `result-track:7a07808963086e0a466fa3b488359e51b11491a5571fefa5d6e706e626695fad` |
| 5 | `theorem` | [IsBigO.natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b.lean/declarations/isbigo-natcast--eb7bf1bcb077e1e82a683451.md) | 45 | `result-track:eb7bf1bcb077e1e82a683451a9563895e4a74743f1291d12a0dd562cfa464c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
