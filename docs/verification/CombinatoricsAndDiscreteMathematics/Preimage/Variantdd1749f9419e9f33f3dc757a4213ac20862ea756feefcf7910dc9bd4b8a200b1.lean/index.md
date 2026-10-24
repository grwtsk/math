# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e92696cd5dde25b6654fd24546918f16d96695e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e92696cd5dde25b6654fd24546918f16d96695e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean.json)

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
| 1 | `def` | [preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage--4240e4f0d0e9880e9297ea0d.md) | 31 | `declaration-track:4240e4f0d0e9880e9297ea0de41b3cd4a3cf89f0d0bf4c75656dd1ad563e23fd` |
| 2 | `theorem` | [mem_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/mem-preimage--d2ae3d336931eb681e153d0f.md) | 35 | `result-track:d2ae3d336931eb681e153d0fcaf0550e728558a42439e79d256e5ef0aabc2576` |
| 3 | `theorem` | [coe_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/coe-preimage--3c953f9d02dfd7f23568f363.md) | 40 | `result-track:3c953f9d02dfd7f23568f363a7abab413863e6347c66bcf230e9b252d9a2c537` |
| 4 | `theorem` | [preimage_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-empty--a9e51a2c207e5701e1c00c21.md) | 45 | `result-track:a9e51a2c207e5701e1c00c2190d924aa2b4f9e1e1eeb8672c59d754a1bfe839d` |
| 5 | `theorem` | [preimage_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-univ--d06141e6c3366820ae0da1d1.md) | 49 | `result-track:d06141e6c3366820ae0da1d1ef4db742434fdcf3b1b1e96b23f7a136957a17cf` |
| 6 | `theorem` | [disjoint_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/disjoint-preimage--33a87fced2df9ae7400dc5e5.md) | 53 | `result-track:33a87fced2df9ae7400dc5e59b3a9571e3705ce8079a48715e62446a014a070c` |
| 7 | `theorem` | [preimage_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-inter--156d0cfeb34908f12d87bb64.md) | 60 | `result-track:156d0cfeb34908f12d87bb64d2176b8ecff8015907de501d942094dc1bc1590b` |
| 8 | `theorem` | [preimage_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-union--03d541178efe099680726731.md) | 69 | `result-track:03d541178efe099680726731b6f51264b532db11dce9830d2468afa5a72cbdc2` |
| 9 | `theorem` | [preimage_compl'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-compl--857d733dd3d2ea63f70909e7.md) | 76 | `result-track:857d733dd3d2ea63f70909e78484c6eee8736a561681634c213f61085b73f975` |
| 10 | `theorem` | [preimage_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-compl--e3ab641e6776c7458d3d9667.md) | 82 | `result-track:e3ab641e6776c7458d3d96676dc9f8da89db3b91eff31052630c8481b22fd699` |
| 11 | `lemma` | [preimage_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-map--8bb7cdb8c4b28ac5219ade48.md) | 88 | `result-track:8bb7cdb8c4b28ac5219ade48973269fd7a5468a6f14769cfddcc21960db7b76a` |
| 12 | `theorem` | [monotone_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/monotone-preimage--951f34019c1d1c43bf8606ca.md) | 91 | `result-track:951f34019c1d1c43bf8606ca914ced8a053a80ccd9fd56d2daf69c8d47d60bea` |
| 13 | `theorem` | [image_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-subset-iff-subset-preimage--9b2806bfcaa8fae83c1e87fc.md) | 95 | `result-track:9b2806bfcaa8fae83c1e87fc9ce0abc461ed79a3e82391f14723b18172dbab0f` |
| 14 | `theorem` | [map_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/map-subset-iff-subset-preimage--8564024cc75d56343acaa4d7.md) | 99 | `result-track:8564024cc75d56343acaa4d7a57a6b3dcca77989cd86eaaf2bbfb4e92e2235c7` |
| 15 | `lemma` | [card_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/card-preimage--3c4d8b056d13dc9f8cb24dcc.md) | 103 | `result-track:3c4d8b056d13dc9f8cb24dcc0a85f73fb8d8b97968e2e408245b0eabfe6702c6` |
| 16 | `theorem` | [image_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-preimage--a5fee588b350d2024bf61418.md) | 107 | `result-track:a5fee588b350d2024bf6141861455e0788d03b517f1dab5e66d267d911d73fb2` |
| 17 | `theorem` | [image_eq_preimage_of_leftInvOn_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-eq-preimage-of-leftinvon-injon--58b6a5c2b1314353f7553d25.md) | 113 | `result-track:58b6a5c2b1314353f7553d25a0841b9001f4e5d852fe6dda4fe98a9e33e970f2` |
| 18 | `theorem` | [image_preimage_of_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-preimage-of-bij--c692d3f17e075c6eb4dd6edb.md) | 119 | `result-track:c692d3f17e075c6eb4dd6edb476af2fe019953311c21a8d0541833f6961b451e` |
| 19 | `theorem` | [image_preimage_of_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-preimage-of-bijective--e34810baef173b3624e13222.md) | 123 | `result-track:e34810baef173b3624e132220a3dbbdc2d5e0835fc59ea423303119305fd2299` |
| 20 | `lemma` | [preimage_subset_of_subset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-subset-of-subset-image--7c7f8d1c5c1f8025e1efe0a4.md) | 127 | `result-track:7c7f8d1c5c1f8025e1efe0a4483ecfa9e4d613430c3cd7f79dd134a20d9db3f0` |
| 21 | `theorem` | [preimage_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-subset--80599f612dca82d090053fd2.md) | 131 | `result-track:80599f612dca82d090053fd21a486de712e7a9d143a9bcd59b7a683c0aed59a8` |
| 22 | `theorem` | [subset_map_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/subset-map-iff--4ab067c302ff96aa27f55521.md) | 134 | `result-track:4ab067c302ff96aa27f555219494cd9663d239128fc5dbdd36493e75d62e5c1f` |
| 23 | `theorem` | [image_eq_iff_eq_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-eq-iff-eq-preimage--3574b847baf1f705a281b734.md) | 139 | `result-track:3574b847baf1f705a281b734c1b6cfa05519393cad5559180d07182f09524f0d` |
| 24 | `theorem` | [sup_preimage_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/sup-preimage-self--7151e3ac90a9787dd475eee0.md) | 145 | `result-track:7151e3ac90a9787dd475eee0be95069d7f96f88de24f4b7a0be5ae7e235d439b` |
| 25 | `lemma` | [sup_preimage_val_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/sup-preimage-val-id--76376f23b51b5d02e433002b.md) | 154 | `result-track:76376f23b51b5d02e433002b3982f57181074f845ba8423bc7f3a4c60616474f` |
| 26 | `theorem` | [sigma_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/sigma-preimage-mk--8fcf3cccf63da7ad0eb31289.md) | 168 | `result-track:8fcf3cccf63da7ad0eb3128993c012d34c6f3e93b05db3b169acbc77eac15907` |
| 27 | `theorem` | [sigma_preimage_mk_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/sigma-preimage-mk-of-subset--2574ebce6686b6a8385f7985.md) | 173 | `result-track:2574ebce6686b6a8385f7985702f0e9311e771cf85bf2a2e3356a40d816bbd19` |
| 28 | `theorem` | [sigma_image_fst_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/sigma-image-fst-preimage-mk--b43d30073bb4592cca5aabbd.md) | 178 | `result-track:b43d30073bb4592cca5aabbd30388e8d4cbd6e8568d156446df1f1dd7b165eec` |
| 29 | `lemma` | [preimage_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-inl--ebfdd8be5773dcc81df3a367.md) | 183 | `result-track:ebfdd8be5773dcc81df3a3672bb644fc2ab6ea71548b82c5761215708f383300` |
| 30 | `lemma` | [preimage_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/preimage-inr--7eb5fbe11626030c3aea50be.md) | 187 | `result-track:7eb5fbe11626030c3aea50be68c383205e20ed0328282b4b60e19d4d75a8198a` |
| 31 | `def` | [restrictPreimageFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/restrictpreimagefinset--fe02a64bedf026db73cdbbac.md) | 199 | `declaration-track:fe02a64bedf026db73cdbbac468813740cbc29c59c23158616967476f7997425` |
| 32 | `lemma` | [image_symm_eq_preimage_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-symm-eq-preimage-of-finset--272a3a024041070eb3c8d95a.md) | 205 | `result-track:272a3a024041070eb3c8d95afc7d7a19336aebaebbc702d1a6b579b6858c7029` |
| 33 | `lemma` | [image_eq_preimage_symm_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/image-eq-preimage-symm-of-finset--a13be7ddf96ab324c288d5ba.md) | 209 | `result-track:a13be7ddf96ab324c288d5ba96a057408b610b71abab3499759b849847b7524c` |
| 34 | `lemma` | [Finset.restrict_comp_piCongrLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/declarations/finset-restrict-comp-picongrleft--c8568f791c58fae03a5fe43d.md) | 217 | `result-track:c8568f791c58fae03a5fe43d99a789608e58ff0972ccf8982a585bba15e17787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
