# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79bf04340ba34806e6cbd98bfad02ac003283060",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79bf04340ba34806e6cbd98bfad02ac003283060`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PMF.](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/pmf--4ee230cdf83860d39d9b9afb.md) | 49 | `declaration-track:4ee230cdf83860d39d9b9afba22f9f0c61047caf60ddd5589433c9c1e55398b8` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/instfunlike--56e87aebacbfd39d4f4ba48d.md) | 54 | `declaration-track:56e87aebacbfd39d4f4ba48ddd118b862b856fdf0a2295cdfabd70f2a63e0c94` |
| 3 | `theorem` | [ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/ext--4aa6f95279cbd0a7a44787cc.md) | 59 | `result-track:4aa6f95279cbd0a7a44787ccd03718a0d347c4d7e5d55900aa9f895754f7ec97` |
| 4 | `theorem` | [hasSum_coe_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/hassum-coe-one--d847e5bc3e2adc04bfa1f9d2.md) | 62 | `result-track:d847e5bc3e2adc04bfa1f9d238a4e14632b276131d387b35a676c0d78d20a16b` |
| 5 | `theorem` | [tsum_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tsum-coe--47fa403a3fdef9a1fd95936d.md) | 66 | `result-track:47fa403a3fdef9a1fd95936d0c432b6ecba80a1ccc3c324ad417fc553a9c9fa6` |
| 6 | `theorem` | [tsum_coe_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tsum-coe-ne-top--5ad4f4e93efc7675ecc0b1e0.md) | 69 | `result-track:5ad4f4e93efc7675ecc0b1e00f88f3388945d4aadeac2fe7b679b72fcffb02dc` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tsum-coe-indicator-ne-top--e9a972afc50c6c4d453aebea.md) | 72 | `result-track:e9a972afc50c6c4d453aebea3365feaf15bb1f3a933a16688fd2f6a87bc0fd91` |
| 8 | `theorem` | [coe_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/coe-ne-zero--715c5373dba0b2a718e67525.md) | 78 | `result-track:715c5373dba0b2a718e6752535d5d153ca0fcd28f48d394c7bb080691c2b2bd7` |
| 9 | `def` | [support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/support--ba0676eb680470132f07dc90.md) | 82 | `declaration-track:ba0676eb680470132f07dc90a0c239fe25c022826c51a580292142e8f4a2bc7c` |
| 10 | `theorem` | [mem_support_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/mem-support-iff--388d4ac5c4fa7e0bfb2a79ff.md) | 86 | `result-track:388d4ac5c4fa7e0bfb2a79ff2b5ff29f52b3605f28e0efe82c90513ce853144f` |
| 11 | `theorem` | [support_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/support-nonempty--892612e5b03d716849c13d0f.md) | 89 | `result-track:892612e5b03d716849c13d0fb1d47e59029a1e0c2ef44acaddeebfc4b99bf107` |
| 12 | `theorem` | [support_countable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/support-countable--d9f9993aab2cb72b9b75e70d.md) | 93 | `result-track:d9f9993aab2cb72b9b75e70d5e3424e3f99e4131aea600d31e2bffbf20bb6351` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/apply-eq-zero-iff--a9add12e2ba51e86101f6bae.md) | 96 | `result-track:a9add12e2ba51e86101f6baed7361022d750b0c49bb8fc35c783b2c78e160680` |
| 14 | `theorem` | [apply_pos_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/apply-pos-iff--b653865efdfa7c43ff7f191e.md) | 99 | `result-track:b653865efdfa7c43ff7f191ef383f084b254352dd58c3c178e5b917e8960953f` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/apply-eq-one-iff--6dcc44db64e23d732b7fe56d.md) | 102 | `result-track:6dcc44db64e23d732b7fe56d5b05930f6cefe1064be182f70ced7f2df01897dc` |
| 16 | `theorem` | [coe_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/coe-le-one--089791cccfdad765d0679634.md) | 123 | `result-track:089791cccfdad765d0679634063ad443345427e995270dc65e219b0ee1783f5d` |
| 17 | `theorem` | [apply_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/apply-ne-top--ae8358589e69a28a0d89fbc3.md) | 128 | `result-track:ae8358589e69a28a0d89fbc346e619c2997476e109fd5716b372b335d47b67cc` |
| 18 | `theorem` | [apply_lt_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/apply-lt-top--82428e5abeb7c7152de53988.md) | 131 | `result-track:82428e5abeb7c7152de53988bdd814527d98d0ab8ba9230393f8ce3140a57a5b` |
| 19 | `def` | [toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure--ae3470db5e07410619c67193.md) | 140 | `declaration-track:ae3470db5e07410619c67193bca275dc6ab7f3997901740b376e2522c7ca47a2` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply--8c8b8b44dd3ee50c358477df.md) | 145 | `result-track:8c8b8b44dd3ee50c358477dfbb9df73099965e9bcfee2d1840c5fa65e1dc23f2` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-caratheodory--b3f884e664e680e9b0f3b250.md) | 149 | `result-track:b3f884e664e680e9b0f3b2507a731f0ef8edd9b92f07b78df7ef756ba1760ac7` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-finset--5c5341fc38e6c0956c0c02c8.md) | 156 | `result-track:5c5341fc38e6c0956c0c02c8bfa5fd44c19b7be0865ebe0f25cc47321ec3c729` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-singleton--2607a790b31cb7c58ec6863d.md) | 161 | `result-track:2607a790b31cb7c58ec6863d25d9702bcb42876f3ebf30f54f414f2b50d4a878` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-injective--962b5b5cb4710c31fba297c2.md) | 166 | `result-track:962b5b5cb4710c31fba297c2facb687b60788938d76cb8ba385a225ea8895f4d` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-inj--fc161a20614d2f764bcd5c80.md) | 171 | `result-track:fc161a20614d2f764bcd5c80b8dbcaeef2f314fc6048268eeda32bc8213d6013` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-eq-zero-iff--31251c0a6707b8f62cd30bfe.md) | 174 | `result-track:31251c0a6707b8f62cd30bfe3bef6a0f433e737dd15dd31aa63f17d46bb4c6fa` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-eq-one-iff--42a4fd346621f627e0bec730.md) | 178 | `result-track:42a4fd346621f627e0bec730c4aacd906039d5b875624020abe693810f0577cb` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-inter-support--c16199aa27c2d98d6d94523d.md) | 192 | `result-track:c16199aa27c2d98d6d94523da2097eda3b97f683997f9e5b52c2e3988f397766` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-mono--bb4893f8ee1a667309aa2f46.md) | 197 | `result-track:bb4893f8ee1a667309aa2f46048c7654712156383da37ced0197ab6830496f6c` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq--55b1bc0bb9d7f2153894f174.md) | 201 | `result-track:55b1bc0bb9d7f2153894f174917800ef7e570a18b1721f81b367f1b048ad923b` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-fintype--519c66d462fc738f1d2be956.md) | 207 | `result-track:519c66d462fc738f1d2be9568d66a53aa0105c47044b2b34c171c46362a52e24` |
| 32 | `def` | [toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure--929e4948217117b7d2a78242.md) | 218 | `declaration-track:929e4948217117b7d2a782421f5492f433789e35477065009bd93f6bd633ee9a` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tooutermeasure-apply-le-tomeasure-apply--d6817d56856bb49fb261ce4f.md) | 223 | `result-track:d6817d56856bb49fb261ce4f32766af2fb73c61d9dd20292bf8d0370330f92b9` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply--c35b952ee51bd4ec233b967b.md) | 226 | `result-track:c35b952ee51bd4ec233b967be5f3213345a7806cff1fb538a03746b21939681f` |
| 35 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply--9fd876497e537b1deaefd36b.md) | 230 | `result-track:9fd876497e537b1deaefd36becfca44699b0e5d8a26c461f421e6e324d646506` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-singleton--f5d406f78f16664e1ca209cb.md) | 233 | `result-track:f5d406f78f16664e1ca209cb4041f6ad3041a24ea9dbd6601cde0dd2aceedddd` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-eq-zero-iff--9483740aa293f499078dd8f1.md) | 237 | `result-track:9483740aa293f499078dd8f13cb2cc158864051755e7361b91a240736a663bd9` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-eq-one-iff--1d61dd65167f0d178bf166b7.md) | 241 | `result-track:1d61dd65167f0d178bf166b7fa6b49cee4f391d22e478d7dbcf617024e455fee` |
| 39 | `theorem` | [toMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-inter-support--9db76a109c533a662e947c82.md) | 245 | `result-track:9db76a109c533a662e947c8250129fb63a9363ac55a72c566cfdea959a70c670` |
| 40 | `theorem` | [restrict_toMeasure_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/restrict-tomeasure-support--bee2ab22c3a654fe998a0f42.md) | 251 | `result-track:bee2ab22c3a654fe998a0f421c829b1704fa7e8b1c1d42ef219e3d688a86bdc8` |
| 41 | `theorem` | [toMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-mono--8ba53e01135c1c970500d1d9.md) | 257 | `result-track:8ba53e01135c1c970500d1d937bd7a77a91e2bd0af16f9658db9b33d4e9748d2` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-eq-of-inter-support-eq--7bdfa470e4657c8fb56e57f9.md) | 261 | `result-track:7bdfa470e4657c8fb56e57f9c2500f92b3c2c15587434e6c35367f0e73b8f414` |
| 43 | `theorem` | [toMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-injective--376e44c4c55132bf1024710e.md) | 270 | `result-track:376e44c4c55132bf1024710e4c041cf0044547761eea4f68c8accec8afccc8a6` |
| 44 | `theorem` | [toMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-inj--07abf657d07c19cb364b44ab.md) | 277 | `result-track:07abf657d07c19cb364b44ab9b54b66faabb502e81c4b5a3eeeb1054178de1c1` |
| 45 | `theorem` | [toMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-finset--7bf5ec3fabb6f8dce1de6bc8.md) | 281 | `result-track:7bf5ec3fabb6f8dce1de6bc8e34bef8a3c72978cc57ed89e92a161c657ebdfb2` |
| 46 | `theorem` | [toMeasure_apply_of_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-of-finite--d304181424248d594b8355ce.md) | 285 | `result-track:d304181424248d594b8355ce7854d4cc7fce174ac4f7972c0589956d7f45b7d0` |
| 47 | `theorem` | [toMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-apply-fintype--3669bbb415d3a692fa1f6579.md) | 289 | `result-track:3669bbb415d3a692fa1f6579636e1d5e30e60a9368bbbbfbccf41053bc39de19` |
| 48 | `def` | [toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/topmf--5160cdf25350cc2722b6c7c2.md) | 308 | `declaration-track:5160cdf25350cc2722b6c7c2e0d79ae7257038de13fbc374d68e558f468c9678` |
| 49 | `theorem` | [toPMF_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/topmf-apply--d5167f20d8372b561bc10e73.md) | 321 | `result-track:d5167f20d8372b561bc10e73c1499affe994faa16fae20efe55ea066ebf5ab87` |
| 50 | `theorem` | [toPMF_toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/topmf-tomeasure--00a92d4ac7f8b03136839c63.md) | 324 | `result-track:00a92d4ac7f8b03136839c63c53a5640fccc0f1e215b556494887ca285e67ffe` |
| 51 | `instance` | [toMeasure.isProbabilityMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-isprobabilitymeasure--6083208783a0697a317da84c.md) | 338 | `declaration-track:6083208783a0697a317da84c3dda31c16786be96294ccaaaff33ad641ad27f35` |
| 52 | `theorem` | [toMeasure_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-topmf--50543a2367b70b22c64e923c.md) | 347 | `result-track:50543a2367b70b22c64e923c4313a24b80494b7a0cfa630215cfa46bdcb1479c` |
| 53 | `theorem` | [toMeasure_eq_iff_eq_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/tomeasure-eq-iff-eq-topmf--cb53a38266f8434132299e4e.md) | 351 | `result-track:cb53a38266f8434132299e4e33a7dd7abf65b1075db2df28f6b1ea4ba0da01cf` |
| 54 | `theorem` | [toPMF_eq_iff_toMeasure_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean/declarations/topmf-eq-iff-tomeasure-eq--926b6e09d8828d09e089e052.md) | 354 | `result-track:926b6e09d8828d09e089e0524a2af8de59dcdc54cff1a41fdeaa50aa9182c34f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
