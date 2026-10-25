# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardMeasurableSpace.Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ea4584e51a926d2eb1fbbd7f5778aab95e332ed",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ea4584e51a926d2eb1fbbd7f5778aab95e332ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpaceDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/generatemeasurablerec--65648c32b2fc13a5b0d0a894.md) | 47 | `declaration-track:65648c32b2fc13a5b0d0a8943906fb126462fdfb494b7bb44654a91254286f5e` |
| 2 | `theorem` | [self_subset_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/self-subset-generatemeasurablerec--d17b30f0ebb83763ccb89bb0.md) | 55 | `result-track:d17b30f0ebb83763ccb89bb0c07d0ebea82f12380de70b68c3d5179c0daa2d8f` |
| 3 | `theorem` | [empty_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/empty-mem-generatemeasurablerec--f5c4acaa3c1618bf71e78c3a.md) | 62 | `result-track:f5c4acaa3c1618bf71e78c3a179f0d38c7d44097902227dd358e767e14dcc374` |
| 4 | `theorem` | [compl_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/compl-mem-generatemeasurablerec--e6f6d4d3e50cb335bbd28073.md) | 68 | `result-track:e6f6d4d3e50cb335bbd280733fad76d26928bd3448be14b828c056cbdea382ec` |
| 5 | `theorem` | [iUnion_mem_generateMeasurableRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/iunion-mem-generatemeasurablerec--7cea540fe26888bbd70281c1.md) | 74 | `result-track:7cea540fe26888bbd70281c1d8d020db6ebb4afd964ace68f19e28c86d2e324c` |
| 6 | `theorem` | [generateMeasurableRec_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/generatemeasurablerec-subset--d612517566fd1255ed592a9b.md) | 81 | `result-track:d612517566fd1255ed592a9b3ed2187d717693b7b14f77fc4600c17c4302c3fb` |
| 7 | `theorem` | [cardinal_generateMeasurableRec_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/cardinal-generatemeasurablerec-le--df4ebed05d92c285827c915f.md) | 91 | `result-track:df4ebed05d92c285827c915f49a68f897d0fa5dfbd48fa6ae9acad7804342ab1` |
| 8 | `theorem` | [generateMeasurable_eq_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/generatemeasurable-eq-rec--1172a5f66e51b452ea42a40d.md) | 117 | `result-track:1172a5f66e51b452ea42a40debf8c4ae78e5a14f12bae7f1b2784673fd9f7192` |
| 9 | `theorem` | [cardinal_generateMeasurable_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/cardinal-generatemeasurable-le--f711b5090a1be10284782edd.md) | 156 | `result-track:f711b5090a1be10284782edd611ce29fd4f97e4f6e63b30416cad93bf535d71d` |
| 10 | `theorem` | [cardinalMeasurableSet_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/cardinalmeasurableset-le--1d4dd7937558123dd09ea6bc.md) | 169 | `result-track:1d4dd7937558123dd09ea6bc879abff6feecbd810a09d003e5472e2e648cb230` |
| 11 | `theorem` | [cardinal_generateMeasurable_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/cardinal-generatemeasurable-le-continuum--afbb3603409f2b3952f3cbc9.md) | 176 | `result-track:afbb3603409f2b3952f3cbc9febfb26f311e6f8140b10dfd3aec3d9719ead800` |
| 12 | `theorem` | [cardinal_measurableSet_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variant32d6eeca42f2290aa6006c3fc7bed765ab4bd9483c6b024a4ab45718c334d6f1.lean/declarations/cardinal-measurableset-le-continuum--da4b6cbb71d5a5b179787476.md) | 186 | `result-track:da4b6cbb71d5a5b1797874765ada9ceb6fd019afd39314281593f4f1392476a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
