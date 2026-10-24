# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a34610df4bf223623f55910e09cfa399689550",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a34610df4bf223623f55910e09cfa399689550`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.SlashInvariantForms` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModularForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularform--d35712a2f5e329ecf65655a9.md) | 41 | `declaration-track:d35712a2f5e329ecf65655a9543d01293e6623eb8f0a997c2948575143c23115` |
| 2 | `structure` | [CuspForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspform--ee58dd561784e7f5d59250b9.md) | 50 | `declaration-track:ee58dd561784e7f5d59250b990cb8a033aec87ebd728b7d34649f3ca2ce51526` |
| 3 | `class` | [ModularFormClass](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularformclass--4df5fec83b1fba4b1dac9aff.md) | 61 | `declaration-track:4df5fec83b1fba4b1dac9aff1c7a5933e44e479363f88b3b489ef2c435d3b2aa` |
| 4 | `class` | [CuspFormClass](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspformclass--82608b1bcd4fc75478408577.md) | 70 | `declaration-track:82608b1bcd4fc7547840857716d54f76aed74b02d5219fae467cc0b53ab54f84` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--5c7e332a41859509939145a5.md) | 76 | `declaration-track:5c7e332a41859509939145a50e052b0ad246d205e288bfc151406b30c8d22c4f` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--529a95b309a3f64ea3bcfb5a.md) | 85 | `declaration-track:529a95b309a3f64ea3bcfb5a0ece6f47182f881a604869d6f546902cab57a7d2` |
| 7 | `theorem` | [ModularForm.toFun_eq_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularform-tofun-eq-coe--4f488a10b10c2f49af10afd7.md) | 95 | `result-track:4f488a10b10c2f49af10afd7f3f1d103975f0259985fc9daa492e73830154e28` |
| 8 | `theorem` | [ModularForm.toSlashInvariantForm_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularform-toslashinvariantform-coe--bc7994229f81e6c5a867b2ec.md) | 100 | `result-track:bc7994229f81e6c5a867b2eced46b57d93d7fd32c96d5a725a44f91917fbfe67` |
| 9 | `theorem` | [CuspForm.toFun_eq_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspform-tofun-eq-coe--0a230794d3b278860b76d40c.md) | 103 | `result-track:0a230794d3b278860b76d40c8fb4a72d511def7131b3c472bdffed06a81b6a23` |
| 10 | `theorem` | [CuspForm.toSlashInvariantForm_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspform-toslashinvariantform-coe--f7b41019f7e9f40508c676e9.md) | 108 | `result-track:f7b41019f7e9f40508c676e95dbe57d95e3a0bb4340b578b5c2d8a70e6cd6656` |
| 11 | `theorem` | [ModularForm.ext](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularform-ext--4a08fe872d13b1fab8664449.md) | 111 | `result-track:4a08fe872d13b1fab8664449b809868183cef4cb2fa94705d37e0587b82da457` |
| 12 | `theorem` | [CuspForm.ext](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspform-ext--22592c30b8fd4b916a4cf8f7.md) | 116 | `result-track:22592c30b8fd4b916a4cf8f75bda0ab515fed72aa0afd530c8ffd61b7bd39d02` |
| 13 | `def` | [ModularForm.copy](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/modularform-copy--36c0334ebc532e9383e45041.md) | 122 | `declaration-track:36c0334ebc532e9383e450415de906f654bd1985f16ab07ada902322fe8c4b40` |
| 14 | `def` | [CuspForm.copy](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/cuspform-copy--8a5c7263a05c3d4ed642506e.md) | 131 | `declaration-track:8a5c7263a05c3d4ed642506ee57c856f4673e5f99832119d3ac1649efbc3e8fe` |
| 15 | `instance` | [add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/add--f7087cf783c5327cee042f23.md) | 145 | `declaration-track:f7087cf783c5327cee042f23295d4c969efbc5bb321528181b65de87e156863d` |
| 16 | `theorem` | [coe_add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-add--a2109bdaece49690c6ce0f9f.md) | 153 | `result-track:a2109bdaece49690c6ce0f9fe4ca54d7fd77ab1f91443858e9d341d792e8e841` |
| 17 | `theorem` | [add_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/add-apply--93580c5ec249e2cfba339b90.md) | 158 | `result-track:93580c5ec249e2cfba339b9066ef456d494cb563abb0dbba7930d95ec1916976` |
| 18 | `instance` | [hasZero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/haszero--abcc7e47d182eb1d9afc44d0.md) | 162 | `declaration-track:abcc7e47d182eb1d9afc44d039c07c70c0c04bbb37020fbe610e72c0469813b9` |
| 19 | `theorem` | [coe_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-zero--f9785861a7979ff279f8eb68.md) | 169 | `result-track:f9785861a7979ff279f8eb68191f064fa65ae84cee6c0434e1fc518bcc1fc850` |
| 20 | `theorem` | [zero_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/zero-apply--a87164571b47c65d9f76bf90.md) | 174 | `result-track:a87164571b47c65d9f76bf90a8b9aba988322db03ff6918dbbdec008c55e6bd1` |
| 21 | `instance` | [hasSmul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hassmul--5723cfd03663114f16ab3a1d.md) | 182 | `declaration-track:5723cfd03663114f16ab3a1d486c2772cc82a87874e81a215a3abc47365e0495` |
| 22 | `theorem` | [coe_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-smul--2b1188dbfcab5c5be9fedb82.md) | 190 | `result-track:2b1188dbfcab5c5be9fedb82b1978c73f6d2bc9f21441d7b5988a5456e82b21b` |
| 23 | `theorem` | [smul_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/smul-apply--0b719bff576a2871aeaf566f.md) | 195 | `result-track:0b719bff576a2871aeaf566fe2ef3a298f50b6b183273924555148aa60790207` |
| 24 | `instance` | [hasNeg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hasneg--d71470c9864f1147c62118a5.md) | 201 | `declaration-track:d71470c9864f1147c62118a56f8f5b8e6a4d3bc90658b8582ba366a97ae0e1c8` |
| 25 | `theorem` | [coe_neg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-neg--7e498a9e16aa7d3a64f48a6a.md) | 209 | `result-track:7e498a9e16aa7d3a64f48a6af01ee9eec6bd752f4ccb9e268836a069cc70294d` |
| 26 | `theorem` | [neg_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/neg-apply--5f39bb9a2e8de9695063c538.md) | 214 | `result-track:5f39bb9a2e8de9695063c5383421731639ec20abea951dc983cd68c0d0f25f4d` |
| 27 | `instance` | [hasSub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hassub--fecc2ecb99c9e888a226a9c0.md) | 218 | `declaration-track:fecc2ecb99c9e888a226a9c05e74ea5174a6cc614b35a2a3d4a87b09d9c1b9c1` |
| 28 | `theorem` | [coe_sub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-sub--d3128e04c45913b557bf405b.md) | 223 | `result-track:d3128e04c45913b557bf405ba2d6b50f0ea0c46468f288ff8e70532f0916339d` |
| 29 | `theorem` | [sub_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/sub-apply--9a9fb257e0ade75534cab4d6.md) | 228 | `result-track:9a9fb257e0ade75534cab4d685173cd4096faf0bde39b374628e033167a86d88` |
| 30 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--7745e6136e50f4559194d95f.md) | 232 | `declaration-track:7745e6136e50f4559194d95f63cc57342362b80ea6122062fb581e01068a3e40` |
| 31 | `def` | [coeHom](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coehom--040fd9ba2bc762280e8c4a0c.md) | 237 | `declaration-track:040fd9ba2bc762280e8c4a0cd7a6d0dfb9f669b08fd988b2ea1d5962f2f0d504` |
| 32 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--b2b2a674e36d1ead2e4a4608.md) | 243 | `declaration-track:b2b2a674e36d1ead2e4a4608b8b95a9b10fc25b7f1c9e4c5c9b19bb122e4fc7c` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--ae0b2e188932669e7a0ba7e1.md) | 246 | `declaration-track:ae0b2e188932669e7a0ba7e14ef34ee731b2b8019c43bb28e38bc3de15712482` |
| 34 | `def` | [mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/mul--b38ec3b2ad34c0ebd3cefdba.md) | 251 | `declaration-track:b38ec3b2ad34c0ebd3cefdba347c5614c91c8f9ccee9b358fdbe2a9b1e629d5a` |
| 35 | `theorem` | [mul_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/mul-coe--b4bde4525b5ee3d8bb37389b.md) | 263 | `result-track:b4bde4525b5ee3d8bb37389b33c4fac79c1563f4407500e2120480a7772ffd4f` |
| 36 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--8c2f5c8087ee535b49f6c95b.md) | 268 | `declaration-track:8c2f5c8087ee535b49f6c95b7bc30d057259c97a2473afb75d34cc368dccc118` |
| 37 | `theorem` | [one_coe_eq_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/one-coe-eq-one--0d9e1110e72dad2328c87196.md) | 276 | `result-track:0d9e1110e72dad2328c87196c2ece207f64575caf3b1d324d8ca49dbf46c9268` |
| 38 | `instance` | [hasAdd](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hasadd--e2af3b57d38a478dc36081c2.md) | 288 | `declaration-track:e2af3b57d38a478dc36081c2ed34cbfbca079817cba4d0c45e003c45d7909b90` |
| 39 | `theorem` | [coe_add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-add--ceb43bdeb20f1aa2d7f88841.md) | 296 | `result-track:ceb43bdeb20f1aa2d7f88841655878f2f56573fba1a02157468b16236af6c446` |
| 40 | `theorem` | [add_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/add-apply--57d9f08d702f395d251ee9a4.md) | 301 | `result-track:57d9f08d702f395d251ee9a4bff54298af23053cd28cd3987ce4a0474cd62cf8` |
| 41 | `instance` | [hasZero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/haszero--34f7e601438420a60558823d.md) | 305 | `declaration-track:34f7e601438420a60558823d3dfa73f4ffb1190d7525ef7f41f084d337b914d4` |
| 42 | `theorem` | [coe_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-zero--accc9c69b2782a2fb3c4195f.md) | 312 | `result-track:accc9c69b2782a2fb3c4195fdfa5c7601e1b77571ad812c8994496a431767bb2` |
| 43 | `theorem` | [zero_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/zero-apply--29c6b053134c2a590673ce19.md) | 317 | `result-track:29c6b053134c2a590673ce193874b591f398de5b85c9376d9abe50c16cc39391` |
| 44 | `instance` | [hasSmul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hassmul--762345e607c153b891cb7aa9.md) | 325 | `declaration-track:762345e607c153b891cb7aa9f6c22b929942054766f0d1fef17d977e3048b152` |
| 45 | `theorem` | [coe_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-smul--e95d13e7fa0bfd940ce36bb8.md) | 333 | `result-track:e95d13e7fa0bfd940ce36bb89369d914b425c1b2b9c41a23ab53f9554167f661` |
| 46 | `theorem` | [smul_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/smul-apply--4d217a9501683bd56f90eecf.md) | 338 | `result-track:4d217a9501683bd56f90eecf650659035845c7b4f740af954b2fe6cb3e18bc41` |
| 47 | `instance` | [hasNeg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hasneg--c61a64c1e7a1aa104a1221ff.md) | 344 | `declaration-track:c61a64c1e7a1aa104a1221ff3d6604f3c7a96d3c333976d3f85987abb1edcf05` |
| 48 | `theorem` | [coe_neg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-neg--0c14d50fa0c30a69b833396a.md) | 352 | `result-track:0c14d50fa0c30a69b833396a05093f7da7fd640f1ec3aa3b074d354f46a4c5d8` |
| 49 | `theorem` | [neg_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/neg-apply--f045f431a411aa960d29b0e0.md) | 357 | `result-track:f045f431a411aa960d29b0e032bf5a33afd16de15985125ae50241035ae8736c` |
| 50 | `instance` | [hasSub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/hassub--efa0c3950adead2afb924ebf.md) | 361 | `declaration-track:efa0c3950adead2afb924ebf6037cb40e7d22b032882d11c48e303e1eda696f7` |
| 51 | `theorem` | [coe_sub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coe-sub--515804c6495bfccd17db7714.md) | 366 | `result-track:515804c6495bfccd17db771492cf436db3e7f621850098c71c57258a677c232e` |
| 52 | `theorem` | [sub_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/sub-apply--03a20515451c4dce23037c41.md) | 371 | `result-track:03a20515451c4dce23037c4163493a3c1cf827d9eb04498bc1fae2f2021f0ec5` |
| 53 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--bb75939724eba977a3be2ffa.md) | 375 | `declaration-track:bb75939724eba977a3be2ffa885c3affe5177858962f8f9c2acbc1241d601441` |
| 54 | `def` | [coeHom](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/coehom--0e1601a50203adc64e1a7ba2.md) | 380 | `declaration-track:0e1601a50203adc64e1a7ba21b6fc459627b8743582d40c42ee3bab84fe8d769` |
| 55 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--1c250ab8c70d92c9a7c31d1d.md) | 386 | `declaration-track:1c250ab8c70d92c9a7c31d1dd354fd8ebb59e40d278f7d09202e4099e07bf0ce` |
| 56 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--099a10763dba0f2c7bde5cc2.md) | 389 | `declaration-track:099a10763dba0f2c7bde5cc2b1bb0912951132db1fcb91471be546dde70c96d1` |
| 57 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean/declarations/instance--e1dd1316c3d921c9f73f7748.md) | 392 | `declaration-track:e1dd1316c3d921c9f73f77482cdba79ed345f05eec56f480b23e1d0eb6f13e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
