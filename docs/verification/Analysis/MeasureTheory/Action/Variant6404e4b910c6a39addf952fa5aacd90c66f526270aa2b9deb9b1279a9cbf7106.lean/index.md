# Verification target: GRWTSK.Analysis.MeasureTheory.Action.Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8385a29014b00306f92d2f13598cb6134846a1f4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8385a29014b00306f92d2f13598cb6134846a1f4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Minimal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [VAddInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/vaddinvariantmeasure--6f2b72c4695e8c437b26ba7a.md) | 42 | `declaration-track:6f2b72c4695e8c437b26ba7a85b365af7d8a90008e159b0550aa0ee0cf3487e6` |
| 2 | `class` | [SMulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/smulinvariantmeasure--744fea852e0ff32f94045325.md) | 52 | `declaration-track:744fea852e0ff32f940453256086914fe65dd0e59ffcf8c18cb025984be96834` |
| 3 | `instance` | [zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/zero--942c0b1900f5ab4d479a8d26.md) | 61 | `declaration-track:942c0b1900f5ab4d479a8d266a33d7e5e1daecd7db562a6343c4b0a6cef08668` |
| 4 | `instance` | [add](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/add--523aaad82fe6cb750fcc9540.md) | 69 | `declaration-track:523aaad82fe6cb750fcc9540517e8aea56c3a6609ecf88f8a12b5f320989b6e0` |
| 5 | `instance` | [smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/smul--cb5c443ca4c752cd98bc78ce.md) | 78 | `declaration-track:cb5c443ca4c752cd98bc78cee2e06def61d0a7a15ef7d267ebdc381854c02154` |
| 6 | `instance` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/smul-nnreal--d416544407f4670fad59f5d9.md) | 84 | `declaration-track:d416544407f4670fad59f5d985df0944c9bda8e94a7e32c7b92dce1de381fb0e` |
| 7 | `theorem` | [measurePreserving_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measurepreserving-smul--e10dcf48edf0d63c532aaf6f.md) | 97 | `result-track:e10dcf48edf0d63c532aaf6f7412dd3c707184aa2298421fd9701139fdaff21c` |
| 8 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/map-smul--46d6977e7e8e914984d876ca.md) | 107 | `result-track:46d6977e7e8e914984d876caed14fa55b91eeddb70925a2e108699f0e390ddfa` |
| 9 | `theorem` | [smulInvariantMeasure_tfae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/smulinvariantmeasure-tfae--00b1eb929ffc359d35958ee7.md) | 133 | `result-track:00b1eb929ffc359d35958ee76a4667ab0b179ff42c39aa696c735e82b4123dc7` |
| 10 | `theorem` | [measure_preimage_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-preimage-smul--8de8d4dff01e86047147f8b8.md) | 186 | `result-track:8de8d4dff01e86047147f8b8881f6258183c902c181ef8c4840442d7b2c8ed6e` |
| 11 | `theorem` | [measure_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-smul--107b9d96a8c44856850f4ff7.md) | 192 | `result-track:107b9d96a8c44856850f4ff758cd968c59aea0cd992b9b7d99df480ea8080909` |
| 12 | `theorem` | [NullMeasurableSet.smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/nullmeasurableset-smul--676c5de0648d57383acd96aa.md) | 200 | `result-track:676c5de0648d57383acd96aaa2838644ba9fb9d4bc36bde5cb1b67408b434511` |
| 13 | `theorem` | [measure_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-smul-null--6602997b44dccd41d425f412.md) | 208 | `result-track:6602997b44dccd41d425f412e9e9cef668c7c63b17518a9b3fc3c4e530047d97` |
| 14 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--cda04461291fb9553606732a.md) | 220 | `result-track:cda04461291fb9553606732a7625e2245142d914ec875155402279b58dfd7feb` |
| 15 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/islocallyfinitemeasure-of-smulinvariant--86229300a13b460f9650259b.md) | 236 | `result-track:86229300a13b460f9650259bd91ecdb875491ddd61b09fbe8035fe3b2553c70d` |
| 16 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero--67212cedac12e091ee54b6cc.md) | 248 | `result-track:67212cedac12e091ee54b6cc65b8fef73631ba6bf6a4fda8fc19cbdbcc2a9442` |
| 17 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant--e91aee822a917ab96e6cea00.md) | 256 | `result-track:e91aee822a917ab96e6cea00f8e9444f69fe1766fdab9a9a8ccac8650fec628a` |
| 18 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant--cf1b12f1c38c19745b5e1fe6.md) | 264 | `result-track:cf1b12f1c38c19745b5e1fe6057fcf065ac7a6a21969ae2643c465b829d15fad` |
| 19 | `theorem` | [smul_ae_eq_self_of_mem_zpowers](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/smul-ae-eq-self-of-mem-zpowers--ad1063785547bf304cbcbbcf.md) | 273 | `result-track:ad1063785547bf304cbcbbcf1c699610355bc10b4a25077bddd714ecd87c301d` |
| 20 | `theorem` | [vadd_ae_eq_self_of_mem_zmultiples](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/vadd-ae-eq-self-of-mem-zmultiples--44f673f66ff79ba2cf8ec8e3.md) | 285 | `result-track:44f673f66ff79ba2cf8ec8e33c5c4fa9fd41ffa15b80bbfb21dd51ffa5c8aa1c` |
| 21 | `theorem` | [inv_smul_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant6404e4b910c6a39addf952fa5aacd90c66f526270aa2b9deb9b1279a9cbf7106.lean/declarations/inv-smul-ae-eq-self--70c43f7736003feadc5d5b81.md) | 304 | `result-track:70c43f7736003feadc5d5b81892cf86e13eb89556850c8ebe5d95b85219e56f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
