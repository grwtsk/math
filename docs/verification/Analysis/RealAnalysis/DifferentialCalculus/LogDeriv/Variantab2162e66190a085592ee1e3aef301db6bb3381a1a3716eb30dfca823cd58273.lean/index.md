# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32d51258281aedfdf1aa0faad77ee25bebcd1e77",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32d51258281aedfdf1aa0faad77ee25bebcd1e77`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv--8b59dc6033f6d6af20451012.md) | 40 | `declaration-track:8b59dc6033f6d6af20451012b83cbbf6494a96189aeafcd8203bcd42db20ada9` |
| 2 | `theorem` | [logDeriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-apply--111820951da79d6ea3dc31df.md) | 43 | `result-track:111820951da79d6ea3dc31df937fa2c17cf0f7f4eca1624915561fc9ed8b3c59` |
| 3 | `lemma` | [logDeriv_eq_zero_of_not_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-eq-zero-of-not-differentiableat--1e5298bff464514e4c9c3694.md) | 45 | `result-track:1e5298bff464514e4c9c36942fd6907451e65b2c516197bf88f7aed1ea55c4b8` |
| 4 | `lemma` | [logDeriv_congr_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-congr-nhds--ef98723fbb123ccbbb3cb81e.md) | 50 | `result-track:ef98723fbb123ccbbb3cb81efcd59112be843997a32af6cd27669e6725b98a8f` |
| 5 | `lemma` | [logDeriv_congr_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-congr-nhdsne--0dde15d69d45be328d79400a.md) | 56 | `result-track:0dde15d69d45be328d79400a53a33ee0b28b13613345bf50b486e4d4fec5aae6` |
| 6 | `theorem` | [logDeriv_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-congr-codiscretewithin--1fd87a953cdd12ae76408331.md) | 63 | `result-track:1fd87a953cdd12ae764083315afe816f9a1d4b6eb37e147801c8d4ddeb9fbf3c` |
| 7 | `theorem` | [logDeriv_congr_codiscrete](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-congr-codiscrete--a4732fb36566951aa2aedde8.md) | 75 | `result-track:a4732fb36566951aa2aedde807e4257caf4d8940571f17b6faed367fd7510c0b` |
| 8 | `theorem` | [logDeriv_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-id--81cc0fd740c9f3817fabc8aa.md) | 80 | `result-track:81cc0fd740c9f3817fabc8aa99c9e1909a5a3342cc2c7be8645adc688be7ab80` |
| 9 | `theorem` | [logDeriv_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-id--66c87a5b7bea84baa365a2f4.md) | 83 | `result-track:66c87a5b7bea84baa365a2f497014cc80acf56b40adf0895abc2409d1deef136` |
| 10 | `theorem` | [logDeriv_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-const--c3f9501522c321a8925bc373.md) | 86 | `result-track:c3f9501522c321a8925bc373206af1b2517e27e06cdeef408fb81b1a8b24ca8e` |
| 11 | `theorem` | [logDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-mul--879cd8af72b23f7c3b874f46.md) | 91 | `result-track:879cd8af72b23f7c3b874f46902d93b4bdabb25886005681ca1834d96cf1b561` |
| 12 | `theorem` | [logDeriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-div--42e47ef1c65ccbc7526d1394.md) | 97 | `result-track:42e47ef1c65ccbc7526d13948a65e73b061964af91ddb5a47ae54c448f45bf43` |
| 13 | `theorem` | [logDeriv_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-mul-const--c985f92597a968059b727b51.md) | 102 | `result-track:c985f92597a968059b727b51579c5c2f3faa40ea86afcb7456b41c0ea2be957a` |
| 14 | `theorem` | [logDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-const-mul--0891b43c3dc0c26190a97fd0.md) | 106 | `result-track:0891b43c3dc0c26190a97fd0b51e65f416f9c5bf57934be14a81e69811f0ae55` |
| 15 | `theorem` | [logDeriv_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-prod--312da595c87aaaa93afc817e.md) | 112 | `result-track:312da595c87aaaa93afc817e827dba56ff91a00d7287ac60aa7e19a7d6e02c14` |
| 16 | `lemma` | [logDeriv_fun_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-fun-zpow--5804c51b8c83b8eb0ced782c.md) | 125 | `result-track:5804c51b8c83b8eb0ced782c82b77b7ff740e1631670c7deb7957c11f4077911` |
| 17 | `lemma` | [logDeriv_fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-fun-pow--e1f9770b84c7d6287244c795.md) | 134 | `result-track:e1f9770b84c7d6287244c795b4e3f3e6c90c203cb3b9402a02f1504a2dfc04e8` |
| 18 | `lemma` | [logDeriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-zpow--9deca82d4fd04210ea44ac78.md) | 139 | `result-track:9deca82d4fd04210ea44ac7838964a50c63a9e6e02d3a6796aea81c54e6a0000` |
| 19 | `lemma` | [logDeriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-pow--b5bc9df14b7dc8821deea5f3.md) | 143 | `result-track:b5bc9df14b7dc8821deea5f32f04fcd9e143cded019812e0e0bb559773cf1a40` |
| 20 | `lemma` | [logDeriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-inv--46822ea52f900d64395de177.md) | 146 | `result-track:46822ea52f900d64395de177a02703c690e163d839b20a6c9e36454ec00b2664` |
| 21 | `theorem` | [logDeriv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-comp--0a412e4ca90b21a24046980e.md) | 150 | `result-track:0a412e4ca90b21a24046980e84dc52bd2c5c385cf6e09641cc1b468ab3f80030` |
| 22 | `theorem` | [logDeriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-neg--482618b16a29b41210287766.md) | 155 | `result-track:482618b16a29b41210287766d85daa1fa7718480cf8741d67dfe811647af99a5` |
| 23 | `theorem` | [logDeriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-comp-neg--d17361e4190d3355eff92a27.md) | 158 | `result-track:d17361e4190d3355eff92a274aad4df409323fbdb028a99d1853b4d29f93af56` |
| 24 | `lemma` | [logDeriv_eqOn_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/logderiv-eqon-iff--380a5b47547990dfc4bf069d.md) | 162 | `result-track:380a5b47547990dfc4bf069d55c1c51047778abe5342e3c1c026f2860bb0640e` |
| 25 | `theorem` | [AnalyticAt.tendsto_mul_logDeriv_simple_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/declarations/analyticat-tendsto-mul-logderiv-simple-zero--64d6ad202890b8dc0074c78c.md) | 192 | `result-track:64d6ad202890b8dc0074c78cc20198a180074d5c66632b2abc4a4c6ff6b7abdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
