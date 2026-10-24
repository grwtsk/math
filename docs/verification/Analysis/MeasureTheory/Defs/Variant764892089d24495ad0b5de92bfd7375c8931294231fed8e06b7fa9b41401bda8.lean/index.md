# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf287037c98113ba3926960125d1f85f28227165",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf287037c98113ba3926960125d1f85f28227165`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [VAddInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/vaddinvariantmeasure--e37da7901b2a2ef47af74246.md) | 60 | `declaration-track:e37da7901b2a2ef47af74246f81738aaa5139920f8375afaa05e650520d17391` |
| 2 | `class` | [SMulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/smulinvariantmeasure--c7cf1de6eae8a8fab59ee4fa.md) | 68 | `declaration-track:c7cf1de6eae8a8fab59ee4facafff70457acbebf7285b7506c619a6464688b29` |
| 3 | `class` | [IsAddLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/isaddleftinvariant--12f047f8ff2b5de1e777ee16.md) | 80 | `declaration-track:12f047f8ff2b5de1e777ee16f34775e7e96417cf1a9dabe627c5b356b810335e` |
| 4 | `class` | [IsMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/ismulleftinvariant--b79134a46a50b66944e68056.md) | 86 | `declaration-track:b79134a46a50b66944e680560b6f7667a3d093a3454e2fc690ed02048e67091e` |
| 5 | `class` | [IsAddRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/isaddrightinvariant--4c5b9da9733b861f98dfbce7.md) | 91 | `declaration-track:4c5b9da9733b861f98dfbce7b02921456ffa29853701faf4a2f77ed5c3dd4bdf` |
| 6 | `class` | [IsMulRightInvariant](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/ismulrightinvariant--efa2318fe9fd667cc54ca9b6.md) | 97 | `declaration-track:efa2318fe9fd667cc54ca9b6b8122f1a559e081322d5901b83d5bfc00feddaab` |
| 7 | `instance` | [IsMulLeftInvariant.smulInvariantMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/ismulleftinvariant-smulinvariantmeasure--76d4bb4dbb067567f258cbce.md) | 103 | `declaration-track:76d4bb4dbb067567f258cbce234961c44ad6c6cfd6626b4658c0cb2b70bd9af7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/instance--01b79e55cf634052df38109e.md) | 110 | `declaration-track:01b79e55cf634052df38109ef6bc13c7366b087091895114792a76e2be07cdcf` |
| 9 | `instance` | [IsMulRightInvariant.toSMulInvariantMeasure_op](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variant764892089d24495ad0b5de92bfd7375c8931294231fed8e06b7fa9b41401bda8.lean/declarations/ismulrightinvariant-tosmulinvariantmeasure-op--45ba16998f4b05e873872578.md) | 115 | `declaration-track:45ba16998f4b05e873872578e613f92cc6dcd6235f271706a704318e903ab8c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
