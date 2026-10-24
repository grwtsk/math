# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Tilted.Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "204629feb7439c95a384b217e77a057cf8158cfe",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `204629feb7439c95a384b217e77a057cf8158cfe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/measure-tilted--b7b3e587b7cfb3b22fd82c05.md) | 46 | `declaration-track:b7b3e587b7cfb3b22fd82c0578885626ed4ba9ecae9f4f44edceffc558ba46cf` |
| 2 | `lemma` | [tilted_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-of-not-integrable--05bcdf192b95ffbad1429962.md) | 50 | `result-track:05bcdf192b95ffbad14299620a17545c00538f3577ad7c9082b3d1378a90306d` |
| 3 | `lemma` | [tilted_of_not_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-of-not-aemeasurable--8c55b787c6146575ef3ff110.md) | 55 | `result-track:8c55b787c6146575ef3ff1101356a96dd07fac837512e7095a1d4063d83f47e5` |
| 4 | `lemma` | [tilted_zero_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-zero-measure--eeecf5bcbcdde43cd2f5d98c.md) | 61 | `result-track:eeecf5bcbcdde43cd2f5d98c14fb11aee98af696a4be5371ccb551e637122c99` |
| 5 | `lemma` | [tilted_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-const--ac9f09c19697303cbd36861d.md) | 64 | `result-track:ac9f09c19697303cbd36861d7a10e902b3817bec6b8a4a88ff0a0e8025bf4e85` |
| 6 | `lemma` | [tilted_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-const--1e0a629a3b866f2ea7581219.md) | 78 | `result-track:1e0a629a3b866f2ea7581219933bf57e5455ae0a60b82a4cf75415e429158da3` |
| 7 | `lemma` | [tilted_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-zero--cac13552ba10d97377037985.md) | 82 | `result-track:cac13552ba10d97377037985e63c50b205039356937e372352021ba7841e0c2e` |
| 8 | `lemma` | [tilted_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-zero--7c4e271d3d46b0a40de14972.md) | 86 | `result-track:7c4e271d3d46b0a40de14972fc4ef48ed1ecf89fb6f666510fe72ddb04fe2201` |
| 9 | `lemma` | [tilted_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-congr--2186a67dfa41c7f78cb064f2.md) | 88 | `result-track:2186a67dfa41c7f78cb064f255502010f0d32a487d2a1a810f609291c769ef94` |
| 10 | `lemma` | [tilted_eq_withDensity_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-eq-withdensity-nnreal--3b5a15ba36febbf894512e8d.md) | 98 | `result-track:3b5a15ba36febbf894512e8dc5b9a31b58faadf3a612f3b0b9d484dccce70569` |
| 11 | `lemma` | [tilted_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-apply--0d9977615f20e918d0456274.md) | 105 | `result-track:0d9977615f20e918d0456274eed56a2bbd9100cf177dd176cbcd39e76138f5b3` |
| 12 | `lemma` | [tilted_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-apply--16794f0c82097ba8e10f7445.md) | 109 | `result-track:16794f0c82097ba8e10f744565a21faee5e5f53d90fa228457f9c9efc6bc7dd7` |
| 13 | `lemma` | [tilted_apply_eq_ofReal_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-apply-eq-ofreal-integral--b714997aa435a7d58a5d589f.md) | 113 | `result-track:b714997aa435a7d58a5d589f784ebe6fd80fcd30a536938220e0a78ecb588e15` |
| 14 | `lemma` | [tilted_apply_eq_ofReal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-apply-eq-ofreal-integral--36a4a3a61dc1c619d19a9e58.md) | 122 | `result-track:36a4a3a61dc1c619d19a9e58a05fe484df26783f9e03f51be3ef5200349f34a5` |
| 15 | `lemma` | [isProbabilityMeasure_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/isprobabilitymeasure-tilted--19fad9eb5e97a61454b248e4.md) | 130 | `result-track:19fad9eb5e97a61454b248e415f1440afaaced1ed462e29d4cc41d5aef188681` |
| 16 | `instance` | [isZeroOrProbabilityMeasure_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/iszeroorprobabilitymeasure-tilted--e65c6741834465263ac59cf6.md) | 142 | `declaration-track:e65c6741834465263ac59cf6fba0e770a128c62eb9c73e904f0e3c77db1c3bf0` |
| 17 | `lemma` | [setLIntegral_tilted'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/setlintegral-tilted--1b5203e8acb89a3770f9df20.md) | 154 | `result-track:1b5203e8acb89a3770f9df204d17aad71d87c3554d0b44e936b084673db43c7c` |
| 18 | `lemma` | [setLIntegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/setlintegral-tilted--b522e805b96df50050853ff9.md) | 172 | `result-track:b522e805b96df50050853ff90fbc0f1ecf210c5ed03fc6d46b6936a0ace33ee4` |
| 19 | `lemma` | [lintegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/lintegral-tilted--675d7b402fb8b5d5c3f6e23f.md) | 189 | `result-track:675d7b402fb8b5d5c3f6e23f5a5abfabecd2df4876860b809bf2c2a3d51bc6c7` |
| 20 | `lemma` | [setIntegral_tilted'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/setintegral-tilted--7d2bea3dfddf30537ca0a1eb.md) | 200 | `result-track:7d2bea3dfddf30537ca0a1eb26f5b7a96c555c5619b06caa4ba708c1bdd08971` |
| 21 | `lemma` | [setIntegral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/setintegral-tilted--1013ba0df8c2c53ee4d7cdc7.md) | 217 | `result-track:1013ba0df8c2c53ee4d7cdc71512bd43786d04dc39d34063d33285e5441ea01e` |
| 22 | `lemma` | [integral_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/integral-tilted--3737b866eb0b9ee1938c85b2.md) | 234 | `result-track:3737b866eb0b9ee1938c85b2571a2cc37ad298c9ee5123b605232f8385f383ce` |
| 23 | `lemma` | [integral_exp_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/integral-exp-tilted--f45418b119c6165e90d328b9.md) | 240 | `result-track:f45418b119c6165e90d328b96bda4a3951feb273d68c9f2a40d67ff3ec1c00b1` |
| 24 | `lemma` | [tilted_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-tilted--e2894e12ddfce7686e038d57.md) | 255 | `result-track:e2894e12ddfce7686e038d574d995b422cd6159b69001b15e9c5b15f25cac5af` |
| 25 | `lemma` | [tilted_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-comm--db0475ea8221c5fd61dfc211.md) | 273 | `result-track:db0475ea8221c5fd61dfc21136b382ab5468a72823575a2bce7bacaf6ebc4db3` |
| 26 | `lemma` | [tilted_neg_same'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-neg-same--08c5ca85d43c2210518dd032.md) | 279 | `result-track:08c5ca85d43c2210518dd0325057ae266c1bca8138265e85325e5269c985cca2` |
| 27 | `lemma` | [tilted_neg_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-neg-same--fe215d95a62a37903981accb.md) | 283 | `result-track:fe215d95a62a37903981accb9972ef4bb24335bc40b0d70069866d48eb49a5c3` |
| 28 | `lemma` | [tilted_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/tilted-absolutelycontinuous--17929ef7b461b8c028d51583.md) | 287 | `result-track:17929ef7b461b8c028d515835aeb6e33a969f053f8c4dcfaeb81591528c701be` |
| 29 | `lemma` | [absolutelyContinuous_tilted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/absolutelycontinuous-tilted--ffb1140b03676bd16028e608.md) | 290 | `result-track:ffb1140b03676bd16028e608686f081c51ca4a648a37478910c2060b2576c6b2` |
| 30 | `lemma` | [integrable_tilted_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/integrable-tilted-iff--efec33921ad0ef4774cb2794.md) | 300 | `result-track:efec33921ad0ef4774cb27945c8077838e6e45097622ae4eed96a0c1c12f93bf` |
| 31 | `lemma` | [rnDeriv_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/rnderiv-tilted-right--7a173d3c09d2e5f4bdb370b9.md) | 321 | `result-track:7a173d3c09d2e5f4bdb370b9f2e118c6cd28be4d63563d8a9e527103148f380f` |
| 32 | `lemma` | [toReal_rnDeriv_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/toreal-rnderiv-tilted-right--2fb77eb00a09adeae000e71c.md) | 339 | `result-track:2fb77eb00a09adeae000e71c528ea32e516f2d3f1cd19fc2bc6823829d6f1c29` |
| 33 | `lemma` | [rnDeriv_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/rnderiv-tilted-left--14090dd83d5d0657a23a8239.md) | 349 | `result-track:14090dd83d5d0657a23a8239d7bbeb1764ad01acd74df5c4e6d123af173aa129` |
| 34 | `lemma` | [toReal_rnDeriv_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/toreal-rnderiv-tilted-left--8fd4e483d8cd3c55a07212e5.md) | 358 | `result-track:8fd4e483d8cd3c55a07212e58c6b01e22563805b3bc0141ae17e253afd1e9c70` |
| 35 | `lemma` | [rnDeriv_tilted_left_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/rnderiv-tilted-left-self--c4bf82fcf41f458c83e61bd6.md) | 367 | `result-track:c4bf82fcf41f458c83e61bd681be2b710e3a3e9b7869b8e9fd52840d80bc9aa0` |
| 36 | `lemma` | [log_rnDeriv_tilted_left_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/declarations/log-rnderiv-tilted-left-self--b2e76ca87148335306e141b2.md) | 373 | `result-track:b2e76ca87148335306e141b2429112eef0824f4113cdfc6a9ffb06def36fe531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
