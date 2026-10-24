# Verification target: GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb004651c3bd9e4104a9b2eef001abdae44f9e2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/ThreeCellWeightedMinimum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb004651c3bd9e4104a9b2eef001abdae44f9e2`.

Source path: `GRWTSK/LinearAlgebra/ThreeCellWeightedMinimum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/ThreeCellWeightedMinimum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum`](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellIntegralMinimum.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.LinearAlgebra.WeightedPermutationCokernel`](../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Slots](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/slots--7c7c2b30853417d5d8f7fe65.md) | 27 | `declaration-track:7c7c2b30853417d5d8f7fe65a235ad2682fb11cf78cf5c177cdd267b93c67d02` |
| 2 | `abbrev` | [Data](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/data--12672265c1dce0f11860d1ef.md) | 28 | `declaration-track:12672265c1dce0f11860d1efa48fe23d04a01087135dab0bb1bc9201e3e3ecf0` |
| 3 | `def` | [frame](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/frame--6e3c6c8fb95bfd55442a9607.md) | 31 | `declaration-track:6e3c6c8fb95bfd55442a9607deebd48cb2272c704df52126f4bfe9f0bd4ebf13` |
| 4 | `def` | [minimumData](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/minimumdata--df5c7cdb6382e0f6ed76ced3.md) | 55 | `declaration-track:df5c7cdb6382e0f6ed76ced33a72a2b26f4a72e6689d086f27c418cdef612a69` |
| 5 | `def` | [admissible](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/admissible--b75a4fcdf66b6873ff52afd9.md) | 67 | `declaration-track:b75a4fcdf66b6873ff52afd917798ba5b523dae4060eedcce42c2138a650925d` |
| 6 | `theorem` | [minimumData_image](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/minimumdata-image--8343ca8c02689a0da3fe1c73.md) | 70 | `result-track:8343ca8c02689a0da3fe1c7318c918895b28d20cc67fcd98d6035fc3fae580d9` |
| 7 | `def` | [integralCell](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/integralcell--8e153e2fe1496346f0d5accf.md) | 91 | `declaration-track:8e153e2fe1496346f0d5accfccdf2222582c0315493bcae0bc6667e5b0fa89e9` |
| 8 | `theorem` | [reduce_integralCell](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/reduce-integralcell--dda37b2eedf252f8811d986f.md) | 97 | `result-track:dda37b2eedf252f8811d986f27160b08834b91866ad627c5cd3382ab30b9d811` |
| 9 | `theorem` | [integralCell_minimum](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/integralcell-minimum--656eada5cc7fd2d945191716.md) | 105 | `result-track:656eada5cc7fd2d94519171605bbadcf558a97e3fccc0c6ec25aba04634f20e8` |
| 10 | `def` | [reducedPort](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/reducedport--14a60728e4fe214d3598d295.md) | 115 | `declaration-track:14a60728e4fe214d3598d29501cde1b4dd18c7334d4f710ae67a443c8a756db6` |
| 11 | `def` | [composite](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/composite--a2acd68d79440d2a5d895f47.md) | 122 | `declaration-track:a2acd68d79440d2a5d895f47d7345db0773f994ef676949e5dbe3dbb0ebd2c3e` |
| 12 | `def` | [baseWeight](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/baseweight--63eeb6ff86b6a9a984f1e5d2.md) | 125 | `declaration-track:63eeb6ff86b6a9a984f1e5d225da2d65cd1890149c3f4d65225f4557e951717f` |
| 13 | `def` | [combinedWeight](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/combinedweight--3be0da1db8bda9008383c8dd.md) | 126 | `declaration-track:3be0da1db8bda9008383c8ddb1588d6b186b965b4a272d7c82729301241fab39` |
| 14 | `def` | [slotPerm](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/slotperm--a51d19f2fe755431cf781a1e.md) | 127 | `declaration-track:a51d19f2fe755431cf781a1ee32eb877ab6000b76d39824fc10ae87721fcd801` |
| 15 | `theorem` | [frame_composite](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/frame-composite--94ebc6a9efb3c5e0e4a21569.md) | 131 | `result-track:94ebc6a9efb3c5e0e4a215698054d0778d03a60b2526a23fb7466b9332a8747a` |
| 16 | `theorem` | [composite_image_admissible](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/composite-image-admissible--66a38a1341f585c0990d017b.md) | 141 | `result-track:66a38a1341f585c0990d017b22f82aaef1ae591488c1e6bfefc73b01779d4dd2` |
| 17 | `theorem` | [composite_image_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/composite-image-iff--50d9964ad84e25638d020aa7.md) | 150 | `result-track:50d9964ad84e25638d020aa7ef064149803550aeaa83ed509901bc05c56b3fb1` |
| 18 | `def` | [residue](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/residue--0dd6aeda35155c6746c476b6.md) | 160 | `declaration-track:0dd6aeda35155c6746c476b60747e61001399b5fad44d98850289fab578505b5` |
| 19 | `theorem` | [residue_surjective](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/residue-surjective--86fa1f0a77b24bbf9b08dbe8.md) | 164 | `result-track:86fa1f0a77b24bbf9b08dbe853891ca266b5438892efd6d7524b332b74ad25e4` |
| 20 | `theorem` | [residue_kernel](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/residue-kernel--8e34ac3c3adb2103d0486b74.md) | 168 | `result-track:8e34ac3c3adb2103d0486b7415497f99a2f9745409766b16c2c6d966f6ca0b79` |
| 21 | `abbrev` | [Cokernel](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/cokernel--ba33b438d31d366ac296c868.md) | 175 | `declaration-track:ba33b438d31d366ac296c8681c8b99c92ea6497795d7ceab27ee7dd7f7ae9813` |
| 22 | `def` | [cokernelEquiv](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/cokernelequiv--017f745e6381d5229b245b03.md) | 178 | `declaration-track:017f745e6381d5229b245b03ab299c940c9b51f35fd5e9de7bbad4dd0ea799f4` |
| 23 | `theorem` | [cokernelEquiv_mk](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/cokernelequiv-mk--13dfea25adfc380212e802dc.md) | 183 | `result-track:13dfea25adfc380212e802dc223e8ef524592cf0e9dae6eb92febe0d75ef3263` |
| 24 | `theorem` | [cokernel_card](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/cokernel-card--154c77c58ec1579f5cbdb796.md) | 187 | `result-track:154c77c58ec1579f5cbdb796c2368cbd12c2877792af1389a40515baa5d68a83` |
| 25 | `theorem` | [three_four_dvd](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/three-four-dvd--e65e99ece3b68e25953ce31c.md) | 202 | `result-track:e65e99ece3b68e25953ce31c5b1f31e73d499a892ca5c557d9e777ec3552d166` |
| 26 | `theorem` | [clearing_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellWeightedMinimum.lean/declarations/clearing-iff--71456965b286d9c9f808c3ba.md) | 221 | `result-track:71456965b286d9c9f808c3bad019f37cd7637614a5dfbf53f013786d16cdbf48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
