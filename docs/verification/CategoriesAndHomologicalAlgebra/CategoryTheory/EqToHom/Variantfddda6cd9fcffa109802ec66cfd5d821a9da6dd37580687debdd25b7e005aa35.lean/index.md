# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqToHom.Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dfe4c7c640680b4abb28737eefd521a069dd437",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dfe4c7c640680b4abb28737eefd521a069dd437`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom--994d31de2d0067338becb943.md) | 49 | `declaration-track:994d31de2d0067338becb9439b23615b270b7bae0b03ec444bff7c6d91e2286c` |
| 2 | `theorem` | [eqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-refl--f845a7e25e13076c16870d5a.md) | 52 | `result-track:f845a7e25e13076c16870d5a811a80f03aae3faa296771bfdfe66ffdf2b9097f` |
| 3 | `theorem` | [eqToHom_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-trans--05b6d3f64849adae9a05ec8a.md) | 56 | `result-track:05b6d3f64849adae9a05ec8aac4d4b0489be36a7a9b108e22b22fe033a6d49b6` |
| 4 | `lemma` | [eqToHom_heq_id_dom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-heq-id-dom--72972c1850ab1a2dd7139845.md) | 63 | `result-track:72972c1850ab1a2dd71398455c166b0a4929cae48be329102b6b127ee568d05f` |
| 5 | `lemma` | [eqToHom_heq_id_cod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-heq-id-cod--01d4d966a5d4cf0d00f55523.md) | 67 | `result-track:01d4d966a5d4cf0d00f5552387108d7c1df7e929147da7f20f4349ae3b68a840` |
| 6 | `theorem` | [conj_eqToHom_iff_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/conj-eqtohom-iff-heq--0ce1704b9541084cfe84f755.md) | 72 | `result-track:0ce1704b9541084cfe84f75544859fe4c0892a233b2a609715c8472d01a4daca` |
| 7 | `theorem` | [conj_eqToHom_iff_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/conj-eqtohom-iff-heq--f5e78f499302aba074fdfe69.md) | 78 | `result-track:f5e78f499302aba074fdfe695cb98296cbde5c4325935fcaab7aa7c7e9110a31` |
| 8 | `theorem` | [comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/comp-eqtohom-iff--77bf9ea32317a37028bf9bb9.md) | 82 | `result-track:77bf9ea32317a37028bf9bb9585cacdfc48721bc4c80671061c29eb6660400a9` |
| 9 | `theorem` | [eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-comp-iff--a343058335dc0fb2e988bf49.md) | 87 | `result-track:a343058335dc0fb2e988bf4941ec15ff91ff018107d83fca03a5294f5b85c3df` |
| 10 | `theorem` | [eqToHom_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-comp-heq--9cf50b95fad697dfe02631eb.md) | 92 | `result-track:9cf50b95fad697dfe02631eb5641bc19d71d8c1a19ca015369faaa8efdc22f15` |
| 11 | `theorem` | [eqToHom_comp_heq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-comp-heq-iff--193a36676c6a4c8e38d69c37.md) | 96 | `result-track:193a36676c6a4c8e38d69c376772f875951c7f7ca1266d1d0d62d7f9db0820da` |
| 12 | `theorem` | [heq_eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/heq-eqtohom-comp-iff--c27243cbfcecc5926a2f3af6.md) | 101 | `result-track:c27243cbfcecc5926a2f3af6c6d1e2c86e3c5a4c228ae492ed9612270a5a8b4a` |
| 13 | `theorem` | [comp_eqToHom_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/comp-eqtohom-heq--5e31ef7af000adab6a67808d.md) | 106 | `result-track:5e31ef7af000adab6a67808d4d7d663fe097780f89f47ecdb6a50c77225a579c` |
| 14 | `theorem` | [comp_eqToHom_heq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/comp-eqtohom-heq-iff--41082f6b4654a82c37ae541c.md) | 110 | `result-track:41082f6b4654a82c37ae541c80e25ddb75108331ab00a0faeab626887893c12e` |
| 15 | `theorem` | [heq_comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/heq-comp-eqtohom-iff--75b3af2e0c2d4921fa714403.md) | 115 | `result-track:75b3af2e0c2d4921fa7144035cf6cca65d1654225843e755e202bd922932b756` |
| 16 | `theorem` | [heq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/heq-comp--aa5e9b7a2ac36e002781e8ad.md) | 120 | `result-track:aa5e9b7a2ac36e002781e8ad4b43c1f63c9d7009738580a8b3016319b119c46e` |
| 17 | `theorem` | [eqToHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-naturality--0f36013ab748d9f400b32b86.md) | 134 | `result-track:0f36013ab748d9f400b32b869ffd1f39ec96f80e94ae98472791ad156f19aebc` |
| 18 | `theorem` | [eqToHom_iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-iso-hom-naturality--97a2fe0672cc64e56a99abb6.md) | 144 | `result-track:97a2fe0672cc64e56a99abb61aff1408c19207d0d37486b3511414237792fe9f` |
| 19 | `theorem` | [eqToHom_iso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-iso-inv-naturality--c1d12ffaf9dfc59eba0c9e79.md) | 154 | `result-track:c1d12ffaf9dfc59eba0c9e791b60692ad66db1f64cc4283a8a7cf14c803ed5cc` |
| 20 | `theorem` | [congrArg_cast_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congrarg-cast-hom-left--ae97e9e77923e2720e77140f.md) | 161 | `result-track:ae97e9e77923e2720e77140f524f28926d60591b8106c73233441378191f843e` |
| 21 | `theorem` | [congrArg_mpr_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congrarg-mpr-hom-left--8ae4f82e8f68679046c652e2.md) | 173 | `result-track:8ae4f82e8f68679046c652e200456db77b7e6484e94d3477dd98c36567d865c5` |
| 22 | `theorem` | [congrArg_cast_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congrarg-cast-hom-right--9de005c3b59d87060cd007b5.md) | 180 | `result-track:9de005c3b59d87060cd007b5c40fe227175080242eb83c2dbe6b87b7744a8ea9` |
| 23 | `theorem` | [congrArg_mpr_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congrarg-mpr-hom-right--11585223c8797664ad3ba6dd.md) | 192 | `result-track:11585223c8797664ad3ba6dd28ae7c40844b1a3570d6cb833d6a27c765c93c44` |
| 24 | `def` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso--be063929ef34c05fc2d211ff.md) | 202 | `declaration-track:be063929ef34c05fc2d211ff7e9cbcfed6fcee07b0f795b370c96c4a54b04554` |
| 25 | `theorem` | [eqToIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-hom--7d61ee099890d8be931210b6.md) | 206 | `result-track:7d61ee099890d8be931210b6a550eef1c269a4b8591d9f4cac2aef2e7966da75` |
| 26 | `theorem` | [eqToIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-inv--856f089f8629861c465bb27b.md) | 210 | `result-track:856f089f8629861c465bb27b2b057e547b7429fb34b0ffa2ddbbaab07ea65232` |
| 27 | `theorem` | [eqToIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-refl--aa85457e9480260fd3c9f847.md) | 214 | `result-track:aa85457e9480260fd3c9f8474e9beae02a715ff6c225f6784cf3c8a163e94778` |
| 28 | `theorem` | [eqToIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-trans--a8f53d35edf2ea3645bd5c77.md) | 218 | `result-track:a8f53d35edf2ea3645bd5c77f302771d48e0c1de655c11284dc385f4e1d60fb4` |
| 29 | `theorem` | [eqToHom_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-op--fa3addb5fdc0014a28ea2e01.md) | 222 | `result-track:fa3addb5fdc0014a28ea2e01fd2b8858b661e2aeb1258f10cde8273cae61c93c` |
| 30 | `theorem` | [eqToHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-unop--0fb9374e88efe4877a90080f.md) | 227 | `result-track:0fb9374e88efe4877a90080f965109d674b29dcdea325078b7c4c3c356019768` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/instance--6bd6b06159a06e8cb23ebbbe.md) | 232 | `declaration-track:6bd6b06159a06e8cb23ebbbebbe7ced0c0b8490ce238e745d4c7c994749bc3fa` |
| 32 | `theorem` | [inv_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/inv-eqtohom--af4668b8bca4c17f5b28fc76.md) | 236 | `result-track:af4668b8bca4c17f5b28fc76ff49897d1f150122e84a80c1a5f1a912ea240571` |
| 33 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/ext--d44ffc6d5bc3dbb0478bbe46.md) | 245 | `result-track:d44ffc6d5bc3dbb0478bbe4683d646793991b36d43dc2e0f10844b3dc9af5fa6` |
| 34 | `lemma` | [ext_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/ext-of-iso--87aecd428f182eecc826159d.md) | 260 | `result-track:87aecd428f182eecc826159d369816b5f65a551b3fed286be6b80515febe7215` |
| 35 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/hext--b1b9ac23bc33954732d271f3.md) | 267 | `result-track:b1b9ac23bc33954732d271f36df67b28d32af25f0923119dfba2dc5a9adc24c6` |
| 36 | `theorem` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congr-obj--c4b6874929b270f01c1e11ed.md) | 272 | `result-track:c4b6874929b270f01c1e11ed59055af30402bef9b2baffe22aa0377e2a298107` |
| 37 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congr-hom--23065249384aa42248755b64.md) | 275 | `result-track:23065249384aa42248755b64d93bff1bfd96f9b92ec46eb255fb97760e241b3d` |
| 38 | `theorem` | [congr_inv_of_congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/congr-inv-of-congr-hom--44762b174380714456a0f16e.md) | 279 | `result-track:44762b174380714456a0f16eb2afe2661494c896d255a24eccd6b6c0c470f46c` |
| 39 | `theorem` | [map_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/map-comp-heq--3018c3fd78a24595dc591ebe.md) | 291 | `result-track:3018c3fd78a24595dc591ebe73c69009882803e321ee0e05d7f578e1922dc14b` |
| 40 | `theorem` | [map_comp_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/map-comp-heq--0f5d6159aa2a42f6c3455124.md) | 297 | `result-track:0f5d6159aa2a42f6c345512411acdbc83450407c669588754a8ebbd943577cc8` |
| 41 | `theorem` | [precomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/precomp-map-heq--190fa049affaac8d415f7bdd.md) | 302 | `result-track:190fa049affaac8d415f7bdd981574f3e2136c2cc32ec3abad0442836ee7e66a` |
| 42 | `theorem` | [postcomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/postcomp-map-heq--d19a4317d978c8b8d64f0b04.md) | 306 | `result-track:d19a4317d978c8b8d64f0b0450a4e8b69d67b6a000fac3c8b1917bac8b7eb5ab` |
| 43 | `theorem` | [postcomp_map_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/postcomp-map-heq--1eb957cab9efa0a0d6bb1475.md) | 311 | `result-track:1eb957cab9efa0a0d6bb14755233c341b439377d9fcd7d37caf2fd0ee2f19194` |
| 44 | `theorem` | [hcongr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/hcongr-hom--dd625795009d7ad4b7189b3a.md) | 315 | `result-track:dd625795009d7ad4b7189b3a82312bd620d420efdb20eb5b99d8fa5b563a3ec6` |
| 45 | `theorem` | [eqToHom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-map--a88f56513d87512a692ca51f.md) | 328 | `result-track:a88f56513d87512a692ca51fa75d3fa535397f896baaea67f07258b54c43fcf4` |
| 46 | `theorem` | [eqToHom_map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-map-comp--60e9d13ce16cb83d81de4b50.md) | 332 | `result-track:60e9d13ce16cb83d81de4b507c452bb0b3d3a3bd17a41cf11f2574ec21c042d1` |
| 47 | `theorem` | [eqToIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-map--25544f6f0dc0b1bfe9cfc21c.md) | 337 | `result-track:25544f6f0dc0b1bfe9cfc21cfd7aded4ff3c791d1b91c376a5eb8bfdd74749b1` |
| 48 | `theorem` | [eqToIso_map_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtoiso-map-trans--a5cf7227d04a3c4f2a646d6f.md) | 341 | `result-track:a5cf7227d04a3c4f2a646d6f7390f4e6050fa50dd81828bab77ec7fb21ae9d2b` |
| 49 | `theorem` | [eqToHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eqtohom-app--08f8aa1b96567f7ec69a933a.md) | 345 | `result-track:08f8aa1b96567f7ec69a933a19f62045940ff1869a8a90d69ed821155b8861ab` |
| 50 | `theorem` | [NatTrans.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/nattrans-congr--a99d1710f9f40578aaaebaff.md) | 348 | `result-track:a99d1710f9f40578aaaebaff805aaa3c2c0daf5a1a21a68c70c2b9cec4d93814` |
| 51 | `theorem` | [eq_conj_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/eq-conj-eqtohom--b78a1082dfc858eded857839.md) | 353 | `result-track:b78a1082dfc858eded85783962d3c9ef4bf762bddff342d9cf2e655665e1b01b` |
| 52 | `theorem` | [dcongr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/dcongr-arg--73d44504cc3effda45c8caf6.md) | 356 | `result-track:73d44504cc3effda45c8caf62aaf21552ee27c41c3beeb596f27656778626cba` |
| 53 | `def` | [Equivalence.induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variantfddda6cd9fcffa109802ec66cfd5d821a9da6dd37580687debdd25b7e005aa35.lean/declarations/equivalence-induced--36a8313387d6db19e29890b7.md) | 364 | `declaration-track:36a8313387d6db19e29890b7b1a08a8ec1f2fc659f1fa1cd89488cea29e9a491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
