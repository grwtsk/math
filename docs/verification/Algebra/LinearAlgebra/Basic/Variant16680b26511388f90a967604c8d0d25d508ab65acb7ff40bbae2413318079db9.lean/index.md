# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b2fac58019452528badbce552d8c63318a9254f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b2fac58019452528badbce552d8c63318a9254f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecat--afbb3e5ab250332138b55d22.md) | 73 | `declaration-track:afbb3e5ab250332138b55d222b8c8ced09c65e6c50b4ac2226c86e2749a08acf` |
| 2 | `abbrev` | [ModuleCatMax.](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecatmax--070cab01acc3df9ccaabda66.md) | 88 | `declaration-track:070cab01acc3df9ccaabda66f282865856c848f6a914166ee1c426a30e724886` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--a6183344aed05ae776e89656.md) | 90 | `declaration-track:a6183344aed05ae776e89656ca310986b577e43b32827fe8f43f6da86a18e1dd` |
| 4 | `instance` | [moduleCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecategory--6b562c349c8b0e2ae17f4092.md) | 95 | `declaration-track:6b562c349c8b0e2ae17f4092146baba3213bb7cf2089b8be6168003c9c309029` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--b5dff3437cac4e3469843e08.md) | 106 | `declaration-track:b5dff3437cac4e3469843e08772e30f923a61cb58844a29b5bdbc484d53181b4` |
| 6 | `instance` | [moduleConcreteCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/moduleconcretecategory--34d1c53a7de3131d681be535.md) | 109 | `declaration-track:34d1c53a7de3131d681be535b248c78676d02cc4e8830e479ead60aa61855dfb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--180a4a944645ec146f7bb276.md) | 122 | `declaration-track:180a4a944645ec146f7bb2762dd1f348c120a54cd18e219f4f451553b76034c4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--41096ce5bff5242cb664bda1.md) | 124 | `declaration-track:41096ce5bff5242cb664bda1d220459389677cd635e79a0c4c805c0f89e8edd3` |
| 9 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/ext--8770c7e15f46e6347ce7e4c0.md) | 129 | `result-track:8770c7e15f46e6347ce7e4c0c53800397b7ea27e5c2dc97cd097637360466004` |
| 10 | `instance` | [hasForgetToAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/hasforgettoaddcommgroup--ab1225511c5f1b5b3a846e51.md) | 132 | `declaration-track:ab1225511c5f1b5b3a846e5138fc0e9765288e827c89bdc7388941e5b7b2935e` |
| 11 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/of--0e8a7afc990a5143d0a8472e.md) | 139 | `declaration-track:0e8a7afc990a5143d0a8472eb4003b68afbf9d9f293db3e78d3f675bca1206f4` |
| 12 | `theorem` | [forget₂_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/forget-obj--d699c047b1df3a00844158bf.md) | 144 | `result-track:d699c047b1df3a00844158bf13544002a2b92e4f99778e4349e9f57f3a115fbf` |
| 13 | `theorem` | [forget₂_obj_moduleCat_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/forget-obj-modulecat-of--8e737c4b3ed15df3919b9de9.md) | 154 | `result-track:8e737c4b3ed15df3919b9de92f08aa9605583ffde29a2af8f8e20e85cb17e1b6` |
| 14 | `theorem` | [forget₂_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/forget-map--3aaeb858d22ece0ca6bf59fb.md) | 160 | `result-track:3aaeb858d22ece0ca6bf59fbb06ad969a1c24d7e98d6f28bf3b8859c05e2a0af` |
| 15 | `def` | [ofHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/ofhom--56a85f2d98d1824cab582acc.md) | 168 | `declaration-track:56a85f2d98d1824cab582acc58bde6170de38566af157f415b8c26bebe59fd1b` |
| 16 | `theorem` | [ofHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/ofhom-apply--129421bada9949a81484ea6b.md) | 174 | `result-track:129421bada9949a81484ea6b8b87b67136367f3a9deeea9771a7489fd794d090` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--1ee812a915389e8c8841d976.md) | 179 | `declaration-track:1ee812a915389e8c8841d97691a560fb277d9176ad2ecc6082e31e9f3b9503e6` |
| 18 | `instance` | [ofUnique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/ofunique--981b95870391b5270351d6b4.md) | 182 | `declaration-track:981b95870391b5270351d6b4e98f0c5af4b8c57aa65726ec52d174101cb3719e` |
| 19 | `theorem` | [coe_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/coe-of--f51a79e93a188c5b77e77c19.md) | 188 | `result-track:f51a79e93a188c5b77e77c194ff893e4a626f2712f2ff2bcf626285f32bc22eb` |
| 20 | `def` | [ofSelfIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/ofselfiso--7aa38077ac69cdf774942674.md) | 197 | `declaration-track:7aa38077ac69cdf774942674fef5dc59d85921d0f5ab22ecd00956fae321240b` |
| 21 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/iszero-of-subsingleton--fe05811c3f79dcc08ba35f02.md) | 202 | `result-track:fe05811c3f79dcc08ba35f02cde03bf403290abc1b37853a968efd987ee6fb1d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--7c527557c0e19f4ff91b88b7.md) | 213 | `declaration-track:7c527557c0e19f4ff91b88b7af9b31be7203e920af3fee4b58bb7b34cd0042fb` |
| 23 | `theorem` | [id_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/id-apply--3b6beb62bdef9d7f88678b75.md) | 219 | `result-track:3b6beb62bdef9d7f88678b7569404a829ee95893ebd2e20c097a2820930f0cc4` |
| 24 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/coe-comp--1002913826d66503ddd55b59.md) | 224 | `result-track:1002913826d66503ddd55b597c007eee4358829a9f3bd7a399b256cc85f26d1d` |
| 25 | `theorem` | [comp_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/comp-def--ac763b71b1b29876ae0ebdd5.md) | 228 | `result-track:ac763b71b1b29876ae0ebdd5d9816aa450d4fd7657411664563759f8983e7c2d` |
| 26 | `lemma` | [forget_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/forget-map--6e156950dc164c769f9fd9bb.md) | 233 | `result-track:6e156950dc164c769f9fd9bbe019dcb28139912ce6c7ccfc994717a1159a36db` |
| 27 | `def` | [ModuleCat.asHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecat-ashom--09f62a7bb521c82431eb5120.md) | 242 | `declaration-track:09f62a7bb521c82431eb51204557d6874ddaf42c7bf678126d4d65f33b6b2a1e` |
| 28 | `def` | [ModuleCat.asHomRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecat-ashomright--6143a1f75e84f9a724eab178.md) | 251 | `declaration-track:6143a1f75e84f9a724eab1785d02fe2e8bc162d6fe0962829bbecd7138b39d9a` |
| 29 | `def` | [ModuleCat.asHomLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/modulecat-ashomleft--978939415d1cf6f58cc9585c.md) | 260 | `declaration-track:978939415d1cf6f58cc9585cd5b0ece35683523ce16c3c5f7c149fb3cb731b46` |
| 30 | `def` | [LinearEquiv.toModuleIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/linearequiv-tomoduleiso--c4cd8f321a1af42bb397ae14.md) | 272 | `declaration-track:c4cd8f321a1af42bb397ae14bbc030954b14eec34779cc7d9dcf706554242d98` |
| 31 | `abbrev` | [LinearEquiv.toModuleIso'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/linearequiv-tomoduleiso--e651802cefacf519521115fc.md) | 284 | `declaration-track:e651802cefacf519521115fc7b6a73e94640ee797248620bb5284b40ff1b9547` |
| 32 | `abbrev` | [LinearEquiv.toModuleIso'Left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/linearequiv-tomoduleiso-left--4e470742ea0e48c465550b50.md) | 289 | `declaration-track:4e470742ea0e48c465550b501843b4db3e3db5c1d844462d51d72493484ebe05` |
| 33 | `abbrev` | [LinearEquiv.toModuleIso'Right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/linearequiv-tomoduleiso-right--9fefe4432965c4588cd257e3.md) | 295 | `declaration-track:9fefe4432965c4588cd257e3da7168cb06ff8e99135f852d0862953a42c7d0ab` |
| 34 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/tolinearequiv--127cff3e280b8f60a390611b.md) | 304 | `declaration-track:127cff3e280b8f60a390611bd93ce7e3b64142e618319ae28964b7e0b67b1925` |
| 35 | `def` | [linearEquivIsoModuleIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/linearequivisomoduleiso--61ea366017ede58392b3dbf6.md) | 324 | `declaration-track:61ea366017ede58392b3dbf609860df7a2cb9bbc888cc97c29809f19c2292b87` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--d443b33e9ad4f2c8d0bdc6c3.md) | 334 | `declaration-track:d443b33e9ad4f2c8d0bdc6c3ca8c87ce85bdf3af8c38c74c4a143275fc657500` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--d0228517556fdd5d20adc9b4.md) | 336 | `declaration-track:d0228517556fdd5d20adc9b4b6a458a67b38b3f0c0fa313847f0c2d31fcfd4e4` |
| 38 | `instance` | [forget₂_addCommGroupCat_additive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/forget-addcommgroupcat-additive--d7105ce71b1b6c5a00342f56.md) | 346 | `declaration-track:d7105ce71b1b6c5a00342f5676ab10dbbebd43293a95cddb0ba34d263185d9a9` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/instance--bf62bd7d2ebea7c3d9f78c8f.md) | 354 | `declaration-track:bf62bd7d2ebea7c3d9f78c8f10170ff8ce37b8c11e938e7f9cca9e03ee4ad090` |
| 40 | `theorem` | [Iso.homCongr_eq_arrowCongr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/iso-homcongr-eq-arrowcongr--1c15100fced76c7a1edab0aa.md) | 369 | `result-track:1c15100fced76c7a1edab0aad6e188bc937fdff1a603f3acb6e3667a2df01e19` |
| 41 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/declarations/iso-conj-eq-conj--19020fe31087d33176a90214.md) | 374 | `result-track:19020fe31087d33176a902144458bcf2eaa5a7fd0ef662e1ca8ee886f8a32121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
