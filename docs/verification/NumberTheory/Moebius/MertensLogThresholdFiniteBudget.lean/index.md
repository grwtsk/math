# Verification target: GRWTSK.NumberTheory.Moebius.MertensLogThresholdFiniteBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dd49852446770e2731935079a54b83da61b1f05",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dd49852446770e2731935079a54b83da61b1f05`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensLogThresholdShortBudget`](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdShortBudget.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logThresholdDepthSummand_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/declarations/logthresholddepthsummand-nonneg--1abab0fa3f25274c88de5811.md) | 20 | `result-track:1abab0fa3f25274c88de5811fd192183bd0e134a3d3c0d209786163034f4ae7b` |
| 2 | `theorem` | [logThresholdDepthSummand_le_leftInv](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/declarations/logthresholddepthsummand-le-leftinv--1a634973ad19fa2932651e92.md) | 37 | `result-track:1a634973ad19fa2932651e92d6ddd0ac92eb93d5d2623ee3789dc336cdbc4a91` |
| 3 | `theorem` | [logThresholdFiniteDepthSum_le_two](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/declarations/logthresholdfinitedepthsum-le-two--8a8ae667febcf3b00d765350.md) | 82 | `result-track:8a8ae667febcf3b00d7653506676166024f5f65f17e40e7a61150b31f22cac0a` |
| 4 | `theorem` | [logThresholdFiniteDepthBudget](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/declarations/logthresholdfinitedepthbudget--d941e315976ec18e72623052.md) | 109 | `result-track:d941e315976ec18e726230521f0afe7459136412c7ae22e4238a7c73464011ee` |
| 5 | `theorem` | [normalizedShortPacketBudget_le_four_logThreshold](../../../../mathematics/NumberTheory/Moebius/MertensLogThresholdFiniteBudget.lean/declarations/normalizedshortpacketbudget-le-four-logthreshold--8f2fcedb4dda4f2dd4ea5c4e.md) | 117 | `result-track:8f2fcedb4dda4f2dd4ea5c4e067c0dfe0395eb561b4c5c2d31b57ac5cd573352` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
