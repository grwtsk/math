# Verification target: GRWTSK.Algebra.Hom.Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8728011f7860a631001446685441510a9b14308",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8728011f7860a631001446685441510a9b14308`.

Source path: `GRWTSK/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/bialghom--f5b97d2c30c453643aae5f61.md) | 34 | `declaration-track:f5b97d2c30c453643aae5f61799d05b8ec76f36842440eff5de2a40d874dac9f` |
| 2 | `class` | [BialgHomClass](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/bialghomclass--9382eea82f7ead2b1f660e9f.md) | 49 | `declaration-track:9382eea82f7ead2b1f660e9fc760ee99526b7060a9320dd4508da2586c309339` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/instance--74e9bc6a6252e1345204c3e7.md) | 64 | `declaration-track:74e9bc6a6252e1345204c3e77cda0a367a8ee02b5d8b39e50ad44887788b832f` |
| 4 | `def` | [toBialgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/tobialghom--816424ea7ea077c6b9eab143.md) | 75 | `declaration-track:816424ea7ea077c6b9eab143d299cd8c659e2a673821d0d0e20b0d7e1713170e` |
| 5 | `instance` | [instCoeToBialgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/instcoetobialghom--d24a9f47fac66996c106d9fe.md) | 79 | `declaration-track:d24a9f47fac66996c106d9fe8fdcffd996bb0972fae8587dcc9c8f86bd43a3d8` |
| 6 | `theorem` | [counitAlgHom_comp](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/counitalghom-comp--6a158a9536fe55c5192234d2.md) | 89 | `result-track:6a158a9536fe55c5192234d290d0a4164c033d62fb6ca05817e44dca7d9ce34f` |
| 7 | `theorem` | [map_comp_comulAlgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/map-comp-comulalghom--435adb82e46cae33ef4da3a7.md) | 94 | `result-track:435adb82e46cae33ef4da3a71be64682b495437b3de2fafcf6f467d248994552` |
| 8 | `instance` | [funLike](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/funlike--14d99419d404af6ec58d81be.md) | 107 | `declaration-track:14d99419d404af6ec58d81bef8001c3ba4968536782151b0227526d41f5a56c5` |
| 9 | `instance` | [bialgHomClass](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/bialghomclass--bf11cbbd0f22afe8b131cd47.md) | 114 | `declaration-track:bf11cbbd0f22afe8b131cd477d5f6ebbf62063907530b759139079d68b23ac40` |
| 10 | `def` | [Simps.apply](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/simps-apply--f93abbd06feb69f0ae0ad529.md) | 123 | `declaration-track:f93abbd06feb69f0ae0ad52927522bb0d7715e320df5318e56d76b48c9f59993` |
| 11 | `def` | [ofAlgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/ofalghom--7bddb062cfa836134b030b2d.md) | 131 | `declaration-track:7bddb062cfa836134b030b2d5c92af4e074c525dcd64a96936229aea8b1fe099` |
| 12 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-coe--9574a287984589f027821f02.md) | 140 | `result-track:9574a287984589f027821f02aa93be0c0fe003f9a5adf18d2150adff8fcbb9f7` |
| 13 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-mk--ee7278264f2e502b97ab7a17.md) | 145 | `result-track:ee7278264f2e502b97ab7a17fc22e552ccbea3e3f2ac7676a587a94a2a08112b` |
| 14 | `theorem` | [coe_mks](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-mks--02c1c7ac59094e1242a0017d.md) | 149 | `result-track:02c1c7ac59094e1242a0017d9e1e8fb554b9b74d613b097319a2a5fd38d1153d` |
| 15 | `theorem` | [coe_coalgHom_mk](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-coalghom-mk--18de9ad6806cedc290d62099.md) | 154 | `result-track:18de9ad6806cedc290d62099abd01264335433d0b1c73a7f7083eb8f17279d7c` |
| 16 | `theorem` | [coe_toCoalgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-tocoalghom--e1bf47006ed38539fd3a2105.md) | 159 | `result-track:e1bf47006ed38539fd3a21053369691e54a55d9caf68be3a19b32fc15035d63b` |
| 17 | `lemma` | [toCoalgHom_apply](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/tocoalghom-apply--003d50fa60db66f72d2ef741.md) | 162 | `result-track:003d50fa60db66f72d2ef74116b816991df2aaf8c9e8d77288607ebeb145a0c7` |
| 18 | `theorem` | [coe_toLinearMap](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-tolinearmap--e11f4c51b3e118433b31ddb2.md) | 165 | `result-track:e11f4c51b3e118433b31ddb27768ec78ec15ee9278493d2ad382a8b3e31aca43` |
| 19 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-toalghom--864113489a226396e323b6b1.md) | 169 | `result-track:864113489a226396e323b6b130ddbdd3b4a1320acc6acac2c3ec0088e41b27d0` |
| 20 | `theorem` | [toAlgHom_toLinearMap](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/toalghom-tolinearmap--10d8a7f4847c97c4e73cdbad.md) | 172 | `result-track:10d8a7f4847c97c4e73cdbad1a3404c18f3f7fc813e33eb33069ec1d6e549c7b` |
| 21 | `theorem` | [coe_fn_injective](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-fn-injective--9d38c452d19c373654ed6e3a.md) | 178 | `result-track:9d38c452d19c373654ed6e3a2a7c08a9ad4036f8c2f3211b688a2ca625feca6f` |
| 22 | `theorem` | [coe_fn_inj](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-fn-inj--d9c6f5b5df2384a5e924e132.md) | 181 | `result-track:d9c6f5b5df2384a5e924e132cf714a10763fac27c0ef25aec56d7fb0a3ebf21f` |
| 23 | `theorem` | [coe_coalgHom_injective](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-coalghom-injective--c052e35d25ddee52a86c9033.md) | 184 | `result-track:c052e35d25ddee52a86c903381e80f29d0877466e161d6c007f15fd37cb46295` |
| 24 | `theorem` | [coe_algHom_injective](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-alghom-injective--152a33b15933135a7cfb2529.md) | 188 | `result-track:152a33b15933135a7cfb2529062933b7a086a10bff1c4f49c4799fdb4b93d4fc` |
| 25 | `theorem` | [coe_linearMap_injective](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-linearmap-injective--d8ac1dda4a5653211d920f5f.md) | 192 | `result-track:d8ac1dda4a5653211d920f5ffab579fc3299091f44cb3fa7febde2adf59289a9` |
| 26 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/congr-fun--e00117cb0eaf7d8d3d1b2e84.md) | 195 | `result-track:e00117cb0eaf7d8d3d1b2e841a5a27dd16781b1baef2dd72a83b741b87eb911f` |
| 27 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/congr-arg--fe54582591e5117106f09701.md) | 198 | `result-track:fe54582591e5117106f0970183b8b3e907deb16ad72e710510854e289b4a60b5` |
| 28 | `theorem` | [ext](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/ext--6a5e2c7444ad0c9dcef6150d.md) | 202 | `result-track:6a5e2c7444ad0c9dcef6150d0b2c0c64dcbcb051e69868197abdd99b685ca4a2` |
| 29 | `theorem` | [ext_of_ring](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/ext-of-ring--ff01855f095b15d6f66d7796.md) | 206 | `result-track:ff01855f095b15d6f66d7796822b38b1f2198abcd7d9a6b3ac8ab3691adfb1dc` |
| 30 | `theorem` | [mk_coe](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/mk-coe--8eb484fa142c239e3e655d30.md) | 210 | `result-track:8eb484fa142c239e3e655d3052b24ad39a243b6610591416600f543b292a0783` |
| 31 | `def` | [copy](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/copy--6e075c05559dad26d1ce21ed.md) | 216 | `declaration-track:6e075c05559dad26d1ce21ed7524f2a29f1a2d91bb761d072acaeeaf9cb99cbc` |
| 32 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-copy--a2c700b4c04eaa06f84ceece.md) | 222 | `result-track:a2c700b4c04eaa06f84ceecea780406d55b19e844c8fada8a24a34efe78f236b` |
| 33 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/copy-eq--5b3e771ce2f26867812f9b32.md) | 225 | `result-track:5b3e771ce2f26867812f9b321971a3d5459355d491a7a2cb10f17521484daca7` |
| 34 | `def` | [id](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/id--d49475dd312287f1affd1423.md) | 233 | `declaration-track:d49475dd312287f1affd1423c419c2514a88fab7020a165d7d2e914126a932a2` |
| 35 | `theorem` | [coe_id](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-id--4c9e3d933ef5f2f27156b971.md) | 239 | `result-track:4c9e3d933ef5f2f27156b97115429e1b8d5c6bca824be4044acf8808b21028c9` |
| 36 | `theorem` | [id_toCoalgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/id-tocoalghom--3e59b452a83646c6c923e202.md) | 243 | `result-track:3e59b452a83646c6c923e202898c1e3015ec6f92ae809b0ac0c8f002dd95edec` |
| 37 | `theorem` | [id_toAlgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/id-toalghom--e542eb32a5f65a682ac79dab.md) | 247 | `result-track:e542eb32a5f65a682ac79dab8729c03617ed97a19c125fe81f1088363d024081` |
| 38 | `def` | [comp](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/comp--ecb640bef11bb0d36278a301.md) | 253 | `declaration-track:ecb640bef11bb0d36278a30142152df481e638fcd1314d5a628922de404bfc08` |
| 39 | `theorem` | [coe_comp](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/coe-comp--4fc94af413d02727b94e7279.md) | 257 | `result-track:4fc94af413d02727b94e7279f50a4d1982c57b050279fe3b590c11d9605139f4` |
| 40 | `theorem` | [comp_toCoalgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/comp-tocoalghom--175c821c965b3a205f072c0e.md) | 261 | `result-track:175c821c965b3a205f072c0eda07a73c492640ef392aeab19b7e93c89a519fa7` |
| 41 | `theorem` | [comp_toAlgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/comp-toalghom--455a60ce350831b4f67986d6.md) | 266 | `result-track:455a60ce350831b4f67986d6e2e974bcc888150bc55db84cf112a6fff3b0e71c` |
| 42 | `theorem` | [comp_id](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/comp-id--ebabaee9b87878099138a651.md) | 271 | `result-track:ebabaee9b87878099138a651db2ee2681213a53ed23d41fc9bbf433c927109ad` |
| 43 | `theorem` | [id_comp](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/id-comp--a25c929bf3202b09bb8d5851.md) | 275 | `result-track:a25c929bf3202b09bb8d585149cc8bb2542a20661f1a2c4eb6509a1a240c26d5` |
| 44 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/comp-assoc--77618daf1008402da5c83c37.md) | 278 | `result-track:77618daf1008402da5c83c3794e7fedd035a95ab2c27f5e47e9dbbb9d6697f9c` |
| 45 | `theorem` | [map_smul_of_tower](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/map-smul-of-tower--1539d5b1fb8a976dffcd49fb.md) | 282 | `result-track:1539d5b1fb8a976dffcd49fb97539d1313ef74e773b82c5b995963670394fe27` |
| 46 | `instance` | [End](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/end--aba2d78992342376aab7d11c.md) | 287 | `declaration-track:aba2d78992342376aab7d11cc0ca4c10cda9b1fc9530506cf240c5e594137f17` |
| 47 | `theorem` | [one_apply](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/one-apply--5a5406bd942736bd1e002571.md) | 295 | `result-track:5a5406bd942736bd1e00257175ef8462fbc71b07e091a72b50db1c1346c9a2ff` |
| 48 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/mul-apply--ac1c28666f225b7285cce7ac.md) | 299 | `result-track:ac1c28666f225b7285cce7aca8cba4fc693617d0a1c374d4192edc18b31c8f03` |
| 49 | `def` | [unitBialgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/unitbialghom--266448036de8cf8bb25c7e08.md) | 309 | `declaration-track:266448036de8cf8bb25c7e08139c13ab839b115875021146a081483c96b5a4d5` |
| 50 | `def` | [counitBialgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/counitbialghom--99febb4410a196e7285630a3.md) | 314 | `declaration-track:99febb4410a196e7285630a330db7fbfc956966fae2e511ed3f141984fff6ba2` |
| 51 | `theorem` | [counitBialgHom_apply](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/counitbialghom-apply--a40757ddba7e44e3207c5f6c.md) | 318 | `result-track:a40757ddba7e44e3207c5f6ce5f2ec05d6e91fd38c2c5635cc5d445ac8acb9ac` |
| 52 | `theorem` | [counitBialgHom_toCoalgHom](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/counitbialghom-tocoalghom--97e4589fdd2c20f109aa0b7d.md) | 322 | `result-track:97e4589fdd2c20f109aa0b7d5f159fbfe0a341b40e6976cd6011933ae4290a3c` |
| 53 | `instance` | [subsingleton_to_ring](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/subsingleton-to-ring--6433574a84dc9d37dea771bb.md) | 325 | `declaration-track:6433574a84dc9d37dea771bbdeb34eb01443123c8455bc97a0b0d2506bde4f33` |
| 54 | `theorem` | [ext_to_ring](../../../../mathematics/Algebra/Hom/Variantda318e0cd09cd7c8c41f87a490bbf33b4c5c31101ee82da521425b0b50f44676.lean/declarations/ext-to-ring--7fdb530c9f3bb40afe294e49.md) | 329 | `result-track:7fdb530c9f3bb40afe294e495c1190634a3e9c9e65d43ed92e98fa0530e92747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
