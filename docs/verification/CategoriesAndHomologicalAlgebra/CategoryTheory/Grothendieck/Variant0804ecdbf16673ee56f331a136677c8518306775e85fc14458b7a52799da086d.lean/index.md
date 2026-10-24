# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcb6c61a0803924dbdc30462063e466619746b5c",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcb6c61a0803924dbdc30462063e466619746b5c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat.AsSmall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/grothendieck--d911a4eda258156e60a40810.md) | 75 | `declaration-track:d911a4eda258156e60a40810fb1551ce2b086c848f058583afd33d541766a4c6` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/hom--b56a8dc60fe49ffe9e160385.md) | 88 | `declaration-track:b56a8dc60fe49ffe9e1603850b0d46700c9f21bbcd5321383f36ccac5b269d94` |
| 3 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/ext--bd6fa7a16dbde343f98a0ed8.md) | 95 | `result-track:bd6fa7a16dbde343f98a0ed8329bc70cb93b4d51d407a9a99bcda8cbf3596d19` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/id--bede3ff35582a5f6034c9215.md) | 104 | `declaration-track:bede3ff35582a5f6034c92157fd2ba4e80cc791e18e3ff929321c1e9d9833d9b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/instance--c4cf628b50fde1e13f7f88c7.md) | 108 | `declaration-track:c4cf628b50fde1e13f7f88c7fd116ea453c060c6099261ffd239efc77ce11234` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/comp--32a1201560a6f3be9c0f89c1.md) | 113 | `declaration-track:32a1201560a6f3be9c0f89c120811abfbb01f0b5ddeee22c210c1c0858499f80` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/instance--e963a8ec1047776bf013ba81.md) | 120 | `declaration-track:e963a8ec1047776bf013ba813307271f5dbabd86e48ea85ebbfa13154c75c145` |
| 8 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/id-base--7be4b1a7b726c9f835fe7606.md) | 139 | `result-track:7be4b1a7b726c9f835fe76060c5e27d5fcc1e12e7bf1cfdcaf637495051f4a2c` |
| 9 | `theorem` | [id_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/id-fiber--cc4ee42aa6d6299bda3ef1c1.md) | 144 | `result-track:cc4ee42aa6d6299bda3ef1c14de254a62c3c4d1bb62f37b6c05dd599293fc77b` |
| 10 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/comp-base--f8a68707bce612e35c4d2bd8.md) | 149 | `result-track:f8a68707bce612e35c4d2bd847b60fa39cd086fd514af4eb6d8df03a030b2684` |
| 11 | `theorem` | [comp_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/comp-fiber--db4e986217d16a6a0cdfd560.md) | 154 | `result-track:db4e986217d16a6a0cdfd5602eb7b84b2c69664061e0ab3461167f59f481a2d7` |
| 12 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/congr--fe13d5eee2ba63cc731caaf0.md) | 159 | `result-track:fe13d5eee2ba63cc731caaf092ca84bf01a5c169b20443cd96a24131ed98a479` |
| 13 | `theorem` | [base_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/base-eqtohom--1a13f5b07eed1fa919ef97f9.md) | 166 | `result-track:1a13f5b07eed1fa919ef97f944cec6f67725985c4e4f5650ea931b2bcaa5e4ff` |
| 14 | `theorem` | [fiber_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/fiber-eqtohom--3c0f00f9542acbeaa67f9685.md) | 170 | `result-track:3c0f00f9542acbeaa67f9685747543239f2423791a29a804d110d7ced656d166` |
| 15 | `lemma` | [eqToHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/eqtohom-eq--0ea60ac436eea29acfc6c261.md) | 173 | `result-track:0ea60ac436eea29acfc6c261d95dd447541a2a8c28ff4ff5037a26f94320a547` |
| 16 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/transport--a3cd03fb72ee492afdeec6af.md) | 185 | `declaration-track:a3cd03fb72ee492afdeec6af1af060b738498b94c3e9e793e9a179c397ab8adc` |
| 17 | `def` | [toTransport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/totransport--fcbbc8a88dda5883697f0e0c.md) | 195 | `declaration-track:fcbbc8a88dda5883697f0e0cb9d218ccfc663fb25b221d9360a683e8a8a1d94f` |
| 18 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/isomk--75f78fd46b47afcfe48703a0.md) | 202 | `declaration-track:75f78fd46b47afcfe48703a0f1d4114a498c208d10d3388748e1a0012f97a044` |
| 19 | `def` | [transportIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/transportiso--6c7ceb5620814542720494e7.md) | 219 | `declaration-track:6c7ceb5620814542720494e7ac6bd94844cc9014fc182db6421f89ba7e9d83c5` |
| 20 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/forget--000db62e922c553eaae234bf.md) | 229 | `declaration-track:000db62e922c553eaae234bf494d56588156dc9fa088090cd6a4e05388e9bd73` |
| 21 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/map--4ae3b498de4d083cce55b834.md) | 243 | `declaration-track:4ae3b498de4d083cce55b83494c44c941b23ccb1533a272777c0221aea7f5402` |
| 22 | `theorem` | [map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/map-obj--149823a28477f77dc3bfaca8.md) | 261 | `result-track:149823a28477f77dc3bfaca839d5cf83f2d254b487c40034eb4facae99213ce9` |
| 23 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/map-map--dbad3bab275c84c09ba25e25.md) | 264 | `result-track:dbad3bab275c84c09ba25e254948cc8e4a532ce52e14e4032e04758eaed0dc5f` |
| 24 | `theorem` | [functor_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/functor-comp-forget--abefc7fe814af8f84edc2234.md) | 269 | `result-track:abefc7fe814af8f84edc223493fb451ebf74a00c86fd736de18c9af2112d33d7` |
| 25 | `theorem` | [map_id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/map-id-eq--3fc5438f2e8c049d6aeedab0.md) | 272 | `result-track:3fc5438f2e8c049d6aeedab04434df42451e55a08c8f05a39751915307d9d0b8` |
| 26 | `def` | [mapIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/mapidiso--36e94250c9b1696b51434534.md) | 282 | `declaration-track:36e94250c9b1696b5143453412dd2ec6495b1c436566f3edf43204f0b3ab03e7` |
| 27 | `theorem` | [map_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/map-comp-eq--6eccbd425ca26320724dc5d3.md) | 286 | `result-track:6eccbd425ca26320724dc5d3d33da35cafc188eb82501b47714f343f6a50f5aa` |
| 28 | `def` | [mapCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/mapcompiso--38f98391c840755d6514f69f.md) | 300 | `declaration-track:38f98391c840755d6514f69f225494a887d5a43c756f520d5ab8b8dca5aafa70` |
| 29 | `def` | [compAsSmallFunctorEquivalenceInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/compassmallfunctorequivalenceinverse--7a04e9b4dff558605ca63314.md) | 306 | `declaration-track:7a04e9b4dff558605ca63314d48b0220c4cf3710d1070eec8b9579e80ab2a2cb` |
| 30 | `def` | [compAsSmallFunctorEquivalenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/compassmallfunctorequivalencefunctor--cc8297582f6c7cabe62b87cf.md) | 313 | `declaration-track:cc8297582f6c7cabe62b87cfe72db653b27b85dea12d2144376aafecc6b1813a` |
| 31 | `def` | [compAsSmallFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/compassmallfunctorequivalence--da1fa2b043776d89090778a6.md) | 324 | `declaration-track:da1fa2b043776d89090778a6ae82e9b9f9994ee348642a663f21258b445be2b6` |
| 32 | `def` | [mapWhiskerRightAsSmallFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/mapwhiskerrightassmallfunctor--4a934d3cf88bf002dfd56564.md) | 335 | `declaration-track:4a934d3cf88bf002dfd56564520a76a9601f35bddc396af7e0e91f698039d56a` |
| 33 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/functor--e7b939951a210ce3f90d1bd6.md) | 365 | `declaration-track:e7b939951a210ce3f90d1bd68221299fab2da06a40c50f26f6636068c4ea2f36` |
| 34 | `def` | [grothendieckTypeToCatFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/grothendiecktypetocatfunctor--100b05fe9224008b5b7dd20a.md) | 379 | `declaration-track:100b05fe9224008b5b7dd20aa30d8ed446aec225a633a86e20b133ec8185c739` |
| 35 | `def` | [grothendieckTypeToCatInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/grothendiecktypetocatinverse--4162e477f0ad086d2588ab8c.md) | 385 | `declaration-track:4162e477f0ad086d2588ab8ca244e210266dfed828c54a8b4c26edeb8a50dbbe` |
| 36 | `def` | [grothendieckTypeToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/grothendiecktypetocat--83365a64b4a5889b1493f084.md) | 394 | `declaration-track:83365a64b4a5889b1493f084d8c9878b19ebf4d76cbc1bb2c3b17c3f53c8f6ed` |
| 37 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/pre--56def7ac30728847f2c9f3cf.md) | 430 | `declaration-track:56def7ac30728847f2c9f3cf4cbfc4fed6b8554396c3e66f9ec0b99478492bf3` |
| 38 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/pre-id--1a8b6c77ff2ee15735bde12a.md) | 437 | `result-track:1a8b6c77ff2ee15735bde12ae2642b2b1ebda0ea278fdf3a703a73477e0419b6` |
| 39 | `def` | [preNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/prenatiso--2f3a46c1b0fa3779d5995be0.md) | 444 | `declaration-track:2f3a46c1b0fa3779d5995be0e99679cf464630ad0b5c05c6095048044be6a360` |
| 40 | `def` | [preInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/preinv--d42627893e90fddc1ad428c4.md) | 453 | `declaration-track:d42627893e90fddc1ad428c4bc1d57a5afaf3a21e9d5b8c1658bbda6a71d5f5c` |
| 41 | `lemma` | [pre_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/pre-comp-map--3c7cb4e54fd747507fd642ca.md) | 457 | `result-track:3c7cb4e54fd747507fd642ca7a2be2de7fb875e9f27fb220a2ca43ffde8b57f5` |
| 42 | `lemma` | [pre_comp_map_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/pre-comp-map-assoc--93bb6ec8e8b6d071cb88fc6f.md) | 461 | `result-track:93bb6ec8e8b6d071cb88fc6fabc77b65a124f64409d6ceb0598c59ecf7721265` |
| 43 | `lemma` | [pre_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/pre-comp--bde77223246017bd4e4e7305.md) | 466 | `result-track:bde77223246017bd4e4e7305f6c0ed08a15be94dd997bff3a43d091b1eb369c8` |
| 44 | `def` | [preUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/preunitiso--dae609f58e9722b618427d75.md) | 473 | `declaration-track:dae609f58e9722b618427d75adba43e7201e5e5df21b4f6edbabf7f8f040a584` |
| 45 | `def` | [preEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/preequivalence--065b5fc5bc254d7385f3dac0.md) | 481 | `declaration-track:065b5fc5bc254d7385f3dac01a0acd868cbbce4e5f2b5f92d5972ea2f19bdc60` |
| 46 | `def` | [mapWhiskerLeftIsoConjPreMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/mapwhiskerleftisoconjpremap--de20f03e9ee50194166b388e.md) | 516 | `declaration-track:de20f03e9ee50194166b388ea08232b615749b35192cd522e69c3aecd69f0abe` |
| 47 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/anonymous--2e46cda303cc5db8101a15ad.md) | 531 | `declaration-track:2e46cda303cc5db8101a15ad9cbaa475adce328685e6798c66434066552e2a6c` |
| 48 | `instance` | [faithful_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/faithful--f37d05a6f41451da37f7eef9.md) | 546 | `declaration-track:f37d05a6f41451da37f7eef9fc2d6f01ef31a24c329b64e7561bee5f5d07e1aa` |
| 49 | `def` | [ιNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/nattrans--0152c9cada16f76a123d7f91.md) | 554 | `declaration-track:0152c9cada16f76a123d7f9198a2380e53d075277e6b2db6704fc06f7cfbe919` |
| 50 | `def` | [functorFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/functorfrom--2dbe5c9aea10b718e7a7052b.md) | 569 | `declaration-track:2dbe5c9aea10b718e7a7052b20a1037b0e9789483dd32dbfe23009d7f2cf0b48` |
| 51 | `def` | [ιCompFunctorFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/compfunctorfrom--bc9aa8538c8622d0db60adb8.md) | 577 | `declaration-track:bc9aa8538c8622d0db60adb89b7752730e91743196af61def769848caebe2249` |
| 52 | `def` | [ιCompMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/declarations/compmap--e496fab59585c61c795fa52a.md) | 584 | `declaration-track:e496fab59585c61c795fa52a9b03cf0c259ef40e7667934d2b391a2316c1f3db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
