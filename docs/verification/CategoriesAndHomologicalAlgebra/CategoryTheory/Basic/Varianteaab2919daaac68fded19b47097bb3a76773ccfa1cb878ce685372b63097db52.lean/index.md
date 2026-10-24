# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57f9ce42a88b19dab1ecb49691051714427785bf",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57f9ce42a88b19dab1ecb49691051714427785bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.SmallShiftedHom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hasext--1fbe9d9aaa624f5276686c2a.md) | 51 | `declaration-track:1fbe9d9aaa624f5276686c2ac74be72dee7c361148d5cb1710be120a61b10925` |
| 2 | `lemma` | [hasExt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hasext-iff--8c332149f2126daf39c920cc.md) | 55 | `result-track:8c332149f2126daf39c920cc085e648e1b732f7866c1855ed4cecff4d4497884` |
| 3 | `lemma` | [hasExt_of_hasDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hasext-of-hasderivedcategory--0455bde2acd3be390dc82e86.md) | 84 | `result-track:0455bde2acd3be390dc82e862a6866e160e92f8d09f8da1c3947e7b4e7e38e68` |
| 4 | `lemma` | [HasExt.standard](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hasext-standard--56946201c029d79f4436fb4a.md) | 88 | `result-track:56946201c029d79f4436fb4adfdd0760f0ebcec845b3fc0e8e27254baabf31ac` |
| 5 | `def` | [Ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext--231f8d48bd397e70f44441b7.md) | 99 | `declaration-track:231f8d48bd397e70f44441b78385a3a258e4f0f9b975d181faa8926852b5d9f3` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp--7454a0c7e29c3cda7d7f9d9e.md) | 109 | `declaration-track:7454a0c7e29c3cda7d7f9d9e52109d21f1491f256785cfe5071db28ee5170e38` |
| 7 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-assoc--a2f05b5b37016b61e8de2f93.md) | 113 | `result-track:a2f05b5b37016b61e8de2f93a7f2478985666f0f0862fe0b7f55d4f79afb3aab` |
| 8 | `lemma` | [comp_assoc_of_second_deg_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-assoc-of-second-deg-zero--42554798773cc75f9210c8a6.md) | 120 | `result-track:42554798773cc75f9210c8a672917c71c8e4ec6326906bbc652db2f928e07397` |
| 9 | `lemma` | [comp_assoc_of_third_deg_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-assoc-of-third-deg-zero--fb8a07040d260dc10bbb7f12.md) | 128 | `result-track:fb8a07040d260dc10bbb7f128cd2bb1279ad7a68da936f8883837c4c14f96bb8` |
| 10 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/homequiv--2719662dfa4ba9598c21711e.md) | 141 | `declaration-track:2719662dfa4ba9598c21711e65d4a7aa8bc8844cf632f15a23d9244e77558432` |
| 11 | `abbrev` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hom--ef515e9ab0e0f46cb2fab839.md) | 147 | `declaration-track:ef515e9ab0e0f46cb2fab8394bc671bd47b5076fda245528840e674cbca0a8f3` |
| 12 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-hom--6060c39dd50b63580ed0255b.md) | 152 | `result-track:6060c39dd50b63580ed0255b883245e4bd6f41b805a0e3a6e1dce468679e8906` |
| 13 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext--aa084e7da235a31c899dd104.md) | 157 | `result-track:aa084e7da235a31c899dd10412bc9550b56a688822e2bc937ab1223630db1952` |
| 14 | `def` | [mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk--ce3bf59e40306ccdf56bdd09.md) | 163 | `declaration-track:ce3bf59e40306ccdf56bdd096eefe2688267fd2a64174dc30bc837c9a684fc6c` |
| 15 | `lemma` | [mk₀_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-hom--01dc47cbc747660736cfcaa7.md) | 167 | `result-track:01dc47cbc747660736cfcaa7d347854637079b74ee68433a43af88d484485681` |
| 16 | `lemma` | [mk₀_comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-comp-mk--be49f6d211d0b3f7b3cbedc7.md) | 172 | `result-track:be49f6d211d0b3f7b3cbedc7692a71c426e9638eead790e3446cda4264eea73c` |
| 17 | `lemma` | [mk₀_comp_mk₀_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-comp-mk-assoc--509c717f807a2f961bb904c3.md) | 177 | `result-track:509c717f807a2f961bb904c31f69a0ccf2cc246aaf191c920b7701d896c9b128` |
| 18 | `lemma` | [mk₀_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-bijective--ae521f232e273e30bc559910.md) | 185 | `result-track:ae521f232e273e30bc559910d8c7f43349b62f46fc9b5c51ef07070b979ec9d8` |
| 19 | `def` | [homEquiv₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/homequiv--815554835e6a5d0f3706f0bb.md) | 202 | `declaration-track:815554835e6a5d0f3706f0bbc830e835b75597ed8ecddee81195a1af1ea3cc8f` |
| 20 | `lemma` | [mk₀_homEquiv₀_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-homequiv-apply--dab32d44df54f2eaee2ca2c2.md) | 206 | `result-track:dab32d44df54f2eaee2ca2c2f5354645b8284b7a5b2f4821f6b00974c3df3ed0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/instance--2c6549eb91393d1d7839338b.md) | 220 | `declaration-track:2c6549eb91393d1d7839338b4a1cedd3323690abff50c1e73a7070934d7efb1a` |
| 22 | `abbrev` | [hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hom--d58bb5df09d3a52a89f4a31f.md) | 228 | `declaration-track:d58bb5df09d3a52a89f4a31fa6f22574adf7bb7eaf29fbb8c585a23fd2d86205` |
| 23 | `lemma` | [add_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/add-hom--ab9d086b6b671a64f4dbfdf5.md) | 234 | `result-track:ab9d086b6b671a64f4dbfdf53ba9dbb3da9bb900e9288e33871a83051821933a` |
| 24 | `lemma` | [neg_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/neg-hom--86f4dd28819679285e46a848.md) | 238 | `result-track:86f4dd28819679285e46a848748855807dcae8e7ef8ab0e3930d084c42ff47d0` |
| 25 | `lemma` | [zero_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/zero-hom--3b290f53c0d95c22e035b2e9.md) | 243 | `result-track:3b290f53c0d95c22e035b2e97f6776f7b467b05cc5c1a142bfc4794fbdb0e067` |
| 26 | `lemma` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/add-comp--900f70b8b74ab36dea127869.md) | 248 | `result-track:900f70b8b74ab36dea1278699217f83fb47156939519a7535b33d39cc00085ae` |
| 27 | `lemma` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-add--56b3ea52a0f83cd4a1d11f0e.md) | 253 | `result-track:56b3ea52a0f83cd4a1d11f0e6d5aed802b1765129684559c404ccf6f2560bc22` |
| 28 | `lemma` | [neg_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/neg-comp--ca26a513c637079842abfab7.md) | 258 | `result-track:ca26a513c637079842abfab77c880f697bb2a50fc9c356f88c465fffa9449218` |
| 29 | `lemma` | [comp_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-neg--117127d142c98e6166acbce9.md) | 263 | `result-track:117127d142c98e6166acbce92f08dc24e1eef73196a20b0d39e1fa79318c385f` |
| 30 | `lemma` | [zero_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/zero-comp--6a08cc3d7d512763debac017.md) | 269 | `result-track:6a08cc3d7d512763debac017ff3aad06dc3e4d5c3d611732955fec2c9ad16589` |
| 31 | `lemma` | [comp_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-zero--45cae8d2188effdeb7588a9b.md) | 274 | `result-track:45cae8d2188effdeb7588a9b28fbc110716d2907a08ec632720b3fc9b991bd42` |
| 32 | `lemma` | [mk₀_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-id-comp--554763d577f079f3f8f4ff3a.md) | 279 | `result-track:554763d577f079f3f8f4ff3a985ff7bfba31a91c1884c6a9bec3ce24f45b0944` |
| 33 | `lemma` | [comp_mk₀_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/comp-mk-id--0d449c56968dba5bad29c5ac.md) | 284 | `result-track:0d449c56968dba5bad29c5ac1803fe9196bd4262c79fbc5d5acde625f2de35ff` |
| 34 | `lemma` | [mk₀_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-zero--d18d5b48aa87144cc9a2c4fb.md) | 290 | `result-track:d18d5b48aa87144cc9a2c4fb62ad6ed03cd5d8c821e8710071503bc3cf70349a` |
| 35 | `lemma` | [mk₀_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-add--da41e9f43adf36758b24a29d.md) | 293 | `result-track:da41e9f43adf36758b24a29d17eea18fa480d77a8fdd8bc934bfb13ad13e16dd` |
| 36 | `def` | [addEquiv₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/addequiv--3a598a361f0771c6a2590ac4.md) | 298 | `declaration-track:3a598a361f0771c6a2590ac448e2f1d8d14b03b6e1f04a315a2ae465d7e45572` |
| 37 | `lemma` | [mk₀_addEquiv₀_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/mk-addequiv-apply--66bb8b331de513acfd061ba5.md) | 304 | `result-track:66bb8b331de513acfd061ba5a27ccadee8dff4078fcf2cf82610ecb002775b2d` |
| 38 | `lemma` | [biprod_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/biprod-ext--d28c79402ed2df0103f60092.md) | 311 | `result-track:d28c79402ed2df0103f60092aa2acec7ce8dcf4cb878c2f633a34f701aa14bea` |
| 39 | `lemma` | [zero_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/zero-hom--32aecaa2f9651861e1ee397d.md) | 327 | `result-track:32aecaa2f9651861e1ee397d80c6d68e7ca069c27d48e18e500e1eff93bc1694` |
| 40 | `lemma` | [add_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/add-hom--e0ecc476a82801224ef7dc90.md) | 334 | `result-track:e0ecc476a82801224ef7dc908ef8761e8d78cee94c950656eaed32de476dd3cb` |
| 41 | `lemma` | [neg_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/neg-hom--d8bcc3c8cf5cc654e6dfc0e1.md) | 355 | `result-track:d8bcc3c8cf5cc654e6dfc0e1a966c256fc42922fe95a6ad8066bf2c7cbd68b7d` |
| 42 | `def` | [homAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/homaddequiv--31dac4d76a9cffa24c7ec53d.md) | 360 | `declaration-track:31dac4d76a9cffa24c7ec53dfb76a89dde0afd7bfc3a1aa8c91fcca9ce1c65ff` |
| 43 | `lemma` | [homAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/homaddequiv-apply--2e6626e6d8d29fd3250af92d.md) | 367 | `result-track:2e6626e6d8d29fd3250af92d7d78bc30ffd6ab95130de43c2837a62e129a68f5` |
| 44 | `def` | [bilinearComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/bilinearcomp--91662f21906756cf9a93ea05.md) | 374 | `declaration-track:91662f21906756cf9a93ea059ad3c531dd97bf686c1ed529ee8131491974d190` |
| 45 | `abbrev` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/postcomp--fef70fb9b64d80269a618041.md) | 379 | `declaration-track:fef70fb9b64d80269a618041a60d600739d0e2b6c8648b825a49f869f828d894` |
| 46 | `abbrev` | [precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/precomp--ed3c5830aff8513d06a00a93.md) | 384 | `declaration-track:ed3c5830aff8513d06a00a938e4aed71c08660e56cb08c9d04eec10f617b2c2e` |
| 47 | `def` | [extFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/extfunctorobj--a34e1df26d425f96a35b2245.md) | 392 | `declaration-track:a34e1df26d425f96a35b2245bd4f06b4011608ef21b08d08b6ec4cb109481813` |
| 48 | `def` | [extFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/extfunctor--48af4c7d41a4c7f1248fa20c.md) | 406 | `declaration-track:48af4c7d41a4c7f1248fa20c945d5b2c36f1cf158014a1d4c8480b6147ce68d7` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/instance--af432a62db082793cfdb1408.md) | 428 | `declaration-track:af432a62db082793cfdb1408aba30fee044681fe9e699c796dbf1088eb82abff` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/instance--c80fdcfd7868bbaf4376743e.md) | 430 | `declaration-track:c80fdcfd7868bbaf4376743edc3f27bd4b41de976a3531d43360052574d546d7` |
| 51 | `lemma` | [Ext.comp_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext-comp-sum--8bd45674374328527e156045.md) | 432 | `result-track:8bd45674374328527e156045d150100f3bbcb74e4283519b73f560a80ffd19cc` |
| 52 | `lemma` | [Ext.sum_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext-sum-comp--cdd886c5d34cef02102423d9.md) | 437 | `result-track:cdd886c5d34cef02102423d9d41bd4731413d8023ab681828a6b39cea46be71e` |
| 53 | `lemma` | [Ext.mk₀_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext-mk-sum--81b77a2b2ad04b66dccb88c2.md) | 442 | `result-track:81b77a2b2ad04b66dccb88c212e061ffa0dca8f22f585da7a3a4b8ed5e6f7430` |
| 54 | `def` | [Ext.biproductAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext-biproductaddequiv--78784bc0f25049d8d6d569e5.md) | 447 | `declaration-track:78784bc0f25049d8d6d569e5a598b8eb71456bb8fcd18a7d93673c50fc4c3938` |
| 55 | `def` | [Ext.addEquivBiproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/ext-addequivbiproduct--9de86f056621d56e22cfb546.md) | 464 | `declaration-track:9de86f056621d56e22cfb54681c94454ec7d1feffc023c74de6c951580924571` |
| 56 | `def` | [chgUniv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/chguniv--52bbafc4a96ab96a093a5c47.md) | 489 | `declaration-track:52bbafc4a96ab96a093a5c479f13fbea545f216744c58c48aa2061905f0833d4` |
| 57 | `lemma` | [homEquiv_chgUniv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/homequiv-chguniv--29337ce631531b961c361499.md) | 492 | `result-track:29337ce631531b961c361499962ad7ae36cb06a97b31bc0dd5a1426153b5fb97` |
| 58 | `lemma` | [hasExt_iff_small_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean/declarations/hasext-iff-small-ext--b8995fcbb4d7425332d54c1b.md) | 505 | `result-track:b8995fcbb4d7425332d54c1b4ce24e4f6d64934463bfcc89dcc7deacad2fbc2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
