# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GrowsPolynomially.Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aca5227fb6989013166939f38c06d52ed2b6365b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aca5227fb6989013166939f38c06d52ed2b6365b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ToIntervalMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrowsPolynomially](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially--cffa583a3045617c518d6547.md) | 45 | `declaration-track:cffa583a3045617c518d65471a9d403fbeb92683405d08f11a800bc60df22efc` |
| 2 | `lemma` | [congr_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/congr-of-eventuallyeq--68052afd6457f327c3e77bfb.md) | 51 | `result-track:68052afd6457f327c3e77bfbb64396292546ed101ad3d97b38b9e96ccae3572b` |
| 3 | `lemma` | [iff_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/iff-eventuallyeq--73dca6faa343af1e0c61a225.md) | 63 | `result-track:73dca6faa343af1e0c61a225be773827eb11a8450bd211c39a6316fcc9c0ca58` |
| 4 | `lemma` | [eventually_atTop_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-le--23ebefd2cbe96dcad6660cb9.md) | 69 | `result-track:23ebefd2cbe96dcad6660cb9f33b50f4cfc2117372a6aaee94844e4d61e76df2` |
| 5 | `lemma` | [eventually_atTop_le_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-le-nat--0cd015bd36b36fe15d90c7d9.md) | 76 | `result-track:0cd015bd36b36fe15d90c7d9bc2f76e7c497fe6cf31a8228be11fbc0d072d2e6` |
| 6 | `lemma` | [eventually_atTop_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-ge--839cc600fc8a6d131b0208ef.md) | 81 | `result-track:839cc600fc8a6d131b0208ef096ce11ab71fd4acc61e4bb26376b9c047d669ac` |
| 7 | `lemma` | [eventually_atTop_ge_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-ge-nat--dacddcb116e2dbb5464448ff.md) | 88 | `result-track:dacddcb116e2dbb5464448fff59651b3f631571ad1b7947ec10bb3931a76eb60` |
| 8 | `lemma` | [eventually_zero_of_frequently_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-zero-of-frequently-zero--44b74030b1dd700019661f90.md) | 93 | `result-track:44b74030b1dd700019661f9050a3a5fbc9b45b469ef9f2f639c5dbf6fbd1e1c9` |
| 9 | `lemma` | [eventually_atTop_nonneg_or_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-nonneg-or-nonpos--821735b55abe16ece7cb72ad.md) | 161 | `result-track:821735b55abe16ece7cb72ad87a41cb822cc50e7c0289f5450a7814ca1ed5f13` |
| 10 | `lemma` | [eventually_atTop_zero_or_pos_or_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/eventually-attop-zero-or-pos-or-neg--7103357ebb0e125014dcc553.md) | 243 | `result-track:7103357ebb0e125014dcc553ab1f115c7e1884227dfd5195d0cf83f014e54006` |
| 11 | `lemma` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/neg--da5a91a56d367f3eebdd0435.md) | 262 | `result-track:da5a91a56d367f3eebdd0435e7185145e7a7addbc5926bd9aa8a064372e14aed` |
| 12 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/neg-iff--079790a8da4a251e0c2885c7.md) | 271 | `result-track:079790a8da4a251e0c2885c78e54d2bfdc2328ce10ac6352f20d450fc1c53da6` |
| 13 | `lemma` | [abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/abs--121581fe41d73e87441e72a5.md) | 274 | `result-track:121581fe41d73e87441e72a546e268903d06e9718d734991a0f5194647fa7ab9` |
| 14 | `lemma` | [norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/norm--4bc9940276f5ed7dba5b4a12.md) | 290 | `result-track:4bc9940276f5ed7dba5b4a12cd218482215799d4dae35a67fc245d3e0590a2d4` |
| 15 | `lemma` | [growsPolynomially_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-const--0d532aac519fd4a132859544.md) | 298 | `result-track:0d532aac519fd4a132859544d67a581f64028a98220ac171e60b14ce297de2bd` |
| 16 | `lemma` | [growsPolynomially_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-id--b21a12f4beeb36527ef0e066.md) | 303 | `result-track:b21a12f4beeb36527ef0e066f7fa4d98b18a04035378afb817628fc733c98a22` |
| 17 | `lemma` | [GrowsPolynomially.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-mul--acad5910579c1f46565d7519.md) | 311 | `result-track:acad5910579c1f46565d75190ba31c719d74b1dff9dcd5fde0706bb6626664e4` |
| 18 | `lemma` | [GrowsPolynomially.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-const-mul--5856ed2c7e6b7a122b61f31b.md) | 365 | `result-track:5856ed2c7e6b7a122b61f31b00b5a4d73bb156d0e17c270f3b9584c7c73f89a5` |
| 19 | `lemma` | [GrowsPolynomially.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-add--96a4aa07a4d106613fccc71b.md) | 369 | `result-track:96a4aa07a4d106613fccc71bf33489fb1f24f91d4fc115ed9dd5ca42f17000de` |
| 20 | `lemma` | [GrowsPolynomially.add_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-add-islittleo--4ada51baf2f641053c4086b6.md) | 409 | `result-track:4ada51baf2f641053c4086b61df05f6b6f390894f4db8961157bd20d4037bcc4` |
| 21 | `lemma` | [GrowsPolynomially.inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-inv--4989dc62e4b3dee4f3b47f60.md) | 515 | `result-track:4989dc62e4b3dee4f3b47f601d17ce001fd86650c684da859fe740d95c9e8ba5` |
| 22 | `lemma` | [GrowsPolynomially.div](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-div--6236152fa7a5ed0274ec5fcf.md) | 564 | `result-track:6236152fa7a5ed0274ec5fcf0eda9719fde535a3f2357b5cb5e9946b65f8e72d` |
| 23 | `lemma` | [GrowsPolynomially.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-rpow--47e55a19b87ac2b999af69ea.md) | 570 | `result-track:47e55a19b87ac2b999af69ea6da277e5fc5db80974fa95477490ce566b393cc7` |
| 24 | `lemma` | [GrowsPolynomially.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-pow--82a34e4963f5821d14168b79.md) | 623 | `result-track:82a34e4963f5821d14168b792978ba4d385e1f9f4dbc8c6e652bc0c8da3eb26f` |
| 25 | `lemma` | [GrowsPolynomially.zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-zpow--df7fbfc7200792c18fb3abf4.md) | 628 | `result-track:df7fbfc7200792c18fb3abf4a4dd0e2ab0e1d01f759b9049d695a8a8af78d42d` |
| 26 | `lemma` | [growsPolynomially_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-rpow--3a429c5a895a3706a92a142b.md) | 633 | `result-track:3a429c5a895a3706a92a142b89a8e74e8c1b09425945f0f3ee5984da515912d0` |
| 27 | `lemma` | [growsPolynomially_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-pow--ffd62e4ca4681424540aed5b.md) | 636 | `result-track:ffd62e4ca4681424540aed5bf8bbb0f39a42c00cc6fee5ad71e27f9c464b99f0` |
| 28 | `lemma` | [growsPolynomially_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-zpow--cd3d97be477f7188c8d16b1a.md) | 639 | `result-track:cd3d97be477f7188c8d16b1a2619fa1eef5ee00f656d5bbb9c2c9dde2722269c` |
| 29 | `lemma` | [growsPolynomially_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-log--d949f791d5b5afe418b03329.md) | 642 | `result-track:d949f791d5b5afe418b03329fea405eae5346639565579b9906dd1c27c27bd1a` |
| 30 | `lemma` | [GrowsPolynomially.of_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-of-istheta--781a77ce50abad826d1cf63a.md) | 671 | `result-track:781a77ce50abad826d1cf63a82093b8e6e6d1d4bc1ffd93bc03b91cc34bc37b3` |
| 31 | `lemma` | [GrowsPolynomially.of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-of-isequivalent--74a7268ee3ae16028f62423f.md) | 719 | `result-track:74a7268ee3ae16028f62423f2e43c941ae58c7692d7fbdc8883793b949b82233` |
| 32 | `lemma` | [GrowsPolynomially.of_isEquivalent_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant64f81a50cd5e906be2e2e7447243fec657abe8a6d0470c61080356a28ca1dfa1.lean/declarations/growspolynomially-of-isequivalent-const--9ce901b9815f4d4cac87cc79.md) | 725 | `result-track:9ce901b9815f4d4cac87cc7948fa8b907654cfc8e1ac2a27c7b5df6ec7dcc9b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
