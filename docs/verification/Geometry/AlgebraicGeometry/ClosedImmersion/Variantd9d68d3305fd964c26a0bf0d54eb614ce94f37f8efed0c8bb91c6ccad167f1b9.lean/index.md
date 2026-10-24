# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ClosedImmersion.Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810bc26c212f7c9ed955175928497008c0b9c6d3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810bc26c212f7c9ed955175928497008c0b9c6d3`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.IdealSheaf.Subscheme` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.IsIso` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.ResidueField` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosedimmersion--2a702b2a4b346bb6f22f19cd.md) | 52 | `declaration-track:2a702b2a4b346bb6f22f19cda3e2122e4fa4d008f4d7fdd5e62442f288dc8af2` |
| 2 | `lemma` | [Scheme.Hom.isClosedEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/scheme-hom-isclosedembedding--16276cc8bc2fee72805857f5.md) | 55 | `result-track:16276cc8bc2fee72805857f5b8779cae9f85967bf3da9682fc9bc20f70a9a679` |
| 3 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/eq-inf--7275404dcd5cde4d02a2892a.md) | 63 | `result-track:7275404dcd5cde4d02a2892a97e96e5126f68630ffa4a864b274442a71dd4c82` |
| 4 | `lemma` | [iff_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/iff-ispreimmersion--4c898c27e484efbb5a7ddf05.md) | 69 | `result-track:4c898c27e484efbb5a7ddf05575d9ffa14baba03f62ca9df8e808ea056682b31` |
| 5 | `lemma` | [of_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/of-ispreimmersion--e6b9c38fa0df458473239051.md) | 73 | `result-track:e6b9c38fa0df4584732390515132726310291cdc41d599d980bcbb537d62fde9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--d4e46fdd4cddb3cc619240f4.md) | 77 | `declaration-track:d4e46fdd4cddb3cc619240f46772f13de0aa434038ef1dc84219035343b266ac` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--7071b2926ee3c8a75ae9e58c.md) | 81 | `declaration-track:7071b2926ee3c8a75ae9e58c2b54e2cdda2798ef9fda257610bcead7dfd511d8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--e67922d338aabe3d7120842e.md) | 85 | `declaration-track:e67922d338aabe3d7120842e7ea6a783e4f96dcfa74aca986d8dce4414ca0f87` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--e2d253afb13c3fa09cd8485e.md) | 88 | `declaration-track:e2d253afb13c3fa09cd8485ea3c48d8358db7a6b6562f1da9c5936852ec3e262` |
| 10 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/comp--9a1545a784d2995ee03c7330.md) | 93 | `declaration-track:9a1545a784d2995ee03c7330471dc46bde7aa8df3c31d5107dcc6661bd42b492` |
| 11 | `instance` | [respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/respectsiso--7739feec024575406f544b1a.md) | 98 | `declaration-track:7739feec024575406f544b1a5ef57a416ee000a8cd8f7a974498d44918cff879` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--2563c6500596bed932094430.md) | 101 | `declaration-track:2563c6500596bed932094430ae188d9fc2e1687891ca6bc806c1b522345d3555` |
| 13 | `theorem` | [spec_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/spec-of-surjective--908898a1dad95c2f50760820.md) | 107 | `result-track:908898a1dad95c2f50760820c8cd9e4dac6a76d42112503cb1b5e53a43cb6bb6` |
| 14 | `instance` | [spec_of_quotient_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/spec-of-quotient-mk--fe99a22a61c7162bd31ce698.md) | 121 | `declaration-track:fe99a22a61c7162bd31ce6987ca7cc7732b2ae342d45093415181c9abe790083` |
| 15 | `lemma` | [of_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/of-surjective-of-isaffine--c17d3c6b232c0ca50632dbb8.md) | 127 | `result-track:c17d3c6b232c0ca50632dbb8349cf3a832ae2f2fdf2699235612f7dc6916623c` |
| 16 | `theorem` | [of_comp_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/of-comp-isclosedimmersion--a6367d002c6aa6fb36b5cd08.md) | 138 | `result-track:a6367d002c6aa6fb36b5cd080a4df432d2a69b79eee43c1a44f33a1a35f7a2da` |
| 17 | `instance` | [Spec_map_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/spec-map-residue--a2cedfa18100ff7ea5cd363d.md) | 153 | `declaration-track:a2cedfa18100ff7ea5cd363dacabc63d40f12c0e3e22e8c1385dc47677da523e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--2a0f00d32c8f88e0e5b291e2.md) | 157 | `declaration-track:2a0f00d32c8f88e0e5b291e228c6533ed76a49419b86b0b1a7759aca909e3267` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--eaf5b4e3d6522db91c28a4af.md) | 160 | `declaration-track:eaf5b4e3d6522db91c28a4af8ad462ee2cd7ecc957519a441804af686bd1d806` |
| 20 | `def` | [overEquivIdealSheafData](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/overequividealsheafdata--e625499a580090c078518f6c.md) | 183 | `declaration-track:e625499a580090c078518f6c06422b0810cb3e9713480627c8edfee6b3eaaf58` |
| 21 | `lemma` | [isIso_iff_ker_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isiso-iff-ker-eq-bot--27e828a24875dcb2800ec0c5.md) | 201 | `result-track:27e828a24875dcb2800ec0c58c916cfbc90813d3d0afeabf1c0f9c71055f80bf` |
| 22 | `def` | [lift](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/lift--76ca5a0230ae485b29e4e0ab.md) | 213 | `declaration-track:76ca5a0230ae485b29e4e0ab2d921eb6f57093a0c93b5859c2fa2da5eb5b9cc0` |
| 23 | `lemma` | [lift_fac](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/lift-fac--b3cb5069c50163f9329f2ce6.md) | 218 | `result-track:b3cb5069c50163f9329f2ce62a3a5f1f40da20e0cae50c194c9d66aa6854d4bd` |
| 24 | `lemma` | [isDominant_of_of_appTop_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isdominant-of-of-apptop-injective--81fdea93a12b3b6ceb54c72a.md) | 233 | `result-track:81fdea93a12b3b6ceb54c72aee5d9573f2633bb1d370a8742ee920fcf59a64b8` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--18c67bd4fbefe54adc154d73.md) | 245 | `declaration-track:18c67bd4fbefe54adc154d735b0cbcfa59b3716903488126c4dc35eb44cb2933` |
| 26 | `lemma` | [stalkMap_injective_of_isOpenMap_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/stalkmap-injective-of-isopenmap-of-injective--0499db03ad5c0ad7e6890aee.md) | 252 | `result-track:0499db03ad5c0ad7e6890aee790a9b5337fd1bd79b7764afa50b3152c9439a37` |
| 27 | `theorem` | [isIso_of_injective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isiso-of-injective-of-isaffine--9302d865cdba1c18cd6491e9.md) | 296 | `result-track:9302d865cdba1c18cd6491e9e10913cb6f327eb1f918c4dcb31c318682932f07` |
| 28 | `theorem` | [isAffine_surjective_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isaffine-surjective-of-isaffine--0931a1f0689a4b5050b7abee.md) | 305 | `result-track:0931a1f0689a4b5050b7abee51a9e7b028dc6c9b37c3dd2a254d2ce3dcd919c8` |
| 29 | `lemma` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/spec-iff--fd18b6b10583cd3309f71379.md) | 315 | `result-track:fd18b6b10583cd3309f7137952381f7502769b50b7fe52aa4c2d60ca2c782700` |
| 30 | `instance` | [IsClosedImmersion.isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosedimmersion-islocalattarget--cbb7582d2d338bcf1045e56b.md) | 340 | `declaration-track:cbb7582d2d338bcf1045e56b1616d16569bb545c37ed7deb137ec719b4795558` |
| 31 | `instance` | [IsClosedImmersion.hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosedimmersion-hasaffineproperty--29863fbcb69bda4e9a3b2440.md) | 345 | `declaration-track:29863fbcb69bda4e9a3b24408b75581c8fddd13d93d1d8968a86711fc9150f0e` |
| 32 | `instance` | [IsClosedImmersion.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosedimmersion-isstableunderbasechange--abb3b641a7e52c846df65c1c.md) | 351 | `declaration-track:abb3b641a7e52c846df65c1cc6e053baaa6dd0bbfe76489340b52c7cd11bf9b9` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--a0d8ed7ce3c293998fab540c.md) | 360 | `declaration-track:a0d8ed7ce3c293998fab540c151c97eac372bc918acbd3c69ea5a92fe0fc7f73` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--76a92ca795b397a4216f6b08.md) | 364 | `declaration-track:76a92ca795b397a4216f6b086c67d47bd5163b2e9a902ba7552e8753a1a68cdc` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--a651cb01ddada732eb571317.md) | 369 | `declaration-track:a651cb01ddada732eb5713170e26c1ba467d2f538b4f94c65c1a8044b6e2c83e` |
| 36 | `lemma` | [isIso_of_isClosedImmersion_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isiso-of-isclosedimmersion-of-surjective--bb1830ec496ecf3afd07674b.md) | 382 | `result-track:bb1830ec496ecf3afd07674bc7d307be5384483decd93f26c47c34fbe8ed9cb0` |
| 37 | `lemma` | [isClosed_singleton_iff_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosed-singleton-iff-isclosedimmersion--079462b39a9c946538d530ed.md) | 389 | `result-track:079462b39a9c946538d530ed9e254f16fd3711718f36716d0f1abc1bc76bb542` |
| 38 | `theorem` | [isClosedImmersion_of_comp_eq_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/isclosedimmersion-of-comp-eq-id--29fe064daa88d18fcf8eccc1.md) | 397 | `result-track:29fe064daa88d18fcf8eccc1a36a286c9c5ebe2079aa16022c77a7cac5f475dd` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--cc375cc2657d1c2e67d5ebc6.md) | 431 | `declaration-track:cc375cc2657d1c2e67d5ebc649fdf85087110025cc30e9600709beab2c9a8e7f` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/declarations/instance--86d97940c1615bc9a0129dbc.md) | 434 | `declaration-track:86d97940c1615bc9a0129dbc58073565c08ec16ee5ccc96666558f68f506d383` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
