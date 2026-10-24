# Verification target: GRWTSK.Algebra.LinearAlgebra.LSum.Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58074e8851f67a24ccb1825cd71d8953ec6d75f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58074e8851f67a24ccb1825cd71d8953ec6d75f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/smul-sum--cecd12e9735ff47a794dd76e.md) | 49 | `result-track:cecd12e9735ff47a794dd76e1e7d0e3673210f7a85b3fb19f100a395ca0b1196` |
| 2 | `theorem` | [sum_smul_index_semilinearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/sum-smul-index-semilinearmap--bac8a7ea84309367a6abd75d.md) | 54 | `result-track:bac8a7ea84309367a6abd75de0344899f456c4c99fd732bad895ae089234f5ea` |
| 3 | `theorem` | [sum_smul_index_linearMap'](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/sum-smul-index-linearmap--c0e79507421f4e579559c71d.md) | 62 | `result-track:c0e79507421f4e579559c71d0c7fbfeabc505e677b207477f39c66b97a8a8a0c` |
| 4 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.SmulSum.Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.LinearMap.CompatibleSMul.finsupp_dom](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/root-grwtsk-algebra-linearalgebra-smulsum-variant2f288fad9adcccce270b891--a9a9e99d0e9e4c92ea8a5ffc.md) | 81 | `declaration-track:a9a9e99d0e9e4c92ea8a5ffca6fcd1afc44e73df8383e4e2dd5648ee8fa407e0` |
| 5 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.SmulSum.Variant2f288fad9adcccce270b891374eb7a0b50f2194e79fd488ef27a0c08262a2883.LinearMap.CompatibleSMul.finsupp_cod](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/root-grwtsk-algebra-linearalgebra-smulsum-variant2f288fad9adcccce270b891--a007793d073a216eda34feec.md) | 88 | `declaration-track:a007793d073a216eda34feec8f337343b9a6705cef41f6f897708a917b3c24ef` |
| 6 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lsum--510e167bd0b6f954f60805b1.md) | 105 | `declaration-track:510e167bd0b6f954f60805b1c05d4794a2efd45583bff95a23e1acce75bbec29` |
| 7 | `theorem` | [coe_lsum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/coe-lsum--e89062c1c1673f158040d84b.md) | 125 | `result-track:e89062c1c1673f158040d84b0ab9eeb98fd077755d1e445055850989c6ec0bc3` |
| 8 | `theorem` | [lsum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lsum-apply--4e0f9ec4609c9c85c26e3f2f.md) | 128 | `result-track:4e0f9ec4609c9c85c26e3f2fa757fc4bf06300ab0ac91232568d05e23c1575f4` |
| 9 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lsum-single--7513c3afd3a0337ab286aa3e.md) | 131 | `result-track:7513c3afd3a0337ab286aa3e51be2b04500da12305a1551e63c93e85070e400a` |
| 10 | `theorem` | [lsum_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lsum-comp-lsingle--9c6354df4970d9308cb2159b.md) | 135 | `result-track:9c6354df4970d9308cb2159b13b813d67062ad0b51e2105549230c6695cd17a1` |
| 11 | `theorem` | [lsum_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lsum-symm-apply--f8534d3d42c009069fae4d60.md) | 138 | `result-track:f8534d3d42c009069fae4d6052c8067e08ad29fa8ad062d4d432592479824973` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lift--89ebc054caa60d118f640d90.md) | 151 | `declaration-track:89ebc054caa60d118f640d90d3ca0903fbe1f0ebc10bf6ade1a3a41037505fe7` |
| 13 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lift-symm-apply--03d1fc8d47b2cba3617c6d5c.md) | 156 | `result-track:03d1fc8d47b2cba3617c6d5c9da88f092f062f263cdb01573d2ecc17a29d4a97` |
| 14 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lift-apply--71789481abc3c624c25c5505.md) | 160 | `result-track:71789481abc3c624c25c5505242d2b83d8188b0e7b3bfb4fc18a67bc7f697d7e` |
| 15 | `def` | [llift](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/llift--1acbd7c9763b2708d2f4d3c6.md) | 167 | `declaration-track:1acbd7c9763b2708d2f4d3c6793580054d4aec9ad50a8fb92415e3d2cc73232c` |
| 16 | `theorem` | [llift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/llift-apply--72ecc7e34c1ab0b8103f6ce2.md) | 177 | `result-track:72ecc7e34c1ab0b8103f6ce28b4a6a6c273d99394d536eb89d4e3a31dbc12860` |
| 17 | `theorem` | [llift_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/llift-symm-apply--9c863f348e5c67f6f8d8e65c.md) | 181 | `result-track:9c863f348e5c67f6f8d8e65c0aae45622aaa6b5554251f580fe254b8bf4c24b7` |
| 18 | `def` | [domLCongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr--1ed86d70db5f1262dadaedab.md) | 191 | `declaration-track:1ed86d70db5f1262dadaedabc2ffc8e143a93db47ef3e547baf23717d99601ee` |
| 19 | `theorem` | [domLCongr_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr-apply--f89c5c9d08b6d36b458493f8.md) | 196 | `result-track:f89c5c9d08b6d36b458493f83a0c38d881ced3c5c73480faf09333339ad4e902` |
| 20 | `theorem` | [domLCongr_refl](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr-refl--d1a57348159c5b7a6acc431f.md) | 201 | `result-track:d1a57348159c5b7a6acc431f8bde94420d8c4f4e21e1abef07866d367ce98fcf` |
| 21 | `theorem` | [domLCongr_trans](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr-trans--ae863dd179963811129d63c1.md) | 204 | `result-track:ae863dd179963811129d63c1a9f7d1c26a8e73ea5c09bbcb9641e9831a372f0f` |
| 22 | `theorem` | [domLCongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr-symm--ddca39c311d0bdd0c8c1035f.md) | 210 | `result-track:ddca39c311d0bdd0c8c1035f3efc2ef170236f40d3cfbb53598a2e8995c5cfab` |
| 23 | `theorem` | [domLCongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/domlcongr-single--bd9c5a856e8af2c7313dd797.md) | 214 | `result-track:bd9c5a856e8af2c7313dd7975fe4e0cd40df249d418d37bac4cf4306334327b6` |
| 24 | `def` | [lcongr](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lcongr--f3ccd7c2cb8d48a53bdf4d0b.md) | 224 | `declaration-track:f3ccd7c2cb8d48a53bdf4d0bcd6c1b097447de46f5d645c795177cd711fe5bff` |
| 25 | `theorem` | [lcongr_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lcongr-single--8d0eeff695385e137a350d10.md) | 228 | `result-track:8d0eeff695385e137a350d10983ff0328928abc10e3f8ba9027e025b75f4fcc1` |
| 26 | `theorem` | [lcongr_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lcongr-apply-apply--ec639898abfcf2dfeec801ea.md) | 232 | `result-track:ec639898abfcf2dfeec801eaf105050a5df260d42f74d075f15db7581e15339e` |
| 27 | `theorem` | [lcongr_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lcongr-symm-single--74f72e9eaae9e661f1d29d59.md) | 236 | `result-track:74f72e9eaae9e661f1d29d59c04be56b360d25aa16e4b3566ad7bd94067239b6` |
| 28 | `theorem` | [lcongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/lcongr-symm--b87440dfc4bad1c8ecf4db37.md) | 242 | `result-track:b87440dfc4bad1c8ecf4db378c8b7789f8f8a1bc8ce64d0298c2ede828e80834` |
| 29 | `theorem` | [Submodule.finsuppSum_mem](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/submodule-finsuppsum-mem--01b623eb52bc569cf0b43174.md) | 260 | `result-track:01b623eb52bc569cf0b43174959aa68511ce1bb2f1aa94afcaae2e4b2c5babd7` |
| 30 | `def` | [splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/splittingoffinsuppsurjective--b1a3c91f502f50096e28e883.md) | 274 | `declaration-track:b1a3c91f502f50096e28e883f9534a67db7f866e1deead7efe1ad2dcd929b61a` |
| 31 | `theorem` | [splittingOfFinsuppSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/splittingoffinsuppsurjective-splits--980f5c223f586e1d1b649396.md) | 277 | `result-track:980f5c223f586e1d1b6493966ce47ed7f34a3d2aa058a0acd0aa0b4588769fdb` |
| 32 | `theorem` | [leftInverse_splittingOfFinsuppSurjective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/leftinverse-splittingoffinsuppsurjective--9866264123df3a22b9ae32e0.md) | 286 | `result-track:9866264123df3a22b9ae32e0d6ab9917275771b5152cedd751f0caf057cbe6b4` |
| 33 | `theorem` | [splittingOfFinsuppSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/splittingoffinsuppsurjective-injective--6707acc96c67721d178c5168.md) | 290 | `result-track:6707acc96c67721d178c51684e8289978f5b608cb9a79a2ce55c433331403d67` |
| 34 | `theorem` | [coe_finsupp_sum](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/coe-finsupp-sum--9eee3dbdbb7caaa95014095c.md) | 307 | `result-track:9eee3dbdbb7caaa95014095cec8a703b98da4b840c1c6843371be9948fa6ffd8` |
| 35 | `theorem` | [finsupp_sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/finsupp-sum-apply--c4bf2209f11a35c783f9ea21.md) | 311 | `result-track:c4bf2209f11a35c783f9ea21846354bdec2573eb85968df5de84090be4de2df6` |
| 36 | `def` | [mulLeftMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulleftmap--88f2e99ec0729856432d2afd.md) | 331 | `declaration-track:88f2e99ec0729856432d2afd8f61cb1b60291b802100c11dff6cc9ff6d91582c` |
| 37 | `theorem` | [mulLeftMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulleftmap-apply--71d086617dfb783aa0822f5a.md) | 334 | `result-track:71d086617dfb783aa0822f5a2b5e3b2a526df976bd3a13a396442bcf7f8c875a` |
| 38 | `theorem` | [mulLeftMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulleftmap-apply-single--7a437f590db95470aa138f4a.md) | 338 | `result-track:7a437f590db95470aa138f4a916035f2fe4a0ed08bdc708598f68635d9a6773c` |
| 39 | `def` | [mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulrightmap--57a61745978e5fbbffc3eb69.md) | 349 | `declaration-track:57a61745978e5fbbffc3eb69a04343eb3a8e1868b15197681d34be4407a81074` |
| 40 | `theorem` | [mulRightMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulrightmap-apply--03841c0f31d9793490e33bfa.md) | 352 | `result-track:03841c0f31d9793490e33bfa5db5879a1433ab3d55748c6dcf21fccae279e126` |
| 41 | `theorem` | [mulRightMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulrightmap-apply-single--205efafca91a28349555b618.md) | 356 | `result-track:205efafca91a28349555b61827571c65362552ee55cb57676a4f9ea122a0772e` |
| 42 | `theorem` | [mulLeftMap_eq_mulRightMap_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulleftmap-eq-mulrightmap-of-commute--b21e9876728b7e96675ddafd.md) | 360 | `result-track:b21e9876728b7e96675ddafd11810075e5d1e7047cd360b172cc67e3709fa5a2` |
| 43 | `theorem` | [mulLeftMap_eq_mulRightMap](../../../../../mathematics/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean/declarations/mulleftmap-eq-mulrightmap--d384fe33c892729b858cfba8.md) | 365 | `result-track:d384fe33c892729b858cfba839c4911319142745c0ea228d5d806c484fd7a04a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
