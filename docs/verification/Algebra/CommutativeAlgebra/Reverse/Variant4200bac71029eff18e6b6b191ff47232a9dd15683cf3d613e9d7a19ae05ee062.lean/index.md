# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Reverse.Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1510422f8e0626f9ed369cf21112fb6e1c192d3e",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1510422f8e0626f9ed369cf21112fb6e1c192d3e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.TrailingDegree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revAtFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revatfun--d4dc9a966d6bccbca640d83f.md) | 41 | `declaration-track:d4dc9a966d6bccbca640d83f5965229652a664ea17a1caa3616de7180d28badc` |
| 2 | `theorem` | [revAtFun_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revatfun-invol--e04ac9dc98d2a395215e389b.md) | 44 | `result-track:e04ac9dc98d2a395215e389b821ec855d58ba1c02daa5971a44fd1eb640a4a10` |
| 3 | `theorem` | [revAtFun_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revatfun-inj--915ad927fe1e3a1778bb6f57.md) | 53 | `result-track:915ad927fe1e3a1778bb6f57317bffcd29a258656fa463d5d71694a5188bf8ee` |
| 4 | `def` | [revAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat--e53f56f3c9f85cb7964edeb6.md) | 61 | `declaration-track:e53f56f3c9f85cb7964edeb606caf77d97fc33e9afed6e0ba6ed1d1e5cba2190` |
| 5 | `theorem` | [revAtFun_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revatfun-eq--659cd7c120d3351b38c8d6c0.md) | 67 | `result-track:659cd7c120d3351b38c8d6c0c038877fd3d83190c3106e248b5f70451bd8cbab` |
| 6 | `theorem` | [revAt_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat-invol--0592dc12be50fb531ecd3b73.md) | 71 | `result-track:0592dc12be50fb531ecd3b734fdd5f7450bd2a4c2e7287f39367ff59cee5ba00` |
| 7 | `theorem` | [revAt_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat-le--0adba48b151635910c1a10ad.md) | 75 | `result-track:0adba48b151635910c1a10ad63f94faffe1137ce52cb7d23e21fa5273b7d70c8` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat-eq-self-of-lt--c03a704a40c3ca4ea5c70ee8.md) | 78 | `result-track:c03a704a40c3ca4ea5c70ee82dd7d6dbb4fcdfa753c22d2e5bf26886684e6e42` |
| 9 | `theorem` | [revAt_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat-add--ba9e1cc1f98f83ed89cbeb28.md) | 80 | `result-track:ba9e1cc1f98f83ed89cbeb28a91c6e7662779c0addeff843f033c6159c34bfb3` |
| 10 | `theorem` | [revAt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/revat-zero--0842448945fc0851021cfcf3.md) | 88 | `result-track:0842448945fc0851021cfcf32e77b2c473f48813cacef6bcafd0e6c9ed8ee23b` |
| 11 | `def` | [reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect--81f7f76d2d0e7795b43bf461.md) | 96 | `declaration-track:81f7f76d2d0e7795b43bf461a6a976b8a224dd4648c97009e3621f6bba1ab269` |
| 12 | `theorem` | [reflect_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-support--aaf8ac1697506dccfcae4274.md) | 99 | `result-track:aaf8ac1697506dccfcae42743b572f0be261ab11b064fc8e0d1abc424e30fb97` |
| 13 | `theorem` | [coeff_reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/coeff-reflect--725ec054dcdcbfebf2098db4.md) | 106 | `result-track:725ec054dcdcbfebf2098db4ea914df3fbab8027dbcfb8cd72ba95a9524ad709` |
| 14 | `theorem` | [reflect_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-zero--c616bbfbe2d3acada2816fff.md) | 115 | `result-track:c616bbfbe2d3acada2816fff2c12792d62a0a0f10bf3ebd5392702b50e76c73d` |
| 15 | `theorem` | [reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-eq-zero-iff--6ec44e542d58c340c5735f76.md) | 119 | `result-track:6ec44e542d58c340c5735f7677c82310efee5eb453d5fc85b207199f538ae892` |
| 16 | `theorem` | [reflect_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-add--27c10f52de24905b7c04da51.md) | 123 | `result-track:27c10f52de24905b7c04da51f62c002f1a1f544dbcda17baa041d27c147c765a` |
| 17 | `theorem` | [reflect_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-c-mul--981ec8e3331e06fcf2c7fc92.md) | 128 | `result-track:981ec8e3331e06fcf2c7fc92ac6fc3767893b8a1fa8810c14a5870ce4e9578ee` |
| 18 | `theorem` | [reflect_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-c-mul-x-pow--271de95efee19679fb52177d.md) | 132 | `result-track:271de95efee19679fb52177db3852bc7bf7755924ec89ad33ce8f289dd53ceb5` |
| 19 | `theorem` | [reflect_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-c--6119c0441bd1fc80bcdbb594.md) | 144 | `result-track:6119c0441bd1fc80bcdbb594084b17e1059cc76b223970ac5d86e4edce9c3b18` |
| 20 | `theorem` | [reflect_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-monomial--a0953fb6d8dad58b61f7e805.md) | 148 | `result-track:a0953fb6d8dad58b61f7e8052a5fc7ca6624d1773ac53eb4f1f255fc8010765d` |
| 21 | `lemma` | [reflect_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-one-x--b8de4693ac3295956061eb23.md) | 151 | `result-track:b8de4693ac3295956061eb23fc833f729f2e7c9cf6c464e3de49360cac7ffb3f` |
| 22 | `lemma` | [reflect_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-map--3138f4a1fbce666b33de88c7.md) | 154 | `result-track:3138f4a1fbce666b33de88c72729655525720fbdf7ff609bd31e258795c8155a` |
| 23 | `lemma` | [reflect_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-one--5914cf0ad93f972a929cfc2c.md) | 159 | `result-track:5914cf0ad93f972a929cfc2c9d8c1fe825729435f08cacbb8c380e26b75f8985` |
| 24 | `theorem` | [reflect_mul_induction](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-mul-induction--1e21e6ce450fa86d3e3047d6.md) | 162 | `result-track:1e21e6ce450fa86d3e3047d6139a3e4a5a8e64a6926ea22b708d11f282581244` |
| 25 | `theorem` | [reflect_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-mul--0a729ab28f5d77526375ef6d.md) | 200 | `result-track:0a729ab28f5d77526375ef6d10615ce694436aa90c700fdec1a4ef5f8f4e89bd` |
| 26 | `theorem` | [eval₂_reflect_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/eval-reflect-mul-pow--77907235d4cfc6d487ad1c49.md) | 208 | `result-track:77907235d4cfc6d487ad1c49280038ad590767e5af43363893574aa2d4e26ebb` |
| 27 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/eval-reflect-eq-zero-iff--d331a90ef24ceabb7720116f.md) | 221 | `result-track:d331a90ef24ceabb7720116f3f56dfd4eb93a42d64a749e2b674c47015f1756c` |
| 28 | `def` | [reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse--670b06f32b49307846c4a497.md) | 235 | `declaration-track:670b06f32b49307846c4a497f21a420ac83cf7fd7eef68ecd62cb9e638ba956c` |
| 29 | `theorem` | [coeff_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/coeff-reverse--b1cd38e52d838a528f63df57.md) | 238 | `result-track:b1cd38e52d838a528f63df57c17055329d643f4c5bdaed019ea397264504e279` |
| 30 | `theorem` | [coeff_zero_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/coeff-zero-reverse--77a54df1722ce3641eb650f1.md) | 242 | `result-track:77a54df1722ce3641eb650f16a76de87cb860c7d1bd64f1dc5d190f6f43bf593` |
| 31 | `theorem` | [reverse_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-zero--c773ce4a8bcb4ca0a1322ce0.md) | 246 | `result-track:c773ce4a8bcb4ca0a1322ce017532d1218c43f5e8ef5b8414076bc9077595d7c` |
| 32 | `theorem` | [reverse_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-eq-zero--351083871c1c58eab3e2ccdd.md) | 250 | `result-track:351083871c1c58eab3e2ccdda6d160c8b9033184e1678529ee57b92deceb4ae1` |
| 33 | `theorem` | [reverse_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-natdegree-le--5227f70ddc576077fb907a34.md) | 252 | `result-track:5227f70ddc576077fb907a34eef82c9c3ec8092a8a75f66968d5eda98ffa833c` |
| 34 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree--de5c350926531be656fc82d5.md) | 259 | `result-track:de5c350926531be656fc82d567d718def6c090f087fec521b2312827cef2e54f` |
| 35 | `theorem` | [reverse_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-natdegree--030181d7e920faee8b7d6efe.md) | 273 | `result-track:030181d7e920faee8b7d6efef4dfcebf50b9de3465f9cee15a0bd366bff15272` |
| 36 | `theorem` | [reverse_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-leadingcoeff--e127a2e0996584990a07d0cb.md) | 276 | `result-track:e127a2e0996584990a07d0cb219f93ec91251479f9783542ab5680f0ff6099ec` |
| 37 | `theorem` | [natTrailingDegree_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/nattrailingdegree-reverse--f1a6a7cf7a447d5c0c520afd.md) | 280 | `result-track:f1a6a7cf7a447d5c0c520afdb90ae88130742c0e5e7ead967de0cdbfe20988c9` |
| 38 | `theorem` | [reverse_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-trailingcoeff--08ea56de3539aa1ff3f667a2.md) | 284 | `result-track:08ea56de3539aa1ff3f667a2c69b02c136b878a56a662a419c7e6743a271f41d` |
| 39 | `theorem` | [reverse_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-mul--535630dbc047a7bc40577c1f.md) | 287 | `result-track:535630dbc047a7bc40577c1fd8e415dca9180f3b59bc798b17710c5480bf20f8` |
| 40 | `theorem` | [reverse_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-mul-of-domain--c07e4060ec68321312000773.md) | 293 | `result-track:c07e4060ec68321312000773677ae025e355595315ff445271bfd8795d83c344` |
| 41 | `theorem` | [trailingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/trailingcoeff-mul--90f7b0d1f86e54e2375b0b89.md) | 301 | `result-track:90f7b0d1f86e54e2375b0b893491b3f0e48d242b12a887c2eb31838c7a9f7deb` |
| 42 | `theorem` | [coeff_one_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/coeff-one-reverse--ab3d54447b9d577ab2991670.md) | 307 | `result-track:ab3d54447b9d577ab29916700254705975f065f307c9f030966f277f0bbb252a` |
| 43 | `lemma` | [reverse_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-c--25fbac9e12fa1842de2edb6c.md) | 315 | `result-track:25fbac9e12fa1842de2edb6cfc4f2a58d1f2ff21a864de5bfbe91348f4639fdb` |
| 44 | `lemma` | [reverse_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-mul-x--917067b2b35ba61141a38938.md) | 319 | `result-track:917067b2b35ba61141a389385ba45df416bd5684ee368bd5378f3ee6e11def36` |
| 45 | `lemma` | [reverse_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-x-mul--71c811188d43e798c11fd02d.md) | 325 | `result-track:71c811188d43e798c11fd02dd29621b45b0b0084099d2cdd18fea86d654b6700` |
| 46 | `lemma` | [reverse_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-mul-x-pow--d2cb360f834d140d9956defd.md) | 328 | `result-track:d2cb360f834d140d9956defd56eef5c933e43bec2a4d1d4d202193908c32d4a6` |
| 47 | `lemma` | [reverse_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-x-pow-mul--91e76c60e7a0877763dd1605.md) | 333 | `result-track:91e76c60e7a0877763dd16058a595949b8631a0793de20c29c5370f555043d6d` |
| 48 | `lemma` | [reverse_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-add-c--f3ed0da39931beb37ab61aa2.md) | 336 | `result-track:f3ed0da39931beb37ab61aa2fe0330bd393e32237780178193db8db124e913ed` |
| 49 | `lemma` | [reverse_C_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-c-add--5e60e111193b27ba21849a12.md) | 340 | `result-track:5e60e111193b27ba21849a127775883b71b6b74db63cd41128b64410fbaebc88` |
| 50 | `theorem` | [eval₂_reverse_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/eval-reverse-mul-pow--6b62012b44d8ba1944e68e92.md) | 348 | `result-track:6b62012b44d8ba1944e68e927818f865171c434cd1ea755d2c5720b8005216be` |
| 51 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/eval-reverse-eq-zero-iff--a714b3ed52a0fcba90cc9d25.md) | 353 | `result-track:a714b3ed52a0fcba90cc9d25a6096a1721f3bf1c2340a5436fd65b7a251e2bcc` |
| 52 | `theorem` | [reflect_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-neg--51621bfda5d1bc1b58644230.md) | 366 | `result-track:51621bfda5d1bc1b58644230f46f8a72b0cef34bbd700cfd3cf88ccb7f1ca584` |
| 53 | `theorem` | [reflect_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reflect-sub--a518b23503c2d22083edd53b.md) | 370 | `result-track:a518b23503c2d22083edd53be2660b3d427cf67f6e5573151f4e7e792761dae8` |
| 54 | `theorem` | [reverse_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant4200bac71029eff18e6b6b191ff47232a9dd15683cf3d613e9d7a19ae05ee062.lean/declarations/reverse-neg--ecb85b27a1ad9ee06723147d.md) | 374 | `result-track:ecb85b27a1ad9ee06723147d04e90fc284a4ed71708285a163a794f9730de046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
