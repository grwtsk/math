# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Noetherian.Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14760a6a83ff21c5a23aedd87bbfd551e8eebb8f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14760a6a83ff21c5a23aedd87bbfd551e8eebb8f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian--ba00915bdffd593d878bc580.md) | 52 | `declaration-track:ba00915bdffd593d878bc5800c97962b31cf9454fd9386b006fed2c8fde550dd` |
| 2 | `theorem` | [isNoetherianRing_of_away](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/isnoetherianring-of-away--4665d617d80d0889e4adf2b4.md) | 66 | `result-track:4665d617d80d0889e4adf2b4ee1971b7138f7ecaf07481ddfeb7f150074686ba` |
| 3 | `theorem` | [isLocallyNoetherian_of_affine_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian-of-affine-cover--055a62654645a9659ab47452.md) | 98 | `result-track:055a62654645a9659ab47452965a17f80ded545d522f248022e2ad54027173ca` |
| 4 | `theorem` | [isLocallyNoetherian_iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian-iff-of-isup-eq-top--73900869f329b6067ae7ded1.md) | 119 | `result-track:73900869f329b6067ae7ded1a6beeb11e45d142b53398a6e851b163eb64e446a` |
| 5 | `theorem` | [isLocallyNoetherian_iff_of_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian-iff-of-affine-opencover--c7cd03f608c182ce7ea2f5cc.md) | 127 | `result-track:c7cd03f608c182ce7ea2f5ccaedb73dff8b47aa05b0e372b3100a73e9ef8446f` |
| 6 | `lemma` | [isLocallyNoetherian_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian-of-isopenimmersion--07ea352ab2696cbe7765338c.md) | 146 | `result-track:07ea352ab2696cbe7765338cf655c9254bea5fb6dd8b6c1b70330792ca5308da` |
| 7 | `theorem` | [isLocallyNoetherian_iff_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/islocallynoetherian-iff-opencover--e34a1749c65eb2e0c3e5f996.md) | 167 | `result-track:e34a1749c65eb2e0c3e5f9960a4b5527795976f7cf5f5ac6e472fe842f1493f2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--9c88f8ed333604efadd2aeaf.md) | 179 | `declaration-track:9c88f8ed333604efadd2aeaf71574340e78df016a22207d3f6ad2dbeac447c59` |
| 9 | `lemma` | [noetherianSpace_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/noetherianspace-of-isaffine--69ad0bb0b19e323d6ad4747c.md) | 183 | `result-track:69ad0bb0b19e323d6ad4747c8cb2f6189b164b41da2eab8110680bf122e818e2` |
| 10 | `lemma` | [noetherianSpace_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/noetherianspace-of-isaffineopen--de5a6623566707cf37ae016c.md) | 187 | `result-track:de5a6623566707cf37ae016c1bb95e2038eb152cbb34eeabee660e2e863e102e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--ab2d64b605a470a90993bca3.md) | 196 | `declaration-track:ab2d64b605a470a90993bca320748062aa2ed8472ad62c35a73b627ae526baef` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--bdf4bd46f08a4163c6d86ef8.md) | 210 | `declaration-track:bdf4bd46f08a4163c6d86ef87cbdd96ff04674baf13bba5eb0bcf7b46bbbf944` |
| 13 | `class` | [IsNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/isnoetherian--dd554df7cb18e19a474650ba.md) | 229 | `declaration-track:dd554df7cb18e19a474650ba49d27f3869ce9da6d74bd8fec303c470e7bf9a95` |
| 14 | `theorem` | [isNoetherian_iff_of_finite_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/isnoetherian-iff-of-finite-isup-eq-top--5de399fa0e47fbafa181f501.md) | 233 | `result-track:5de399fa0e47fbafa181f501653714b572c4fec239b524c44e1e1bd6af7aaea2` |
| 15 | `theorem` | [isNoetherian_iff_of_finite_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/isnoetherian-iff-of-finite-affine-opencover--038756548cb1ac179af7a1ca.md) | 254 | `result-track:038756548cb1ac179af7a1cacdcf2d6014f413940105a1ca9761af10a9759a7d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--9457281a618fad6daa600540.md) | 269 | `declaration-track:9457281a618fad6daa600540156126a91fd5b40ad41290269d10d9c78fdd5128` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--535c7f3d237dbce65245e576.md) | 286 | `declaration-track:535c7f3d237dbce65245e576b849cb99d8aa46781c25eed5bdd19437f25ac90c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--640c0812632955fa12686848.md) | 291 | `declaration-track:640c0812632955fa1268684808cefe2bb3c4c84dd16397ab958210f0744921f1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--d053184baf47bd589d9319f1.md) | 301 | `declaration-track:d053184baf47bd589d9319f14c9f04e281e442e4fddaefdc7fc20be4f544d5da` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--678e4230a641b147209eec2e.md) | 309 | `declaration-track:678e4230a641b147209eec2e6b1d8d4677fb07abf139699e6a03fc12a528b203` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/instance--7b1385bcfa33e2692b21b3bb.md) | 312 | `declaration-track:7b1385bcfa33e2692b21b3bbdcdc9f0605adc6dd9080e184c776fe62aa59b8db` |
| 22 | `theorem` | [isNoetherian_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/isnoetherian-spec--825e9c1fbcccc58d5c43f1f7.md) | 319 | `result-track:825e9c1fbcccc58d5c43f1f721a9da68285d1612d8ced1c99c0f3d790de32b2f` |
| 23 | `theorem` | [finite_irreducibleComponents_of_isNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variant4fcd352ffa24ab8fc15084965f1aabd7d3e096d311763b57cd49ace8a28445c6.lean/declarations/finite-irreduciblecomponents-of-isnoetherian--da257509dea11247bdccba83.md) | 326 | `result-track:da257509dea11247bdccba83e153d365151f3dcc913f2c79d5daee65a1af8bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
