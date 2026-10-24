# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32244f4b2a2aaa7fcae8315e45545274c7e3ebf6",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32244f4b2a2aaa7fcae8315e45545274c7e3ebf6`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean.json)

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
| 1 | `lemma` | [fst_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/fst-mem-orbit-of-mem-orbit--871a9a3057a21bf80a759769.md) | 51 | `result-track:871a9a3057a21bf80a7597695e556b379d05eda49bb6a07ecb8ebcc11b9fe1ed` |
| 2 | `lemma` | [snd_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/snd-mem-orbit-of-mem-orbit--b4edf5bb04b0258a06a27711.md) | 57 | `result-track:b4edf5bb04b0258a06a27711ad433d34b31e94fccf5da201dab7840e56132a6c` |
| 3 | `lemma` | [_root_.Finite.finite_mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/root-finite-finite-mulaction-orbit--45b1b836e56adad64d7e2472.md) | 63 | `result-track:45b1b836e56adad64d7e2472e43d7d4c487ff415bd1beec61273513134b192f8` |
| 4 | `theorem` | [orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/orbit-eq-univ--693bd475e0cd9c82c623a684.md) | 69 | `result-track:693bd475e0cd9c82c623a6849b9c8732d5d14dbb366c30980ebc28647ea41847` |
| 5 | `theorem` | [subsingleton_orbit_iff_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/subsingleton-orbit-iff-mem-fixedpoints--fc7cb676aab822972246b684.md) | 79 | `result-track:fc7cb676aab822972246b684357cfe81f5848c066efca292b6079a7b51655820` |
| 6 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one--acac879572974e9774b4bb83.md) | 88 | `result-track:acac879572974e9774b4bb83adb3d78e786be839a095e3e0caf7a8215d5c05f6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/instance--18a4dfe59ed845d2f3000084.md) | 95 | `declaration-track:18a4dfe59ed845d2f30000841e629e199d9e55a3f3ca12fd2989b4d8b024cfff` |
| 8 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/smul-cancel-of-non-zero-divisor--8f66ec4726647f8d5aaa01b5.md) | 107 | `result-track:8f66ec4726647f8d5aaa01b5a2384cdfec409fbffadb69827abda3a18ebe9d42` |
| 9 | `theorem` | [fixedPoints_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/fixedpoints-of-subsingleton--41bd8c9d609b8ef9d275d3c8.md) | 117 | `result-track:41bd8c9d609b8ef9d275d3c868c2687f4eef67b202ec910b94f912467fba7882` |
| 10 | `theorem` | [nontrivial_of_fixedPoints_ne_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/nontrivial-of-fixedpoints-ne-univ--054d4d697e624380c7c287fe.md) | 126 | `result-track:054d4d697e624380c7c287fef4ac675e28db8bd9dd759d956dcd152c77801188` |
| 11 | `theorem` | [smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/smul-orbit--0b69124f80e14a60e707a9c4.md) | 135 | `result-track:0b69124f80e14a60e707a9c49c9b9c2213142f528132fa4965830883aa13f98c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/instance--b3030d6b8185b6901cd96d07.md) | 143 | `declaration-track:b3030d6b8185b6901cd96d075eef13e8c7e87b550310343d9455b4b255d2a7cd` |
| 13 | `lemma` | [orbitRel_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/orbitrel-subgroup-le--e816af003ad11a7039debb82.md) | 151 | `result-track:e816af003ad11a7039debb821922f1eeac4f4e72e18854408c22cede2adb7cce` |
| 14 | `lemma` | [orbitRel_subgroupOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/orbitrel-subgroupof--759efeedda701c8a7d96b378.md) | 155 | `result-track:759efeedda701c8a7d96b378a7f376ddd6b1680a09effffc9975f686e5545617` |
| 15 | `theorem` | [pretransitive_iff_subsingleton_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/pretransitive-iff-subsingleton-quotient--1093dcce24746f7d0ff24870.md) | 179 | `result-track:1093dcce24746f7d0ff24870febf9e1dfdef7504bbfa975e8cfc2cbc72c1fdeb` |
| 16 | `theorem` | [pretransitive_iff_unique_quotient_of_nonempty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/pretransitive-iff-unique-quotient-of-nonempty--19962cdeb42e559cda8d2f82.md) | 191 | `result-track:19962cdeb42e559cda8d2f82572283d956f4acf77539590bf1960b51086c9ea9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/instance--ae0b9b5c72d7e13839986c85.md) | 200 | `declaration-track:ae0b9b5c72d7e13839986c85f71044709b18c32d0cbdbd838c56265844b480c9` |
| 18 | `lemma` | [_root_.Finite.of_finite_mulAction_orbitRel_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/root-finite-of-finite-mulaction-orbitrel-quotient--eea6848332c37db6a3a4b6cb.md) | 216 | `result-track:eea6848332c37db6a3a4b6cbeb996080faa75296829dded27bf5bc0cada59bb1` |
| 19 | `lemma` | [orbitRel_le_fst](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/orbitrel-le-fst--4300a5e0d8de6e8b81a9e396.md) | 227 | `result-track:4300a5e0d8de6e8b81a9e3965da62e73362bd75a1f7e22ca28c56565c235ba85` |
| 20 | `lemma` | [orbitRel_le_snd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/orbitrel-le-snd--9cb624a59a503b1b511d4b86.md) | 232 | `result-track:9cb624a59a503b1b511d4b86956b1d6babc30c5ccec94d584e31a907a68eacb8` |
| 21 | `lemma` | [_root_.IsCancelSMul.stabilizer_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/root-iscancelsmul-stabilizer-eq-bot--1ad0857d79acc8cfe8a683be.md) | 241 | `result-track:1ad0857d79acc8cfe8a683be6f2f483653be0ae49c0bc2bc623fef0848ff5877` |
| 22 | `lemma` | [_root_.isCancelSMul_iff_stabilizer_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/root-iscancelsmul-iff-stabilizer-eq-bot--fafcf47e9bd6ca08868d5b0d.md) | 246 | `result-track:fafcf47e9bd6ca08868d5b0da1575eb75fb527f0bd71af59368feb2730b55984` |
| 23 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj--6b063f24f9fe483f0084064f.md) | 252 | `result-track:6b063f24f9fe483f0084064f2285b1ccc5afe203640ee7216cbd6d4c43e1aa46` |
| 24 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer--d457a8de1c03958c06d58ce1.md) | 262 | `declaration-track:d457a8de1c03958c06d58ce122c46df6bad44a8af3e193829e25ecfcfae00cb3` |
| 25 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-apply--6facdf2be4ef3a60f55e7407.md) | 268 | `result-track:6facdf2be4ef3a60f55e74077abe66c2edb4c417577ccb2da1e90a66365f1042` |
| 26 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-symm-apply--f7965832866a8cc2f57c64d9.md) | 273 | `result-track:f7965832866a8cc2f57c64d92f6c18853a2b124ce37952cc81e03425cea91333` |
| 27 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-trans--3bef5ca82f7df9478aafbf3f.md) | 278 | `result-track:3bef5ca82f7df9478aafbf3f6af36b42f0e5dcd0e43f37461ffe44f8a182d2d7` |
| 28 | `theorem` | [stabilizerEquivStabilizer_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-one--1018ee0caa13aca00153f627.md) | 285 | `result-track:1018ee0caa13aca00153f627f6e214daf012af4b8f9ac8f6c0956ca6d0a856cc` |
| 29 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-symm--20c99efbcb8627ec8dae5e57.md) | 290 | `result-track:20c99efbcb8627ec8dae5e578bae97c7a592852faf5918e7f5eaa9be41ac0842` |
| 30 | `theorem` | [stabilizerEquivStabilizer_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizer-inv--8775d4e455aba48e43594531.md) | 296 | `result-track:8775d4e455aba48e4359453128293e8bb042828f1eeffca4141961635b155a79` |
| 31 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/stabilizerequivstabilizeroforbitrel--e06f09188b0fe9ac6b2d51ec.md) | 303 | `declaration-track:e06f09188b0fe9ac6b2d51ec3ecb03ac51fd1892ff9552c97fd25dee6e88f1e7` |
| 32 | `theorem` | [Equiv.swap_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/equiv-swap-mem-stabilizer--37569832c0ffae1a1c3f4483.md) | 318 | `result-track:37569832c0ffae1a1c3f44835a3f2e1682437315baf078c39aa9a0244d41d31c` |
| 33 | `theorem` | [le_stabilizer_iff_smul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/le-stabilizer-iff-smul-le--5fcea0ce57ba6edd179e405a.md) | 331 | `result-track:5fcea0ce57ba6edd179e405af9671143560f37ed9a059fff648d5d7ba8b712e6` |
| 34 | `lemma` | [Module.stabilizer_units_eq_bot_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/module-stabilizer-units-eq-bot-of-ne-zero--02b451f217312a7b9be43e9c.md) | 354 | `result-track:02b451f217312a7b9be43e9c2095eb8105bee7326b3e9eb95a398c9a7c786c6e` |
| 35 | `lemma` | [Multiplicative.mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/multiplicative-mulaction-orbit--f845e79aa2be190d9939c19f.md) | 363 | `result-track:f845e79aa2be190d9939c19f9d2fa82c6512eba3b3b0b01d29dfdc59d8ec9c0d` |
| 36 | `lemma` | [Additive.mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.lean/declarations/additive-mulaction-orbit--43485b09608e36be05714014.md) | 367 | `result-track:43485b09608e36be05714014ba6f94da0770939a1ee2bcf754501e3d0a0f77a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
