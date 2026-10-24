# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Noetherian.Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ad5d0f006f205a8fd19b802e6f44e577cd60954",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ad5d0f006f205a8fd19b802e6f44e577cd60954`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian--a8538ce1ce5841964efdbf46.md) | 60 | `declaration-track:a8538ce1ce5841964efdbf46603004a388a7456a8c9de6da2cec9d02d4d52a53` |
| 2 | `theorem` | [isNoetherianRing_of_away](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/isnoetherianring-of-away--cf7b793067875dfd14a87843.md) | 74 | `result-track:cf7b793067875dfd14a87843d04a7b53955da9b826e90ba0b10cb3415568eed5` |
| 3 | `theorem` | [isLocallyNoetherian_of_affine_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian-of-affine-cover--4295a72415d62a65c9aff4c0.md) | 106 | `result-track:4295a72415d62a65c9aff4c0dab3a4c38cd026e240f68078f98a8d36ad482d1b` |
| 4 | `theorem` | [isLocallyNoetherian_iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian-iff-of-isup-eq-top--ad0d76e8121e1ac49d52e33d.md) | 127 | `result-track:ad0d76e8121e1ac49d52e33dfc6cf771df5fc777b3c69681af3c90617b9a1d31` |
| 5 | `theorem` | [isLocallyNoetherian_iff_of_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian-iff-of-affine-opencover--e5459a63d994b0076e19c120.md) | 135 | `result-track:e5459a63d994b0076e19c120649a64afa5fec1a1f5bb9de34290fe98a9debd06` |
| 6 | `lemma` | [isLocallyNoetherian_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian-of-isopenimmersion--14a975f8a2d5d07cfd804554.md) | 154 | `result-track:14a975f8a2d5d07cfd8045548875ae6a1ad4a76732e1b7f378f0e12199f287fa` |
| 7 | `theorem` | [isLocallyNoetherian_iff_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/islocallynoetherian-iff-opencover--b69512d0bb216178cfea8db8.md) | 175 | `result-track:b69512d0bb216178cfea8db8d1a2d5ce9384fa86765e783c2871ffd8220740da` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--d0dc1969b6f91e88c76257f1.md) | 187 | `declaration-track:d0dc1969b6f91e88c76257f1eee1a54383ff04982f8f32f82d95aa0bb9419eee` |
| 9 | `lemma` | [noetherianSpace_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/noetherianspace-of-isaffine--c8a2957ed837ef7573aa7283.md) | 191 | `result-track:c8a2957ed837ef7573aa7283c834a9eba89f1d333f2cc3d6f6ed63424925d0c8` |
| 10 | `lemma` | [noetherianSpace_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/noetherianspace-of-isaffineopen--c9b85d6168759bb95f326910.md) | 195 | `result-track:c9b85d6168759bb95f3269101f56aa8337ace3859d58329defd0e9a783be279e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--0268e0f0fae2294c0af7c111.md) | 204 | `declaration-track:0268e0f0fae2294c0af7c11162abbdd34f58bffbc5912bede63e47a8bfb597ea` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--93a26949ce3895f22f46e80c.md) | 218 | `declaration-track:93a26949ce3895f22f46e80cd890c4eeaba7f01c0b18f9bcdb23292b62245d7f` |
| 13 | `class` | [IsNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/isnoetherian--a7e9356f4812ade83b4f7195.md) | 237 | `declaration-track:a7e9356f4812ade83b4f71950bc9cccf0ff8b568944faa7f24dfda7b4a9ff0cd` |
| 14 | `theorem` | [isNoetherian_iff_of_finite_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/isnoetherian-iff-of-finite-isup-eq-top--f5658861db225e13b62a2a53.md) | 241 | `result-track:f5658861db225e13b62a2a5398b4e380b6f25aec29db03dcf7f68fe85f4af023` |
| 15 | `theorem` | [isNoetherian_iff_of_finite_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/isnoetherian-iff-of-finite-affine-opencover--3640116c12e75246e2b24dd8.md) | 262 | `result-track:3640116c12e75246e2b24dd8c6281d1b1055185da3742756d76cf1f031010d3a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--1c12faf4ef64c687311e10ab.md) | 277 | `declaration-track:1c12faf4ef64c687311e10ab784c62e462129d9a15624d8e39accf915e54b995` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--92cad67597e16cb3cb15f58e.md) | 294 | `declaration-track:92cad67597e16cb3cb15f58e2eca97959187514bec5346e69480825cffcc53e5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--dcdc80c1b823f3314cbac6c1.md) | 299 | `declaration-track:dcdc80c1b823f3314cbac6c1a5c32efe80881d48bc1e57b1cbf63542c3997f27` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--07e450ff43431b6141cc24cb.md) | 309 | `declaration-track:07e450ff43431b6141cc24cba3daf307dc685bc5921773c8cf69cf67d933c5cb` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--dacfc5c61436488b4253244b.md) | 317 | `declaration-track:dacfc5c61436488b4253244bc40a98eb38cb706b1c19df4837d78a7620a7b48c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/instance--6fd9b815872d8ca9ff67a27c.md) | 320 | `declaration-track:6fd9b815872d8ca9ff67a27cfdfb8b37e667984f95df39a39f9831cb025e7fd8` |
| 22 | `theorem` | [isNoetherian_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/isnoetherian-spec--8b0ff948a2f71c9b13831da6.md) | 327 | `result-track:8b0ff948a2f71c9b13831da679901e8135a42b7c5fbc7e6f50a133f49b680cd8` |
| 23 | `theorem` | [finite_irreducibleComponents_of_isNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/declarations/finite-irreduciblecomponents-of-isnoetherian--6869e9e945e38726897bb14b.md) | 334 | `result-track:6869e9e945e38726897bb14b808620cfa6da71be7631660a47c6f45eeac320ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
