# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ecefb73a94c58895a5f894998e4e521b7ee834d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ecefb73a94c58895a5f894998e4e521b7ee834d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean.json)

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
| 1 | `lemma` | [norm_aux](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-aux--2db663e552b3bc50e35f9c83.md) | 110 | `result-track:2db663e552b3bc50e35f9c83746b20d94bc5ce3204f8109642db438228218d62` |
| 2 | `def` | [groupSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/groupseminorm--9ecf4ef283bf620a0d9c8631.md) | 117 | `declaration-track:9ecf4ef283bf620a0d9c86318d491f3c1850d92bc8523f8e459ce35dc183e51e` |
| 3 | `instance` | [instNorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/instnorm--cbbe4254279431b85abe1632.md) | 137 | `declaration-track:cbbe4254279431b85abe163240a867cf886b61a96b5e84556811c3f248b8fc72` |
| 4 | `lemma` | [norm_eq_groupSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-eq-groupseminorm--e2ea459424792072cc6d789f.md) | 140 | `result-track:e2ea459424792072cc6d789f8409b36c2b31179b284bf65326ca38beefc86d7b` |
| 5 | `lemma` | [norm_eq_infDist](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-eq-infdist--2003b67d943e7fb421ff271c.md) | 143 | `result-track:2003b67d943e7fb421ff271c9fc765cca464eb780b561e2e0c0b4495e0adf59c` |
| 6 | `lemma` | [le_norm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/le-norm-iff--1a823afe9a2ad420e1760063.md) | 146 | `result-track:1a823afe9a2ad420e176006392feebc6a909ad6dc1e8e905a67ef613f3a4b7ba` |
| 7 | `lemma` | [norm_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-lt-iff--fedb1357ae7b7a3272ddfd88.md) | 150 | `result-track:fedb1357ae7b7a3272ddfd8861a5029e9dcd1032c79fce2a655eaeb0f0f6cd9f` |
| 8 | `lemma` | [nhds_one_hasBasis](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/nhds-one-hasbasis--1906e2faa788e04e41f458ef.md) | 154 | `result-track:1906e2faa788e04e41f458ef8becbead24466b694ac1016efb391105525ddf8c` |
| 9 | `lemma` | [norm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-mk--52bc9d62e59f5035861e7026.md) | 167 | `result-track:52bc9d62e59f5035861e70264957c02008d9c514e636498a70c35c81461fb0ac` |
| 10 | `lemma` | [norm_mk_le_norm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-mk-le-norm--9aefe097693139c3f5626aec.md) | 175 | `result-track:9aefe097693139c3f5626aec846810091f59d3cbd138f0ced8ea0e041e542f0e` |
| 11 | `lemma` | [norm_mk_eq_zero_iff_mem_closure](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-mk-eq-zero-iff-mem-closure--9114dc332b5e7b3920b84df7.md) | 182 | `result-track:9114dc332b5e7b3920b84df771b2dc2e0878b01675fc6c5837f72c692b079a23` |
| 12 | `lemma` | [norm_mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-mk-eq-zero--418f764271c86d746f4d2b0f.md) | 190 | `result-track:418f764271c86d746f4d2b0f8e6ad3ea83695b58b50b4ac13a9b20145a6061db` |
| 13 | `lemma` | [exists_norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/exists-norm-mk-lt--138dd6c5780c8db7775aed71.md) | 197 | `result-track:138dd6c5780c8db7775aed711cab73cf48df1bf4b64279bd920fd7f0bdc1acfe` |
| 14 | `lemma` | [exists_norm_mul_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/exists-norm-mul-lt--170bc6d4c1fc34cc3031d5f6.md) | 203 | `result-track:170bc6d4c1fc34cc3031d5f657ac92788a19ca5ba1978d8a20e240ef89f35525` |
| 15 | `instance` | [instSeminormedCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/instseminormedcommgroup--9f8d3926d0b8146d13883919.md) | 211 | `declaration-track:9f8d3926d0b8146d138839196815b6331339e27877ed1183d38d4d288b30b41d` |
| 16 | `instance` | [instNormedCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/instnormedcommgroup--9afc38cf169c251435ba33e3.md) | 221 | `declaration-track:9afc38cf169c251435ba33e363992937b91f5756f68605ef1f60ce3f047cd02c` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/example--f180523d4f26183b3338beae.md) | 227 | `declaration-track:f180523d4f26183b3338beae2f3646808690247ebc909ac86ca8dfe7f783febe` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/example--2494c1bf09e899073f15bb07.md) | 231 | `declaration-track:2494c1bf09e899073f15bb07acbd92733979164c84f41643154ecaccb0e2780a` |
| 19 | `def` | [_root_.Subgroup.quotientIsometryEquivOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/root-subgroup-quotientisometryequivofeq--949f31be3d13cc83f8ba228e.md) | 236 | `declaration-track:949f31be3d13cc83f8ba228eef54694b06b39c3d64325f094fa45e23833ec321` |
| 20 | `def` | [quotientBotIsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/quotientbotisometryequiv--a50a73c4ef1b809faaad9d48.md) | 242 | `declaration-track:a50a73c4ef1b809faaad9d489e49c5606bf4d481db4d48bc9af95cbee09aa3eb` |
| 21 | `def` | [quotientQuotientIsometryEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/quotientquotientisometryequivquotient--5cea70e86afb7fb10b6098c0.md) | 252 | `declaration-track:5cea70e86afb7fb10b6098c0d754a939a1337df30ccd438a1061ad3541236a9c` |
| 22 | `theorem` | [quotient_norm_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/quotient-norm-mk-eq--145dcf1704dec353c8a04bc9.md) | 269 | `result-track:145dcf1704dec353c8a04bc950d299d10120e85fb40e3dbed23bc94f8fd3814c` |
| 23 | `theorem` | [quotient_norm_add_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/quotient-norm-add-le--aede932d414b4bc186efbf11.md) | 276 | `result-track:aede932d414b4bc186efbf11ae85ead7e62b7ed0ff9b5ced327ce26b8b870a0a` |
| 24 | `def` | [normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/normedmk--d4085088b49be0406e7248f2.md) | 284 | `declaration-track:d4085088b49be0406e7248f22f7276a9491e21de366a485bfdee7ae33584979f` |
| 25 | `theorem` | [normedMk.apply](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/normedmk-apply--82a7bea796e9fdd2c4e2e7f6.md) | 290 | `result-track:82a7bea796e9fdd2c4e2e7f666170b1361b5c10fe60f2241ce3d4112c41e929d` |
| 26 | `theorem` | [surjective_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/surjective-normedmk--ad9f5b6e886de0531ee6924a.md) | 294 | `result-track:ad9f5b6e886de0531ee6924ab435943aa4bb43091b31b06fbc04d934770b5f9c` |
| 27 | `theorem` | [ker_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ker-normedmk--52fa5d7178b9689c1b2be024.md) | 298 | `result-track:52fa5d7178b9689c1b2be02453f8b6f1700c2f23afe95ec01de794f994e60fa8` |
| 28 | `theorem` | [norm_normedMk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-normedmk-le--429006c8f5e62201d14475d2.md) | 302 | `result-track:429006c8f5e62201d14475d2289e56f1ce596a9aae820454269275d44522d8b3` |
| 29 | `theorem` | [_root_.QuotientAddGroup.norm_lift_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/root-quotientaddgroup-norm-lift-apply-le--a1670bfc41bf3a5ef8fba831.md) | 306 | `result-track:a1670bfc41bf3a5ef8fba831eac88b2690902b6838c9a849ab248c3f52fc35e6` |
| 30 | `theorem` | [norm_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-normedmk--c60f95702e405fa67f8106fa.md) | 318 | `result-track:c60f95702e405fa67f8106fa18cf4c8afb2030fc1cec792007a8690ce93e989d` |
| 31 | `theorem` | [norm_trivial_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-trivial-quotient-mk--420cf22d279391d73dad0410.md) | 328 | `result-track:420cf22d279391d73dad0410c178c10ccb856f78193fd8059a450fe72e3a2d5e` |
| 32 | `structure` | [IsQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/isquotient--2e85fe00aec9ce9a28438a78.md) | 343 | `declaration-track:2e85fe00aec9ce9a28438a7848173c9d70ea458fef31c416e4aa08a6f86f90dd` |
| 33 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/lift--7a744a20cbc377c8f8e9db13.md) | 349 | `declaration-track:7a744a20cbc377c8f8e9db139ca382c350fd2f0c910b642e587f22638162f260` |
| 34 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/lift-mk--830213bd0d31147f8337f1a5.md) | 354 | `result-track:830213bd0d31147f8337f1a5e797fdcac9911de7420637ad28107e99be14b93b` |
| 35 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/lift-unique--f09d1637f052083ada227550.md) | 359 | `result-track:f09d1637f052083ada227550b4394a3d2a40aafe06d1f7a940b9494b7eabdad6` |
| 36 | `theorem` | [isQuotientQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/isquotientquotient--fe5b029d8b3a3a25265fc8e4.md) | 369 | `result-track:fe5b029d8b3a3a25265fc8e4ce30521e5bfb4a16a18c33b92ca8cb6cdb55646e` |
| 37 | `theorem` | [IsQuotient.norm_lift](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/isquotient-norm-lift--ec19b0e91dc501e784fd7d43.md) | 372 | `result-track:ec19b0e91dc501e784fd7d438141d9cbd11f417d344c4e95bb6830f64d78ead1` |
| 38 | `theorem` | [IsQuotient.norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/isquotient-norm-le--71fa5ea912b1dc5726797d2a.md) | 383 | `result-track:71fa5ea912b1dc5726797d2af7e46f7286303d310edcd6f3b8aff410351d2194` |
| 39 | `theorem` | [norm_lift_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/norm-lift-le--7307070cb4c790a3d875136c.md) | 392 | `result-track:7307070cb4c790a3d875136c5771b48673413dfa2f20a5d1e02272516a16b8a0` |
| 40 | `theorem` | [lift_norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/lift-norm-le--5c32d2acc091e7167497e7fa.md) | 398 | `result-track:5c32d2acc091e7167497e7fa97902f9c1aa8e64914ae7be6781ebcbc0bf52a8a` |
| 41 | `theorem` | [lift_normNoninc](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/lift-normnoninc--196a65e34bd7988ea6cac863.md) | 403 | `result-track:196a65e34bd7988ea6cac86333900c5dc439c2c4b9bad983acb47940ba7220ea` |
| 42 | `instance` | [Submodule.Quotient.seminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-seminormedaddcommgroup--a4b8a203770f8e921e5a9ea3.md) | 429 | `declaration-track:a4b8a203770f8e921e5a9ea30c0a78109b7f1d621a66b4395e5aa0e5bd50cf2b` |
| 43 | `instance` | [Submodule.Quotient.normedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-normedaddcommgroup--ecfe8ae8d1027b250faabc2e.md) | 432 | `declaration-track:ecfe8ae8d1027b250faabc2ea7b1db182fcb60ee20a9f9d7346356f7b41e0a34` |
| 44 | `instance` | [Submodule.Quotient.completeSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-completespace--7e09ba6f20a8728aae12d548.md) | 436 | `declaration-track:7e09ba6f20a8728aae12d5481ac6d7e376208fbfbe9b86bc1e15dca199b69c39` |
| 45 | `theorem` | [Submodule.Quotient.norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-norm-mk-lt--a0ca811f6d9d32b0ea3c091a.md) | 441 | `result-track:a0ca811f6d9d32b0ea3c091ac10b5d6b94b04e24ba811adec2ff5868e762d696` |
| 46 | `theorem` | [Submodule.Quotient.norm_mk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-norm-mk-le--20c156b1363bed892c60ee79.md) | 445 | `result-track:20c156b1363bed892c60ee79e2cf5ca67397432639b7ad57504fdb69ccedaa80` |
| 47 | `instance` | [Submodule.Quotient.instIsBoundedSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-instisboundedsmul--f2cf3c97697865344b1d57fd.md) | 448 | `declaration-track:f2cf3c97697865344b1d57fd9fb4352ff56316b5824b6f9d077e73d8b25b0f56` |
| 48 | `instance` | [Submodule.Quotient.normedSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotient-normedspace--1a081a2a3ba13eb7d813b68c.md) | 465 | `declaration-track:1a081a2a3ba13eb7d813b68c2afd4885a5effc45a2ed0c74fb8d571dff8fdb05` |
| 49 | `def` | [Submodule.quotLIEOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotlieofeq--fa9f7bc6723c8999d8c85f89.md) | 470 | `declaration-track:fa9f7bc6723c8999d8c85f8916b7af6711147d57c5e9dab3d648995e41a4f3f4` |
| 50 | `def` | [Submodule.quotientQuotientLIEQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotientquotientliequotient--825af8f7516e4ed40eeb0739.md) | 475 | `declaration-track:825af8f7516e4ed40eeb0739a48069740a1c31363c1d8ce537eb31904965b023` |
| 51 | `def` | [Submodule.quotientQuotientLIEQuotientSup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/submodule-quotientquotientliequotientsup--9c4ff5f6e467e49da6938c18.md) | 483 | `declaration-track:9c4ff5f6e467e49da6938c18b3aceece8154dcaa4341fce38c0e4fa5117cadfb` |
| 52 | `theorem` | [Ideal.Quotient.norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ideal-quotient-norm-mk-lt--259411f7daa4958b29341c92.md) | 492 | `result-track:259411f7daa4958b29341c92b147c1639eb463bb12d36584c6ffb560803fa4f0` |
| 53 | `theorem` | [Ideal.Quotient.norm_mk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ideal-quotient-norm-mk-le--33ad72bfac0c86e1ea9e3a6b.md) | 496 | `result-track:33ad72bfac0c86e1ea9e3a6b26d081522bcef52d746e4fc8c0e2bb78dd9fd726` |
| 54 | `instance` | [Ideal.Quotient.semiNormedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ideal-quotient-seminormedcommring--98158927df758e8eaf5f41c2.md) | 498 | `declaration-track:98158927df758e8eaf5f41c205a1f9fe54db6abdf744c80d575f66fd9ce3aeab` |
| 55 | `instance` | [Ideal.Quotient.normedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ideal-quotient-normedcommring--472ba718856dda388f295053.md) | 515 | `declaration-track:472ba718856dda388f295053e3586aaca1afcfd2faa38bba598ae366b93d7bf8` |
| 56 | `instance` | [Ideal.Quotient.normedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/declarations/ideal-quotient-normedalgebra--90c05d9c6f1ac6f2c5213891.md) | 520 | `declaration-track:90c05d9c6f1ac6f2c521389146a62b156e73d506e053f0af11915ccbe491d2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
