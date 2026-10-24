# Verification target: GRWTSK.Algebra.Laurent.Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9deebc07fdba2a2409e8ad0f5c096b1adcc8c1b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9deebc07fdba2a2409e8ad0f5c096b1adcc8c1b`.

Source path: `GRWTSK/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taylor_mem_nonZeroDivisors](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/taylor-mem-nonzerodivisors--231c3887b4a437c4a3b80903.md) | 39 | `result-track:231c3887b4a437c4a3b80903c6f0a6a734e9caec196076ce370e152c12a5977c` |
| 2 | `def` | [laurentAux](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurentaux--4dc9499c5134698d1501faf7.md) | 50 | `declaration-track:4dc9499c5134698d1501faf783bcef2d440af0cdf31528b17b1d36c961717c76` |
| 3 | `theorem` | [laurentAux_ofFractionRing_mk](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurentaux-offractionring-mk--5af417311eb3a3f4aff647fe.md) | 60 | `result-track:5af417311eb3a3f4aff647fe12495ad64abeae79dd19d67eb9637afa268fc578` |
| 4 | `theorem` | [laurentAux_div](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurentaux-div--d2aeea1f5b706649ce0eb265.md) | 66 | `result-track:d2aeea1f5b706649ce0eb265118ab079e365ab1e34417a87ef38bc92102dc4da` |
| 5 | `theorem` | [laurentAux_algebraMap](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurentaux-algebramap--04a3ab1ee0d2bda4bbeb9591.md) | 74 | `result-track:04a3ab1ee0d2bda4bbeb9591b832623777c3b7a6cfc8152f2f5df2c2bbd28a4d` |
| 6 | `def` | [laurent](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent--535ec159ec4c8c77a01b040f.md) | 80 | `declaration-track:535ec159ec4c8c77a01b040fcef3952df60f5ae443bfeaa29de76588c94479c5` |
| 7 | `theorem` | [laurent_div](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-div--c293125c336fc1380a928f52.md) | 85 | `result-track:c293125c336fc1380a928f5261d1cd6ef211b6761475234543acf4979272a787` |
| 8 | `theorem` | [laurent_algebraMap](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-algebramap--c3e15f69916088b2f520338b.md) | 92 | `result-track:c3e15f69916088b2f520338b3f344c146d8a3e8046e222f8ab3a5bced6c3dfd2` |
| 9 | `theorem` | [laurent_X](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-x--ccc80f1b1ab9dca76f945e5a.md) | 97 | `result-track:ccc80f1b1ab9dca76f945e5ad5b62f5e7e2366450879774979bc3a152210b639` |
| 10 | `theorem` | [laurent_C](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-c--293b8a9cf6e03e28b69e148b.md) | 103 | `result-track:293b8a9cf6e03e28b69e148b303b4597cc144140c608e654df86a9a4935eabe4` |
| 11 | `theorem` | [laurent_at_zero](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-at-zero--8998a3097c360f5d732649fc.md) | 109 | `result-track:8998a3097c360f5d732649fc4c1538535456eee7dfb689d400ef4704aff413e9` |
| 12 | `theorem` | [laurent_laurent](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-laurent--562cb8935ccab658eddbfb2f.md) | 112 | `result-track:562cb8935ccab658eddbfb2f25e5f7e0a600b9a25f161b6de407f2eb07fc862f` |
| 13 | `theorem` | [laurent_injective](../../../../mathematics/Algebra/Laurent/Variant8b067a0e3620747fb8204ca2523f910732c4a24bbb9b42a2f9ee7b523a509f4e.lean/declarations/laurent-injective--1f3a71d65e0aa0ad1aaf5288.md) | 117 | `result-track:1f3a71d65e0aa0ad1aaf528884d3d201a9759763d5d02dc58abd1875156a2da8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
