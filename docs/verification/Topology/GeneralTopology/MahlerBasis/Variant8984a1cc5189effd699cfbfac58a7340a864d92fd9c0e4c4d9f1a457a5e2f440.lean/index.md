# Verification target: GRWTSK.Topology.GeneralTopology.MahlerBasis.Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa6b45413ae802ac029fc6305a27412c5819ec9a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa6b45413ae802ac029fc6305a27412c5819ec9a`.

Source path: `GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ForwardDiff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.ProperSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Binomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Nonarchimedean` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Ultra.ContinuousMaps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_ascPochhammer_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/norm-ascpochhammer-le--b95e8c9183288c6a39f92757.md) | 51 | `result-track:b95e8c9183288c6a39f927576570d96871e51913f76e1c0c762ad591aa59f58f` |
| 2 | `instance` | [instBinomialRing](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/instbinomialring--bf63e5525d9891ad12cf4fd1.md) | 70 | `declaration-track:bf63e5525d9891ad12cf4fd1d12ce4e4096e13e55117f50bbbc30f10cb3ff224` |
| 3 | `lemma` | [continuous_multichoose](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/continuous-multichoose--01157ad5b97d0e7f166f737e.md) | 81 | `result-track:01157ad5b97d0e7f166f737e45c99b4206c813a47d0aa4ad4221353796af6d36` |
| 4 | `lemma` | [continuous_choose](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/continuous-choose--05615e74c36e246ce16ca469.md) | 86 | `result-track:05615e74c36e246ce16ca469e34a5d445944bafa865f5892932981defb780bd9` |
| 5 | `def` | [mahler](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahler--f474788d74e69d35e6cbb0f8.md) | 96 | `declaration-track:f474788d74e69d35e6cbb0f849288bc83b401515274cf484f2da85313021346f` |
| 6 | `lemma` | [mahler_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahler-apply--ea9a3151184e0cca86dcd052.md) | 100 | `result-track:ea9a3151184e0cca86dcd052df9b87044a6ff9cc639a713efc50911ca00e3f33` |
| 7 | `lemma` | [mahler_natCast_eq](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahler-natcast-eq--9a9392052c8c21ad8ce76b3f.md) | 103 | `result-track:9a9392052c8c21ad8ce76b3fd8b3df9f604844f68c282fa572384a58c958d3ef` |
| 8 | `lemma` | [IsUltrametricDist.norm_fwdDiff_iter_apply_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/isultrametricdist-norm-fwddiff-iter-apply-le--ebefa24c670e376d5a084474.md) | 112 | `result-track:ebefa24c670e376d5a084474374de722491ac409351448cdc443f8bd78836c3f` |
| 9 | `lemma` | [bojanic_mahler_step1](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/bojanic-mahler-step1--c6d77a321a41a71960ed2938.md) | 124 | `result-track:c6d77a321a41a71960ed2938a13759c7bd657190505cda47e0f80f1cb425ecac` |
| 10 | `lemma` | [bojanic_mahler_step2](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/bojanic-mahler-step2--8d0ee8724974891672551475.md) | 156 | `result-track:8d0ee8724974891672551475cdfaac9a59e88f19ab5faaa1e75ee2bc58519918` |
| 11 | `lemma` | [fwdDiff_iter_le_of_forall_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/fwddiff-iter-le-of-forall-le--f02c5a9cf241a92ff711894a.md) | 195 | `result-track:f02c5a9cf241a92ff711894a92925d9d414368a479dc21208d0755bfb49c0bfc` |
| 12 | `lemma` | [fwdDiff_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/fwddiff-tendsto-zero--40659d31c93b7531c9859b4b.md) | 217 | `result-track:40659d31c93b7531c9859b4b4b20056aa3e2458ea2d6f8c8319cec0a510b3bf8` |
| 13 | `def` | [mahlerTerm](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerterm--eeaa66cd126d22328c5e3bd9.md) | 247 | `declaration-track:eeaa66cd126d22328c5e3bd931b583e1808bf69d35b8d936993566df46edfce7` |
| 14 | `lemma` | [mahlerTerm_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerterm-apply--9738e4843b2badf8a586cccf.md) | 249 | `result-track:9738e4843b2badf8a586cccf3231aed07c28b35be21cf20982e0d40c4fa98674` |
| 15 | `lemma` | [norm_mahlerTerm](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/norm-mahlerterm--a2281f5a9147015a77e5e446.md) | 253 | `result-track:a2281f5a9147015a77e5e4469b0b15da5a0d146bf2c880ff9d7a228860d45fbe` |
| 16 | `lemma` | [mahlerTerm_one](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerterm-one--ef71f454539c01ec78213ec9.md) | 263 | `result-track:ef71f454539c01ec78213ec9815997ca07ba70e04ed87c165d1784524b79fde1` |
| 17 | `lemma` | [norm_mahler_eq](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/norm-mahler-eq--d270d78293b90914732b4594.md) | 269 | `result-track:d270d78293b90914732b459488fad613bd73ebb114afa9f101292e4c744207dc` |
| 18 | `def` | [mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerseries--3724c963e9c6562fb8554b1c.md) | 273 | `declaration-track:3724c963e9c6562fb8554b1cebb6750982f4a6f735a3f7a81f4f20d014b518b3` |
| 19 | `lemma` | [hasSum_mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/hassum-mahlerseries--94f02d0c81423215471ea29d.md) | 278 | `result-track:94f02d0c81423215471ea29d24e065215ea6941911154ef0e2498182e8771422` |
| 20 | `lemma` | [mahlerSeries_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerseries-apply--fb40af39704a1efe5bd9b82a.md) | 285 | `result-track:fb40af39704a1efe5bd9b82adb4aa093c01e539e77efba864869e44798deb28c` |
| 21 | `lemma` | [mahlerSeries_apply_nat](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerseries-apply-nat--aad6fddf3b528de516a1802a.md) | 294 | `result-track:aad6fddf3b528de516a1802adfe6925493f06af994a8b9837113ef08718cfd04` |
| 22 | `lemma` | [fwdDiff_mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/fwddiff-mahlerseries--2415e0b4dd7d72ff0e0c258d.md) | 306 | `result-track:2415e0b4dd7d72ff0e0c258d53da15b7217fca19de9171ce731ecbf52a040b09` |
| 23 | `lemma` | [hasSum_mahler](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/hassum-mahler--8ec4c108e3ba234b696e55e6.md) | 332 | `result-track:8ec4c108e3ba234b696e55e650afcc3c6580a2a41ee270f638ec0a0cd5599601` |
| 24 | `def` | [mahlerEquiv](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerequiv--bb73908114399c48998b3645.md) | 349 | `declaration-track:bb73908114399c48998b3645117c3b50cbef10e4e9630689937c5b5c2b420ff5` |
| 25 | `lemma` | [mahlerEquiv_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerequiv-apply--dd6fc7643f2cb685ff013c93.md) | 374 | `result-track:dd6fc7643f2cb685ff013c93aecd306cdb27001169ad7377de8e5b69567962b8` |
| 26 | `lemma` | [mahlerEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/declarations/mahlerequiv-symm-apply--271f4637d6a838da4527cb92.md) | 376 | `result-track:271f4637d6a838da4527cb92108a25bfe028f4452ed67f200a7e81c69551c115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
