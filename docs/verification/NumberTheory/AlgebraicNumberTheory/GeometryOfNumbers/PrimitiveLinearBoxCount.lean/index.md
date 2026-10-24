# Verification target: GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e2c36883bde8f8157af3ee24b9417797959e744",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearBoxCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e2c36883bde8f8157af3ee24b9417797959e744`.

Source path: `GRWTSK/GeometryOfNumbers/PrimitiveLinearBoxCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/PrimitiveLinearBoxCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Interval` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/point--93a1b15fa04768c4126c1d15.md) | 30 | `declaration-track:93a1b15fa04768c4126c1d15cf5e2e37369cecedf0ccf3abbe3c07f7c18056fd` |
| 2 | `structure` | [Data](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/data--8c0f7d1dfb9e0cccb5725655.md) | 34 | `declaration-track:8c0f7d1dfb9e0cccb5725655d3843b2716f8329fe600f7221af287b10295f3c4` |
| 3 | `def` | [LinearEquation](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/linearequation--31af98c6b6f475480e45a09b.md) | 52 | `declaration-track:31af98c6b6f475480e45a09bdd9d0203d21aa1d709cbfa8b1b24750377afe04b` |
| 4 | `def` | [VariablePrimitive](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/variableprimitive--943f9b25db81932f7618cb9d.md) | 56 | `declaration-track:943f9b25db81932f7618cb9d0beec728fa6339e75432f6dd612413b6db125699` |
| 5 | `def` | [PrimitivePositiveSolution](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivepositivesolution--11bcb8de4858cf819e5ae5e7.md) | 60 | `declaration-track:11bcb8de4858cf819e5ae5e769248dbf57e49d54909e57af194bcaf06a10be2d` |
| 6 | `def` | [primitivePositiveSolutions](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivepositivesolutions--d99fb46768c0e27eebfe1817.md) | 67 | `declaration-track:d99fb46768c0e27eebfe181785e586f8ac13593b2fc28dfd483169e7b4df608e` |
| 7 | `theorem` | [mem_primitivePositiveSolutions](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/mem-primitivepositivesolutions--b44651bc3edfeb7987354d4f.md) | 72 | `result-track:b44651bc3edfeb7987354d4f15c6a722be0ee0e462bded203bb82e5b716ba846` |
| 8 | `def` | [primitivePositiveSolutionCount](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivepositivesolutioncount--b71de0edd1e92dcbd75bda58.md) | 82 | `declaration-track:b71de0edd1e92dcbd75bda58820b4f027ac7484d45e4fb7d1465a2ee13f98b45` |
| 9 | `theorem` | [card_solutionSubtype](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/card-solutionsubtype--d051246da5378f545076a533.md) | 87 | `result-track:d051246da5378f545076a533b087aaa3f2f3624362223ecc24f7798c4c6f24b3` |
| 10 | `theorem` | [primitivePositiveSolutions_ext](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivepositivesolutions-ext--aff608415225dc7a1c23a31f.md) | 93 | `result-track:aff608415225dc7a1c23a31f8af73efa231b00abe26817a825708f7ba4a92052` |
| 11 | `theorem` | [primitivePositiveSolutionCount_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivepositivesolutioncount-eq-zero-iff--ce5eb17d7ec989689479289b.md) | 103 | `result-track:ce5eb17d7ec989689479289bfd5c30fb7c52a146afc477fdf7168b0fb05691b8` |
| 12 | `def` | [scaleHeight](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/scaleheight--0d23b16520ed447405f5e1d4.md) | 113 | `declaration-track:0d23b16520ed447405f5e1d40542b6709307b6e43e49e6f5300fa6b8447a8139` |
| 13 | `theorem` | [scaleHeight_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/scaleheight-pos--20dd4b2a0dea2332e461559f.md) | 118 | `result-track:20dd4b2a0dea2332e461559fc5b480714c9d5639bad1e667e1c0f6816b8137be` |
| 14 | `theorem` | [scaleHeight_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/scaleheight-ne-zero--2f194382103d84b5af8f2bec.md) | 123 | `result-track:2f194382103d84b5af8f2bec7b8cf93df6a9e93e9c2ec69ddaec7cfe588d3366` |
| 15 | `def` | [normalizedPrimitiveVolume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/normalizedprimitivevolume--e11ec87cc524517f334b4481.md) | 128 | `declaration-track:e11ec87cc524517f334b448107f4c8574a6154e30be8184bab4bf19c3a2e5385` |
| 16 | `theorem` | [normalizedPrimitiveVolume_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/normalizedprimitivevolume-pos--213eaa57e99bc4993eee554d.md) | 133 | `result-track:213eaa57e99bc4993eee554d50e091ee92958259b6b50237023186307eedd925` |
| 17 | `def` | [PrimitiveLinearBoxBoundAt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/primitivelinearboxboundat--d843aedc73f69c509d970e32.md) | 142 | `declaration-track:d843aedc73f69c509d970e3222854ccc9b898f59755358aa348580222fff9a30` |
| 18 | `def` | [HasAbsolutePrimitiveLinearBoxBound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/hasabsoluteprimitivelinearboxbound--0d36acb85ae1259fff592abb.md) | 148 | `declaration-track:0d36acb85ae1259fff592abbee01ec251a00a4d8a737cccad67b9e9611df3e0b` |
| 19 | `theorem` | [coefficientPrimitive_available](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/declarations/coefficientprimitive-available--652497e590d6bc9e0c949ad7.md) | 154 | `result-track:652497e590d6bc9e0c949ad76bb303eae26564fb986645a967d2aaf6196c9877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
