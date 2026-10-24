# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd9c9114c341a6872748fb60948e6eb690778bb1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd9c9114c341a6872748fb60948e6eb690778bb1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Map` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [VAddInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/vaddinvariantmeasure--2baf4b9e145d31187140e374.md) | 55 | `declaration-track:2baf4b9e145d31187140e37452d897547cc2653bba555273aaaa18fc5e6d0efb` |
| 2 | `class` | [SMulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/smulinvariantmeasure--35723f9a857e14ad4079d3a7.md) | 63 | `declaration-track:35723f9a857e14ad4079d3a79d37ded8cb3435c0fce8c1c870df9d0d164412bf` |
| 3 | `class` | [IsAddLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/isaddleftinvariant--d53484ca5c858f48d6e31eeb.md) | 75 | `declaration-track:d53484ca5c858f48d6e31eebfb6367c227a6c56f16beebfed728085a18885b25` |
| 4 | `class` | [IsMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/ismulleftinvariant--b9ebf8cf10482d92883779b9.md) | 81 | `declaration-track:b9ebf8cf10482d92883779b95b5c1f64f68b8ed4dd33d80bf7b669f863fd8403` |
| 5 | `class` | [IsAddRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/isaddrightinvariant--ebac4fe86e5223f0d7804cc6.md) | 86 | `declaration-track:ebac4fe86e5223f0d7804cc650858b178329121c9f18e7d90c30f02bb6532b67` |
| 6 | `class` | [IsMulRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/ismulrightinvariant--d84d2773e48c5c7d0373e748.md) | 92 | `declaration-track:d84d2773e48c5c7d0373e7488015235911e048279e6b96c2667ffd88e62f8260` |
| 7 | `instance` | [IsMulLeftInvariant.smulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/ismulleftinvariant-smulinvariantmeasure--178e04baf25e6670379d03e2.md) | 98 | `declaration-track:178e04baf25e6670379d03e2ac227186a2e04bd73009c5f02df9de67eb8e2991` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/instance--a1c1a516ae10ed733ee8c6fe.md) | 103 | `declaration-track:a1c1a516ae10ed733ee8c6fe0ea33b20386cee8d45ef3998dbf8a67f47c4df3f` |
| 9 | `instance` | [IsMulRightInvariant.toSMulInvariantMeasure_op](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variante06d8a983ce76cb094c9eaf5a68f08acf79e657bee75bec22f5f65722b051cf2.lean/declarations/ismulrightinvariant-tosmulinvariantmeasure-op--b5a8e71ccddc8bc614cae5e0.md) | 108 | `declaration-track:b5a8e71ccddc8bc614cae5e05d80be1dbf00005bd4fcb31827a4ae9004603cde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
