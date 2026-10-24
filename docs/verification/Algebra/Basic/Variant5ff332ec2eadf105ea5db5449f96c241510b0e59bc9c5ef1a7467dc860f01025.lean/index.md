# Verification target: GRWTSK.Algebra.Basic.Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9060ec828221e53864e9d560060c48d71bdbb72d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9060ec828221e53864e9d560060c48d71bdbb72d`.

Source path: `GRWTSK/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulleft--bab66a2a41b4500fa97591ba.md) | 37 | `declaration-track:bab66a2a41b4500fa97591ba946e06487dc31d1b5880d8c05a116f613b01bc77` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright--d13d16490ba641ec5a5cda5e.md) | 43 | `declaration-track:d13d16490ba641ec5a5cda5ed55dc381052d8d6700b0bcd4ef40727aee05c65e` |
| 3 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulleft--2fc89ca2afca9a9c591a588f.md) | 53 | `declaration-track:2fc89ca2afca9a9c591a588f98c4e8044dc5fce62240d83a329928642f83fd80` |
| 4 | `lemma` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/coe-mulleft--d4bc7a3856f4d9b51aa1746a.md) | 58 | `result-track:d4bc7a3856f4d9b51aa1746abbeafbee73329ff15b32f61639c378c5364865f1` |
| 5 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright--5eec8b4bf2b9dcbf6c01cf6f.md) | 61 | `declaration-track:5eec8b4bf2b9dcbf6c01cf6f7c57e60756db795219e0df1d9466c37c432eefc1` |
| 6 | `lemma` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/coe-mulright--7b63536f3714062d3b7409d9.md) | 66 | `result-track:7b63536f3714062d3b7409d9eed5f0c0d08589a37ba73aa9f6c3800fe6584e4f` |
| 7 | `lemma` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright-apply--3cf0f654130d928f8f78d83c.md) | 68 | `result-track:3cf0f654130d928f8f78d83cafcedce630e58c6b49a04c1b02441d381e9fa96f` |
| 8 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mul--2f204cb0f646295f75914ad6.md) | 77 | `declaration-track:2f204cb0f646295f75914ad6de03e3bad6ae361dc7d3145d6b660696220f74f3` |
| 9 | `lemma` | [mul_apply](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mul-apply--c565524d774fa7af7e4f69ed.md) | 82 | `result-track:c565524d774fa7af7e4f69ed4eaffb49946226cbcda5ce769d8ed6948a99e7cc` |
| 10 | `lemma` | [coe_mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/coe-mul--11ed3b36434259948e3f3cf7.md) | 84 | `result-track:11ed3b36434259948e3f3cf7655014b384c2c08d46ec83111c4bbb9db1d64883` |
| 11 | `lemma` | [coe_flip_mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/coe-flip-mul--afcd2b89325292200589f975.md) | 85 | `result-track:afcd2b89325292200589f9759558b27bb755fc0696cf836d73fe87cd6234f7b2` |
| 12 | `lemma` | [map_mul_iff](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/map-mul-iff--250609e5a255b183c695a8e9.md) | 91 | `result-track:250609e5a255b183c695a8e9f51ed8f8b74372e325ccfa5ea3217c4c1eb1a1f7` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulleft-eq-mulright-iff-forall-commute--8a2cfc24aa6d92c8d207c6c2.md) | 95 | `result-track:8a2cfc24aa6d92c8d207c6c2a69db0223ae4eef2e2a05b4b13f9237772318835` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright-eq-mulleft-iff-forall-commute--6401d34826938e31ecc4c531.md) | 98 | `result-track:6401d34826938e31ecc4c53191fe40b84eff3903932a2605dc09a6210d24d417` |
| 15 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulleft--8debe7cd5e9573e03613ac94.md) | 109 | `declaration-track:8debe7cd5e9573e03613ac94ed7b737d84a6982851c6db580ab16785c52aefe8` |
| 16 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright--723d4309c8ac319e653f8b9b.md) | 113 | `declaration-track:723d4309c8ac319e653f8b9b1d9e69bbba8ad5ff6c046a5297c3b327fd8707cd` |
| 17 | `lemma` | [mulRight_eq_mulLeft](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulright-eq-mulleft--827b6b06f18af8a5d63850a0.md) | 120 | `result-track:827b6b06f18af8a5d63850a0d3732fec1aaedc760624c40e55e61fe40bf73778` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/mulopposite-insthasdistribneg--4fceb2101db34c8001085b62.md) | 135 | `declaration-track:4fceb2101db34c8001085b621dff840e3e5bd920c0519edcdecc82e8c931c320` |
| 19 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/vieta-formula-quadratic--7ecf29f9208aae7e48bd2653.md) | 153 | `result-track:7ecf29f9208aae7e48bd2653972d8ced4aa52a6f351e268b29f56e783a788623` |
| 20 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/succ-ne-self--35408a53c3d58f3cec52f397.md) | 161 | `result-track:35408a53c3d58f3cec52f39794d52285033081ba220ef4084d5ddf107763f326` |
| 21 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/pred-ne-self--ac8f06de1211d692ab12c0fd.md) | 164 | `result-track:ac8f06de1211d692ab12c0fd6d3a67cbb223444fe07febb4732071d4a2931924` |
| 22 | `lemma` | [isLeftRegular_iff_right_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isleftregular-iff-right-eq-zero-of-mul--242153b7d79df9f2d878aefc.md) | 175 | `result-track:242153b7d79df9f2d878aefc1a8f7131e7156bae76f16ab9933fa37aaed2c3bd` |
| 23 | `lemma` | [isRightRegular_iff_left_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isrightregular-iff-left-eq-zero-of-mul--1c975a5047777ee182313fc8.md) | 179 | `result-track:1c975a5047777ee182313fc86115267cd3e7daf494097f8c10b6727ebb0db075` |
| 24 | `lemma` | [isRegular_iff_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isregular-iff-eq-zero-of-mul--23c61588daf1bac4d9a8469e.md) | 183 | `result-track:23c61588daf1bac4d9a8469e5e587df08d954ec5d5ecebf3081fd8a9a7cb508d` |
| 25 | `lemma` | [noZeroDivisors_tfae](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/nozerodivisors-tfae--d2cbb12b4476b29897bc3687.md) | 190 | `result-track:d2cbb12b4476b29897bc36878e359638b0901c152ebe2fe07171793fde8c8f01` |
| 26 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/iscancelmulzero-iff-nozerodivisors--b5bf74d654d41261d6d5db40.md) | 201 | `result-track:b5bf74d654d41261d6d5db405b588dfa78c67607b7a495635ce1358025522f99` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/instance--7c863059a9e143c3ee641f83.md) | 205 | `declaration-track:7c863059a9e143c3ee641f83ed0aadb2b19c04d826563a0abed51ac1dac52faa` |
| 28 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/nozerodivisors-to-isdomain--a4c248d7a47a954d8f8f8ca2.md) | 211 | `result-track:a4c248d7a47a954d8f8f8ca242f646861dcbf83a4d5c68aa536ab4bc668df84b` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/instance--3618045a1dded0e128f56d04.md) | 215 | `declaration-track:3618045a1dded0e128f56d048e917b4519a714168410066514b41b73ceb71e8e` |
| 30 | `instance` | [Subsingleton.to_isCancelMulZero](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/subsingleton-to-iscancelmulzero--fb8ec3022df9d33196a62031.md) | 219 | `declaration-track:fb8ec3022df9d33196a620310de8dcd0902bf262a8eb4f2dd5405f432fa7f06e` |
| 31 | `lemma` | [Subsingleton.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/subsingleton-to-nozerodivisors--bc3115b7e408210369a9114d.md) | 226 | `result-track:bc3115b7e408210369a9114d91462756f483d9f1c04f167a104ba4df0d3d6170` |
| 32 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isdomain-iff-cancelmulzero-and-nontrivial--6136210305446cc7a6b3a60c.md) | 231 | `result-track:6136210305446cc7a6b3a60c250d95d708d280244d8c4cbb7f8bfad56ee02569` |
| 33 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/iscancelmulzero-iff-isdomain-or-subsingleton--7597aba8008d99d497bb56e4.md) | 235 | `result-track:7597aba8008d99d497bb56e4e1c6c7a8d5bbb68ad0f13b9cdd6ffd8d3f978a92` |
| 34 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isdomain-iff-nozerodivisors-and-nontrivial--34acccba6f062103b2207a73.md) | 241 | `result-track:34acccba6f062103b2207a73d14fe2fb71831f71812c50e68aead36df63d857c` |
| 35 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/nozerodivisors-iff-isdomain-or-subsingleton--4a6c38dde98dc5af52921f52.md) | 245 | `result-track:4a6c38dde98dc5af52921f522985af9d0364dd489d3e61c77e491ca0707d3dfe` |
| 36 | `lemma` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/one-div-neg-one-eq-neg-one--743f42b48a91a73f094e29bf.md) | 254 | `result-track:743f42b48a91a73f094e29bf772e418c5b93c903386eafc3fb5b4b781a8fee5c` |
| 37 | `lemma` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/one-div-neg-eq-neg-one-div--be314fe6ce697d9482f94e52.md) | 258 | `result-track:be314fe6ce697d9482f94e52b0e7bfbeb634190077fb9cdb097376dfc49b1fab` |
| 38 | `lemma` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/div-neg-eq-neg-div--c830fbfd6a2d0a866f6bf854.md) | 265 | `result-track:c830fbfd6a2d0a866f6bf854d144de4109cda8fdd3e22df0727f2f9a71e482a2` |
| 39 | `lemma` | [neg_div](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/neg-div--ad44beb12cf34417c0fddaa5.md) | 272 | `result-track:ad44beb12cf34417c0fddaa53ff055c7cf9ae516fab1640b0c8ec007e866bcd0` |
| 40 | `lemma` | [neg_div'](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/neg-div--16d58c14394e2025a155882a.md) | 275 | `result-track:16d58c14394e2025a155882ac5ab6ec44adc0ab50baa4cca37ca502b90ad94f1` |
| 41 | `lemma` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/neg-div-neg-eq--11861c8ac0337fc46d8d0725.md) | 278 | `result-track:11861c8ac0337fc46d8d07252ba31ef838de038b06da36bae89a10b9704854f8` |
| 42 | `lemma` | [neg_inv](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/neg-inv--37a23cbd5d81510dba0737ca.md) | 280 | `result-track:37a23cbd5d81510dba0737caa144dfa93306a06dcacf8c724b919d8631e1fa48` |
| 43 | `lemma` | [div_neg](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/div-neg--a61bf7dca2b2c6965a56c97a.md) | 282 | `result-track:a61bf7dca2b2c6965a56c97a62f47f27d496e88afe79f01d5388ece145f869c1` |
| 44 | `lemma` | [div_neg_eq_neg_div'](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/div-neg-eq-neg-div--b84fab27750d5cfbd5b458f5.md) | 284 | `result-track:b84fab27750d5cfbd5b458f53f80e0cb458a8b1cfe3d087b081a1e14fdb2111d` |
| 45 | `lemma` | [inv_neg](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/inv-neg--bc4932d63b533eb86516bd1b.md) | 287 | `result-track:bc4932d63b533eb86516bd1b17e8cd1ac3d7b1d1ef9a7fbd9096ceceb5d95a24` |
| 46 | `lemma` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/inv-neg-one--251d1762c3880b47a5e5d2f5.md) | 289 | `result-track:251d1762c3880b47a5e5d2f57f8539b1ec47f46035135c7fad6c71f94b1d0de4` |
| 47 | `lemma` | [isSelfInv_neg_iff](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isselfinv-neg-iff--fb6857652f23982222cad0cc.md) | 292 | `result-track:fb6857652f23982222cad0cc8fe63fb8b681ca686819dab2856145351f02d9a8` |
| 48 | `lemma` | [isSelfNeg_inv_iff](../../../../mathematics/Algebra/Basic/Variant5ff332ec2eadf105ea5db5449f96c241510b0e59bc9c5ef1a7467dc860f01025.lean/declarations/isselfneg-inv-iff--978f5ad453a4a85fd718e541.md) | 298 | `result-track:978f5ad453a4a85fd718e5415ddcd03411a3a4cf236e8d37cccbb6cb56e104b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
