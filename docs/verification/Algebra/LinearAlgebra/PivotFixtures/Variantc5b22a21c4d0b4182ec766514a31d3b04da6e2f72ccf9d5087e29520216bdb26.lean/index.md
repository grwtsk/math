# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e8c8dbc576a45ca0d595a7dc44ca0421b530b68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e8c8dbc576a45ca0d595a7dc44ca0421b530b68`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/pivotsubmatrix-eq-one--9d7440e9f4d7e0ca044a34cb.md) | 22 | `result-track:9d7440e9f4d7e0ca044a34cb3f2dd58f6d6518f1efbc9c4480ee19785da518b6` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/matrix-injective--8a2a289685d8dd85d153e049.md) | 28 | `result-track:8a2a289685d8dd85d153e04924a1487edd718f78b2a92aa8fa02a6689bd769f3` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/matrix-rank--ccfc049f070e3b34515fa803.md) | 34 | `result-track:ccfc049f070e3b34515fa803e1a24e4b615a33e8dff5fe55e000621a0ed9d106` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/rowspace-injective--f3b3055d2d38d5612883249f.md) | 40 | `result-track:f3b3055d2d38d5612883249f5553d7d2d79cfdffbde90472cb2158ac75a9a55e` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/tosubspace--08b206d27c42079e9d2b5424.md) | 47 | `declaration-track:08b206d27c42079e9d2b54245f8835b6dd7013ec36ede95f15b464efa3904737` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/tosubspace-injective--2cdcbcd7b6841c78922d9f2b.md) | 53 | `result-track:2cdcbcd7b6841c78922d9f2ba6629d062e93cd0aca5c98f8ef929f3deb01f70d` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily--119bd5f60550020fff89b0ba.md) | 60 | `declaration-track:119bd5f60550020fff89b0ba64d1a0cc91c54486f43bfd84cba6a1406e8d3920` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-coordinates--13ec9176f40afb1c2a608bb2.md) | 64 | `result-track:13ec9176f40afb1c2a608bb2bc51267fd4dc28f39b713219817a9b7eaae5fd10` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-firstpivot--0eab0caca17ec118586f0334.md) | 70 | `result-track:0eab0caca17ec118586f0334d6d27eecac271676579afb85e14f347da59488bd` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-secondpivot--162f2dd22e11c4674d825079.md) | 76 | `result-track:162f2dd22e11c4674d825079551e0f568dd78deeb7702fd08ecc9115d68de51a` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-rank--b1a8fa2bb2c40692d65a391d.md) | 82 | `result-track:b1a8fa2bb2c40692d65a391d8a29f0f41db28d97fe738b9c9a87b71e7eedc1d0` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-nonnegative--343fdc1f9d6990d8c4011bff.md) | 88 | `result-track:343fdc1f9d6990d8c4011bff7f2d0db21708259a8e370404bcda601aea379181` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-zero-witness--415896a024dcf3739a4d2279.md) | 95 | `result-track:415896a024dcf3739a4d2279debee2e8ad2149d83d8b8d39d0becfe15648c6e9` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-firstchart-entry--2d45c15ed7ea7c73da3f57ae.md) | 104 | `result-track:2d45c15ed7ea7c73da3f57aee65228fde970c8905a9a0dd1dc5c9e78e32c4953` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc5b22a21c4d0b4182ec766514a31d3b04da6e2f72ccf9d5087e29520216bdb26.lean/declarations/boundarypivotfamily-secondchart--f3b743c00a76fa997da0e233.md) | 118 | `result-track:f3b743c00a76fa997da0e2333c167463ab351e119d3d6b9ba1a01d3d1ea0f58d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
