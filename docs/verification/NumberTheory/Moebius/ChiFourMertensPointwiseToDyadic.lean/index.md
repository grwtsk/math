# Verification target: GRWTSK.NumberTheory.Moebius.ChiFourMertensPointwiseToDyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24091ce15da2b587d9a7cb2343fdc8e9da8fcad",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24091ce15da2b587d9a7cb2343fdc8e9da8fcad`.

Source path: `GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition`](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric`](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/pointwisechifourtwistedmertenssquarerootplusepsilonenvelope--6cd7091982a9ffaed239ce7f.md) | 48 | `declaration-track:6cd7091982a9ffaed239ce7fd210677228d40db789d887a50a6ae21d8d71a215` |
| 2 | `theorem` | [chiFourTwistedMertens_le_dyadicScale](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/chifourtwistedmertens-le-dyadicscale--60d512fff8729171b651c677.md) | 59 | `result-track:60d512fff8729171b651c677e8ca1b8bbdfb7ca88350c0819c0f0e2421e2a38d` |
| 3 | `theorem` | [dyadicChiFourTwistedMertensEnergy_of_pointwise](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/dyadicchifourtwistedmertensenergy-of-pointwise--3bf65ad6de4176c603bc84b9.md) | 120 | `result-track:3bf65ad6de4176c603bc84b9b147d282ab0a160ae37ff248a6e345a67d7c8e31` |
| 4 | `def` | [pointwiseChiFourToDyadicEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/pointwisechifourtodyadicenergyadapter--8e298df5a623852e078482bf.md) | 168 | `declaration-track:8e298df5a623852e078482bf0ea3d2e12a2e99c988f49cef3ccdaeb859304da9` |
| 5 | `theorem` | [twoKernelTwistedMertensEnergy_of_pointwiseOrdinary_and_pointwiseChiFour](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/twokerneltwistedmertensenergy-of-pointwiseordinary-and-pointwisechifour--e5b899da4c10d69092946245.md) | 176 | `result-track:e5b899da4c10d69092946245456dc80f5a43179384913788e1e9c86dd5d14ab7` |
| 6 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regular](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-regular--cb47e58a9f013389e5b4c738.md) | 187 | `result-track:cb47e58a9f013389e5b4c7385b9b638d230b11117ba15a71738ecd2b99ad69c0` |
| 7 | `structure` | [PointwiseChiFourDirichletSourceData](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/pointwisechifourdirichletsourcedata--1d61099b571f929e06bac1c8.md) | 203 | `declaration-track:1d61099b571f929e06bac1c84119297d5f0a8da01f195cef4af9be9bd54ee93f` |
| 8 | `def` | [PointwiseChiFourDirichletSource](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/pointwisechifourdirichletsource--7cf5112f31953fb4397ae53b.md) | 214 | `declaration-track:7cf5112f31953fb4397ae53bfe0989f1812ba3edbcd572d771f4581d8be5d086` |
| 9 | `structure` | [ToPointwiseChiFourMertensEnvelopeAdapter](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/topointwisechifourmertensenvelopeadapter--a7224358d80ba7ded6feac63.md) | 226 | `declaration-track:a7224358d80ba7ded6feac631b99c1063900366720d0f5b6d8477b40fcb5c315` |
| 10 | `abbrev` | [PointwiseChiFourDirichletAdapter](../../../../mathematics/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/declarations/pointwisechifourdirichletadapter--0cd7188ff58566be459233ed.md) | 232 | `declaration-track:0cd7188ff58566be459233ed587cccb460565b521e84b1792678275c313de3e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
