# Verification target: GRWTSK.NumberTheory.Theta.Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8fc81ae9f509248c72474b0c860dbc05c8b3907",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8fc81ae9f509248c72474b0c860dbc05c8b3907`.

Source path: `GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPrimeUB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/logprimeub--7b4dbfeb9c30e474454b70c3.md) | 51 | `declaration-track:7b4dbfeb9c30e474454b70c32e49b0148c332ae9ae24b7a3fc876b9bc4fe5a25` |
| 2 | `def` | [logPrimeLB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/logprimelb--4fbd950b52faae18288b2094.md) | 56 | `declaration-track:4fbd950b52faae18288b209484e24a5da86864d3c8a8f7042541ee3bdb3f7dcb` |
| 3 | `def` | [thetaUB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetaub--b2811d13a9da23b442c4c276.md) | 61 | `declaration-track:b2811d13a9da23b442c4c2766f94378b4bdec1ddc2884cfb522b982871a98daa` |
| 4 | `def` | [thetaLB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetalb--0d11335b4d9f9e8f5a88d2c5.md) | 66 | `declaration-track:0d11335b4d9f9e8f5a88d2c5704675a210737eceee9e66747e91831f9514e2ad` |
| 5 | `theorem` | [log_prime_le_logPrimeUB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/log-prime-le-logprimeub--2220781c266753db4481d55c.md) | 73 | `result-track:2220781c266753db4481d55cd963ef385afea17a07cee660c7fe15a8f753a3a9` |
| 6 | `theorem` | [logPrimeLB_le_log_prime](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/logprimelb-le-log-prime--365bd7c339aaa3459f894152.md) | 86 | `result-track:365bd7c339aaa3459f8941527fedf633dccee633d803fa8b3c596abf951af47f` |
| 7 | `theorem` | [theta_eq_ite_sum](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/theta-eq-ite-sum--f5aaadd3e605ddd89d89e257.md) | 99 | `result-track:f5aaadd3e605ddd89d89e257af470cc55d25faac5a4547cb35314aa6cd91f874` |
| 8 | `theorem` | [theta_le_thetaUB](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/theta-le-thetaub--d0c33e220702b3d8534a58e1.md) | 105 | `result-track:d0c33e220702b3d8534a58e12193ea15b81a3414d94193034cb3fb754bf657ab` |
| 9 | `theorem` | [thetaLB_le_theta](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetalb-le-theta--a5e0b13d8de28682806a75e6.md) | 113 | `result-track:a5e0b13d8de28682806a75e67731d1c6ab247ae293c9e88fda52a2066f6ac327` |
| 10 | `theorem` | [theta_le_of_thetaUB_le](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/theta-le-of-thetaub-le--e4a8c5be5977cb24f1fd5466.md) | 123 | `result-track:e4a8c5be5977cb24f1fd546676761a8bedf94cc2128871ff554e70a1ccd8a62d` |
| 11 | `def` | [checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkthetalemulwith--f8973fd4a0744b4cf470b8be.md) | 133 | `declaration-track:f8973fd4a0744b4cf470b8bee4acb582af483fe0ccf0be4a55fbad690071340b` |
| 12 | `theorem` | [theta_le_of_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/theta-le-of-checkthetalemulwith--3f3d39a712027c4eb89faef8.md) | 137 | `result-track:3f3d39a712027c4eb89faef8dffaa5dd7778d71aa83cdae19c4b8e640ac98e45` |
| 13 | `def` | [checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkthetaabserror--cb24c1fb7eee3d956807a838.md) | 152 | `declaration-track:cb24c1fb7eee3d956807a8384508d2510b8af8c773a327e76589039110c0b548` |
| 14 | `theorem` | [abs_theta_sub_le_of_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/abs-theta-sub-le-of-checkthetaabserror--d9925cc16d9c770324606b66.md) | 157 | `result-track:d9925cc16d9c770324606b667d34259f578c7dcb34c58d7b61d3e4ae174d4292` |
| 15 | `def` | [thetaUBPrefix](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetaubprefix--373faa550f4e5c0bf70ff516.md) | 182 | `declaration-track:373faa550f4e5c0bf70ff51696cfc75a80367b9bd80db963d2e969fdcb0af01a` |
| 16 | `theorem` | [thetaUB_succ](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetaub-succ--4da0af26a0a2cc69da3afec8.md) | 185 | `result-track:4da0af26a0a2cc69da3afec87ad71418b11274bf07bf35daab09b219aa8780a4` |
| 17 | `theorem` | [thetaUB_eq_acc](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetaub-eq-acc--d8591e02b237a233aaf49fa3.md) | 195 | `result-track:d8591e02b237a233aaf49fa3c25878b483e02c45baaa766e893d7e5f948ab9c4` |
| 18 | `def` | [checkAllThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetalemulwith--7e1ad3b14ae74fef61afc33f.md) | 204 | `declaration-track:7e1ad3b14ae74fef61afc33f36d5968eedad439bbb9ef3f02fe4e72383b2d10c` |
| 19 | `def` | [go_true_implies_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/go-true-implies-checkthetalemulwith--49e22a0f23c17f0a778c1706.md) | 217 | `declaration-track:49e22a0f23c17f0a778c170677af30c6bacf99d80551a18174e3e650aabb118d` |
| 20 | `theorem` | [checkAllThetaLeMulWith_implies_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetalemulwith-implies-checkthetalemulwith--a5c2dc4ec456d9c445a8b4f9.md) | 253 | `result-track:a5c2dc4ec456d9c445a8b4f91eec07a0971d1e1a0831668b003962489c50c684` |
| 21 | `theorem` | [thetaLB_succ](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetalb-succ--e8437447f15a1fa599767393.md) | 263 | `result-track:e8437447f15a1fa5997673932b2a89de6dfcfa3f4f73cf18e28b51508db586ad` |
| 22 | `theorem` | [thetaLB_eq_acc](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/thetalb-eq-acc--b825dc04bf53f9b75da499d3.md) | 273 | `result-track:b825dc04bf53f9b75da499d3ff2968bafc54f54cf9a71f67b6c7fe14835c1973` |
| 23 | `def` | [checkAllThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetaabserror--61fc1c799a8713a702576b91.md) | 283 | `declaration-track:61fc1c799a8713a702576b91bf280a30271db9b5ea1c53b45a718ad148f08c07` |
| 24 | `def` | [go_true_implies_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/go-true-implies-checkthetaabserror--f1ac76c3f1c28a120bbbb280.md) | 299 | `declaration-track:f1ac76c3f1c28a120bbbb280e98c410a61a1f529bf0b8f3eab17b6773bcb8ee0` |
| 25 | `theorem` | [checkAllThetaAbsError_implies_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetaabserror-implies-checkthetaabserror--14a3f12822caec80e6164afa.md) | 346 | `result-track:14a3f12822caec80e6164afa006b6fb5bdfc31515f13896e47f196592d8598b5` |
| 26 | `def` | [checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkthetarelerror--f77aa3beebc9ff98e62eecdd.md) | 360 | `declaration-track:f77aa3beebc9ff98e62eecdd2d91be4b71de73e6814e3afaa5d5afe9a1429963` |
| 27 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/abs-theta-sub-le-mul-of-checkthetarelerror--992705acd197d49a7ad0771b.md) | 365 | `result-track:992705acd197d49a7ad0771b662e2e63c0390160c6418a4578ce25ab888454c0` |
| 28 | `def` | [checkAllThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetarelerror--46d14fac593bbbd8833a1160.md) | 392 | `declaration-track:46d14fac593bbbd8833a1160f0146763ae3d7472446125c92877fd5a51798fc6` |
| 29 | `def` | [go_true_implies_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/go-true-implies-checkthetarelerror--0071968c23360984e3742acd.md) | 411 | `declaration-track:0071968c23360984e3742acdfa879a7cdae12c07010814ed27365b1039f1967f` |
| 30 | `theorem` | [checkAllThetaRelError_implies_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetarelerror-implies-checkthetarelerror--ca54336aa0a451c6292d0f00.md) | 474 | `result-track:ca54336aa0a451c6292d0f00f763d0481a5deb8ef186d1ac01d26288b23a25b9` |
| 31 | `def` | [checkThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkthetarelerrorreal--6a0fd26cfb15385bccf375b7.md) | 494 | `declaration-track:6a0fd26cfb15385bccf375b78cefa53f2624aef077985359f0b40181a997ab6b` |
| 32 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/abs-theta-sub-le-mul-of-checkthetarelerrorreal--46436e422959c9b73ec73295.md) | 500 | `result-track:46436e422959c9b73ec732951949af1f096e09f502b7bbd4648c6605c63d066f` |
| 33 | `def` | [checkAllThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetarelerrorreal--9fb4c3f64b13bfce92298c8d.md) | 540 | `declaration-track:9fb4c3f64b13bfce92298c8de032df9d7a355dbaa9fac6d5f577b8f5fdcdbdd3` |
| 34 | `def` | [go_true_implies_checkAllThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/go-true-implies-checkallthetarelerrorreal--27a3d8b74aee07ab26abe557.md) | 563 | `declaration-track:27a3d8b74aee07ab26abe557df18da57787631f53d0c0ddedc443bbf2dc5f626` |
| 35 | `theorem` | [checkAllThetaRelErrorReal_implies](../../../../mathematics/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/declarations/checkallthetarelerrorreal-implies--801f535af4135b518f82ed4c.md) | 635 | `result-track:801f535af4135b518f82ed4c89aa237b545bd4f5e7aa86cd566f168535f1f46c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
