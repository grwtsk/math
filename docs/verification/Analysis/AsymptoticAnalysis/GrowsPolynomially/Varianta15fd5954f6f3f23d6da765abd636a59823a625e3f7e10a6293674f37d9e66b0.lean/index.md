# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GrowsPolynomially.Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e753c81350bb40e2349beb527280533ec39af843",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e753c81350bb40e2349beb527280533ec39af843`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrowsPolynomially](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially--e3ee571cb3b4df8623f82458.md) | 41 | `declaration-track:e3ee571cb3b4df8623f82458b04110da2426d489b4ff5fe7ba0c7a0b9dd76d80` |
| 2 | `lemma` | [congr_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/congr-of-eventuallyeq--44b9cf5ea46ddf8891426e86.md) | 47 | `result-track:44b9cf5ea46ddf8891426e8628c8c65216460f334b08db4f96c86cdd5cf7e9e1` |
| 3 | `lemma` | [iff_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/iff-eventuallyeq--4acec939f3f4ea9172b6122b.md) | 59 | `result-track:4acec939f3f4ea9172b6122b618866d79c525494c7da973244624da51995778a` |
| 4 | `lemma` | [eventually_atTop_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-le--2727f20eb92e8b65d481c4d0.md) | 65 | `result-track:2727f20eb92e8b65d481c4d05091366b9a282d924464e254c135d156c085bac5` |
| 5 | `lemma` | [eventually_atTop_le_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-le-nat--b209ce7d7d7e7d9ffe5f71bd.md) | 72 | `result-track:b209ce7d7d7e7d9ffe5f71bdb688bcb19c30f98518554c9bf441527bed6452d9` |
| 6 | `lemma` | [eventually_atTop_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-ge--a83130766a4b6d38bef1f514.md) | 77 | `result-track:a83130766a4b6d38bef1f514f8f93718c87108b9f41529114ff05037821e1bdd` |
| 7 | `lemma` | [eventually_atTop_ge_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-ge-nat--c0512b1c33d9b1ca3aea9d60.md) | 84 | `result-track:c0512b1c33d9b1ca3aea9d605412a5f07a3ade88cd599e0746409999cdf72b5c` |
| 8 | `lemma` | [eventually_zero_of_frequently_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-zero-of-frequently-zero--e2afd84e236af69e7c1c9e33.md) | 89 | `result-track:e2afd84e236af69e7c1c9e33958a12e31c236d562d39832e27c15e97e240452f` |
| 9 | `lemma` | [eventually_atTop_nonneg_or_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-nonneg-or-nonpos--c387fa553522e639f4e205a1.md) | 157 | `result-track:c387fa553522e639f4e205a1fbf65fa37c6e5f35b90ef5cf91e0ee901bf01577` |
| 10 | `lemma` | [eventually_atTop_zero_or_pos_or_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/eventually-attop-zero-or-pos-or-neg--88a4732dbb23b5a54b3cd3cd.md) | 209 | `result-track:88a4732dbb23b5a54b3cd3cd64394a6a459e1c6bcec8d6a5e2b36d59b090fefa` |
| 11 | `lemma` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/neg--9b0104e3b1bf68356e2db088.md) | 225 | `result-track:9b0104e3b1bf68356e2db088e2a208ae160774fd853e757b03be26d7488a27e9` |
| 12 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/neg-iff--8590d3a2f2043af2a5787dc7.md) | 234 | `result-track:8590d3a2f2043af2a5787dc7a29ceb388fb1386200b9760fb6ac7ec26b4f4510` |
| 13 | `lemma` | [abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/abs--49252802ca03a11b1123b953.md) | 237 | `result-track:49252802ca03a11b1123b9532ddd7796bfaa738ed1534c66e289c28774012310` |
| 14 | `lemma` | [norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/norm--6177b4c3a5a045cc72b19eba.md) | 252 | `result-track:6177b4c3a5a045cc72b19eba6fb74b9f77547b8d9ca227b6e41de29ca6749c6f` |
| 15 | `lemma` | [growsPolynomially_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-const--4ecf38d57aff6d78d7845c02.md) | 260 | `result-track:4ecf38d57aff6d78d7845c0236ae786816b8472447909f1d6657241f9f18131e` |
| 16 | `lemma` | [growsPolynomially_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-id--1e7e3281a013500e09128b3d.md) | 265 | `result-track:1e7e3281a013500e09128b3d0af46a693eaa03a48464fd8bab3954d8dd75416a` |
| 17 | `lemma` | [GrowsPolynomially.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-mul--7deb92bac59298a70a3c8a2c.md) | 273 | `result-track:7deb92bac59298a70a3c8a2cd369323c2e27cbfc4d16b14d5405c624f0a242d6` |
| 18 | `lemma` | [GrowsPolynomially.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-const-mul--1775f8d4beee78ce8f6d0791.md) | 327 | `result-track:1775f8d4beee78ce8f6d0791bb698951d5bb16e27e7b7fb6d29339da7f750b34` |
| 19 | `lemma` | [GrowsPolynomially.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-add--ab5375d86dd814f56c38447f.md) | 331 | `result-track:ab5375d86dd814f56c38447f736fc67b1c34fcb8fc05c837ca4a8b3aa804283a` |
| 20 | `lemma` | [GrowsPolynomially.add_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-add-islittleo--9d694c4421ca49da009406d9.md) | 371 | `result-track:9d694c4421ca49da009406d91d451e586379f830f7668b792570fbd2467143bd` |
| 21 | `lemma` | [GrowsPolynomially.inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-inv--84dd740eff8e487a15ee9585.md) | 477 | `result-track:84dd740eff8e487a15ee958555ad7f5f6a56a7c31a206d0a815ee3c760dded41` |
| 22 | `lemma` | [GrowsPolynomially.div](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-div--50a9d0eb2ef6261d7dfed383.md) | 526 | `result-track:50a9d0eb2ef6261d7dfed38365d8b6184e9a60c1d0201217d2d16c48f23a7c7e` |
| 23 | `lemma` | [GrowsPolynomially.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-rpow--cbcb33c1c7f1ba2a6e6e783b.md) | 532 | `result-track:cbcb33c1c7f1ba2a6e6e783b802334fdb70d7b1cb1411f267d16fce90ce39ca5` |
| 24 | `lemma` | [GrowsPolynomially.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-pow--2ceb23d5fef51b5e4d7455cf.md) | 585 | `result-track:2ceb23d5fef51b5e4d7455cff0a16312b21c45ca864dbadeeffc1c2cd3fe6972` |
| 25 | `lemma` | [GrowsPolynomially.zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-zpow--ff44f8bab09e6a7f6c0318a3.md) | 590 | `result-track:ff44f8bab09e6a7f6c0318a337fd3cd8f7d12b52a20d878a086a897f16a4a600` |
| 26 | `lemma` | [growsPolynomially_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-rpow--f51eec17513f2a93e63e9ba4.md) | 595 | `result-track:f51eec17513f2a93e63e9ba41f0f40e3a1c1ce4d5a1704e1d880020740699988` |
| 27 | `lemma` | [growsPolynomially_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-pow--8f87acaa11aec74a5ecb830a.md) | 598 | `result-track:8f87acaa11aec74a5ecb830a068fa8ef693ee9f11e194841fa394f30472afaa4` |
| 28 | `lemma` | [growsPolynomially_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-zpow--1f2c579292e3e8b5a249d361.md) | 601 | `result-track:1f2c579292e3e8b5a249d3610a051746e4fd32552b22ed2108b83b09b5acfb75` |
| 29 | `lemma` | [growsPolynomially_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-log--2cf3c7c882e8e77a404c6b86.md) | 604 | `result-track:2cf3c7c882e8e77a404c6b869ae9989b621391c1ca87cb5a301ff4c429244cc7` |
| 30 | `lemma` | [GrowsPolynomially.of_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-of-istheta--be57b87f2ef739c9529d326b.md) | 628 | `result-track:be57b87f2ef739c9529d326b8687049b9e7084b398af8b1f38c0ada069a1ee95` |
| 31 | `lemma` | [GrowsPolynomially.of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-of-isequivalent--b9095dfe99fca02b073cedec.md) | 676 | `result-track:b9095dfe99fca02b073cedec49cbb3d8547ad2b4b9753c15a9c11ae6c062fc7e` |
| 32 | `lemma` | [GrowsPolynomially.of_isEquivalent_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/declarations/growspolynomially-of-isequivalent-const--3bd65f0f0aed96cf0c5e5c03.md) | 682 | `result-track:3bd65f0f0aed96cf0c5e5c0348132af83eb7390cdec9bce6e3c0e7b2c628e4d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
