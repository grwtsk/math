# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Noetherian.Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e5ad23562b9c912e380afaf8647e1e21d38d2d4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e5ad23562b9c912e380afaf8647e1e21d38d2d4`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian--6aa65a2adad19c1a9fd5d844.md) | 56 | `declaration-track:6aa65a2adad19c1a9fd5d844372546972ddc77f723111e79a41d88d16b09d46e` |
| 2 | `theorem` | [isNoetherianRing_of_away](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/isnoetherianring-of-away--810c40e1b61a60ca89b5210d.md) | 70 | `result-track:810c40e1b61a60ca89b5210d98f307629fa049c4293edfd1dab92bb6b890111e` |
| 3 | `theorem` | [isLocallyNoetherian_of_affine_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-of-affine-cover--438ac92c2f1fe5d7f7e3a08e.md) | 102 | `result-track:438ac92c2f1fe5d7f7e3a08ebbc1f74415d886bfd703cafca9f9a7fad293be8b` |
| 4 | `theorem` | [isLocallyNoetherian_iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-iff-of-isup-eq-top--121567acf27308e69485a727.md) | 123 | `result-track:121567acf27308e69485a727444e43aa2f83f31d708188715f56dd7908ebba81` |
| 5 | `theorem` | [isLocallyNoetherian_iff_of_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-iff-of-affine-opencover--deac324885c6cea4532b02f2.md) | 130 | `result-track:deac324885c6cea4532b02f2165eb301891276e231934ff1646ab555331fa413` |
| 6 | `lemma` | [isLocallyNoetherian_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-of-isopenimmersion--5b0da2fe38eb3fba60250cbc.md) | 150 | `result-track:5b0da2fe38eb3fba60250cbc719019e0c54aeea1ecc822d9f41811676bb89a85` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--6abc66ec2836ce364200d307.md) | 157 | `declaration-track:6abc66ec2836ce364200d30749877324c3c6e0e049d93e356a6d5d84eece513e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--6f605320c050171448a2c6e3.md) | 160 | `declaration-track:6f605320c050171448a2c6e31b7fd930a0197df616a002ac54374b7853383a01` |
| 9 | `theorem` | [isLocallyNoetherian_iff_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-iff-opencover--904563db2e09beffcb42fb06.md) | 166 | `result-track:904563db2e09beffcb42fb06afc6f3de168e20f4b3b971e80eb7fe5f67fc495c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--edb66d0f7001c83f82577286.md) | 176 | `declaration-track:edb66d0f7001c83f82577286be274907c6a1a517a129f44a5205a40f2b83d79a` |
| 11 | `lemma` | [noetherianSpace_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/noetherianspace-of-isaffine--4eeb58bdf039c25acd61b766.md) | 180 | `result-track:4eeb58bdf039c25acd61b7663dd44e54d31b2b10482446e9ce1539e54bcc5c25` |
| 12 | `lemma` | [noetherianSpace_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/noetherianspace-of-isaffineopen--b422a9dfe0fe231a09076a2a.md) | 184 | `result-track:b422a9dfe0fe231a09076a2ae1e81918996a0ae9ba5c559672d409ae60ac130d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--1b2a33acc348a4642e95a8e4.md) | 191 | `declaration-track:1b2a33acc348a4642e95a8e44feca0243524517be8aff9f56762f03ede90f685` |
| 14 | `theorem` | [isLocallyNoetherian_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/islocallynoetherian-spec--c40569d2428af11da1cf99b7.md) | 196 | `result-track:c40569d2428af11da1cf99b7ea6eda605ebc8150fc0123a8bbe4912bb105e106` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--571d5929e918bdcb2472eb8d.md) | 205 | `declaration-track:571d5929e918bdcb2472eb8d51ff5ce04c0dd1915f41b0562e1b9cfe6f0339f3` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--b334dc03efc5aefa05771d1f.md) | 220 | `declaration-track:b334dc03efc5aefa05771d1f5ad86c4c5950905e0dfd37125a3047bbc6197a7e` |
| 17 | `theorem` | [LocallyOfFiniteType.isLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/locallyoffinitetype-islocallynoetherian--927595c91dd93ed9ce7577a8.md) | 238 | `result-track:927595c91dd93ed9ce7577a8cd1893efd8a333dcac723917044e83863cf62079` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--db396f0ca0275cc952418ed4.md) | 255 | `declaration-track:db396f0ca0275cc952418ed4f6aa0644a7a9ecf6ec596cb9cff4bb1eeb125d25` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--3c53925968f01e8059d41ef4.md) | 260 | `declaration-track:3c53925968f01e8059d41ef4edd39970c2eac27e9ac78679bebf80531fd7237b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--c9ccc76e264ddcc0aa6ebb15.md) | 265 | `declaration-track:c9ccc76e264ddcc0aa6ebb157b415f348a3e0e2df8e05a47f7378fffd5a6800e` |
| 21 | `lemma` | [LocallyOfFinitePresentation.iff_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/locallyoffinitepresentation-iff-locallyoffinitetype--ce0c6798503913d1c42dac62.md) | 273 | `result-track:ce0c6798503913d1c42dac62b6c2897402d6e869fb06d37810f735ac31507236` |
| 22 | `class` | [IsNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/isnoetherian--77f687e8cae84c5f68ac6537.md) | 279 | `declaration-track:77f687e8cae84c5f68ac6537ec581f398252442e47ab9236958e8466c478b573` |
| 23 | `theorem` | [isNoetherian_iff_of_finite_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/isnoetherian-iff-of-finite-isup-eq-top--37ac0ad888c2544ef0e60188.md) | 283 | `result-track:37ac0ad888c2544ef0e60188c0355cf42e7eaf5392dc6465414d14d68aa4d7bd` |
| 24 | `theorem` | [isNoetherian_iff_of_finite_affine_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/isnoetherian-iff-of-finite-affine-opencover--1dc639bfd7b446f3179e8c56.md) | 304 | `result-track:1dc639bfd7b446f3179e8c56875c255b64556164434de08e17384d0565844f39` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--ec5b896e5a15e644ba8a4278.md) | 319 | `declaration-track:ec5b896e5a15e644ba8a427826b5d17f68b9f4af417d4ac29b80da8bbb991b38` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--a3d52ec558cc4407f53337ef.md) | 336 | `declaration-track:a3d52ec558cc4407f53337ef53d86640e9864dcc55f220ad050af52b074310c5` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--a076cdf1078ee9442edf6f0d.md) | 341 | `declaration-track:a076cdf1078ee9442edf6f0db0b872d435d3b767eddbe9a7818a834c62a4e836` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--0ab18ec89c220412d3f690cc.md) | 343 | `declaration-track:0ab18ec89c220412d3f690cc20977cccd43f0bba547ecfbd085a874e1531d59f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/instance--41e400c3d68fcb16a646063c.md) | 348 | `declaration-track:41e400c3d68fcb16a646063c29860a1e3a7ce63bb52e485cdd9f3da146ec8d17` |
| 30 | `theorem` | [isNoetherian_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/isnoetherian-spec--f8f789de0ec1f5b28af20058.md) | 357 | `result-track:f8f789de0ec1f5b28af20058dd3f75404d7fbf773bae8be8c199780bb2830fa6` |
| 31 | `theorem` | [finite_irreducibleComponents_of_isNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/declarations/finite-irreduciblecomponents-of-isnoetherian--c8618213f43271c234925e0e.md) | 363 | `result-track:c8618213f43271c234925e0e63c2a5da909de5e455af1e48341309cd05d80892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
