# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyTwoCoordinateReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullRestrictionResidual`](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullRestrictionResidual.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoAnchor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twoanchor--a4b7d47e07948b298fa8458e.md) | 18 | `declaration-track:a4b7d47e07948b298fa8458e1f1b530d396cbf42978cb6d32b9b61fea666190a` |
| 2 | `def` | [twoFamily](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twofamily--088ee9a4840fe68ae11c9b95.md) | 19 | `declaration-track:088ee9a4840fe68ae11c9b95e341705954a6f88291316c1ebbcf6e90e2116c10` |
| 3 | `def` | [twoCenter](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocenter--75a29b2fc025a88f26f6f383.md) | 20 | `declaration-track:75a29b2fc025a88f26f6f38324bc2961a55e627b3462a14a3a233c62861356d7` |
| 4 | `def` | [twoCofactor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocofactor--1be0eefb7106cd082ed6160f.md) | 22 | `declaration-track:1be0eefb7106cd082ed6160ffa8d19cee65b72209fa26aa8e1b0accf229a09a4` |
| 5 | `def` | [twoRow](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworow--adaa4d84e1cab6e66016aacc.md) | 26 | `declaration-track:adaa4d84e1cab6e66016aaccbcde0c9cbab67823a4cbf1821306cc2a360228bb` |
| 6 | `theorem` | [twoCofactor_ge_two](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocofactor-ge-two--f1b7b1bc77a2ffaa30ed7594.md) | 28 | `result-track:f1b7b1bc77a2ffaa30ed7594a8aa9f052e9c9ab97f2f9209ccb294d03f113289` |
| 7 | `theorem` | [twoRow_mem](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworow-mem--e97681eff567dd949bd7c9e5.md) | 32 | `result-track:e97681eff567dd949bd7c9e5a3586a459a91eb068969e3db6b1bbf553e811484` |
| 8 | `theorem` | [twoRow_other_not_dvd](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworow-other-not-dvd--83593927b68a5555e5bdabf0.md) | 36 | `result-track:83593927b68a5555e5bdabf0c8bc0b2fc8f00ed50f47e1341d81d7709da907bd` |
| 9 | `theorem` | [twoCell_unique](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocell-unique--b67a1ed1c9038fdd2fe5861b.md) | 57 | `result-track:b67a1ed1c9038fdd2fe5861b8509c233ebc52267b5611d984be84662ebf11ec0` |
| 10 | `theorem` | [twoCell_entry_multiple](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocell-entry-multiple--dce2dcc616f12025f928ab51.md) | 70 | `result-track:dce2dcc616f12025f928ab51915d9a9cfd0d7db78fc1e1d9a7335939937ae7ab` |
| 11 | `theorem` | [twoCell_entry_zero_of_not_dvd](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twocell-entry-zero-of-not-dvd--5d8ead72c261207e1fff4b96.md) | 100 | `result-track:5d8ead72c261207e1fff4b968ef8430ebb0835904fb7d4de6c9f000dcceb3331` |
| 12 | `def` | [twoPacket](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twopacket--4302d55b5513900483ceb7c3.md) | 112 | `declaration-track:4302d55b5513900483ceb7c38b9eb04cce7b925e500709a53b425de8f04d1ed2` |
| 13 | `theorem` | [twoPacket_energy](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twopacket-energy--e6f7d2205f5bf465174f9268.md) | 115 | `result-track:e6f7d2205f5bf465174f926875cd501cbccf37c728368b5cb83af0cf689b0b7c` |
| 14 | `theorem` | [twoPacket_apply](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twopacket-apply--2bb3cab3d7ce650f24a75a26.md) | 122 | `result-track:2bb3cab3d7ce650f24a75a260de9b7f7b61944ffefec0882c8b07765d036ddc5` |
| 15 | `theorem` | [twoPacket_row](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twopacket-row--40e96d9970fda6b460ace7a3.md) | 139 | `result-track:40e96d9970fda6b460ace7a3a16ddc2646b4de70f3930e8b0328cf65f1cf46c1` |
| 16 | `theorem` | [two_log_pos](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/two-log-pos--81e4a7b6fe2798ef657724b2.md) | 154 | `result-track:81e4a7b6fe2798ef657724b27cb1d7f152d16602fb2b18f715615fba44418e15` |
| 17 | `def` | [twoReconstruction](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworeconstruction--c816a318afa98eeebd1bc9fb.md) | 159 | `declaration-track:c816a318afa98eeebd1bc9fbefb71405c968cad47a263bc4b587fa834a901c5f` |
| 18 | `theorem` | [twoReconstruction_exact](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworeconstruction-exact--18f1f67a970e7c5b84b1988c.md) | 163 | `result-track:18f1f67a970e7c5b84b1988c841ca362d83ae8da72a3eb530e4e684bf17e0160` |
| 19 | `theorem` | [twoReconstruction_uniform_bound](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/tworeconstruction-uniform-bound--63206a4832dffd91ba31cb5b.md) | 171 | `result-track:63206a4832dffd91ba31cb5b605432a98ffbe9c64cfbf01dbe3d854c61a5bb1d` |
| 20 | `def` | [CanonicalTwoCoordinateArithmeticDifferences](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/canonicaltwocoordinatearithmeticdifferences--1ba5e50e08fe8d3905f4270c.md) | 199 | `declaration-track:1ba5e50e08fe8d3905f4270cc8a6ebc24ae37d27437bd76582b4b3f93fd6387e` |
| 21 | `theorem` | [twoArithmetic_residual_zero](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twoarithmetic-residual-zero--6e855e368525d2b9f4589014.md) | 202 | `result-track:6e855e368525d2b9f45890146ae2f223d1f05256a4e99534d80c810a0a4f10ea` |
| 22 | `theorem` | [twoArithmetic_uniform_frame](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twoarithmetic-uniform-frame--73e9a88fa26834b5f4afb7f8.md) | 209 | `result-track:73e9a88fa26834b5f4afb7f860be14daa11b6946b151dd5e1235e4cc1a86e2b2` |
| 23 | `theorem` | [twoArithmetic_contains_anchorFive](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twoarithmetic-contains-anchorfive--84dd56fa937aa155379b9f38.md) | 221 | `result-track:84dd56fa937aa155379b9f38d9e57487bb68a557fbc3f76e3acf7ecd0ac2592f` |
| 24 | `theorem` | [twoArithmetic_contains_anchorThree](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/declarations/twoarithmetic-contains-anchorthree--5c97b07648fe6c2d7420602a.md) | 228 | `result-track:5c97b07648fe6c2d7420602a41d0cb066bfd75044a995696c6f030bfd73e51cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
