# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance`](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourBalance.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PosNegMismatch](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/posnegmismatch--8e12b8f1c7d0e5a14c78fd4f.md) | 30 | `declaration-track:8e12b8f1c7d0e5a14c78fd4f96a9f459dd6280371c162541bfea8a05f3e4210a` |
| 2 | `def` | [NegPosMismatch](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/negposmismatch--f663ee55262e5077c7f8699f.md) | 34 | `declaration-track:f663ee55262e5077c7f8699f8e6f3697655b3d1e854f8a1d2c3cce827a82455d` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/instance--4a90ca1e3a651af82641d70a.md) | 37 | `declaration-track:4a90ca1e3a651af82641d70ab62b5d52f369ec199871dd3be9bf0ab218592d0c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/instance--01977a538f17c7f0bd5fc009.md) | 40 | `declaration-track:01977a538f17c7f0bd5fc00934f0a0ae11f75aa1ff0820bfef68d9863ca59100` |
| 5 | `def` | [mismatchIndicator](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/mismatchindicator--2ea9da2d3f28e854671ea5f6.md) | 45 | `declaration-track:2ea9da2d3f28e854671ea5f6f30f06ee751bade31905447799c95b145e44153d` |
| 6 | `theorem` | [sub_eq_two_mul_mismatchIndicator](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/sub-eq-two-mul-mismatchindicator--4426bdbd6b132485a924f752.md) | 52 | `result-track:4426bdbd6b132485a924f752314591addc286af1df4e5c17d54c5c3f48a5daa3` |
| 7 | `def` | [posNegCount](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/posnegcount--48b3283c06c29ad6138fa734.md) | 63 | `declaration-track:48b3283c06c29ad6138fa734aeacfe2e5a5a8f64778120659b7b790b084ff950` |
| 8 | `def` | [negPosCount](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/negposcount--4306e76fc1d7a4838ec675f0.md) | 66 | `declaration-track:4306e76fc1d7a4838ec675f0ee658aed07f5264c5ce86a12dcb6e32ccdf3bcc7` |
| 9 | `theorem` | [sum_mismatchIndicator_eq_count_sub_count](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/sum-mismatchindicator-eq-count-sub-count--271e16600d8bf0f0428bf62f.md) | 71 | `result-track:271e16600d8bf0f0428bf62f1b7864e53e849c16433c0a3997c6ef4f52f3d238` |
| 10 | `theorem` | [mismatch_card_eq_of_sum_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/mismatch-card-eq-of-sum-eq--5faba4cbc90355618bb13467.md) | 81 | `result-track:5faba4cbc90355618bb134677e7a28f0b3aea77cccadc65bb8f11740ba7c031c` |
| 11 | `theorem` | [mismatch_fintype_card_eq_of_sum_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/mismatch-fintype-card-eq-of-sum-eq--c162c2e109cb7ec973ff1945.md) | 106 | `result-track:c162c2e109cb7ec973ff194571081d58a4bed09c3b9fc2cb52146ed7e4ea0180` |
| 12 | `def` | [mismatchPairing](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/mismatchpairing--7ccb9be947bf74eb6347d1a5.md) | 118 | `declaration-track:7ccb9be947bf74eb6347d1a5cae1c888d9de41e46313a21421d4c1344efb8bb9` |
| 13 | `def` | [switchPair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchpair--0a776d5a127443708a1825a6.md) | 128 | `declaration-track:0a776d5a127443708a1825a6a1e40f54eeb0a8538d5719b8113febfde93dcf13` |
| 14 | `theorem` | [sum_switchPair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/sum-switchpair--b6738f0088dcab081a19f77b.md) | 133 | `result-track:b6738f0088dcab081a19f77b3175c09bbad83298869d421a0037bcf2cf3155e0` |
| 15 | `theorem` | [switchPair_corrects_mismatch_pair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchpair-corrects-mismatch-pair--d2fb5da149e3b006b6473027.md) | 152 | `result-track:d2fb5da149e3b006b6473027b4404b54828592f31d9c1b005a58f8872efa9ece` |
| 16 | `def` | [IsOddMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/isoddmatrix--ccef41637fe1f7afa624d81a.md) | 174 | `declaration-track:ccef41637fe1f7afa624d81a174ab12b8db6277ed2dbc6517e5fe9ea760dea6d` |
| 17 | `def` | [switchConjugatePair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair--f5123dcf96c8400450abf040.md) | 182 | `declaration-track:f5123dcf96c8400450abf0409786c16561eada834e21c89b10456f8b7518964f` |
| 18 | `theorem` | [switchConjugatePair_eq_of_ne](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-eq-of-ne--b75abc442430f920c51f0a78.md) | 191 | `result-track:b75abc442430f920c51f0a78ab8bf2dc714797aefe00ac16482dd3d9326f0ab6` |
| 19 | `theorem` | [switchConjugatePair_odd](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-odd--38ebc8933db9032226522c37.md) | 199 | `result-track:38ebc8933db9032226522c372686b8ebc639aead46ebf0ddd41fdb0c6b0a79ed` |
| 20 | `theorem` | [sum_switchConjugatePair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/sum-switchconjugatepair--7f78ad47dbd5d1cb3ad50294.md) | 223 | `result-track:7f78ad47dbd5d1cb3ad502945b3eabc6e3af3a94f27a1bd3c4dcf3ae339d157f` |
| 21 | `theorem` | [switchConjugatePair_isSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-issign--ec9109266dd1054e0510a918.md) | 241 | `result-track:ec9109266dd1054e0510a918b021b318a2902a9dc26a3bfd9923bed2872ce0f4` |
| 22 | `def` | [rowMismatch](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/rowmismatch--61ae166207161948f5386dee.md) | 258 | `declaration-track:61ae166207161948f5386dee91dc2b960bbbaa5f154591e06a77d99a9205af1f` |
| 23 | `def` | [columnMismatchCount](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/columnmismatchcount--bf182e5091211b2d3f9f4d94.md) | 262 | `declaration-track:bf182e5091211b2d3f9f4d941cccf7201548a9590c3e228d5f393e517c0ae81a` |
| 24 | `theorem` | [rowMismatch_eq_one_of_posNeg](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/rowmismatch-eq-one-of-posneg--484d70bf43c514ce11752546.md) | 266 | `result-track:484d70bf43c514ce117525464f726a50b62d2092245ba2e8015a6e2816d7b960` |
| 25 | `theorem` | [rowMismatch_eq_one_of_negPos](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/rowmismatch-eq-one-of-negpos--068e337f2d762c6627b1f0ed.md) | 272 | `result-track:068e337f2d762c6627b1f0edf458b0245ac12d6be70062c807bf7341c1584b1a` |
| 26 | `theorem` | [rowMismatch_switchPair_le](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/rowmismatch-switchpair-le--451e6feb20950b5d6adba89f.md) | 280 | `result-track:451e6feb20950b5d6adba89ff9765aed7926d6e2ccf7c98c340375271aa12a50` |
| 27 | `theorem` | [columnMismatchCount_switchPair_lt](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/columnmismatchcount-switchpair-lt--cd33735e9250059752337e68.md) | 304 | `result-track:cd33735e9250059752337e6840838f9acb7e92ecc6133a9f1288f3b4740ce8be` |
| 28 | `theorem` | [columnMismatchCount_switchConjugatePair_lt](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/columnmismatchcount-switchconjugatepair-lt--2612ca2c1820823da77355dd.md) | 321 | `result-track:2612ca2c1820823da77355dd98aa0549160fc2c300e26f69ba93b347d13cff59` |
| 29 | `theorem` | [columnMismatchCount_switchConjugatePair_eq_of_ne](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/columnmismatchcount-switchconjugatepair-eq-of-ne--6100a8fc3be60ad71944c3a8.md) | 337 | `result-track:6100a8fc3be60ad71944c3a8916a384db47784831622de96c51a61a0e62b73d1` |
| 30 | `theorem` | [exists_opposite_mismatch_pair](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/exists-opposite-mismatch-pair--e0fb61425a62f813bdfe4447.md) | 351 | `result-track:e0fb61425a62f813bdfe444700a8baf7c6092957487f621693ad9a99b1018454` |
| 31 | `inductive` | [PairedColumnReach](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/pairedcolumnreach--7ffe569cf05536621917580d.md) | 385 | `declaration-track:7ffe569cf05536621917580d559316e84e007f5f01a9e8d011647913396425aa` |
| 32 | `theorem` | [exists_pairedColumnReach_corrects](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/exists-pairedcolumnreach-corrects--afdaa4d497eee8667711af46.md) | 399 | `result-track:afdaa4d497eee8667711af46d5d2510b355d53f348effe437f65499b31b69685` |
| 33 | `theorem` | [switchConjugatePair_corrects_selected](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-corrects-selected--f74b43363dfe78837a903257.md) | 455 | `result-track:f74b43363dfe78837a9032576f13a4e7d3ba88536773303ea5c52bf20edfa3dc` |
| 34 | `theorem` | [switchConjugatePair_corrects_conjugate](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-corrects-conjugate--bb1f6e2001fa56598361f169.md) | 469 | `result-track:bb1f6e2001fa56598361f169682751b8e969f0f48560003b3eba50a6acac4396` |
| 35 | `def` | [oddSignRowOfMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/oddsignrowofmatrix--93feb94e032931772fec12eb.md) | 486 | `declaration-track:93feb94e032931772fec12ebf8b502c8abf778b5311837edff7e8ed43d1e9989` |
| 36 | `theorem` | [switchConjugatePair_selectedRows_balance](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-selectedrows-balance--c226d811527a7cc9a9525446.md) | 497 | `result-track:c226d811527a7cc9a952544608ea157e2f9643e3949b0f60e2e7818b888b0fab` |
| 37 | `theorem` | [atomicSwitch_fourBalance](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/atomicswitch-fourbalance--8e770440d1594e85d3458f4a.md) | 516 | `result-track:8e770440d1594e85d3458f4ac2f00909de2cfead653356c95f50b1bc8b9e1f40` |
| 38 | `theorem` | [switchConjugatePair_row_eq_of_ne](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-row-eq-of-ne--8e76ccbdaca5c7a6bd9c21ea.md) | 550 | `result-track:8e76ccbdaca5c7a6bd9c21ea33894e63b410eeba64b5fb7d8d01f02d71b38417` |
| 39 | `theorem` | [switchConjugatePair_changedRow_subset](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-changedrow-subset--716de0cbf68d641ecf888ef0.md) | 564 | `result-track:716de0cbf68d641ecf888ef0af5c6edbf2b5a295371db05257b73b4359c73d1e` |
| 40 | `theorem` | [unchangedRow_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/unchangedrow-eq--355d34070fafe4d0cc09bbc9.md) | 579 | `result-track:355d34070fafe4d0cc09bbc9de2538b09dbe3a6ed26af532fa1357d44cdff0ea` |
| 41 | `theorem` | [switchConjugatePair_preserves_other_column](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/switchconjugatepair-preserves-other-column--f174deb08aa6c39a338d1b01.md) | 589 | `result-track:f174deb08aa6c39a338d1b01d69fd771eae3dcce9eda114b08138b94f23c4682` |
| 42 | `theorem` | [columnMismatchCount_conj_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/columnmismatchcount-conj-eq--da2df71aa2d7f0de5aa0f8dc.md) | 604 | `result-track:da2df71aa2d7f0de5aa0f8dc555c95e1c4fc921f3dedc287eb988bac68e0a2ca` |
| 43 | `def` | [matrixMismatchCount](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/matrixmismatchcount--defe1869dce710b7c8eb7826.md) | 617 | `declaration-track:defe1869dce710b7c8eb7826c68e94a3d7c4019fb85ce04ce71ceef824dc4b3c` |
| 44 | `theorem` | [matrixMismatchCount_switchConjugatePair_lt](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/matrixmismatchcount-switchconjugatepair-lt--4b879058bfe50f6e654c9292.md) | 623 | `result-track:4b879058bfe50f6e654c9292ec09e4f8d792cf3bf6932cf7a244c25ae5a44df0` |
| 45 | `theorem` | [conj_ne_self_of_row](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/conj-ne-self-of-row--6a42b70e8dd500a3e8e3b242.md) | 658 | `result-track:6a42b70e8dd500a3e8e3b242f519e71aa8eec9ca16c962964f01e52931d80706` |
| 46 | `inductive` | [PairedMatrixReach](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/declarations/pairedmatrixreach--2de65cf957282adee9660474.md) | 672 | `declaration-track:2de65cf957282adee9660474848696092cff27951a90cb3a72db6fa2a0dede91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
