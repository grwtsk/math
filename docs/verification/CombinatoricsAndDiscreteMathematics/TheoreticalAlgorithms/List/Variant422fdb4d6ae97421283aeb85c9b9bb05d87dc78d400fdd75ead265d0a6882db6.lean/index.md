# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18e40f114c908757d2506ef7f9971779af2c5bd8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18e40f114c908757d2506ef7f9971779af2c5bd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean.json)

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
| 1 | `def` | [formPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm--ddd3c70bee23bb5cc805d6de.md) | 50 | `declaration-track:ddd3c70bee23bb5cc805d6de891fa05b7249861c5e20cab993fd38671fc909d3` |
| 2 | `theorem` | [formPerm_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-nil--c5084959147c09c36e136a8a.md) | 54 | `result-track:c5084959147c09c36e136a8ace4139800b4c86dd312c278a55087527d95c0fb2` |
| 3 | `theorem` | [formPerm_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-singleton--f1e0fd29a4ae20ef360d2bc3.md) | 58 | `result-track:f1e0fd29a4ae20ef360d2bc36e0b04bb0d41eca0bccaa9216e45dfa2f15ca40b` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-cons-cons--0f41531affb6c5ca1eed0987.md) | 62 | `result-track:0f41531affb6c5ca1eed09872f6cc9707f4033214582469edbaa7e3718ad144a` |
| 5 | `theorem` | [formPerm_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-pair--a134257517375fa94263d1cf.md) | 66 | `result-track:a134257517375fa94263d1cf73a5a1a664e9615f7b21a9dd7d44928cb6c2b938` |
| 6 | `theorem` | [mem_or_mem_of_zipWith_swap_prod_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/mem-or-mem-of-zipwith-swap-prod-ne--2540644e8a0f7c313bf856b6.md) | 69 | `result-track:2540644e8a0f7c313bf856b65190bee27832c444015b9f4e5b09747719c81220` |
| 7 | `theorem` | [zipWith_swap_prod_support'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/zipwith-swap-prod-support--9b146024bcdc527675418f1c.md) | 80 | `result-track:9b146024bcdc527675418f1c831287bd09c35f7516157af061fe433047074b3a` |
| 8 | `theorem` | [zipWith_swap_prod_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/zipwith-swap-prod-support--d47f05b2e0d5d3f63f5448d7.md) | 84 | `result-track:d47f05b2e0d5d3f63f5448d7caca107311936729abf7a652b681bd662ec3f138` |
| 9 | `theorem` | [support_formPerm_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/support-formperm-le--d55596ca7d4f01e08c5d22ed.md) | 90 | `result-track:d55596ca7d4f01e08c5d22ed7d5dd36713b7faf7071891f4de73c8a41def4ac4` |
| 10 | `theorem` | [support_formPerm_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/support-formperm-le--2aa71c0dc04523e8d7ce1843.md) | 94 | `result-track:2aa71c0dc04523e8d7ce184363f94733b470794d6c35c69db3b9c0bbe1f1ca97` |
| 11 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/mem-of-formperm-apply-ne--5eee8da7a64e5a99f3fc0749.md) | 101 | `result-track:5eee8da7a64e5a99f3fc07499a6255f86fe1996ca0f62c77e416cd3e6f920e86` |
| 12 | `theorem` | [formPerm_apply_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-of-notmem--cf8d1978695bf110b9710e76.md) | 104 | `result-track:cf8d1978695bf110b9710e764a7a512d86b01a74db2b990f3717321d8f0bd6d5` |
| 13 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-mem-of-mem--5d1405f44b68893348a12e7d.md) | 107 | `result-track:5d1405f44b68893348a12e7d1cb9b894e49693ca3018bf349051147854f1cf05` |
| 14 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/mem-of-formperm-apply-mem--feb13b4599ef6e28981d268b.md) | 122 | `result-track:feb13b4599ef6e28981d268be80c241d83c3bc07e3774ad122e0f854d52ae6a7` |
| 15 | `theorem` | [formPerm_mem_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-mem-iff-mem--3379928980faefab0d0b1af7.md) | 127 | `result-track:3379928980faefab0d0b1af75ac74245253c906549ab3e5cb28a85db84af6e23` |
| 16 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-cons-concat-apply-last--df06b5206a22952bd7ba6707.md) | 131 | `result-track:df06b5206a22952bd7ba6707e5209435ec56829a95e3a0f7357f645bf8d8c46a` |
| 17 | `theorem` | [formPerm_apply_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-getlast--358a06692fc79e7db99c69a9.md) | 138 | `result-track:358a06692fc79e7db99c69a9a2eef212b24e5b47b3be0e7d365e2587e8182c24` |
| 18 | `theorem` | [formPerm_apply_getElem_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-getelem-length--88637a54e6646b3da3fa1919.md) | 143 | `result-track:88637a54e6646b3da3fa1919833777b261686b4ada6fc618fda89e798b698084` |
| 19 | `theorem` | [formPerm_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-head--9a9ca15719d51e2e6e7dca17.md) | 147 | `result-track:9a9ca15719d51e2e6e7dca17268234af912fc786d4ab6d0dc5137b86d2429d47` |
| 20 | `theorem` | [formPerm_apply_getElem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-getelem-zero--24df59f25bbe12221013084c.md) | 150 | `result-track:24df59f25bbe12221013084c36cd2b6d07bc8f9e2e3d77d395ec52d1db2bfb91` |
| 21 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-eq-head-iff-eq-getlast--197ed7767bdba5ecef870e6b.md) | 159 | `result-track:197ed7767bdba5ecef870e6bb3a7b6fb338cc81417d7f4a6a3347a26c3ec8867` |
| 22 | `theorem` | [formPerm_apply_lt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-lt-getelem--5bd4fd0af6b9ec60dcd18fdb.md) | 163 | `result-track:5bd4fd0af6b9ec60dcd18fdb991bc441934d9b8dcfc1c123e2e3377c700eb793` |
| 23 | `theorem` | [formPerm_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-getelem--0a89a3d3905d9ee2e8a9d47c.md) | 180 | `result-track:0a89a3d3905d9ee2e8a9d47c1a52e43a08d76fc0f2cd6cd9b0538894a3d01515` |
| 24 | `theorem` | [support_formPerm_of_nodup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/support-formperm-of-nodup--73a920dc22b1bc5cff6570c6.md) | 194 | `result-track:73a920dc22b1bc5cff6570c656db63fb8cec0ba1ac69f357dc294b624cf42965` |
| 25 | `theorem` | [support_formPerm_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/support-formperm-of-nodup--2a3c965933ac9f63df780eba.md) | 211 | `result-track:2a3c965933ac9f63df780ebaea73a9de9ef055b31c1c8ea9bc1a6ccd334f3635` |
| 26 | `theorem` | [formPerm_rotate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-rotate-one--81c82dc4d9cfc74137a514c0.md) | 217 | `result-track:81c82dc4d9cfc74137a514c0286b31b21bdc62b4bbc2f7697022336708f0973d` |
| 27 | `theorem` | [formPerm_rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-rotate--ee70b071e48110674c62629f.md) | 227 | `result-track:ee70b071e48110674c62629f24deda6324f823b926ebaa88f1727c4dd8a51f94` |
| 28 | `theorem` | [formPerm_eq_of_isRotated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-eq-of-isrotated--aed61b573182f4f7fb489ccf.md) | 236 | `result-track:aed61b573182f4f7fb489ccff3d75fee53fddb26754d9c0fab23162a40bfa50d` |
| 29 | `theorem` | [formPerm_append_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-append-pair--58f6f352a4d5fc55a6181941.md) | 241 | `result-track:58f6f352a4d5fc55a6181941d1f3da6431a12c212ef911d843af2dba8af780e7` |
| 30 | `theorem` | [formPerm_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-reverse--d08f10094a8f8e7fa141ba92.md) | 248 | `result-track:d08f10094a8f8e7fa141ba927dc1980dbc1597f3fe483d8cb6e50525dd5749da` |
| 31 | `theorem` | [formPerm_pow_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-pow-apply-getelem--74efb5c8df2c00ba1b6c6966.md) | 254 | `result-track:74efb5c8df2c00ba1b6c69660c44d4aa31c7d0af1e9f3c30d82cd0c36690c400` |
| 32 | `theorem` | [formPerm_pow_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-pow-apply-head--0f911d0822f219519d073512.md) | 263 | `result-track:0f911d0822f219519d073512a383efc2786417faa102776e157b52f2eb443699` |
| 33 | `theorem` | [formPerm_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-ext-iff--69b464c15b73132ac096971e.md) | 269 | `result-track:69b464c15b73132ac096971e283a9a745af1c53af52e3cdc61eac1df85c4a9bd` |
| 34 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-mem-eq-self-iff--ee57e8720ec8dcc7d36a3ecd.md) | 306 | `result-track:ee57e8720ec8dcc7d36a3ecd79eb608876bfc653d7ef5df849673237db268641` |
| 35 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-apply-mem-ne-self-iff--7395dfbfab6281ce9291a956.md) | 318 | `result-track:7395dfbfab6281ce9291a95639d8e635574503e05d26c77366418b49b67ac09c` |
| 36 | `theorem` | [formPerm_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-eq-one-iff--147a90fcf98e232814a4acdf.md) | 323 | `result-track:147a90fcf98e232814a4acdfd412f04d1e7cde32dee98e7e653811054aedd079` |
| 37 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-eq-formperm-iff--70c7b209b0af717b67148e35.md) | 334 | `result-track:70c7b209b0af717b67148e3513bddb1dd0c8843b897ac5d724b657c778c07237` |
| 38 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/form-perm-zpow-apply-mem-imp-mem--d31046282de9ca76bd700d0f.md) | 354 | `result-track:d31046282de9ca76bd700d0f5bf3dad569a97945e75f4d43518f83f05c6864e5` |
| 39 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant422fdb4d6ae97421283aeb85c9b9bb05d87dc78d400fdd75ead265d0a6882db6.lean/declarations/formperm-pow-length-eq-one-of-nodup--e4c9296b6e7d9250caeba70e.md) | 363 | `result-track:e4c9296b6e7d9250caeba70e82722516b6c6d5d78695e7312a373da1a677b38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
