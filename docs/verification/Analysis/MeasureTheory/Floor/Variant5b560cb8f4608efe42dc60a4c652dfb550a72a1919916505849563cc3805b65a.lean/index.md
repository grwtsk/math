# Verification target: GRWTSK.Analysis.MeasureTheory.Floor.Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728481c3383c795e5937ebce94d78e01bd37072f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728481c3383c795e5937ebce94d78e01bd37072f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.measurable_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/int-measurable-floor--a4b85c27292590287e5f2c74.md) | 23 | `result-track:a4b85c27292590287e5f2c74437578a40d6b8e06ff941d31663bd63e050f0c2a` |
| 2 | `theorem` | [Measurable.floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-floor--b7bba5dd1cd12cdbb4c8538a.md) | 28 | `result-track:b7bba5dd1cd12cdbb4c8538a155f1dda00fefe00e51f9bc0a423135e9c2c1a8e` |
| 3 | `theorem` | [Int.measurable_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/int-measurable-ceil--733b8eb7a28019c5be7ccd37.md) | 32 | `result-track:733b8eb7a28019c5be7ccd375d9d3ee470afa7c18c67365bdd53bfd565ff3862` |
| 4 | `theorem` | [Measurable.ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-ceil--f5c9e3f39da521920bcf75dc.md) | 37 | `result-track:f5c9e3f39da521920bcf75dca56f414d41b26ec1dbd03ae4f4fd05e895a32536` |
| 5 | `theorem` | [measurable_fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-fract--cf62964b6f75078a67dee2aa.md) | 41 | `result-track:cf62964b6f75078a67dee2aa464da5d3580b0182e27cfb63720e2c7015afd182` |
| 6 | `theorem` | [Measurable.fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-fract--160cb5cd95c6bdb4c676dd76.md) | 48 | `result-track:160cb5cd95c6bdb4c676dd765759b134ae110e36da757ec928a45980c9ca22b9` |
| 7 | `theorem` | [MeasurableSet.image_fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurableset-image-fract--d1dad023e3d5c25db238da5b.md) | 52 | `result-track:d1dad023e3d5c25db238da5b3fef64e89440faf09854890d809f021a6ba1f035` |
| 8 | `theorem` | [Nat.measurable_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/nat-measurable-floor--794ae6615f9161523e82a6e2.md) | 65 | `result-track:794ae6615f9161523e82a6e2ec93fcb23707d87c321ca03ddf5522cb6aa58c21` |
| 9 | `theorem` | [Measurable.nat_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-nat-floor--71404f5787374afb11b06a05.md) | 70 | `result-track:71404f5787374afb11b06a05aeca0525632b3fc840c5bf882ec73a7ab0af5dc1` |
| 10 | `theorem` | [Nat.measurable_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/nat-measurable-ceil--c09a4d12f24e8e57e4ee3d8a.md) | 74 | `result-track:c09a4d12f24e8e57e4ee3d8a21d564ad44520588f8a7bed0a0dcd300f0d9a4de` |
| 11 | `theorem` | [Measurable.nat_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a.lean/declarations/measurable-nat-ceil--03b83ac08ea0c3bbb259a022.md) | 79 | `result-track:03b83ac08ea0c3bbb259a0225f10fb4bc20aa474f44ee5cbf06a46b86f262056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
