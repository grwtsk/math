# Verification target: GRWTSK.Analysis.MeasureTheory.Sinc.Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e07db0ce7fcefa34404691a0fc1ae74022cb1a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e07db0ce7fcefa34404691a0fc1ae74022cb1a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [measurable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/measurable-sinc--73ec6ae414ac7e4d0c03c0e9.md) | 27 | `result-track:73ec6ae414ac7e4d0c03c0e9e74a3c21813955adca62c10429e5580eeab14fa0` |
| 2 | `lemma` | [stronglyMeasurable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/stronglymeasurable-sinc--caae34431fd0bd6fd3418330.md) | 30 | `result-track:caae34431fd0bd6fd34183305953fd3f80007e05437287ce8c0103869c98c1d5` |
| 3 | `lemma` | [integrable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/integrable-sinc--df968ece14ba50c8c85ef0bc.md) | 33 | `result-track:df968ece14ba50c8c85ef0bc772d8bddaa5e8303cbb95a514af15c734df430f1` |
| 4 | `theorem` | [Measurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/measurable-sinc--0d76412801a37f88f8005f86.md) | 44 | `result-track:0d76412801a37f88f8005f86d95bcf09b593e99d92568930bd015dc0e8585373` |
| 5 | `theorem` | [AEMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/aemeasurable-sinc--4f82b643996b3579ecd35411.md) | 48 | `result-track:4f82b643996b3579ecd354112735a388f90acfbd7d817fb92f0835508d07506d` |
| 6 | `theorem` | [MeasureTheory.StronglyMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/measuretheory-stronglymeasurable-sinc--4947b982e8bb0ceda4818457.md) | 52 | `result-track:4947b982e8bb0ceda4818457e0bf627c16bf20f0c10cb5ccb4ab2ce2bbcda30c` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6e657135929ce175929d754c83f7c5e5044b0cacb2e2b914fee877ddf769a453.lean/declarations/measuretheory-aestronglymeasurable-sinc--6ac955ddafa89ebdba704535.md) | 57 | `result-track:6ac955ddafa89ebdba70453537dad64dc18994e1a0c5a559bb5d1de1e1bd4d16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
