# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prorepresentability.Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc500c5bbe4e11feef5890e4426dadac24d6a056",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc500c5bbe4e11feef5890e4426dadac24d6a056`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Decomposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IndYoneda` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PointedGaloisObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/pointedgaloisobject--9dcc1ac944f94ab78743d7a8.md) | 67 | `declaration-track:9dcc1ac944f94ab78743d7a8e64d499aea7fd8691aedd7235534c912fc6b6cec` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--208a2b280be857f8659aad89.md) | 83 | `declaration-track:208a2b280be857f8659aad893b05c3094c63bd4d18c36a446baac9d05d50bbb8` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/hom--2989e4157da934befe14ab20.md) | 90 | `declaration-track:2989e4157da934befe14ab208b8618dd674530edb2a4a4f2aa326653ac408680` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--eff4a8b7caba5a01651a6284.md) | 99 | `declaration-track:eff4a8b7caba5a01651a62844889b73bd28414a8dac1fac59efbdd381494c42d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--d2e4b39b8b48fa801388e4b4.md) | 104 | `declaration-track:d2e4b39b8b48fa801388e4b4ae5759641f51c534b17171e884dfdcd18ca61148` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/hom-ext--9e7b3429a951de9c7404bce0.md) | 110 | `result-track:9e7b3429a951de9c7404bce0b59558b75fcfc9497f75573f5ddfa8e0c4ef6f15` |
| 7 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/id-val--5600160bf2d28114f1ec7b52.md) | 114 | `result-track:5600160bf2d28114f1ec7b5258a70284f1f827951288f1d583e451dcf75218b0` |
| 8 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/comp-val--a5173d0fdfb783be81932b73.md) | 118 | `result-track:a5173d0fdfb783be81932b730c34cc480894bd21f7fa65293878e3edecd18ae0` |
| 9 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/incl--065ac89ad7d7ec12f7100ad3.md) | 125 | `declaration-track:065ac89ad7d7ec12f7100ad34a4018746740fc5ba18e6bfbf7abcd8957861780` |
| 10 | `lemma` | [incl_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/incl-obj--cd2912f9d943a268e464de13.md) | 130 | `result-track:cd2912f9d943a268e464de13b780226e171f7c8bcdae7c6a4a8eba62c907c352` |
| 11 | `lemma` | [incl_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/incl-map--58a853adc5d5b1c002847225.md) | 134 | `result-track:58a853adc5d5b1c00284722523b74641d73d4bcd549c22ebf0bdcee70c196198` |
| 12 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/cocone--24a0be7f9f1a4a53f853a151.md) | 145 | `declaration-track:24a0be7f9f1a4a53f853a151c99584a7409c549fa8257cd8f7d4dd35bb105965` |
| 13 | `lemma` | [cocone_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/cocone-app--493853b0bcb503b9a0479e92.md) | 156 | `result-track:493853b0bcb503b9a0479e92c39f7256849f1f672729d1531210f6bb17e6e134` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--a318f3916219ad97a895c26a.md) | 163 | `declaration-track:a318f3916219ad97a895c26a0711585897afb384139ad510db9f796c9314d64f` |
| 15 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/iscolimit--e61ac3d39ff4d317d96cf68c.md) | 177 | `declaration-track:e61ac3d39ff4d317d96cf68caa0647ab477bb69d5540d4435daa4b2a85337d6d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--9d2cba8cb4be6541c1337fb7.md) | 195 | `declaration-track:9d2cba8cb4be6541c1337fb79ae8271cbb339cd8cca4ab4751b3f35c7ea18a8f` |
| 17 | `def` | [autGaloisSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgaloissystem--3ae7ae03f58416a526d4c26f.md) | 211 | `declaration-track:3ae7ae03f58416a526d4c26f5d4e5b7a9061de361e89948558e77a2d348eff4c` |
| 18 | `def` | [AutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgalois--ec15ad320f4d1cc3f4281e4a.md) | 216 | `declaration-track:ec15ad320f4d1cc3f4281e4affea186b391e2eb937c8778a21ebcb4dbae8f611` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/instance--d2940d6ab2829cc6e5aba329.md) | 219 | `declaration-track:d2940d6ab2829cc6e5aba3298607056fc30cae17137bb57cd46616cff03800e7` |
| 20 | `def` | [AutGalois.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgalois--ddfb154ee5757ecead8402f6.md) | 224 | `declaration-track:ddfb154ee5757ecead8402f6830ef86939580a352a5374ce1cd5d1ebc935e8c0` |
| 21 | `lemma` | [AutGalois.π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgalois-apply--3b13e6a4425dcc6169dea970.md) | 228 | `result-track:3b13e6a4425dcc6169dea970698af55edcb193d5445ff4677254aa2fd9ae2c4e` |
| 22 | `lemma` | [autGaloisSystem_map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgaloissystem-map-surjective--30dd422088868557b8798584.md) | 232 | `result-track:30dd422088868557b87985840288b5f2be3f08970f066c2d3ed57a5d364ebb86` |
| 23 | `lemma` | [AutGalois.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgalois-ext--02f68e8525918d0742ceb5ad.md) | 242 | `result-track:02f68e8525918d0742ceb5ad7933707ab9a98ea229488a53beac8e82e5c71328` |
| 24 | `theorem` | [AutGalois.π_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autgalois-surjective--bb20136faf89fffb536e5740.md) | 251 | `result-track:bb20136faf89fffb536e57408d1e6e58137fef25996184cb4c5156be37111cbe` |
| 25 | `def` | [endEquivSectionsFibers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endequivsectionsfibers--3c74840b61ff49e445c89bc2.md) | 293 | `declaration-track:3c74840b61ff49e445c89bc2b9acbf30090e584e309eba996989aa68db1635d6` |
| 26 | `lemma` | [endEquivSectionsFibers_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endequivsectionsfibers--bac4c9800f62b0ea6c5df9a6.md) | 307 | `result-track:bac4c9800f62b0ea6c5df9a662c8338e0b421991ee4be42c650642357397b6d6` |
| 27 | `def` | [autIsoFibers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autisofibers--44c678796389691945e827b9.md) | 321 | `declaration-track:44c678796389691945e827b990ef157bb23fccbf265f9009107a098cbac33e6b` |
| 28 | `lemma` | [autIsoFibers_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autisofibers-inv-app--09225c77b21b98dc1e435015.md) | 330 | `result-track:09225c77b21b98dc1e435015f0e334103d95a18c830344054923875aee821f64` |
| 29 | `def` | [endEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endequivautgalois--1fd68a6103429a81fe09b953.md) | 336 | `declaration-track:1fd68a6103429a81fe09b9534764ac7c4b6f58d5119b942b33c2d9d2a3ae57b0` |
| 30 | `lemma` | [endEquivAutGalois_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endequivautgalois--104809a020e67e71957f225c.md) | 341 | `result-track:104809a020e67e71957f225c05cb899bc3fcad2725ef956fdf378340ddd0c8c4` |
| 31 | `theorem` | [endEquivAutGalois_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endequivautgalois-mul--9074746d4bcb9568d8d8051e.md) | 350 | `result-track:9074746d4bcb9568d8d8051e4554165295ba9ba2c5c3ca042c48b0716e5ab128` |
| 32 | `def` | [endMulEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endmulequivautgalois--c9acca65b26221b01c3dc32e.md) | 361 | `declaration-track:c9acca65b26221b01c3dc32e696b11148651f2e5ede8ab3df9605fe0e0202d9c` |
| 33 | `lemma` | [endMulEquivAutGalois_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/endmulequivautgalois-pi--be233b02b9f974fe5c40483d.md) | 364 | `result-track:be233b02b9f974fe5c40483df5f8e763a25cdad473aa442a0e495949215a38f3` |
| 34 | `theorem` | [FibreFunctor.end_isUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/fibrefunctor-end-isunit--f7bc77154fcd156cb55f4319.md) | 369 | `result-track:f7bc77154fcd156cb55f431931311cab74c6a3d558ae5adffce91badb0c234a0` |
| 35 | `instance` | [FibreFunctor.end_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/fibrefunctor-end-isiso--a511c3d7270c7b3014f2516a.md) | 374 | `declaration-track:a511c3d7270c7b3014f2516a142561c0b05df8b1c5f9ddeeb054640c1a5cb43c` |
| 36 | `def` | [autMulEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autmulequivautgalois--a563954fc2afcb58fed042c0.md) | 381 | `declaration-track:a563954fc2afcb58fed042c02cdfb57f3246c8cf3d4e5645ad7096f01ddd28a4` |
| 37 | `lemma` | [autMulEquivAutGalois_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autmulequivautgalois--3e517d65dffdbcfbaba257c0.md) | 393 | `result-track:3e517d65dffdbcfbaba257c0a61406d85a354b82cb252f56e568d55afd451796` |
| 38 | `lemma` | [autMulEquivAutGalois_symm_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/autmulequivautgalois-symm-app--914531c5469d50efcfd9ef53.md) | 401 | `result-track:914531c5469d50efcfd9ef53734667fb469badd3fdcb898409b51086d0d533b3` |
| 39 | `theorem` | [FiberFunctor.isPretransitive_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/fiberfunctor-ispretransitive-of-isgalois--0ecee7e2cefcb20174e82095.md) | 411 | `result-track:0ecee7e2cefcb20174e82095dea34e8f8a2d8bd80868387259624d05d15b9270` |
| 40 | `instance` | [FiberFunctor.isPretransitive_of_isConnected'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/fiberfunctor-ispretransitive-of-isconnected--c2f4179937a6020061236998.md) | 421 | `declaration-track:c2f4179937a60200612369989492e438e8407307e9135acf4e4f6ba5a8b70090` |
| 41 | `instance` | [FiberFunctor.isPretransitive_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/declarations/fiberfunctor-ispretransitive-of-isconnected--9fe871451d0a9ee9528250d7.md) | 442 | `declaration-track:9fe871451d0a9ee9528250d7dfd800013877ae9b1fd010f2ffd2055faa374f86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
