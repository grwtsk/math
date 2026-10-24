# Verification target: GRWTSK.Algebra.GroupTheory.CommutingProbability.Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "641d23aba3e3706ac5edd1fc490bf601621fc246",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `641d23aba3e3706ac5edd1fc490bf601621fc246`.

Source path: `GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.CardCommute` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Dihedral` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob--4331806de946cfe304e01abc.md) | 35 | `declaration-track:4331806de946cfe304e01abc5a5fc52e484e528d13c6e44ed6a80c0ed2f9297c` |
| 2 | `theorem` | [commProb_def](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-def--62ae48962ce1830fe55f7b29.md) | 38 | `result-track:62ae48962ce1830fe55f7b294f9f87f5e2ed0835d04a5a73ddc826b00e3fcb3a` |
| 3 | `theorem` | [commProb_prod](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-prod--0a2bbe5e04b08cf97d7c7be3.md) | 42 | `result-track:0a2bbe5e04b08cf97d7c7be34fe6dd007bb0494b92a7a6342d1695522465be3a` |
| 4 | `theorem` | [commProb_pi](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-pi--62d1f8949e2817c464469ca0.md) | 49 | `result-track:62d1f8949e2817c464469ca005f11bb621ca8c3af183595c5be8a5b192ff5223` |
| 5 | `theorem` | [commProb_function](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-function--6c15a49a9bfd1c5c63d326c5.md) | 57 | `result-track:6c15a49a9bfd1c5c63d326c55913bc020ff42be6dba127ce34dfaadc3ef72787` |
| 6 | `theorem` | [commProb_eq_zero_of_infinite](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-eq-zero-of-infinite--af7c9d225fdf03f2393a9976.md) | 62 | `result-track:af7c9d225fdf03f2393a99763317a1b02b26b342027b9ffad547a2c13ae304e1` |
| 7 | `theorem` | [commProb_pos](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-pos--96a10d5543e2075f7b23d8fc.md) | 67 | `result-track:96a10d5543e2075f7b23d8fce2b1e9c1bd30543357cbe8f80cb3b58968df84d6` |
| 8 | `theorem` | [commProb_le_one](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-le-one--68f22e28aee496c4a1ad66b1.md) | 72 | `result-track:68f22e28aee496c4a1ad66b1f9f973f34267978e952ea63981b0edbb87b83bc8` |
| 9 | `theorem` | [commProb_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-eq-one-iff--fe01bde30b8f79d6b30b1ad9.md) | 79 | `result-track:fe01bde30b8f79d6b30b1ad95ae0db3d99b0b56d05bbd9cb64663a0a2501385f` |
| 10 | `theorem` | [commProb_def'](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-def--3fe0ab707a40001be2c0eb84.md) | 91 | `result-track:3fe0ab707a40001be2c0eb84116dbfad7bfea52543a2e496f8428f9552a09949` |
| 11 | `theorem` | [Subgroup.commProb_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/subgroup-commprob-subgroup-le--2a843b2121e295479ee3911e.md) | 100 | `result-track:2a843b2121e295479ee3911eb362e47caa331b82f736d2adda16c91c0b7e4244` |
| 12 | `theorem` | [Subgroup.commProb_quotient_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/subgroup-commprob-quotient-le--de1f3e47f0259fa3a2dad8d5.md) | 110 | `result-track:de1f3e47f0259fa3a2dad8d5f1eddc4e3844d35ed33141f2b9a798d3ddd92d6d` |
| 13 | `theorem` | [inv_card_commutator_le_commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/inv-card-commutator-le-commprob--0472584a77579a8fbae1e3a6.md) | 123 | `result-track:0472584a77579a8fbae1e3a66c30c2594dce95a8cc6f5152f42856fdd275ddcd` |
| 14 | `lemma` | [commProb_odd](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-odd--24a8da2950002c35450763cd.md) | 131 | `result-track:24a8da2950002c35450763cd7383ae0234350c433c6a0bb1dbf603f9d398521a` |
| 15 | `lemma` | [div_two_lt](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/div-two-lt--171afe71ada85d2be956bdb0.md) | 139 | `result-track:171afe71ada85d2be956bdb00d0de6829185c3259612ba0bc22f4da3ceb1aca6` |
| 16 | `lemma` | [div_four_lt](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/div-four-lt--dfe0ab697c96e0df15401ce4.md) | 142 | `result-track:dfe0ab697c96e0df15401ce471e3adc77ed817f0798c07fdb6ef9f113d906935` |
| 17 | `def` | [reciprocalFactors](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/reciprocalfactors--e299b93741151af1f5c7faef.md) | 147 | `declaration-track:e299b93741151af1f5c7faef75cfa1ecb15f8a7fe05bc8123f608683b6fe8c0d` |
| 18 | `lemma` | [reciprocalFactors_zero](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/reciprocalfactors-zero--139ee7bce25e5277f97a03b5.md) | 155 | `result-track:139ee7bce25e5277f97a03b5eabe95dcc89c456af8fa4d9b3b2b3656ab008994` |
| 19 | `lemma` | [reciprocalFactors_one](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/reciprocalfactors-one--389c52c98bb5e8f8d14d8764.md) | 158 | `result-track:389c52c98bb5e8f8d14d8764512233284f3813c5cc61596f5592c7060d801dce` |
| 20 | `lemma` | [reciprocalFactors_even](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/reciprocalfactors-even--db2cf9d2fa21e5e6f5ddf9e4.md) | 161 | `result-track:db2cf9d2fa21e5e6f5ddf9e4a1ad05781fd4f7730f49839300e78ba5b5bdc405` |
| 21 | `lemma` | [reciprocalFactors_odd](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/reciprocalfactors-odd--b965c2aeec1438cffb2bf1e3.md) | 168 | `result-track:b965c2aeec1438cffb2bf1e39b2ac1970bd257b4a3a90ad5943bfb80d2521b6c` |
| 22 | `abbrev` | [Product](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/product--8cadf63e1bcd0e8909e934a4.md) | 176 | `declaration-track:8cadf63e1bcd0e8909e934a4b82d50d7dec764e3b73611502bc5906d34bd3db6` |
| 23 | `lemma` | [commProb_nil](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-nil--603ce20615297d3babdc3ebd.md) | 179 | `result-track:603ce20615297d3babdc3ebd7d6c2737aa4f18bf32f21594d974dc3b5c620be8` |
| 24 | `lemma` | [commProb_cons](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-cons--b1c71230b7320a3f37f2cccd.md) | 182 | `result-track:b1c71230b7320a3f37f2cccd85df42af69979de30eea2aa759c601a50e06978a` |
| 25 | `theorem` | [commProb_reciprocal](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/declarations/commprob-reciprocal--6276ce96ac8abef7737fea6b.md) | 187 | `result-track:6276ce96ac8abef7737fea6b0caa67ab1ec8d02ef9d1a60e5ebc3531b8865485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
