# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ClosedImmersion.Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b88620f29bbb2310122e10a2b056d6f162db23d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b88620f29bbb2310122e10a2b056d6f162db23d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.IdealSheaf.Subscheme` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.IsIso` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.ResidueField` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosedimmersion--bfbbc741c9ecfe9c415b84eb.md) | 44 | `declaration-track:bfbbc741c9ecfe9c415b84eb02a0cc9944e965fb11d78a5583b0f2358961a481` |
| 2 | `lemma` | [Scheme.Hom.isClosedEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/scheme-hom-isclosedembedding--d863c97645d9e4679adce4fa.md) | 47 | `result-track:d863c97645d9e4679adce4fa4e29745518d75d938324b4269c87ea7be8dd0248` |
| 3 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/eq-inf--7d16143dbdaac1c464f11402.md) | 55 | `result-track:7d16143dbdaac1c464f11402bd43e3a01403ea140ff72f68a786fbfe377e1594` |
| 4 | `lemma` | [iff_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/iff-ispreimmersion--616d07b1b6e253c8da96d1cb.md) | 61 | `result-track:616d07b1b6e253c8da96d1cb98a8a41576b1f4bae92f910fd3c0d9d10cc48a26` |
| 5 | `lemma` | [of_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/of-ispreimmersion--def7b3fc93afddcda0c55520.md) | 65 | `result-track:def7b3fc93afddcda0c55520f110d1b1b083ae8c63ec8ddf6d780a4c81ddf184` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--007fc1b7664ffefee8c0dfa5.md) | 69 | `declaration-track:007fc1b7664ffefee8c0dfa59e5829955d29b1661b2e1c5a84dcab6233a7fa69` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--b875c5683ae52b6981a242d7.md) | 73 | `declaration-track:b875c5683ae52b6981a242d71b421dd5e92273305129832b4efdc2b511fc1c3f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--9ab4fdecaf3e5995cb9ffac7.md) | 77 | `declaration-track:9ab4fdecaf3e5995cb9ffac747d7b025d63623a0d9a351f89a59a129512a2a10` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--ce164b3345d88a4ccb0c5949.md) | 80 | `declaration-track:ce164b3345d88a4ccb0c5949e56cfdfeaea8f7d88219793bad7aa0b4ed4986a8` |
| 10 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/comp--a547d70c23349caf07196e46.md) | 85 | `declaration-track:a547d70c23349caf07196e46b4d604f770b7838d08f8c2f3316f15fb528c0c5a` |
| 11 | `instance` | [respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/respectsiso--552029223b539d8f7463e597.md) | 90 | `declaration-track:552029223b539d8f7463e597c0681968474d04b49c2efbccf1299d0d2ddf2612` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--2135acec03990b5899c7f635.md) | 93 | `declaration-track:2135acec03990b5899c7f635b036f76fe3eeb13947b6e7f4a1904445838e06d5` |
| 13 | `theorem` | [spec_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/spec-of-surjective--7e5c5cd2d526de26468fe183.md) | 99 | `result-track:7e5c5cd2d526de26468fe183441a15e87798f7ff2611aa5f40fb7e5f90be65b6` |
| 14 | `instance` | [spec_of_quotient_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/spec-of-quotient-mk--eff86dab75ed5149ef2d162d.md) | 113 | `declaration-track:eff86dab75ed5149ef2d162d34d52fe141e74ab0c0b22ee9112ec295e0e4b6c7` |
| 15 | `lemma` | [of_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/of-surjective-of-isaffine--d3e24552c3f0ea7da0eefaec.md) | 119 | `result-track:d3e24552c3f0ea7da0eefaec946a8858e5962f0365deb0c488d28d78ef2ace31` |
| 16 | `theorem` | [of_comp_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/of-comp-isclosedimmersion--d1d3664895c71aee360e277f.md) | 130 | `result-track:d1d3664895c71aee360e277f19f3dd4a2e4eda446807d9abc613f78d177679c1` |
| 17 | `instance` | [Spec_map_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/spec-map-residue--a56859e8015cdb3af8c4e027.md) | 145 | `declaration-track:a56859e8015cdb3af8c4e027bfbb3a529246e33a5a8b226dc6d2ae22697d5e30` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--19358b1be692c368c34f8d73.md) | 149 | `declaration-track:19358b1be692c368c34f8d73910e5f4c1afbd5e95ee836cbb9a4d5cdfb8f9eec` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--8991b974a54ce055adbf8361.md) | 152 | `declaration-track:8991b974a54ce055adbf83612fbd1baaafd53cf120bb0b8d313530a54761ce87` |
| 20 | `def` | [overEquivIdealSheafData](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/overequividealsheafdata--2b7253c63e7892b681c47846.md) | 175 | `declaration-track:2b7253c63e7892b681c4784640114c06039dcc1ddf26fa4fef42c8b98e19b4ea` |
| 21 | `lemma` | [isIso_iff_ker_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isiso-iff-ker-eq-bot--58f39cf787c31bffce625353.md) | 193 | `result-track:58f39cf787c31bffce62535333b23345023a3824c98de5fc5bbd686fc9e270e1` |
| 22 | `def` | [lift](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/lift--4bec3830b61b33bd379916d1.md) | 205 | `declaration-track:4bec3830b61b33bd379916d1bf9a200d87e439342ee18d2a71eb33b3765feebd` |
| 23 | `lemma` | [lift_fac](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/lift-fac--122c5291ba8b75746159bbc4.md) | 210 | `result-track:122c5291ba8b75746159bbc45aab95bde80807794624ef6c22075b091471848a` |
| 24 | `lemma` | [isDominant_of_of_appTop_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isdominant-of-of-apptop-injective--68f2f3e7f3b81dd2cadbc2a4.md) | 225 | `result-track:68f2f3e7f3b81dd2cadbc2a48dd1f68a944c8c5ca2ca81a6167c98cf8d20ca55` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--997631a66062182213a0bbfa.md) | 237 | `declaration-track:997631a66062182213a0bbfae5510f7cc9e5c2ff9137339ecb2af66e3529d85f` |
| 26 | `lemma` | [stalkMap_injective_of_isOpenMap_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/stalkmap-injective-of-isopenmap-of-injective--d7575148c68fee81d1524b98.md) | 244 | `result-track:d7575148c68fee81d1524b98ed1e082b987289dd9e67038c20995a045d5a66d1` |
| 27 | `theorem` | [isIso_of_injective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isiso-of-injective-of-isaffine--8d1fb993d3b4718cafdbc586.md) | 288 | `result-track:8d1fb993d3b4718cafdbc5861801e4e04bd95683f5171f217b040378b3ca0706` |
| 28 | `theorem` | [isAffine_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isaffine-surjective-of-isaffine--c9e30ea37f31eea51987acea.md) | 297 | `result-track:c9e30ea37f31eea51987acea772b64c29996b72ba7b77bee29ef4177715ed719` |
| 29 | `lemma` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/spec-iff--9fff488d2546631523774f16.md) | 307 | `result-track:9fff488d2546631523774f16fc9cd74beb927e2884deb5c7056646ccc9f0948c` |
| 30 | `instance` | [IsClosedImmersion.isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosedimmersion-islocalattarget--c9b252bdb182044950b973a7.md) | 332 | `declaration-track:c9b252bdb182044950b973a7efffc487d77da9a3b292efb3c2967b07d68aa7d7` |
| 31 | `instance` | [IsClosedImmersion.hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosedimmersion-hasaffineproperty--8827e8f1475e7da8c40b4e3d.md) | 337 | `declaration-track:8827e8f1475e7da8c40b4e3dcc02216c11e26a250654a29f4f2c2c1640dad69c` |
| 32 | `instance` | [IsClosedImmersion.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosedimmersion-isstableunderbasechange--be5d323447415084cca1b1da.md) | 343 | `declaration-track:be5d323447415084cca1b1da1dc1db83b4c964d32bf7ef2bb4b833ba0a98db24` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--e6968459c2851416e080a429.md) | 352 | `declaration-track:e6968459c2851416e080a42901e511b142ebe477f5dcb07c00bd14b32b53a465` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--9b77cc22aca769be768e84fa.md) | 356 | `declaration-track:9b77cc22aca769be768e84fa996ed7afa3416ee8973ff3c6ec5714971daa3f1a` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--bea85902899043107bb26e7d.md) | 361 | `declaration-track:bea85902899043107bb26e7dc546fc440634bf366c09a6fbb02364fb7e751885` |
| 36 | `lemma` | [isIso_of_isClosedImmersion_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isiso-of-isclosedimmersion-of-surjective--6089db464278fc3d5ffcaa2f.md) | 374 | `result-track:6089db464278fc3d5ffcaa2fe549b584b90a3e4f6d81e206445cb88cd02dd50e` |
| 37 | `lemma` | [isClosed_singleton_iff_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosed-singleton-iff-isclosedimmersion--e17d48ef234341605b60de79.md) | 381 | `result-track:e17d48ef234341605b60de79fc2316ba22601c5475ec517052241052e561a501` |
| 38 | `theorem` | [isClosedImmersion_of_comp_eq_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/isclosedimmersion-of-comp-eq-id--c5f133c6fa0b3aa7eca2a4e4.md) | 389 | `result-track:c5f133c6fa0b3aa7eca2a4e45f1118d7b7fc2977d276089c3d3e2bdb6d584a57` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--f9a45d204faba2738ff4e565.md) | 423 | `declaration-track:f9a45d204faba2738ff4e56595f7a106c6fe1c1c02294ea138ea96743235bd15` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variant271c086c0e4718ba4ddc02d8f6b7377b91b26628eae301f6ad65cb6ad0a968c4.lean/declarations/instance--206244c2339dd6d8de29113f.md) | 426 | `declaration-track:206244c2339dd6d8de29113f8ca9f15fe98776e6bc4b87efbc1b6b23faf154d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
