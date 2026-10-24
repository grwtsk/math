# Verification target: GRWTSK.Algebra.Factorization.Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982d54756b3466702946087f8c9cd53465a6cb75",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982d54756b3466702946087f8c9cd53465a6cb75`.

Source path: `GRWTSK/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDedekindDomain.HeightOneSpectrum.maxPowDividing](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/isdedekinddomain-heightonespectrum-maxpowdividing--81821299c24fe825c55b1eaa.md) | 63 | `declaration-track:81821299c24fe825c55b1eaabf76143277f2ee39c2aae53394e972e8ac7867ca` |
| 2 | `theorem` | [Ideal.finite_factors](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/ideal-finite-factors--eef963a56ea53ef3c8f5933d.md) | 67 | `result-track:eef963a56ea53ef3c8f5933dec092a854a3269126b358e41229b2c607642a2b2` |
| 3 | `theorem` | [Associates.finite_factors](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/associates-finite-factors--301c37fbfa847b9a3964a65f.md) | 80 | `result-track:301c37fbfa847b9a3964a65f087e0705facaf5dde29d340af9f6563b1d33e056` |
| 4 | `theorem` | [finite_mulSupport](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finite-mulsupport--e1b4c095dff0f47de1d43a1a.md) | 96 | `result-track:e1b4c095dff0f47de1d43a1aad00d2ec7c06915bc48493b79d73c87af9a808fc` |
| 5 | `theorem` | [finite_mulSupport_coe](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finite-mulsupport-coe--6365a66d36c9e4a14ef7ac6a.md) | 111 | `result-track:6365a66d36c9e4a14ef7ac6a08d7c1a1b7a70b2424eee9f2be57a2fb59ef09b4` |
| 6 | `theorem` | [finite_mulSupport_inv](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finite-mulsupport-inv--e8a4ed91ce97e0035eb3e272.md) | 121 | `result-track:e8a4ed91ce97e0035eb3e27246a4549879e6944a8c19f26c832a8cea968ef415` |
| 7 | `theorem` | [finprod_not_dvd](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-not-dvd--6b29ed9e4eab4da75f91f051.md) | 130 | `result-track:6b29ed9e4eab4da75f91f0516bba38d3e6f293fbcaa39098afca48241dae48ad` |
| 8 | `theorem` | [Associates.finprod_ne_zero](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/associates-finprod-ne-zero--776b8b91657e1800b7225485.md) | 147 | `result-track:776b8b91657e1800b722548544f4e1a3d175256092ee329912c54084e0b9028d` |
| 9 | `theorem` | [finprod_count](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-count--23d994efac87e799809b1b16.md) | 161 | `result-track:23d994efac87e799809b1b1674a9c50683c2e5bef5942ab625fa85392c38db14` |
| 10 | `theorem` | [finprod_heightOneSpectrum_factorization](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization--fbe327947b0bd0b3c312849f.md) | 176 | `result-track:fbe327947b0bd0b3c312849f315280624d833da580b5cf5c2e88c0540d80be64` |
| 11 | `theorem` | [finprod_heightOneSpectrum_factorization_coe](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization-coe--18ca88d70daa5c6a047db4b8.md) | 195 | `result-track:18ca88d70daa5c6a047db4b80618dc4f6498a035bb1b7ae6a16c8ba50b9da680` |
| 12 | `theorem` | [finprod_heightOneSpectrum_factorization](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization--ef709bea26c1f2d2440daeea.md) | 214 | `result-track:ef709bea26c1f2d2440daeeacb3cda4892512fb2ec20ada56f0e9e5952a9b57f` |
| 13 | `theorem` | [finprod_heightOneSpectrum_factorization_principal_fraction](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization-principal-fraction--b1916972ed6108958833a70a.md) | 235 | `result-track:b1916972ed6108958833a70a7d2da9556b3148a7918373d203b3ca465b3bd5f2` |
| 14 | `theorem` | [finprod_heightOneSpectrum_factorization_principal](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization-principal--0ab4f4af4e69e40c2e171a01.md) | 255 | `result-track:0ab4f4af4e69e40c2e171a01054ea6c77ef5153053b911d9d1604c1c58e953d5` |
| 15 | `def` | [count](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count--448fb22c43f77cf501f4feff.md) | 276 | `declaration-track:448fb22c43f77cf501f4feffd67e0c50f73970d9e0a4e25b3194773f139503a2` |
| 16 | `lemma` | [count_zero](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-zero--d46c55598daf92265d06d33f.md) | 284 | `result-track:d46c55598daf92265d06d33f61e245324f37297f072d819c9c1c996e16ad9386` |
| 17 | `lemma` | [count_ne_zero](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-ne-zero--43e34d9bf3a02cb54aeb1503.md) | 287 | `result-track:43e34d9bf3a02cb54aeb150381c19589f5744d8e9b2f24f9736c053ef9b6e068` |
| 18 | `theorem` | [count_well_defined](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-well-defined--9007c75ce724cb64ad9f3aa4.md) | 296 | `result-track:9007c75ce724cb64ad9f3aa4282117a937054b6cb65739b4e0a1fd470c3b4332` |
| 19 | `theorem` | [count_mul](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-mul--424730fe3c6a82ed83736482.md) | 331 | `result-track:424730fe3c6a82ed837364828f37f0c3cdd91539003d7c632263d502554f8bfe` |
| 20 | `theorem` | [count_mul'](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-mul--4ed0107a9241ac851048be58.md) | 357 | `result-track:4ed0107a9241ac851048be5830a38c7bbbff1e1dbae8352d5342bff72c1ba99c` |
| 21 | `theorem` | [count_one](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-one--196c640a2472a3cf2fac1b8e.md) | 367 | `result-track:196c640a2472a3cf2fac1b8ec9a0079e1a5d32d20f79eec7813ac8a9a9d6f60c` |
| 22 | `theorem` | [count_prod](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-prod--d2f9172d82164e3fd1d37463.md) | 374 | `result-track:d2f9172d82164e3fd1d37463abe02a07dad427e99f455a177dc528e6dc6be630` |
| 23 | `theorem` | [count_pow](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-pow--62e48d83092721e409b33e3a.md) | 385 | `result-track:62e48d83092721e409b33e3a95d3e8d37790c359b145e0ad1edaf248012d5bc2` |
| 24 | `theorem` | [count_self](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-self--0ad1efdec554e21aa791b8f8.md) | 401 | `result-track:0ad1efdec554e21aa791b8f8cb17586b857a0323d992fe10f71c6779e9a06ead` |
| 25 | `theorem` | [count_pow_self](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-pow-self--ec19a7198436557a400cb1e1.md) | 412 | `result-track:ec19a7198436557a400cb1e13fcf45b8d7289751b851fde6a8221c8ec4def607` |
| 26 | `theorem` | [count_neg_zpow](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-neg-zpow--80b3efb56abfd8093a7ce9ce.md) | 417 | `result-track:80b3efb56abfd8093a7ce9ce465e8aed644609c832551b6cd16c68a2ec629de0` |
| 27 | `theorem` | [count_inv](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-inv--d531533247651f23779ad023.md) | 427 | `result-track:d531533247651f23779ad02310e31cd8abcdf32908abdba527192250ab3e2fc3` |
| 28 | `theorem` | [count_zpow](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-zpow--4ccea75ed423361d4ca92b70.md) | 432 | `result-track:4ccea75ed423361d4ca92b70bab73ab08c714e3d4dcd135b98404fc21bb334fb` |
| 29 | `theorem` | [count_zpow_self](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-zpow-self--86351a52f3a6cbc456d1fb04.md) | 441 | `result-track:86351a52f3a6cbc456d1fb0425ad2bc41e22ab2569a41144d16f57dd2075af85` |
| 30 | `theorem` | [count_maximal_coprime](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-maximal-coprime--66a8fc7895f313c0005058af.md) | 446 | `result-track:66a8fc7895f313c0005058afbaf826ffb61a171fb35054c14e37a0db302e9893` |
| 31 | `theorem` | [count_maximal](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-maximal--89ed16791db7329908118b17.md) | 465 | `result-track:89ed16791db7329908118b17097e41e7ca77b5556591bd02e928ade8f3741654` |
| 32 | `theorem` | [count_finprod_coprime](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-finprod-coprime--71c7cc0f3607b9824211a558.md) | 472 | `result-track:71c7cc0f3607b9824211a558aa8efd03db6970e2c811a5457e794175620a2a0c` |
| 33 | `theorem` | [count_finsuppProd](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-finsuppprod--360476dad148470a2468c115.md) | 485 | `result-track:360476dad148470a2468c1159ff2d7e90ad67cad14ec81777e2c261f7e7fcd6c` |
| 34 | `theorem` | [count_finprod](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-finprod--b9994df636610df745665935.md) | 495 | `result-track:b9994df636610df745665935a9b95acccb68facc6b46fe290dae32f5922b7ee9` |
| 35 | `theorem` | [count_coe](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-coe--efd5eb23776875507fe0d0fe.md) | 508 | `result-track:efd5eb23776875507fe0d0fe48f7a8327217e1b8b19daa44d8f8fa752ec7219a` |
| 36 | `theorem` | [count_coe_nonneg](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-coe-nonneg--6afc93b6afae24830e51be06.md) | 516 | `result-track:6afc93b6afae24830e51be0677d813990949fb6ae8b86cf532049118a8aa6b54` |
| 37 | `theorem` | [count_mono](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/count-mono--54250b7669e8a3e47f5c13c0.md) | 521 | `result-track:54250b7669e8a3e47f5c13c00c0cda9d2b35c4afafdf19366cfbc3144e8dbe12` |
| 38 | `theorem` | [finprod_heightOneSpectrum_factorization'](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finprod-heightonespectrum-factorization--2709cebf963f7297a247eb2a.md) | 532 | `result-track:2709cebf963f7297a247eb2ac93765aace441167dee036aa686f5baea6b6ee18` |
| 39 | `theorem` | [finite_factors'](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finite-factors--4631d2f7388dc449792bd7e6.md) | 545 | `result-track:4631d2f7388dc449792bd7e60b8b1806af68faddffb453f91604f799787f18b3` |
| 40 | `theorem` | [finite_factors](../../../../mathematics/Algebra/Factorization/Variant59b576a095813248c7bc5dee6158281bf97d4c7b47306e5a656e03fffbe849a2.lean/declarations/finite-factors--66cb72bd55c278b0f1f07a36.md) | 571 | `result-track:66cb72bd55c278b0f1f07a3653a39f4366fbed801f00a303ba933e0d30ae0afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
