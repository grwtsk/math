# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousLinearMap.Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "634ddd0ebbe50b0c4660c4105e20bdbbe27f6259",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `634ddd0ebbe50b0c4660c4105e20bdbbe27f6259`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousMapZero` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-complp--cd05f44d377b987883f07497.md) | 30 | `result-track:cd05f44d377b987883f07497ceecf5c240b18336821c1a6ed3e11e74093de2cb` |
| 2 | `theorem` | [setIntegral_compLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-complp--97c700efacfa9ddb7700168e.md) | 34 | `result-track:97c700efacfa9ddb7700168ea2af5295c7eea6769ca80dcab150457fa8f444fd` |
| 3 | `theorem` | [continuous_integral_comp_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/continuous-integral-comp-l1--41929d5edc2b8ae93f4f4684.md) | 38 | `result-track:41929d5edc2b8ae93f4f468454a5f5b3005eb380670e6ddf8849b66172e35c9f` |
| 4 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-comp-comm--cb6bbed8b2edef98cddb7eab.md) | 44 | `result-track:cb6bbed8b2edef98cddb7eab44805ec8cdba30cb0cd18fa8b241ec82d9b53f19` |
| 5 | `theorem` | [integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-apply--eb39ee29bc22dbeb244eb8cf.md) | 62 | `result-track:eb39ee29bc22dbeb244eb8cfe02d9081c9feb02cac614af9136a5755fba01325` |
| 6 | `theorem` | [_root_.ContinuousMultilinearMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/root-continuousmultilinearmap-integral-apply--ca5759d13af3925d7a933743.md) | 72 | `result-track:ca5759d13af3925d7a9337437ab18cfa617a473c84f405667c9139f170edba24` |
| 7 | `theorem` | [integral_comp_comm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-comp-comm--9f3d32005359f02e795430bd.md) | 88 | `result-track:9f3d32005359f02e795430bd2ae81a7cc12d3c6edc9d3e6673dfeaefa81c5e29` |
| 8 | `theorem` | [integral_comp_L1_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-comp-l1-comm--b4e86d8f0d0f65b44c8c878d.md) | 97 | `result-track:b4e86d8f0d0f65b44c8c878d4545baf6cf4d1e36254b49c7360e18ab4926432e` |
| 9 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-comp-comm--5f738194b5b02ea00964cb6f.md) | 107 | `result-track:5f738194b5b02ea00964cb6f0e968379af2c11365dcaf051c7da43a5f6ddfced` |
| 10 | `theorem` | [integral_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-comp-comm--efd9611ff94e7d458c7a13fb.md) | 116 | `result-track:efd9611ff94e7d458c7a13fb38b1f41068326b609ebe9c7a07c29b282527e6b2` |
| 11 | `lemma` | [ContinuousMap.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/continuousmap-integral-apply--8827ea9687e966e41f00bdf3.md) | 129 | `result-track:8827ea9687e966e41f00bdf3a1a0731eb8f3ce277a29e67430a167992bd3b600` |
| 12 | `theorem` | [ContinuousMapZero.integral_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/continuousmapzero-integral-apply--9e4b02f3ee6827bedd70345f.md) | 137 | `result-track:9e4b02f3ee6827bedd70345fb658b8db91cdaaaf4ed0f951fab2a094fa2965e0` |
| 13 | `theorem` | [integral_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-ofreal--0ade2bb61c500af93c86a4ca.md) | 149 | `result-track:0ade2bb61c500af93c86a4cac2964c96f0240394be74c75be3013131a47ad47c` |
| 14 | `theorem` | [integral_complex_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-complex-ofreal--bf9ae6a9370d9f33ceabd6b9.md) | 152 | `result-track:bf9ae6a9370d9f33ceabd6b9956041da87d7e7cf29f314a263e70365d914710f` |
| 15 | `theorem` | [integral_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-re--0b4e8db3ebef52de20efe634.md) | 154 | `result-track:0b4e8db3ebef52de20efe6341b95f10cbc4b9ca97f590b42ccf6092f0ec62e1c` |
| 16 | `theorem` | [integral_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-im--024e7de918ad08c5296c7b13.md) | 158 | `result-track:024e7de918ad08c5296c7b1374c598d8dd1f53c5775df147487f5f8100e6afa2` |
| 17 | `theorem` | [integral_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-conj--c211de9cf00d565adeaff249.md) | 163 | `result-track:c211de9cf00d565adeaff24976c3f6df6043fd2ad0eb7852477a94ff038edece` |
| 18 | `theorem` | [integral_coe_re_add_coe_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-coe-re-add-coe-im--312be965f4e5763149ec0820.md) | 166 | `result-track:312be965f4e5763149ec082047f387db2710fef9f07b318ac341d78f2a813f54` |
| 19 | `theorem` | [integral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-re-add-im--3b54665d5e753bb858a09657.md) | 175 | `result-track:3b54665d5e753bb858a096578eb7ada413fe8ef9bbd0fd1be53db1bbe6654389` |
| 20 | `theorem` | [setIntegral_re_add_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-re-add-im--124f057446f91a1f3bd7f138.md) | 180 | `result-track:124f057446f91a1f3bd7f13841c361380243b45084c3ad566ad8f6ccd7ecea96` |
| 21 | `lemma` | [swap_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/swap-integral--65a9738d044d2e209645801c.md) | 187 | `result-track:65a9738d044d2e209645801c716a4ab92a928b68d520698836b68de421a7241e` |
| 22 | `theorem` | [fst_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/fst-integral--b0b847b67150d71c8a832535.md) | 190 | `result-track:b0b847b67150d71c8a8325357ae2cce0c4bdbe284f4228d8ac7a5fe0db242c9b` |
| 23 | `theorem` | [snd_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/snd-integral--4fcea1f93d988a6fe59b9e1a.md) | 197 | `result-track:4fcea1f93d988a6fe59b9e1a48d44a43b15e862fb829baf6c85f318deb08dad8` |
| 24 | `theorem` | [integral_pair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-pair--2cae938411fd0ce15d36c9bd.md) | 202 | `result-track:2cae938411fd0ce15d36c9bdf9bc9c50153b8b8f8b2a3111f95e60600ab5cef4` |
| 25 | `theorem` | [integral_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-smul-const--b763b364fa270044c28ff74f.md) | 208 | `result-track:b763b364fa270044c28ff74fd72988f8c809dde95a27884e71acd62ddab41cc4` |
| 26 | `lemma` | [integral_const_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-const-mul-of-integrable--c79044ea6bb7a5e964c3e53a.md) | 223 | `result-track:c79044ea6bb7a5e964c3e53abb08095c74b0c5de5b3b58e5735ce7f9ac67a7de` |
| 27 | `lemma` | [integral_mul_const_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-mul-const-of-integrable--6eb802edc0182493b7f1aae6.md) | 231 | `result-track:6eb802edc0182493b7f1aae60a4619be415772b70b2eef859d4bd7300a778348` |
| 28 | `theorem` | [integral_withDensity_eq_integral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-withdensity-eq-integral-smul--56d09d925a998931e3d4c977.md) | 240 | `result-track:56d09d925a998931e3d4c977f1bfbb790a93f6ab12bf5689219ca4cb45b44298` |
| 29 | `theorem` | [integral_withDensity_eq_integral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-withdensity-eq-integral-smul--d74196754f00b3f6f143ca1f.md) | 285 | `result-track:d74196754f00b3f6f143ca1f6a79ba057b5609c81bdb45208a8625e5d72858a1` |
| 30 | `theorem` | [integral_withDensity_eq_integral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-withdensity-eq-integral-toreal-smul--cbd7717b3f52b68cf1f4da7c.md) | 300 | `result-track:cbd7717b3f52b68cf1f4da7c7afd1b7810202342730f8f88893844b43ae3f92d` |
| 31 | `theorem` | [integral_withDensity_eq_integral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/integral-withdensity-eq-integral-toreal-smul--da62578036000e375a8bec26.md) | 307 | `result-track:da62578036000e375a8bec2661bf0ccdc90400f59761b934e662fb5920258ccd` |
| 32 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-smul--016fc3b8ed8327598e87d38c.md) | 312 | `result-track:016fc3b8ed8327598e87d38c683f1a4204b23d541e2b7caf69b8a9e0515824d2` |
| 33 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--49911457594c6bf2fedd729d.md) | 317 | `result-track:49911457594c6bf2fedd729d1ae14047d565a776ce8348a4fa76e360a6d4053f` |
| 34 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-smul--364ff8361c6c9c956563acd3.md) | 323 | `result-track:364ff8361c6c9c956563acd3ab8cd07e55543aab6d6d1fbe0ecc77c54691c8d6` |
| 35 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--e45f913d202798d0cefd64bf.md) | 328 | `result-track:e45f913d202798d0cefd64bf555a551c48fa70272bbd2d01d0f0adfe7608576b` |
| 36 | `theorem` | [setIntegral_withDensity_eq_setIntegral_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-smul--aceea77205c07d47349ff53e.md) | 333 | `result-track:aceea77205c07d47349ff53e943e50e2a3d3f973aac5bf1635b4aaaefccb0c1b` |
| 37 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul₀'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--0e0153015e9706673efe36c7.md) | 338 | `result-track:0e0153015e9706673efe36c7411735d1489c3c4834dd271af88c54d4c51c8b5e` |
| 38 | `theorem` | [setIntegral_withDensity_eq_setIntegral_toReal_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/declarations/setintegral-withdensity-eq-setintegral-toreal-smul--df6a0d574203bdb702a8c31e.md) | 343 | `result-track:df6a0d574203bdb702a8c31e37331b9702a8c0a77135193f5a7eb3da92f7ab9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
