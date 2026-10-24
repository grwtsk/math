# Verification target: GRWTSK.Algebra.RingTheory.FreeCommRing.Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b8e179e29b4d3ea7cea9eae39a161f905f2bb26",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b8e179e29b4d3ea7cea9eae39a161f905f2bb26`.

Source path: `GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommring--5e29b66e1a83d6183e5a652d.md) | 70 | `declaration-track:5e29b66e1a83d6183e5a652d2ab233375e423d863320b93eae674bc11ff39d2c` |
| 2 | `instance` | [FreeCommRing.instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommring-instcommring--60ddd7d043845b2fe4060c20.md) | 75 | `declaration-track:60ddd7d043845b2fe4060c20370ac1b07a8c7fca1fd4af69d5904edfb6f61e90` |
| 3 | `instance` | [FreeCommRing.instInhabited](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommring-instinhabited--f7f32bbaa6e67db26a30931f.md) | 79 | `declaration-track:f7f32bbaa6e67db26a30931f59ea6256318c3e24a129e3faff50fb897eb26a21` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/of--b57469b37dbe415b6a01ea4f.md) | 88 | `declaration-track:b57469b37dbe415b6a01ea4fac4ec7ba60ddbd69a3a8c85cad2f4ec0331ff966` |
| 5 | `theorem` | [of_injective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/of-injective--a888da3bfa35803b42a5b9d4.md) | 92 | `result-track:a888da3bfa35803b42a5b9d4c98a2b6c07254cfdb667f6390a7bc3c89c80449f` |
| 6 | `lemma` | [of_cons](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/of-cons--0a6feed79f9a37bfcfcd270d.md) | 98 | `result-track:0a6feed79f9a37bfcfcd270dbbac2600338d7753c5d8f8555dad7745dff66f97` |
| 7 | `theorem` | [induction_on](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/induction-on--a2438303f9b9ba6c3ba27aeb.md) | 107 | `result-track:a2438303f9b9ba6c3ba27aebb8ad41d4a6b49b336c6e76a26a81f54c64dc34a3` |
| 8 | `def` | [liftToMultiset](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/lifttomultiset--732760fc401956d499a4d5c3.md) | 125 | `declaration-track:732760fc401956d499a4d5c35d46c27f67b8b11a5cad95d6d7b7acaf2150fefe` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/lift--c8e936d80bea6975b2652c2b.md) | 145 | `declaration-track:c8e936d80bea6975b2652c2ba66905e4f4fc102bbcf24a5627f15f5bb6c8108d` |
| 10 | `theorem` | [lift_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/lift-of--7853ba952b1d56e83efc5975.md) | 150 | `result-track:7853ba952b1d56e83efc5975cd8912e43b3405764ceb111f0e0cc08b8508bdc1` |
| 11 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/lift-comp-of--2f0496686a6ac1261ab8248c.md) | 155 | `result-track:2f0496686a6ac1261ab8248c703cbf515ab818b0a17f7964348f04f81ed120ea` |
| 12 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/hom-ext--b2c1c49dc27da1b1a64a9a92.md) | 163 | `result-track:b2c1c49dc27da1b1a64a9a92837c00f4200e734793c0698f49e681d2b4dae83c` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/map--2d344021ec5ea5054fb298f7.md) | 172 | `declaration-track:2d344021ec5ea5054fb298f7f9771e366245b9ff5b0aef659c9492691b109b80` |
| 14 | `theorem` | [map_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/map-of--a6e8212c5faca869c6018791.md) | 177 | `result-track:a6e8212c5faca869c6018791185a5e3ed69ec82b7f30ef4311176f55d8772522` |
| 15 | `def` | [IsSupported](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported--488ebde2fb36dbf779154b35.md) | 182 | `declaration-track:488ebde2fb36dbf779154b352c1657995e40b42cdf721abf3d267d403846fc1d` |
| 16 | `theorem` | [isSupported_upwards](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-upwards--09e15de8bd56d886d8b275d6.md) | 190 | `result-track:09e15de8bd56d886d8b275d6879c2eb777a65ebae44176251b8808610d66f808` |
| 17 | `theorem` | [isSupported_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-add--714b778049b3d2195b6fef59.md) | 194 | `result-track:714b778049b3d2195b6fef59b7eb33f6482aec934de1c29643ee5b5c8d4d826d` |
| 18 | `theorem` | [isSupported_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-neg--16e33c0e7e10a7ebc8ac1ddd.md) | 198 | `result-track:16e33c0e7e10a7ebc8ac1ddd9660a9360fc42948f78e3efdcfa23d62d0c4d1f8` |
| 19 | `theorem` | [isSupported_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-sub--3103d940abf7b3d4ac8d44ff.md) | 202 | `result-track:3103d940abf7b3d4ac8d44ffabf40bf143535c9297aad53b10362abf5816020b` |
| 20 | `theorem` | [isSupported_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-mul--448771c7b2eff5c79439f0c2.md) | 206 | `result-track:448771c7b2eff5c79439f0c2aeb5b144d5f1244a41bc334f3ae96b2f34abb88b` |
| 21 | `theorem` | [isSupported_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-zero--cab147b366eed31dc85e0e76.md) | 210 | `result-track:cab147b366eed31dc85e0e76469cd3ba306ac1ceee591d48ccac877b6a01d485` |
| 22 | `theorem` | [isSupported_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-one--9d1b63a7f58250e00721201c.md) | 214 | `result-track:9d1b63a7f58250e00721201cb64fc56352aae228a55f9400b8d513c7df3cf020` |
| 23 | `theorem` | [isSupported_int](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-int--8a24f99a8c59276cd0393d78.md) | 218 | `result-track:8a24f99a8c59276cd0393d780dca0c6d050dcbbd7f11161e940285038fe9f95e` |
| 24 | `def` | [restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/restriction--89b458a48cc1304d95fb438d.md) | 228 | `declaration-track:89b458a48cc1304d95fb438decf95748a8202a2f955ffb7e68ed25d4d23ca8b0` |
| 25 | `theorem` | [restriction_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/restriction-of--9d410774aeebd594e078ecbf.md) | 237 | `result-track:9d410774aeebd594e078ecbfbad29ea38c1761e437956039e8065815bd54acee` |
| 26 | `theorem` | [isSupported_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/issupported-of--7a29a50ada9482922f714900.md) | 243 | `result-track:7a29a50ada9482922f714900133b88dbcfd0688b8a18dca499c0b0828d29f238` |
| 27 | `theorem` | [map_subtype_val_restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/map-subtype-val-restriction--d6e12f332dca3ed53c8634b3.md) | 277 | `result-track:d6e12f332dca3ed53c8634b3a35cfe40f315b29b93a8d377902efd0906ecc4ef` |
| 28 | `theorem` | [exists_finite_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/exists-finite-support--d28561c09df6c7dcb2b4dbcd.md) | 290 | `result-track:d28561c09df6c7dcb2b4dbcd7840cf12ebb6db6dee73dad5a8d7f2ce59da2364` |
| 29 | `theorem` | [exists_finset_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/exists-finset-support--87f1e7dca88d171751b45b8e.md) | 303 | `result-track:87f1e7dca88d171751b45b8e59bbb3a66001c779c4960a1dfbd11310cc144463` |
| 30 | `def` | [toFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/tofreecommring--55d18be3e7ff89c8e21c42d8.md) | 316 | `declaration-track:55d18be3e7ff89c8e21c42d862020ca24c0575a608d789389add879bc6f29a68` |
| 31 | `def` | [castFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/castfreecommring--cd71950d30340d1cf9825402.md) | 322 | `declaration-track:cd71950d30340d1cf9825402c3a2fe7d32e34a0847d785b18d1ad21984f0faed` |
| 32 | `instance` | [FreeCommRing.instCoe](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommring-instcoe--dcee4c74ab9fdde06f9ddf5b.md) | 324 | `declaration-track:dcee4c74ab9fdde06f9ddf5bbbc18a8753c1296a39ea14903b463de902c5d0b2` |
| 33 | `def` | [coeRingHom](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coeringhom--5295379fb3c458108fc1816f.md) | 329 | `declaration-track:5295379fb3c458108fc1816f7214a98b095beebdaa59b58b0067699cfd940611` |
| 34 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-zero--78930b120f3210c03aeff477.md) | 334 | `result-track:78930b120f3210c03aeff4776ba03f1d9334c7e31e17a0ea0634bb05a7c7f9c5` |
| 35 | `theorem` | [coe_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-one--d5ba66e833eadd16f9d073f8.md) | 338 | `result-track:d5ba66e833eadd16f9d073f8e928143d6f247a191b64084c5cdae66ed69938f2` |
| 36 | `theorem` | [coe_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-of--973c89dabc54ff31a002b0f9.md) | 344 | `result-track:973c89dabc54ff31a002b0f9b4b6b2c560f0826afd6d349df71746a9a7c29734` |
| 37 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-neg--d043cfc14973faf0ea7347bc.md) | 349 | `result-track:d043cfc14973faf0ea7347bce9fd379601b66b1587b0bc2cc4b5feaa76ca2dbf` |
| 38 | `theorem` | [coe_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-add--b98ee61000970960240a3b4a.md) | 354 | `result-track:b98ee61000970960240a3b4ab4fd880a9f7adc33e3045bcb312b9e565f730a06` |
| 39 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-sub--fae22e2ef6988bfd999899d4.md) | 359 | `result-track:fae22e2ef6988bfd999899d4148cfca78a5db7b73b548fd319242f26f314848d` |
| 40 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-mul--f869c7ab0c54a17a22e0eab8.md) | 364 | `result-track:f869c7ab0c54a17a22e0eab8724f1afc7188d1f8cc49525a8795cb9d41cb8296` |
| 41 | `theorem` | [coe_surjective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-surjective--4708b226df9ddc5d136a3042.md) | 370 | `result-track:4708b226df9ddc5d136a3042705ed035e779afabffa52772499a25213c6d0b31` |
| 42 | `theorem` | [coe_eq](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/coe-eq--e301a77ba8a2bdcab7cbadd0.md) | 385 | `result-track:e301a77ba8a2bdcab7cbadd0250ef1857159dc8447ad7a11a77d893c3e710514` |
| 43 | `def` | [subsingletonEquivFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/subsingletonequivfreecommring--7f61c237c4e1c5dc7a0906f8.md) | 402 | `declaration-track:7f61c237c4e1c5dc7a0906f8be0254665d63f7aa045788d48a4e28c81b5aedbd` |
| 44 | `instance` | [instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/instcommring--d168f3d5fbb4d7c66c69d9c1.md) | 411 | `declaration-track:d168f3d5fbb4d7c66c69d9c1398f844263a5f5d5db978549a3460435d3666672` |
| 45 | `def` | [freeCommRingEquivMvPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommringequivmvpolynomialint--317b74bb13047c587a6dab06.md) | 424 | `declaration-track:317b74bb13047c587a6dab06ecbb554ae331a2be68dbf236fa46d4f1e625d65a` |
| 46 | `def` | [freeCommRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommringpemptyequivint--976604e8aff6eef0495b6e5d.md) | 431 | `declaration-track:976604e8aff6eef0495b6e5da92b5a5aa39faf9043c5d429d64891698714c086` |
| 47 | `def` | [freeCommRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freecommringpunitequivpolynomialint--1f211a22942ceea518514de5.md) | 436 | `declaration-track:1f211a22942ceea518514de50947ec895e534bc2aed7355a3e7bcd8dc31d507c` |
| 48 | `def` | [freeRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freeringpemptyequivint--84547e1d5cbb30e40603fa13.md) | 443 | `declaration-track:84547e1d5cbb30e40603fa13b09304527106235ef4fb588c017d018fa094b822` |
| 49 | `def` | [freeRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/declarations/freeringpunitequivpolynomialint--4f82a5a4bc5ebca465cb8335.md) | 448 | `declaration-track:4f82a5a4bc5ebca465cb8335075890fc6fa0f99dfae2fb6862085784035ec8d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
