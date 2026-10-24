# Verification target: GRWTSK.Analysis.MeasureTheory.Trim.Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "456dc3463ac70968da3415a0be03824ad207dab0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `456dc3463ac70968da3415a0be03824ad207dab0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/measure-trim--65cbee7a77e6f089b5b930b1.md) | 32 | `declaration-track:65cbee7a77e6f089b5b930b15cc76e6ee0478c7646dd749ae97c26232fe58465` |
| 2 | `theorem` | [trim_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/trim-eq-self--2092f3a6f9c3d6398a793683.md) | 36 | `result-track:2092f3a6f9c3d6398a793683190ab6a706e686255b43cd98671a67e015272c28` |
| 3 | `theorem` | [toOuterMeasure_trim_eq_trim_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/tooutermeasure-trim-eq-trim-tooutermeasure--a43f836dff524b076bc06f99.md) | 41 | `result-track:a43f836dff524b076bc06f99e91e0b5361e24e6bfff400f5fd5105685f503c13` |
| 4 | `theorem` | [zero_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/zero-trim--ea4fcf888c91164ed812138a.md) | 46 | `result-track:ea4fcf888c91164ed812138ada94f1543d09a1c9183d9fa9a6fa6232ce57a739` |
| 5 | `theorem` | [trim_measurableSet_eq](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/trim-measurableset-eq--731ec8992cd74c49f973a16c.md) | 49 | `result-track:731ec8992cd74c49f973a16c56bec229e7d4440ac10463326977c4277e96d586` |
| 6 | `theorem` | [le_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/le-trim--1a64c7271bbb66646f51c09f.md) | 52 | `result-track:1a64c7271bbb66646f51c09f00d383d291199ef9c07f6e52860ef4346d6047e3` |
| 7 | `lemma` | [trim_eq_map](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/trim-eq-map--db15c5527c3cd34db0b07b82.md) | 56 | `result-track:db15c5527c3cd34db0b07b827497be27ca2e66d7b94a55a8298e6568c8cac534` |
| 8 | `lemma` | [trim_add](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/trim-add--61b5b0f27d34a95186d150ab.md) | 60 | `result-track:61b5b0f27d34a95186d150abed7f0c5127595ead6775cdc9e8b2f8dc27e285bd` |
| 9 | `theorem` | [measure_eq_zero_of_trim_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/measure-eq-zero-of-trim-eq-zero--2f420a3552cf1134252920d0.md) | 63 | `result-track:2f420a3552cf1134252920d053b6cbbc1df251881f541108165a3449b6510f85` |
| 10 | `theorem` | [measure_trim_toMeasurable_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/measure-trim-tomeasurable-eq-zero--0c4740c353fd621e8067c47d.md) | 66 | `result-track:0c4740c353fd621e8067c47dd663ab6a945416e7f2a17cb6f16daf30bc9b095e` |
| 11 | `theorem` | [ae_of_ae_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/ae-of-ae-trim--de4632e9d8042b1e9fb99335.md) | 70 | `result-track:de4632e9d8042b1e9fb9933527f3ea0473ce73d44be08ab3c532026651a984eb` |
| 12 | `theorem` | [ae_eq_of_ae_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/ae-eq-of-ae-eq-trim--21a6ce41e58596df72de5abb.md) | 74 | `result-track:21a6ce41e58596df72de5abb347692dbf3cdfe084e1beef7198a951740aac8b4` |
| 13 | `theorem` | [ae_le_of_ae_le_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/ae-le-of-ae-le-trim--a268e53da136dd26927a6a76.md) | 78 | `result-track:a268e53da136dd26927a6a76deb4dcef6b8b0af51de70bc792cca41a87ea0c3c` |
| 14 | `theorem` | [trim_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/trim-trim--c162c5be72cd65be8e7e4309.md) | 82 | `result-track:c162c5be72cd65be8e7e430947323ac6daf124aa17e4994921582883964879ac` |
| 15 | `theorem` | [restrict_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/restrict-trim--f7c0882a44c905d33a503447.md) | 88 | `result-track:f7c0882a44c905d33a503447f53ddd2df0ddc6cd632126e63bb4743799822ab0` |
| 16 | `instance` | [isFiniteMeasure_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/isfinitemeasure-trim--c46a032e32c7caf197623e51.md) | 95 | `declaration-track:c46a032e32c7caf197623e51d5b203321216a7029120dbfadd0ce77e005f98d7` |
| 17 | `theorem` | [sigmaFiniteTrim_mono](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/sigmafinitetrim-mono--fb6e21d2cdffb8087849ef8c.md) | 100 | `result-track:fb6e21d2cdffb8087849ef8ccb399fec989d0516026e3c71763ae078ef4588e5` |
| 18 | `theorem` | [sigmaFinite_trim_bot_iff](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/sigmafinite-trim-bot-iff--1bd9f9d8e22d8b152816a075.md) | 116 | `result-track:1bd9f9d8e22d8b152816a075f6a74523ee2eecce6d0107c07e2ff9888c77fc51` |
| 19 | `lemma` | [Measure.AbsolutelyContinuous.trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant108a9fefadb2e492c54300079270641dd4ceaa63b976426b5c2a53f25a7d3a23.lean/declarations/measure-absolutelycontinuous-trim--98937d51bf233e5ce98ed21b.md) | 122 | `result-track:98937d51bf233e5ce98ed21b3614717563c1826fa16703548510d884c3c432d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
