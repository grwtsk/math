# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineSpace.Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ae68e236b2102eb2333471cf36cb0628dd49f6",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ae68e236b2102eb2333471cf36cb0628dd49f6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean.json)

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
| 1 | `def` | [AffineSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/affinespace--c508c499461f33e94ac4c340.md) | 45 | `declaration-track:c508c499461f33e94ac4c340eea869974f0f5146978cd436ce8d0f4acc979787` |
| 2 | `lemma` | [of_mvPolynomial_int_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/of-mvpolynomial-int-ext--7876f75534d50cf7d6bdcd1d.md) | 54 | `result-track:7876f75534d50cf7d6bdcd1d8595be3efa1e487a7e98e15e94d473133a27dc3a` |
| 3 | `instance` | [over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/over--65f83f4e94d414b23c19d078.md) | 67 | `declaration-track:65f83f4e94d414b23c19d07839f687b812ca13f24c3d1ab75f677f4afa97630d` |
| 4 | `def` | [toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/tospecmvpoly--05c3bba947a924930ec1cbf2.md) | 71 | `declaration-track:05c3bba947a924930ec1cbf26d4c36e4f422877a441192f25607c598872dcd52` |
| 5 | `def` | [toSpecMvPolyIntEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/tospecmvpolyintequiv--d8617bf80f8cda98b9d77cda.md) | 79 | `declaration-track:d8617bf80f8cda98b9d77cda880197c9072d0ceca3f78d3405d829cbaf7387d9` |
| 6 | `lemma` | [toSpecMvPolyIntEquiv_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/tospecmvpolyintequiv-comp--b4da4838d8fdd70cf14009a6.md) | 95 | `result-track:b4da4838d8fdd70cf14009a62d674b8b5f8f8d2f812a3b1426a8727dcd040675` |
| 7 | `def` | [coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/coord--391b7701c9aec99582cf6a69.md) | 100 | `declaration-track:391b7701c9aec99582cf6a690962e7caf577b1de10fe932a08d13ade59cf8ddb` |
| 8 | `def` | [homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/homofvector--4aa33ef7bb22cb4e23b225b1.md) | 107 | `declaration-track:4aa33ef7bb22cb4e23b225b17af7f904959b912077be4411845b8926d01b2cd4` |
| 9 | `lemma` | [homOfVector_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/homofvector-over--2dc3c5eba3fffa1a96751898.md) | 113 | `result-track:2dc3c5eba3fffa1a96751898a8d72631a29dbca8c73a971d197a0fe1149ced9e` |
| 10 | `lemma` | [homOfVector_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/homofvector-tospecmvpoly--2897d1e1387f8952f81cec8b.md) | 117 | `result-track:2897d1e1387f8952f81cec8b3afeef649f9f6f081d1d175194951f71b457a6e6` |
| 11 | `lemma` | [homOfVector_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/homofvector-apptop-coord--4ed65957d20c344e4121201f.md) | 122 | `result-track:4ed65957d20c344e4121201fc8946e97e7d6a36280f0f7cd8b0ea6ab3e1b818d` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/hom-ext--5e216d40f58602dd4bfe7c40.md) | 128 | `result-track:5e216d40f58602dd4bfe7c40b723fc4be3aa98c64cd332bc6ab9dbc4d3abb02d` |
| 13 | `lemma` | [comp_homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/comp-homofvector--911e6b84187a0f637f751bd1.md) | 140 | `result-track:911e6b84187a0f637f751bd1b83e219b5a10b89f89782175ae7fec9e38efaf4a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--f30834ee58c96f48b0abacee.md) | 148 | `declaration-track:f30834ee58c96f48b0abacee32cdce4aedfb1165e5abc5376c6c41c197f3a483` |
| 15 | `def` | [homOverEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/homoverequiv--c587de6949080c4f46df1a89.md) | 153 | `declaration-track:c587de6949080c4f46df1a895770f9b2e0a6aafe0556f885e717b2f908256c64` |
| 16 | `def` | [isoOfIsAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isoofisaffine--5bcb48e973f44421d3d3ba6e.md) | 170 | `declaration-track:5bcb48e973f44421d3d3ba6e110432ddb6a6f0f8bbe5d85aabb60bdfafbb8af4` |
| 17 | `lemma` | [isoOfIsAffine_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isoofisaffine-hom-apptop--d2b385c7384c981eb2f74fea.md) | 206 | `result-track:d2b385c7384c981eb2f74fea556f5370be5d05852c1b752fd6db6e0b39bb93e0` |
| 18 | `lemma` | [isoOfIsAffine_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isoofisaffine-inv-apptop-coord--5d967948c303d0270d831a64.md) | 213 | `result-track:5d967948c303d0270d831a6496ebce0a124daeb18574c0b3c9e8b12eb9790e6c` |
| 19 | `lemma` | [isoOfIsAffine_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isoofisaffine-inv-over--3b10fc82d7adbcec0acc6f7a.md) | 218 | `result-track:3b10fc82d7adbcec0acc6f7ad01c08f235ca8724b3c8663607c6322d5afabfd3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--2c7d31c5ff2f809a94adecdc.md) | 222 | `declaration-track:2c7d31c5ff2f809a94adecdcbfdd740f8085d67ca8acfbc4f31c597925a84888` |
| 21 | `def` | [SpecIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/speciso--31c72b34792f109ac5a94915.md) | 226 | `declaration-track:31c72b34792f109ac5a949154f6c233942c6879a1b1e6496223a6963e2ee89ff` |
| 22 | `lemma` | [SpecIso_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/speciso-hom-apptop--906922850ab1e5010f90e8b3.md) | 232 | `result-track:906922850ab1e5010f90e8b3f6dd8af7955429b985e98cfab5017e0472816f01` |
| 23 | `lemma` | [SpecIso_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/speciso-inv-apptop-coord--b36fa3540309daa152445494.md) | 241 | `result-track:b36fa3540309daa152445494ab882289aa573dd40e81b1d8d388ac99bbfb96b9` |
| 24 | `lemma` | [SpecIso_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/speciso-inv-over--1107eceb30e8731b049b9d74.md) | 251 | `result-track:1107eceb30e8731b049b9d74fd950c7e819a621547d778126f2806716a531f0b` |
| 25 | `def` | [map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map--5e8ac0d27f6526cce70e6fff.md) | 265 | `declaration-track:5e8ac0d27f6526cce70e6fff68b63aaf67d191c356cc41aa5246f4c94f6b097c` |
| 26 | `lemma` | [map_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-over--fa20dc9d325ded88a5526e59.md) | 269 | `result-track:fa20dc9d325ded88a5526e59ef8b0c112db95fd2aa8960d6cd2366e159bc6068` |
| 27 | `lemma` | [map_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-apptop-coord--b97fb212055ab8e8a61a2e92.md) | 273 | `result-track:b97fb212055ab8e8a61a2e92a709f164aa75235fe5a9e990619d9c1f9d140182` |
| 28 | `lemma` | [map_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-tospecmvpoly--ac24e14c7849eda027b89133.md) | 278 | `result-track:ac24e14c7849eda027b89133d261bc7c6ed9409ac2760a9a1804d9641ec67d20` |
| 29 | `lemma` | [map_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-id--6c4e161d1237df9119fbf5f4.md) | 285 | `result-track:6c4e161d1237df9119fbf5f41b4dab2b9c331a42f7b7c8ffc79850712ba14c52` |
| 30 | `lemma` | [map_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-comp--7a89ac87da1dfb354e6f64ca.md) | 290 | `result-track:7a89ac87da1dfb354e6f64ca7836eea357e752f9b7275688acd0201cafd15cc9` |
| 31 | `lemma` | [map_SpecMap](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-specmap--cc4f183ff693d6caea69e32d.md) | 297 | `result-track:cc4f183ff693d6caea69e32d51b737b41dd7238765bef50f227bb2915ffd1205` |
| 32 | `def` | [mapSpecMap](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/mapspecmap--e3f73ce3f9caea68a389023e.md) | 315 | `declaration-track:e3f73ce3f9caea68a389023e8d14f24f741f347d58d0a932515ff3d63f16ee5f` |
| 33 | `lemma` | [isPullback_map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/ispullback-map--b7c9b0d696cb72254cd4e848.md) | 321 | `result-track:b7c9b0d696cb72254cd4e8489eb137aab16dcdf5edb6951edc52a6c5748cf1dd` |
| 34 | `def` | [reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/reindex--43e11dc528386d1a0e3bef87.md) | 329 | `declaration-track:43e11dc528386d1a0e3bef87caa3d9bdcd718167ca14425df9565377086b0927` |
| 35 | `lemma` | [reindex_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/reindex-over--3e1baaef705ffb5c670ec5a4.md) | 333 | `result-track:3e1baaef705ffb5c670ec5a446ec4e3c2e5e8cef571585a5ab1ebcac842bdaac` |
| 36 | `lemma` | [reindex_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/reindex-apptop-coord--7abce5bbb00c1312f3e56424.md) | 338 | `result-track:7abce5bbb00c1312f3e564247a9eb06632cd508ff1a25b99b2175bb403c844f7` |
| 37 | `lemma` | [reindex_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/reindex-id--a345921a39ebb06a9dc3f9a0.md) | 343 | `result-track:a345921a39ebb06a9dc3f9a067eb7d815f94cd8f55ef61e46263ed27f4f5a062` |
| 38 | `lemma` | [reindex_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/reindex-comp--2f922f6cd3f07e5ffa6a78de.md) | 348 | `result-track:2f922f6cd3f07e5ffa6a78dee8f25399e5337432f502d7371ba4d1042b04e171` |
| 39 | `lemma` | [map_reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/map-reindex--74bc59db2912f2268d5636d5.md) | 354 | `result-track:74bc59db2912f2268d5636d57e30045d12b4429508d117c90e53ce034b07cf77` |
| 40 | `def` | [functor](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/functor--cc100e62b64ccdf1b2c5389c.md) | 360 | `declaration-track:cc100e62b64ccdf1b2c5389c50b5034f38ac8714c2f2b98215968cae7d858974` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--a86bed47bf42f20703f04b83.md) | 370 | `declaration-track:a86bed47bf42f20703f04b83d89e896ab8a899b4f4a54554e711540d9489dda7` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--20003150f4d0e13273df59fe.md) | 373 | `declaration-track:20003150f4d0e13273df59fe465ecde3d698fcd0ad93a792f372d59ac3d508b2` |
| 43 | `instance` | [smoothOfRelativeDimension](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/smoothofrelativedimension--8085ac6395963c96c6bf3149.md) | 382 | `declaration-track:8085ac6395963c96c6bf3149925e8e467bdbd48fa39047bf0696edd21eb7893d` |
| 44 | `lemma` | [smoothOfRelativeDimension_of_card_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/smoothofrelativedimension-of-card-eq--96b997128a486919f16105f2.md) | 394 | `result-track:96b997128a486919f16105f25a988546d24130e9a92afe58283c04566560cc1c` |
| 45 | `instance` | [smoothOfRelativeDimension_fin](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/smoothofrelativedimension-fin--bb258ca9a63f34259bcd2d9c.md) | 399 | `declaration-track:bb258ca9a63f34259bcd2d9c3598569663ea351efc27c833bd353abd5563761e` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--728aa9cb4f5ccb23d09d6d84.md) | 403 | `declaration-track:728aa9cb4f5ccb23d09d6d84c5788a48422a120769d07de14686e9dbf14c8f1b` |
| 47 | `lemma` | [isOpenMap_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isopenmap-over--189ca77b5904d4946f50340d.md) | 405 | `result-track:189ca77b5904d4946f50340d8df961efd79242f5ebb0c237cee429e5fc261182` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--476195770fb07f0be42b8f51.md) | 419 | `declaration-track:476195770fb07f0be42b8f5118425eac61583bef3bdeb0a90cafdf4b150ab02e` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--c62d1e40e6e55ee6ed0a26c6.md) | 426 | `declaration-track:c62d1e40e6e55ee6ed0a26c609ed96773ad2a63147cbb47389f92fd752348454` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--a0774ad5bf0332ca39562ba4.md) | 429 | `declaration-track:a0774ad5bf0332ca39562ba42b5b24c09f672b5ee00ef78abfc6f7fc89dd0b20` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--4cf75666fc9527d80ba60cba.md) | 437 | `declaration-track:4cf75666fc9527d80ba60cbad067a1299bf95b4312e8247f41b34abd7f00cb44` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--82f402987dfde6a8428569cf.md) | 447 | `declaration-track:82f402987dfde6a8428569cfb30c18d2b5bb83afd9c3c5ec6cc1bb944d4da002` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--e8c8d11dd6112c046edabec4.md) | 450 | `declaration-track:e8c8d11dd6112c046edabec40077b24e4258505d3d9a06db52d737a7a80fb98c` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/instance--e67170b7e167703bbb3c4d22.md) | 454 | `declaration-track:e67170b7e167703bbb3c4d22d21cca11ad01754edee2c2d5fe89677b76d02ff5` |
| 55 | `lemma` | [isIntegralHom_over_iff_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/isintegralhom-over-iff-isempty--9f387927b22712dcb9d9b70c.md) | 465 | `result-track:9f387927b22712dcb9d9b70c03a6f3d3da16605f4226c7b09e5850a631f46100` |
| 56 | `lemma` | [not_isIntegralHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/not-isintegralhom--6700ca1b24041a18f2eee977.md) | 494 | `result-track:6700ca1b24041a18f2eee977c62dbe6ac564d6af5444d4f74fa5eb4308d56965` |
| 57 | `lemma` | [spec_le_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/spec-le-iff--99a0b99735cb753f3fe25148.md) | 498 | `result-track:99a0b99735cb753f3fe251485aeac0e2594d3584fba9112c946a89054b82dfb9` |
| 58 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/declarations/example--9a2b7ddcb5150c2de781745c.md) | 505 | `declaration-track:9a2b7ddcb5150c2de781745ccbb40176837e380c018b5e3e39aa23da3109611d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
