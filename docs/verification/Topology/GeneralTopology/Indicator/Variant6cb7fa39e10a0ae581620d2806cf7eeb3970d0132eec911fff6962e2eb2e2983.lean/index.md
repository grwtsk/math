# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1e3cb8f8af6e9931b4e0a3797e2a91bab232c88",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1e3cb8f8af6e9931b4e0a3797e2a91bab232c88`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.IndicatorFunction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eLpNorm_indicator_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/exists-elpnorm-indicator-le--827e773a975d1dc6f2d6fee2.md) | 35 | `result-track:827e773a975d1dc6f2d6fee2d1ced1df16c5ee5b139ef977c85934d32c54bfe8` |
| 2 | `theorem` | [_root_.HasCompactSupport.memLp_of_bound](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/root-hascompactsupport-memlp-of-bound--360a719957e84fbb62881688.md) | 63 | `result-track:360a719957e84fbb628816889b19f15a1d30310017887783ed9cccf759e1b69a` |
| 3 | `theorem` | [_root_.Continuous.memLp_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/root-continuous-memlp-of-hascompactsupport--4b92b215df272842f46849d9.md) | 73 | `result-track:4b92b215df272842f46849d93bb9b53e3fffe9016d4507b21a184d2383fe96d3` |
| 4 | `def` | [indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp--e4f0f7c4ca64afa75b810143.md) | 91 | `declaration-track:e4f0f7c4ca64afa75b8101430b4508dde51bdcd75ca9536b53c57fb7b4017eac` |
| 5 | `theorem` | [indicatorConstLp_add](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-add--d1fb270d8e3f080e0d06ca37.md) | 95 | `result-track:d1fb270d8e3f080e0d06ca370923aae510b54b787d2c587a67239f312dece103` |
| 6 | `theorem` | [indicatorConstLp_sub](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-sub--df7c81749974bc1ef452cd3f.md) | 102 | `result-track:df7c81749974bc1ef452cd3f4013aa763970d8e4b84b99a2f8795f798f454c44` |
| 7 | `theorem` | [indicatorConstLp_coeFn](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-coefn--7a62190815a9a85a173b3acf.md) | 108 | `result-track:7a62190815a9a85a173b3acf8ccbf2dc7a1ee184f87deac077470d26c2bcd456` |
| 8 | `theorem` | [indicatorConstLp_coeFn_mem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-coefn-mem--f611ce5184303edab912d784.md) | 111 | `result-track:f611ce5184303edab912d784ffddba39d68242fbf04ffc7a4e3b29222f098731` |
| 9 | `theorem` | [indicatorConstLp_coeFn_notMem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-coefn-notmem--8683894374b00fa3cb05086f.md) | 114 | `result-track:8683894374b00fa3cb05086f9d29acb67157da7f2dd831c8e687ebda89a353c2` |
| 10 | `theorem` | [norm_indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/norm-indicatorconstlp--ecfa054a117fff204c039f59.md) | 120 | `result-track:ecfa054a117fff204c039f592407cd99e34d7ccad9fc9344dfe39d62e4b77cd9` |
| 11 | `theorem` | [norm_indicatorConstLp_top](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/norm-indicatorconstlp-top--4072b01a106cff9d94f60597.md) | 126 | `result-track:4072b01a106cff9d94f60597a68f49c1d446275c56e6cb41e31be2535cfb59af` |
| 12 | `theorem` | [norm_indicatorConstLp'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/norm-indicatorconstlp--cc7ca02b6673b98bacc37e22.md) | 132 | `result-track:cc7ca02b6673b98bacc37e22ebd4a718a6ebda44e4aa573dd6855c64e1d224d5` |
| 13 | `theorem` | [norm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/norm-indicatorconstlp-le--2d131b0935bc0da4091d1845.md) | 139 | `result-track:2d131b0935bc0da4091d184594593a8d8e1e898c6f45f1d3108547d0fecceca2` |
| 14 | `theorem` | [nnnorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/nnnorm-indicatorconstlp-le--41c03042d10ea1ed39e06b67.md) | 148 | `result-track:41c03042d10ea1ed39e06b672358c825a21f54ff3857788a3e00981204a203f2` |
| 15 | `theorem` | [enorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/enorm-indicatorconstlp-le--fb4f483704f2496b61797e48.md) | 152 | `result-track:fb4f483704f2496b61797e48799f8a7e0d2ff84aeed89d514c3eb850ac48c68f` |
| 16 | `theorem` | [edist_indicatorConstLp_eq_enorm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/edist-indicatorconstlp-eq-enorm--204c5d0ece213eefb20d5047.md) | 159 | `result-track:204c5d0ece213eefb20d504791bdd3ca94e5b13b5b9525418a98713b820a6a69` |
| 17 | `theorem` | [dist_indicatorConstLp_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/dist-indicatorconstlp-eq-norm--75ff92fc7f1232c7d5d5bf30.md) | 168 | `result-track:75ff92fc7f1232c7d5d5bf3070f0e88bf69d423412c8cd4ca499f102be15b13b` |
| 18 | `theorem` | [tendsto_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/tendsto-indicatorconstlp-set--bd558c8603390d05875a2877.md) | 177 | `result-track:bd558c8603390d05875a2877936ce955783ddb3fb62b6bb99ec9dabc287dc797` |
| 19 | `theorem` | [continuous_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/continuous-indicatorconstlp-set--06d541fe53b6d76c504980fe.md) | 191 | `result-track:06d541fe53b6d76c504980fe8705561800e90580ec740c37419c201235c8b067` |
| 20 | `theorem` | [indicatorConstLp_empty](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-empty--0c309e9d53313789b12f6526.md) | 198 | `result-track:0c309e9d53313789b12f6526f2c172d2f2550392d779f998b643d9d2dbdcc473` |
| 21 | `theorem` | [indicatorConstLp_inj](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-inj--be26de662a6e211c8471254f.md) | 202 | `result-track:be26de662a6e211c8471254f79e42c3a6d12ba5026e406cff4bf42315d2c7c50` |
| 22 | `theorem` | [memLp_add_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/memlp-add-of-disjoint--23bed3bdc4bf87bf88cac89b.md) | 207 | `result-track:23bed3bdc4bf87bf88cac89bc2bf021685b129b52faed5c6f7aaf3dfb5e7d33e` |
| 23 | `theorem` | [indicatorConstLp_disjoint_union](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-disjoint-union--81ed4bbe101fc07b7daf2870.md) | 219 | `result-track:81ed4bbe101fc07b7daf28700b35e73055b5105f4652bf3f591244cf8cd43306` |
| 24 | `def` | [Lp.const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-const--08a81858ac10cb79a115a8cd.md) | 238 | `declaration-track:08a81858ac10cb79a115a8cd1ddbece282c4db4e197463b111ac1b62c9bbd7c3` |
| 25 | `lemma` | [Lp.coeFn_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-coefn-const--0944de2909170bb9a71fdeb3.md) | 243 | `result-track:0944de2909170bb9a71fdeb334d8338c8b7202ef32cd1e2074d7be28dcbc3f0f` |
| 26 | `lemma` | [Lp.const_val](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-const-val--2f083d6f3e702fa1f532892d.md) | 246 | `result-track:2f083d6f3e702fa1f532892d289eca9b0bdd3c56e20dffbe13cc0b38945ceec4` |
| 27 | `lemma` | [MemLp.toLp_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/memlp-tolp-const--e83eda200649d02abd2d844a.md) | 249 | `result-track:e83eda200649d02abd2d844aaf28ec51474ea2427c004fbd96da5cd9c9eb453a` |
| 28 | `lemma` | [indicatorConstLp_univ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-univ--ffec2a86c1272ea1e5945875.md) | 255 | `result-track:ffec2a86c1272ea1e5945875549464d1bd556a504330f0e5714b53a24a2aef7b` |
| 29 | `theorem` | [Lp.norm_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-norm-const--3f1343b0ac5680535ad4408a.md) | 260 | `result-track:3f1343b0ac5680535ad4408abaf6ca73a47c86978595c4244c64c80deb02b437` |
| 30 | `theorem` | [Lp.norm_const'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-norm-const--88cf17fa198d42f3069f83ce.md) | 266 | `result-track:88cf17fa198d42f3069f83ceb8af4ac5a499fe7115f7c60bf3d53390f66fdfd8` |
| 31 | `theorem` | [Lp.norm_const_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-norm-const-le--0988a4da2161911acb01c0e0.md) | 271 | `result-track:0988a4da2161911acb01c0e0e0369edf170cb1b13919299ddbd53fc465a1855f` |
| 32 | `def` | [Lp.constₗ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-const--3d715b9b66a08da15cbff2f0.md) | 276 | `declaration-track:3d715b9b66a08da15cbff2f01f38a31a4ebde466340ceae8ef0ce392140cdf45` |
| 33 | `def` | [Lp.constL](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-constl--92ffd70386144f46f0840d1d.md) | 284 | `declaration-track:92ffd70386144f46f0840d1d7d1bb98c91ee6f6c4def7c90ef7c2622c5651f0f` |
| 34 | `theorem` | [Lp.norm_constL_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/lp-norm-constl-le--c6576c7c4fe8c7411de107ee.md) | 289 | `result-track:c6576c7c4fe8c7411de107ee17fc82676cd034d0ce9c2c9b93b1cf7aed2f938c` |
| 35 | `theorem` | [indicatorConstLp_compMeasurePreserving](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-compmeasurepreserving--cdb77c32d17faf96c6f690aa.md) | 300 | `result-track:cdb77c32d17faf96c6f690aaed85316bd2281bfa8ee83a423555d9900352f6f1` |
| 36 | `theorem` | [indicatorConstLp_eq_toSpanSingleton_compLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant6cb7fa39e10a0ae581620d2806cf7eeb3970d0132eec911fff6962e2eb2e2983.lean/declarations/indicatorconstlp-eq-tospansingleton-complp--c709afc7506de46f787189bc.md) | 309 | `result-track:c709afc7506de46f787189bcefb3117e0b85c3cdbe237f910335df8f7ace045f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
