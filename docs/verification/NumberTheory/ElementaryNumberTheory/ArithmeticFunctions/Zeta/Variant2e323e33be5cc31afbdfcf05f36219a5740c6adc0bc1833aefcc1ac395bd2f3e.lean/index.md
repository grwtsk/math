# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Zeta.Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd911a3b6c04541755f2b96428fd49c4beb1a38",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd911a3b6c04541755f2b96428fd49c4beb1a38`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean.json)

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
| 1 | `def` | [zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta--9758dbe040d23c15fc1a14f3.md) | 46 | `declaration-track:9758dbe040d23c15fc1a14f3afd55f03d34d247fd90cdc0d4aca783e286221a1` |
| 2 | `theorem` | [zeta_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-apply--0d1fb6d1389705d35367c006.md) | 57 | `result-track:0d1fb6d1389705d35367c006839fbd78bb8fb4e067fa4e5386b075cb04a5f7be` |
| 3 | `theorem` | [zeta_apply_ne](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-apply-ne--05d1cdff47b1afca9e5dbd11.md) | 60 | `result-track:05d1cdff47b1afca9e5dbd115f29a48d4bdae8f4403c6e3be2764482b3208731` |
| 4 | `theorem` | [zeta_eq_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-eq-zero--3ec3565c4b5c47b287038631.md) | 63 | `result-track:3ec3565c4b5c47b287038631cee9c9cd4fc33197342a5ea3e88530d0b65d3881` |
| 5 | `theorem` | [zeta_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-pos--3bccb230bf4e2228a60c98c8.md) | 65 | `result-track:3bccb230bf4e2228a60c98c855ea80da522069cf30098d2ce95e66cb2576c7d9` |
| 6 | `theorem` | [coe_zeta_smul_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/coe-zeta-smul-apply--2872fe9ac7fa89f115a648d7.md) | 68 | `result-track:2872fe9ac7fa89f115a648d72c510698628d652437871a78faf0026cb7385fe4` |
| 7 | `theorem` | [sum_divisorsAntidiagonal_eq_sum_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/sum-divisorsantidiagonal-eq-sum-divisors--c691cbe5bf0ae026ac35f5e3.md) | 80 | `result-track:c691cbe5bf0ae026ac35f5e364678507ee47b37d1fac1d558da4b22c7a721b9b` |
| 8 | `theorem` | [coe_zeta_mul_comm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/coe-zeta-mul-comm--e8bf54a2c5f7678decf68461.md) | 86 | `result-track:e8bf54a2c5f7678decf68461a424aa35e0c789086c774685adae58330986433f` |
| 9 | `theorem` | [coe_zeta_mul_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/coe-zeta-mul-apply--9b02aadc9e9b113f7652500e.md) | 91 | `result-track:9b02aadc9e9b113f7652500e1c78399a9139e89d457925318d4ec2ebeb170836` |
| 10 | `theorem` | [coe_mul_zeta_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/coe-mul-zeta-apply--171cba618047b76fd08c06e5.md) | 95 | `result-track:171cba618047b76fd08c06e55b6bc738f2cca2b6a12af0f4f529c256eda64acf` |
| 11 | `theorem` | [zeta_mul_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-mul-apply--90e0bd1162621197befc52af.md) | 99 | `result-track:90e0bd1162621197befc52af8bfbfd34622cb55177f4095f5ac5a601c028113f` |
| 12 | `theorem` | [mul_zeta_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/mul-zeta-apply--c09f9bb95b7dbdc96db91635.md) | 102 | `result-track:c09f9bb95b7dbdc96db916357d024ab2996eeefff48a89a8274da0573f1a079c` |
| 13 | `theorem` | [zeta_mul_comm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-mul-comm--ea1cd70368211da2f0fc3dae.md) | 105 | `result-track:ea1cd70368211da2f0fc3daeef18a01d61dc7587e447e825cee24c14595fd292` |
| 14 | `def` | [pmul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul--64cf577d292a7679c23c91e9.md) | 113 | `declaration-track:64cf577d292a7679c23c91e9997a26ddeb81b63c1c750ca785dc3dcb82376de0` |
| 15 | `theorem` | [pmul_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul-apply--136294ddd1f04036a9cce855.md) | 117 | `result-track:136294ddd1f04036a9cce855fa0e9092caef3f84aadcad1938306bd99a689c61` |
| 16 | `theorem` | [pmul_comm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul-comm--9177afd8546200e7749bb8b8.md) | 120 | `result-track:9177afd8546200e7749bb8b899ac52e40268b65c7c06da36441850c8fa33df45` |
| 17 | `lemma` | [pmul_assoc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul-assoc--ce664f155372138a2f7b5242.md) | 124 | `result-track:ce664f155372138a2f7b5242f2efeec393cabf558b155097dec34a38eb880b63` |
| 18 | `theorem` | [pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul-zeta--c2de0adbeb918f4986b1852e.md) | 134 | `result-track:c2de0adbeb918f4986b1852e5af03aa87ab659bf884f3dee67f68a7f6a7688bc` |
| 19 | `theorem` | [zeta_pmul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/zeta-pmul--90cb725baefb194dae6dc87c.md) | 139 | `result-track:90cb725baefb194dae6dc87ca6153bfaddf4545a80f1e93e46e1a7b64d914b35` |
| 20 | `def` | [ppow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow--94dc7665cb118122672b9309.md) | 150 | `declaration-track:94dc7665cb118122672b93096d6daab3681c50534509e11509a910e12dc318a9` |
| 21 | `theorem` | [ppow_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow-zero--0d9cb6c9e07f5b22650e8fac.md) | 155 | `result-track:0d9cb6c9e07f5b22650e8facb09bc7d380ad3389f66c5a6f36265780e8773a2f` |
| 22 | `theorem` | [ppow_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow-one--96a61a67a999b19a029d4bce.md) | 158 | `result-track:96a61a67a999b19a029d4bcea45517e8e210dc3b73ac789540b00dc4e0b4e8b3` |
| 23 | `theorem` | [ppow_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow-apply--c577b2ff64bd677158e993b1.md) | 163 | `result-track:c577b2ff64bd677158e993b17bcc26c77095b65397e53546a7296e954ea8add3` |
| 24 | `theorem` | [ppow_succ'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow-succ--fd655e5166c9ddaeb24f2bf3.md) | 166 | `result-track:fd655e5166c9ddaeb24f2bf394a57b4c9a4d7e66c7dfa248cce6770ee62c0e9e` |
| 25 | `theorem` | [ppow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow-succ--94c2a9f704c38b47a3c1da06.md) | 171 | `result-track:94c2a9f704c38b47a3c1da060799b00b5baf11f901baae69521cd46449b8481b` |
| 26 | `def` | [pdiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pdiv--93475757c5c9fb6fa983712f.md) | 182 | `declaration-track:93475757c5c9fb6fa983712f6a2d89d9c4a514d138cab9f3245ff14a407d0ebe` |
| 27 | `theorem` | [pdiv_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pdiv-apply--69a24024fe859f94b096027b.md) | 186 | `result-track:69a24024fe859f94b096027b78a14eea5ce2feba321ec2c837b4e5abb46130e6` |
| 28 | `theorem` | [pdiv_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pdiv-zeta--e57c9976e10a96ef3e5ca744.md) | 192 | `result-track:e57c9976e10a96ef3e5ca7443d9532f15c24fa727c9b9663afee39d1760320ee` |
| 29 | `theorem` | [isMultiplicative_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ismultiplicative-zeta--5c2645dfeddb16984ef31dee.md) | 200 | `result-track:5c2645dfeddb16984ef31dee16eb09010b27dccdef77f7cf9b63b6480a4d992c` |
| 30 | `theorem` | [pmul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pmul--ca8802378cf49a2c207adcb3.md) | 206 | `result-track:ca8802378cf49a2c207adcb332a95c247ebfa05e18624cc90e9a198ddf47a739` |
| 31 | `theorem` | [pdiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/pdiv--9e463d80ebd6559c86437426.md) | 213 | `result-track:9e463d80ebd6559c86437426cd45e5de6c020feaafef59a06bf6c9ebd6a40dbf` |
| 32 | `theorem` | [ppow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/ppow--49f68a736dc13fd07085d584.md) | 221 | `result-track:49f68a736dc13fd07085d58474e222fee25d7f0af408d249851ec6f0221f7fbf` |
| 33 | `def` | [evalArithmeticFunctionZeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/declarations/evalarithmeticfunctionzeta--900efe4dbcfb4cc25570800b.md) | 236 | `declaration-track:900efe4dbcfb4cc25570800b6adcfb5ad7767f7d16f807dd046aeb9473df8ffd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
