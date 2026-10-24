# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudoelements.Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4290ecf81731b4641c45d60ada187c237791ab9b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4290ecf81731b4641c45d60ada187c237791ab9b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/app--c962c981389f07b1c1a89788.md) | 102 | `declaration-track:c962c981389f07b1c1a89788e04bb927583cf0424a5319fbddeb57884a85e339` |
| 2 | `theorem` | [app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/app-hom--b6d0a4dbbdf4b6cab741975b.md) | 106 | `result-track:b6d0a4dbbdf4b6cab741975b2bff3f612965ad3f202b94e1decbce96a4a4a895` |
| 3 | `def` | [PseudoEqual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoequal--863cc88e0b778336e322b4ed.md) | 110 | `declaration-track:863cc88e0b778336e322b4ed9b649aa3313544e33516a9b8d7a07e25358a9b89` |
| 4 | `theorem` | [pseudoEqual_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoequal-refl--6338f8b6fd97826610a82886.md) | 113 | `result-track:6338f8b6fd97826610a82886f2c39aa4172fa0bba2a669f0f16a9ddbe0b714ef` |
| 5 | `theorem` | [pseudoEqual_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoequal-symm--0e51bf86d3a234bb3839dad1.md) | 116 | `result-track:0e51bf86d3a234bb3839dad1ff795d9b0bcf5512e16f5ec1d461f757cf09dd54` |
| 6 | `theorem` | [pseudoEqual_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoequal-trans--10ae6a4971c24a44dd33575b.md) | 125 | `result-track:10ae6a4971c24a44dd33575b54fcff1fd1dfeb9d7d196cf7a5fd90b18d3e9e1e` |
| 7 | `def` | [Pseudoelement.setoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoelement-setoid--3067cebd01c19038d3a94d68.md) | 135 | `declaration-track:3067cebd01c19038d3a94d68cb34ff2cac365482938e72542bc74061386e40e3` |
| 8 | `def` | [Pseudoelement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoelement--7d2519c76a330f3c5a0f79f4.md) | 142 | `declaration-track:7d2519c76a330f3c5a0f79f4942e0235690f19e4979b8a435cf3006c90b8ffc8` |
| 9 | `def` | [objectToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/objecttosort--d54301c3938adbc045363e5c.md) | 148 | `declaration-track:d54301c3938adbc045363e5c3a92a6d8dde174aa45c455002c566a618edcfd1d` |
| 10 | `def` | [overToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/overtosort--ba093b9a7564d132c993e7b8.md) | 156 | `declaration-track:ba093b9a7564d132c993e7b80303734fecc4dccaef881897ec8455ad0b08baf2` |
| 11 | `theorem` | [over_coe_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/over-coe-def--fc069c5f586ee30ddd50b69f.md) | 161 | `result-track:fc069c5f586ee30ddd50b69fb58581a95f240a53142b3b4bf53db0f1cd70b726` |
| 12 | `theorem` | [pseudoApply_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoapply-aux--e9696f346f9a93c6333bbe3d.md) | 164 | `result-track:e9696f346f9a93c6333bbe3d7f2397240339dba04a5b9a492b6002d63564acf1` |
| 13 | `def` | [pseudoApply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoapply--af4f804f3ba610417a32c07f.md) | 169 | `declaration-track:af4f804f3ba610417a32c07ff11b171fc938774f66eddc179d9a89e69edeef2c` |
| 14 | `def` | [homToFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/homtofun--c1bf8aa5aaaf88fb9c1b88d5.md) | 173 | `declaration-track:c1bf8aa5aaaf88fb9c1b88d5be0c82ef5ecc66ee80101d6f538f55bb54d4617a` |
| 15 | `theorem` | [pseudoApply_mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudoapply-mk--2a78eed3cabefe5f7c3abb4a.md) | 180 | `result-track:2a78eed3cabefe5f7c3abb4a9ab77ff432c4c346cab1b716c8321f0ab6c2fad1` |
| 16 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/comp-apply--621a4837ebe41b59286f4534.md) | 185 | `result-track:621a4837ebe41b59286f4534040c63b0fa4cc1059cb35d5bcf156d73d43596b3` |
| 17 | `theorem` | [comp_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/comp-comp--08d92b143fb469e5d8d536ff.md) | 192 | `result-track:08d92b143fb469e5d8d536ff172bf4d3dd0cb0f8064d886c7b3d1e6b068c7535` |
| 18 | `theorem` | [pseudoZero_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudozero-aux--0a8f824606c0aec9d4323887.md) | 209 | `result-track:0a8f824606c0aec9d4323887227036a39e887a4ccd1879ebe42ed84be67eccd3` |
| 19 | `theorem` | [zero_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-eq-zero--89cb63971b0f4d83d9170a72.md) | 216 | `result-track:89cb63971b0f4d83d9170a72ce0e81e3e854f10a43200b63b454624675fb9feb` |
| 20 | `def` | [pseudoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudozero--1b01408696497c3dd1384796.md) | 221 | `declaration-track:1b01408696497c3dd13847962aa996b6c11e2a196dbb777fc132d55e4690e565` |
| 21 | `instance` | [hasZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/haszero--3295a1c76efa76d22a31e348.md) | 228 | `declaration-track:3295a1c76efa76d22a31e348e80f8e36e8602ff48382ecaf7afb23ee4f6bb57b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/instance--f5080fac738ac352c46c9b30.md) | 231 | `declaration-track:f5080fac738ac352c46c9b304a1e62b779eb5390f3752e7f7d3b162ebc7b2fb3` |
| 23 | `theorem` | [pseudoZero_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudozero-def--4a0a96c83da368fa714421b6.md) | 234 | `result-track:4a0a96c83da368fa714421b647f7c603bc0987bcf928705bc77cb726875ac366` |
| 24 | `theorem` | [zero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-eq-zero--c8900899f024c270e3207bb5.md) | 237 | `result-track:c8900899f024c270e3207bb530a6b0f17645694f3feb183345ed1f5225d45681` |
| 25 | `theorem` | [pseudoZero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudozero-iff--e9a33bfc8961eae4e8bc7425.md) | 241 | `result-track:e9a33bfc8961eae4e8bc74257a882a4a8ba6f77957756c71fc0ea7f05d1b5f58` |
| 26 | `theorem` | [apply_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/apply-zero--982d566831ad0b10882decf1.md) | 251 | `result-track:982d566831ad0b10882decf11ef9ef9e310f1e589c78d39677edbd3c2f55c4d9` |
| 27 | `theorem` | [zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-apply--ad262ecb5c0626c00778eebc.md) | 257 | `result-track:ad262ecb5c0626c00778eebced8e3b0b6a917b28c1213e03fbb4314974642040` |
| 28 | `theorem` | [zero_morphism_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-morphism-ext--4dcfd1e742c10c93f13c4fa9.md) | 263 | `result-track:4dcfd1e742c10c93f13c4fa94ccd4bc3bc5462b1c75eaa35378eda916de5850e` |
| 29 | `theorem` | [zero_morphism_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-morphism-ext--7148255042098d2d7c77e58c.md) | 267 | `result-track:7148255042098d2d7c77e58c625c5158ca9ea5f295ce1eb802ff6bcedefb9e5b` |
| 30 | `theorem` | [eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/eq-zero-iff--f9db6897cac2d3bc3a362357.md) | 270 | `result-track:f9db6897cac2d3bc3a362357fd30316ada68ccc0b35f36c2115dceadd1bc8440` |
| 31 | `theorem` | [pseudo_injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudo-injective-of-mono--97950cb6db9715f76bcda81b.md) | 274 | `result-track:97950cb6db9715f76bcda81b2ec37dbca77cc09b7e6271b5b19d650fc7ffdd5b` |
| 32 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/zero-of-map-zero--b4e85b4a22ead2d9d0a3d4b6.md) | 285 | `result-track:b4e85b4a22ead2d9d0a3d4b646f35dc8fddee1f3daf1996e6119a9223eb330a9` |
| 33 | `theorem` | [mono_of_zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/mono-of-zero-of-map-zero--722a3f28a2597bce292de4fd.md) | 291 | `result-track:722a3f28a2597bce292de4fd6275055f4d7bf28e88db35ec91923346ba48c176` |
| 34 | `theorem` | [pseudo_surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudo-surjective-of-epi--4066fcb31c04110bc48f7223.md) | 299 | `result-track:4066fcb31c04110bc48f722374ca441f0c8f45d8520c79b54c08d4a9abf6774a` |
| 35 | `theorem` | [epi_of_pseudo_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/epi-of-pseudo-surjective--6d334cfd0427c00e8fb6404e.md) | 310 | `result-track:6d334cfd0427c00e8fb6404e771e55f3b75a639a23e91b903716ce338a292cc5` |
| 36 | `theorem` | [pseudo_exact_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudo-exact-of-exact--850eefce549afd1bc37f4ac7.md) | 326 | `result-track:850eefce549afd1bc37f4ac766d7e31e0753e967a02dcb99270fbdd011e0e9f5` |
| 37 | `theorem` | [apply_eq_zero_of_comp_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/apply-eq-zero-of-comp-eq-zero--202e3e232d75e99f347a2c70.md) | 355 | `result-track:202e3e232d75e99f347a2c70960bc5ed85681c0c22506aa46863be390b783478` |
| 38 | `theorem` | [exact_of_pseudo_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/exact-of-pseudo-exact--8c4cf4e3a5dd18be8fc5544a.md) | 361 | `result-track:8c4cf4e3a5dd18be8fc5544a19a0dc45ab8fa28f74f93b1797d39e0c6202bfc0` |
| 39 | `theorem` | [sub_of_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/sub-of-eq-image--8bfeaec02a667701dcb1216e.md) | 396 | `result-track:8bfeaec02a667701dcb1216e47d8c376fd6bde1738889d418b4ccd9fde30f294` |
| 40 | `theorem` | [pseudo_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/pseudo-pullback--02c400b5a7cd5c9efd5e15f8.md) | 423 | `result-track:02c400b5a7cd5c9efd5e15f8fef1ec9dd37833e7d640a1624d20feac0043832f` |
| 41 | `theorem` | [ModuleCat.eq_range_of_pseudoequal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/declarations/modulecat-eq-range-of-pseudoequal--9ac217cb7aaa4a9119c8e32d.md) | 438 | `result-track:9ac217cb7aaa4a9119c8e32d2061cb543bd2d916ac77f15403797dd5416567fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
