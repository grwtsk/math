# Verification target: GRWTSK.Analysis.MeasureTheory.Floor.Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa45c7bb1a4828eb569f0fa5849b23d1964caf6d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa45c7bb1a4828eb569f0fa5849b23d1964caf6d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.measurable_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/int-measurable-floor--4a7f07f88f15f5f07f5d942c.md) | 31 | `result-track:4a7f07f88f15f5f07f5d942c1d50416c7b108c7cec0c035578464d4595535951` |
| 2 | `theorem` | [Measurable.floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-floor--bf17d7f3f72c2286eb453a96.md) | 36 | `result-track:bf17d7f3f72c2286eb453a96943339de8ab3207a1a2e9d9945b305513aa8f3c1` |
| 3 | `theorem` | [Int.measurable_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/int-measurable-ceil--1a00a544b9cfc2628405f893.md) | 40 | `result-track:1a00a544b9cfc2628405f893805c34f3a360949f0702a8d1558a24aa0ca35cdb` |
| 4 | `theorem` | [Measurable.ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-ceil--98b2034fe2ec9236a82a4980.md) | 45 | `result-track:98b2034fe2ec9236a82a49809ee701e7b217d34043e973640165160736eac3ef` |
| 5 | `theorem` | [measurable_fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-fract--a75488128ebdb5cd887c78da.md) | 49 | `result-track:a75488128ebdb5cd887c78da0d6b48d146d08cb2484b97542ac1b50a71701a60` |
| 6 | `theorem` | [Measurable.fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-fract--1c28df2bb5ec51ceaf6211b3.md) | 56 | `result-track:1c28df2bb5ec51ceaf6211b3b017ec6ec7869a3007c842d94ecfadec782cdba1` |
| 7 | `theorem` | [MeasurableSet.image_fract](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurableset-image-fract--4537f359a0d1c85e1081d6af.md) | 60 | `result-track:4537f359a0d1c85e1081d6af8dbb5b90d6bcfb20c425576b89be8239de68a898` |
| 8 | `theorem` | [Nat.measurable_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/nat-measurable-floor--7414ad052072a947d5527a0b.md) | 73 | `result-track:7414ad052072a947d5527a0bf93254ed6da8274cf6ab257095595866791b12da` |
| 9 | `theorem` | [Measurable.nat_floor](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-nat-floor--86624e454e30be7d159c16d1.md) | 78 | `result-track:86624e454e30be7d159c16d1c68d6b66ce122f3407b4d4c93eb8fd28708e6425` |
| 10 | `theorem` | [Nat.measurable_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/nat-measurable-ceil--6227b807d7e49446a2b27f74.md) | 82 | `result-track:6227b807d7e49446a2b27f740c807a3f6dec75ffdb2e5ae4cd62cb16fbff4c4d` |
| 11 | `theorem` | [Measurable.nat_ceil](../../../../../mathematics/Analysis/MeasureTheory/Floor/Variant7d4ef7b7f4e3b48138e2a82439dc98dda83555ea6a25dce153f2183a4877b4fb.lean/declarations/measurable-nat-ceil--1f7ff64349bd00f9b5179a57.md) | 87 | `result-track:1f7ff64349bd00f9b5179a57fb89c55e1a85816ecbe29cb1661c1f454a431b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
