# Verification target: GRWTSK.Analysis.MeasureTheory.OfAddContent.Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ef0de5c6f79a44ccfd5a9ce2c7756238356876",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ef0de5c6f79a44ccfd5a9ce2c7756238356876`.

Source path: `GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.SetSemiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.AddContent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Trim` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofFunction_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/offunction-eq--956bd8ea4fe0004d431a4f7b.md) | 59 | `result-track:956bd8ea4fe0004d431a4f7bf6f4f248f8d70caf9aeae98fa9147000be588a41` |
| 2 | `theorem` | [inducedOuterMeasure_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/inducedoutermeasure-eq--3de6050d7820d87b295bd4eb.md) | 76 | `result-track:3de6050d7820d87b295bd4eb45b0e5c48614c5e7008857a119e10ab5174f6435` |
| 3 | `theorem` | [isCaratheodory_ofFunction_of_mem](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/iscaratheodory-offunction-of-mem--866264d8266825ecfb0b8f85.md) | 90 | `result-track:866264d8266825ecfb0b8f85636aeeff989e5b6a04f89a608d428643496a1942` |
| 4 | `theorem` | [isCaratheodory_inducedOuterMeasure_of_mem](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/iscaratheodory-inducedoutermeasure-of-mem--a826fadb158b52fd07975e38.md) | 124 | `result-track:a826fadb158b52fd07975e381516eeb3dc25d3699ac799965ab08f6cd0c1e9a7` |
| 5 | `theorem` | [isCaratheodory_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/iscaratheodory-inducedoutermeasure--8350b79100a444d61ad3609f.md) | 129 | `result-track:8350b79100a444d61ad3609f2f5d985cd17e2d2729960db01dec185ddacba316` |
| 6 | `def` | [measureCaratheodory](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/measurecaratheodory--826fe6ba60c0812328bbd9f3.md) | 140 | `declaration-track:826fe6ba60c0812328bbd9f3bda04ae5fe02a25e0748525f6d528a8578feb66d` |
| 7 | `theorem` | [measureCaratheodory_eq_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/measurecaratheodory-eq-inducedoutermeasure--93afcbf7d1aae299d411c009.md) | 157 | `result-track:93afcbf7d1aae299d411c009279cf10c86e1c6adafca3c71efa63ed5a0004229` |
| 8 | `theorem` | [measureCaratheodory_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/measurecaratheodory-eq--4b28385eee925a8bc925ef11.md) | 162 | `result-track:4b28385eee925a8bc925ef1110bd221554122b47a50405c8f548beb3810108c3` |
| 9 | `def` | [measure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/measure--32de3a3a29493d41ac2e54a2.md) | 169 | `declaration-track:32de3a3a29493d41ac2e54a2066d3f3710ce69091232c1cd20111cfbb2246a5f` |
| 10 | `theorem` | [measure_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/declarations/measure-eq--5ec35457f0603267fecaf986.md) | 177 | `result-track:5ec35457f0603267fecaf98604149695b3ce3313618277f58869e88430869bf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
