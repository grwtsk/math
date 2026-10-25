# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardMeasurableSpace.Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cf28872cca3581e565805434d09bf9fbbfb5791",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cf28872cca3581e565805434d09bf9fbbfb5791`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpaceDef` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/generatemeasurablerec--ba79379f4d7de7ff9150dd14.md) | 55 | `declaration-track:ba79379f4d7de7ff9150dd145f7c2118611432dd299c37c1a92f94bf2f03cb9f` |
| 2 | `theorem` | [self_subset_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/self-subset-generatemeasurablerec--4ff2fc42d1a0820424a892ad.md) | 63 | `result-track:4ff2fc42d1a0820424a892ad78655496ab14dacfeedc86735cdd5968cbda066e` |
| 3 | `theorem` | [empty_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/empty-mem-generatemeasurablerec--3d951ab31f52e2662f4543eb.md) | 70 | `result-track:3d951ab31f52e2662f4543ebfa3c35dfdf5d0dffb6f24055b969beb66654632a` |
| 4 | `theorem` | [compl_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/compl-mem-generatemeasurablerec--828cb1ea7fa256cfbe956315.md) | 76 | `result-track:828cb1ea7fa256cfbe956315f426796160401b25840ab2a6969e2c1089dbf600` |
| 5 | `theorem` | [iUnion_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/iunion-mem-generatemeasurablerec--540ee0273db6877d61767a5d.md) | 82 | `result-track:540ee0273db6877d61767a5d0e958650624c54da30d39dd189d7002e36331441` |
| 6 | `theorem` | [generateMeasurableRec_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/generatemeasurablerec-subset--c87733f832c33130a5fd5cd1.md) | 89 | `result-track:c87733f832c33130a5fd5cd105e06ebb21268da0c7684986e783176cca064ce9` |
| 7 | `theorem` | [cardinal_generateMeasurableRec_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/cardinal-generatemeasurablerec-le--6675eee1fbe1526e8cc8d4ab.md) | 99 | `result-track:6675eee1fbe1526e8cc8d4ab793acc56408be3cc3d7b88cc011556d8d10f733d` |
| 8 | `theorem` | [generateMeasurable_eq_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/generatemeasurable-eq-rec--915cdcee929462aedb9c4039.md) | 125 | `result-track:915cdcee929462aedb9c403934909a3ed73312e85a0df68da9ff243f8fcd0883` |
| 9 | `theorem` | [cardinal_generateMeasurable_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/cardinal-generatemeasurable-le--84f7ebe095ac0f5a594430b0.md) | 164 | `result-track:84f7ebe095ac0f5a594430b0bc3c5d10c230b4d7e601fea8ef5f7b557a969df2` |
| 10 | `theorem` | [cardinalMeasurableSet_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/cardinalmeasurableset-le--980083fb9561cde2c6e23004.md) | 177 | `result-track:980083fb9561cde2c6e230048ecef3329207faeec933bf1c8c1496c39dd91b89` |
| 11 | `theorem` | [cardinal_generateMeasurable_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/cardinal-generatemeasurable-le-continuum--909abba3a2baa2b821e729d0.md) | 184 | `result-track:909abba3a2baa2b821e729d0dcf927f04e38f4f5b7107f7eaa3ef1ee3567669c` |
| 12 | `theorem` | [cardinal_measurableSet_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/declarations/cardinal-measurableset-le-continuum--688a69d1a670cb2a71622e38.md) | 194 | `result-track:688a69d1a670cb2a71622e38ebc7299278015b8da6ff3c41b377b9ad314ad733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
