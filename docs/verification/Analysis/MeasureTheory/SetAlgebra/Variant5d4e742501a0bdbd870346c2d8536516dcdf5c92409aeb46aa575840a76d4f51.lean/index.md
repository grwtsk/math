# Verification target: GRWTSK.Analysis.MeasureTheory.SetAlgebra.Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11b37854ceb4fb5d533b92a8715a191fac346523",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11b37854ceb4fb5d533b92a8715a191fac346523`.

Source path: `GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetSemiring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/issetalgebra--5c7e924f085f5393fcd286be.md) | 63 | `declaration-track:5c7e924f085f5393fcd286be5027ba66b96a5d98cdf14f271f4be898c20ac9d2` |
| 2 | `theorem` | [univ_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/univ-mem--d5a5395fef31103b3afe369a.md) | 71 | `result-track:d5a5395fef31103b3afe369a381b3b98df09c6f4cdb472f13260d38a7d3f7eb5` |
| 3 | `theorem` | [inter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/inter-mem--940cb6384dc681dfcc40c6e1.md) | 75 | `result-track:940cb6384dc681dfcc40c6e197019816d2dc3128e103211156edce91c87c6131` |
| 4 | `theorem` | [diff_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/diff-mem--f15b1601372fccb026f59956.md) | 81 | `result-track:f15b1601372fccb026f599562dff6b63afa1eb6e808541a704ece02c2b697907` |
| 5 | `theorem` | [isSetRing](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/issetring--6b4f2e78e57313c786d4c935.md) | 85 | `result-track:6b4f2e78e57313c786d4c935f95845ab3799bcc9b916bbc605575025d1c5ef4c` |
| 6 | `theorem` | [biUnion_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/biunion-mem--3f3ee873c8d6072ce20cbced.md) | 91 | `result-track:3f3ee873c8d6072ce20cbced475cde949d567baa5520b960d035682baa3f0a36` |
| 7 | `theorem` | [biInter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/biinter-mem--4838ec6a319aaa3049f1764e.md) | 95 | `result-track:4838ec6a319aaa3049f1764ea44f64e93d577f070586547660fd1a7ac7b592b4` |
| 8 | `inductive` | [generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatesetalgebra--713deffaab877d47351647b6.md) | 110 | `declaration-track:713deffaab877d47351647b6af4e6b9196215b678a6ab18b9b3bf155d44e1803` |
| 9 | `theorem` | [isSetAlgebra_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/issetalgebra-generatesetalgebra--53e0b7f0c8ba230302682a78.md) | 118 | `result-track:53e0b7f0c8ba230302682a78d075011e17cebc608971e423ced50a862c8e5361` |
| 10 | `theorem` | [self_subset_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/self-subset-generatesetalgebra--2a50faab1f7e29f9fcb6449e.md) | 125 | `result-track:2a50faab1f7e29f9fcb6449e68d7ec2ec81610bd40e59b42fd69ec1f49dc4d6c` |
| 11 | `theorem` | [generateFrom_generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatefrom-generatesetalgebra-eq--84102fbfb8f73e743b195e36.md) | 131 | `result-track:84102fbfb8f73e743b195e3651e9ffc4de7b7c456cf4b78cac3513dce6b32feb` |
| 12 | `theorem` | [generateSetAlgebra_mono](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatesetalgebra-mono--2c5b390b6ae363bb41ae8941.md) | 148 | `result-track:2c5b390b6ae363bb41ae8941c304ddc7663c6987d2ca92b35fb0aaf26e0a79a8` |
| 13 | `theorem` | [generateSetAlgebra_subset](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatesetalgebra-subset--02c73a73a8936ce8bd69ca70.md) | 161 | `result-track:02c73a73a8936ce8bd69ca7030a543da197ebe4065540d271fc32108c6f9ad3e` |
| 14 | `theorem` | [generateSetAlgebra_subset_self](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatesetalgebra-subset-self--33fc02e17eb7c56da5db4f85.md) | 171 | `result-track:33fc02e17eb7c56da5db4f85c3baaba2728223356b132e2d99ac6eaafd065fcf` |
| 15 | `theorem` | [generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/generatesetalgebra-eq--da303699c9f1e6c984bf7b31.md) | 175 | `result-track:da303699c9f1e6c984bf7b31f7e26fddfee850ccbecc4bd6a782c754d6505eb7` |
| 16 | `theorem` | [mem_generateSetAlgebra_elim](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/mem-generatesetalgebra-elim--b1aee778f2c84dab7dc17ff9.md) | 182 | `result-track:b1aee778f2c84dab7dc17ff9c1648258c0f80661866eb70ec7979d3071c269f0` |
| 17 | `theorem` | [countable_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variant5d4e742501a0bdbd870346c2d8536516dcdf5c92409aeb46aa575840a76d4f51.lean/declarations/countable-generatesetalgebra--d4ebdc21ada2e19b0dc990e5.md) | 225 | `result-track:d4ebdc21ada2e19b0dc990e5cec866ddd150b78be4ce57b03444fd7ce70819f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
