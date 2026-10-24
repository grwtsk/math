# Verification target: GRWTSK.Algebra.UniversalFactorizationRing.Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md) · [Full source](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1`.

Source path: `GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/freemonic--c87371d6b230b6e5187a1e3b.md) | 56 | `declaration-track:c87371d6b230b6e5187a1e3be369be7bc52f8de6108070a863c960c1a43562be` |
| 2 | `lemma` | [coeff_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/coeff-freemonic--4b608d080c7a28c5fa76c86f.md) | 59 | `result-track:4b608d080c7a28c5fa76c86f463cc66e159bd5d630fd9c7056427c543e8b813d` |
| 3 | `lemma` | [degree_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/degree-freemonic--6cffbcf6ae3e40f593064d85.md) | 68 | `result-track:6cffbcf6ae3e40f593064d8565bb9e774b9e08d86d22510d90f573ec921dafcf` |
| 4 | `lemma` | [natDegree_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/natdegree-freemonic--e900d3a117b0b0eb3f865aa8.md) | 73 | `result-track:e900d3a117b0b0eb3f865aa893d6592beb3ed16332f1db45783672d43b82f0f7` |
| 5 | `lemma` | [monic_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/monic-freemonic--5001aafbe9a812abf3a227cd.md) | 76 | `result-track:5001aafbe9a812abf3a227cdd8a4a04cb9a0170fdd8aaad8b951276474361e1d` |
| 6 | `lemma` | [map_map_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/map-map-freemonic--d636118c2a66bcf42c4f8111.md) | 81 | `result-track:d636118c2a66bcf42c4f8111bfaca9592bcdf5d6946544a46067b3dd4ce57f8d` |
| 7 | `def` | [MonicDegreeEq.freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/monicdegreeeq-freemonic--7a5a13bbd319762d834717eb.md) | 89 | `declaration-track:7a5a13bbd319762d834717eb434a9d3c3d94506b0ca94bf738ba0ccf69d69d7e` |
| 8 | `def` | [mapEquivMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/mapequivmonic--f587b9d9e279742fe4da1a9d.md) | 100 | `declaration-track:f587b9d9e279742fe4da1a9dd1a7d37244325740dbadee548b83c4fa452c70ef` |
| 9 | `lemma` | [coe_mapEquivMonic_comp](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/coe-mapequivmonic-comp--6c9e7fe086f9c0586a8c66ee.md) | 113 | `result-track:6c9e7fe086f9c0586a8c66ee986b53775be2ddb7a2097abdf1abc32dc6a47e96` |
| 10 | `lemma` | [coe_mapEquivMonic_comp'](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/coe-mapequivmonic-comp--3cebb88f334786479fdec7c0.md) | 118 | `result-track:3cebb88f334786479fdec7c0501f5686e3aa5e0b65129a970515f835bf1640ad` |
| 11 | `lemma` | [mapEquivMonic_symm_map](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/mapequivmonic-symm-map--bbb3302f253a25ec77f8e818.md) | 123 | `result-track:bbb3302f253a25ec77f8e8180aaa2e5090749ed0e79aae314f4d4dfa70b56fb8` |
| 12 | `lemma` | [mapEquivMonic_symm_map_algebraMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/mapequivmonic-symm-map-algebramap--3a73e04e0aebd9a5ba02a9ff.md) | 129 | `result-track:3a73e04e0aebd9a5ba02a9ffa7902dc41fe2789b92c4e49c9cd5e0d39eced941` |
| 13 | `def` | [universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmap--6751b940a513896edc5cbfc6.md) | 140 | `declaration-track:6751b940a513896edc5cbfc6eff97db6db525700d170b08db57f2b879d976474` |
| 14 | `lemma` | [universalFactorizationMap_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmap-freemonic--b16e4cbe7af25d1a365fc6ea.md) | 153 | `result-track:b16e4cbe7af25d1a365fc6ea71e243969e99b28abf7ecdf9defe625df531c262` |
| 15 | `lemma` | [universalFactorizationMap_comp_map](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmap-comp-map--7a1892ce282e2f036cebac06.md) | 163 | `result-track:7a1892ce282e2f036cebac0653d932c79f3fff59d260c7ffcb0abd002e34f1f1` |
| 16 | `def` | [universalFactorizationMapLiftEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmapliftequiv--aca7eb12a75955b8b181e31f.md) | 179 | `declaration-track:aca7eb12a75955b8b181e31fe3d20d77dee55532ada37e6827f4b0036d96568b` |
| 17 | `lemma` | [ker_eval₂Hom_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/ker-eval-hom-universalfactorizationmap--1656031280fcb975accf54e2.md) | 197 | `result-track:1656031280fcb975accf54e2aa46da0d81347d013c9baac3ce6bb44cb926f17d` |
| 18 | `def` | [universalFactorizationMapPresentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmappresentation--d393d24dd047846b0a4d0fe7.md) | 232 | `declaration-track:d393d24dd047846b0a4d0fe79b776d35132d6006919fa00a13c5e621b4007194` |
| 19 | `lemma` | [pderiv_inl_universalFactorizationMap_X](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/pderiv-inl-universalfactorizationmap-x--9e629d8f50fdc3e37d5e3e0b.md) | 253 | `result-track:9e629d8f50fdc3e37d5e3e0b7fea94b8abc90d53759eeeec33fda90cfdb19867` |
| 20 | `lemma` | [pderiv_inr_universalFactorizationMap_X](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/pderiv-inr-universalfactorizationmap-x--2cf994e11aab6cc4320cd0ed.md) | 276 | `result-track:2cf994e11aab6cc4320cd0ed56d3947cd358c77ce189e4f16ae390285c8a1153` |
| 21 | `lemma` | [universalFactorizationMapPresentation_jacobiMatrix](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmappresentation-jacobimatrix--af8b28766ffb2c68d6987b74.md) | 297 | `result-track:af8b28766ffb2c68d6987b74273626a3206173050c238bc9664996cf2db21433` |
| 22 | `lemma` | [universalFactorizationMapPresentation_jacobian](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationmappresentation-jacobian--c9bc6b071ef089d4d9d36fca.md) | 314 | `result-track:c9bc6b071ef089d4d9d36fcada55df6f66e39e412269e5a67d63beef6980f705` |
| 23 | `lemma` | [finitePresentation_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/finitepresentation-universalfactorizationmap--c0a41c1b40d4124436518fc9.md) | 337 | `result-track:c0a41c1b40d4124436518fc902d44f40adb8aa364598606fa373e93c3f5bc038` |
| 24 | `lemma` | [finite_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/finite-universalfactorizationmap--db742efcb1ac5d1ac5d8437e.md) | 342 | `result-track:db742efcb1ac5d1ac5d8437e2e82be55f19d7f1c23cc0ca9f8794ef31f44dd4f` |
| 25 | `def` | [UniversalFactorizationRing](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring--8eb8ea4c1cb1e41eb05ad9b5.md) | 402 | `declaration-track:8eb8ea4c1cb1e41eb05ad9b5e24c74dc91e309723b2a6ab8c4d23eb2afe8141e` |
| 26 | `def` | [UniversalFactorizationRing.fromTensor](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-fromtensor--133264999953e9bb718d3a48.md) | 412 | `declaration-track:133264999953e9bb718d3a48d2e1055ea6ca8aa1d3059a1d7313423246d648ee` |
| 27 | `def` | [UniversalFactorizationRing.monicDegreeEq](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-monicdegreeeq--5befd2c5928ecb0495af754d.md) | 419 | `declaration-track:5befd2c5928ecb0495af754d7a0f8c06111c0fa89040da1bc83de4730a4ac17b` |
| 28 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap--d8cdfcac96a60eed38dfd23e.md) | 424 | `result-track:d8cdfcac96a60eed38dfd23e46497294de1afa5fef18e40ab76d8318fee240cf` |
| 29 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap'](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap--838720fd6d35906042112caa.md) | 431 | `result-track:838720fd6d35906042112caa1c497b754f7400f54a93dd433a0d90fbc7c7e2fc` |
| 30 | `def` | [UniversalFactorizationRing.factor₁](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-factor--b634821a883e337dd8367d1d.md) | 439 | `declaration-track:b634821a883e337dd8367d1d5d936e0409399bd09f0caeb936bd7e573795b89f` |
| 31 | `def` | [UniversalFactorizationRing.factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-factor--9768f0c34885b9b933cffc5e.md) | 444 | `declaration-track:9768f0c34885b9b933cffc5e879f6b794c2b3951a435ccfa60cd0b432aff3512` |
| 32 | `lemma` | [UniversalFactorizationRing.factor₁_mul_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-factor-mul-factor--8890a4bc76b0f1847cec7375.md) | 448 | `result-track:8890a4bc76b0f1847cec737537230813d1bf72240e538df656ddab6b17842419` |
| 33 | `def` | [UniversalFactorizationRing.homEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-homequiv--f56f5383c637cd012578f05a.md) | 457 | `declaration-track:f56f5383c637cd012578f05a4a474293ae6782f60921eba925dd50fd06d273b5` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/instance--3ba0f1a42e288a934eec3eb4.md) | 496 | `declaration-track:3ba0f1a42e288a934eec3eb429417e87922e4b6a6916cb3a2ab3ae4a76566fcb` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/instance--3aea0434d3e10b8e8d1b4fef.md) | 504 | `declaration-track:3aea0434d3e10b8e8d1b4fef3a2371a20852cb0906c92c255e06dc3ea46d9024` |
| 36 | `def` | [UniversalFactorizationRing.presentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-presentation--d82c94d37a60b3bd28a6fb6c.md) | 513 | `declaration-track:d82c94d37a60b3bd28a6fb6c130219cecb36e673a704c49d83be6f12f2369c4f` |
| 37 | `lemma` | [UniversalFactorizationRing.jacobian_resentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalfactorizationring-jacobian-resentation--289ee8297a60927317b8a7aa.md) | 520 | `result-track:289ee8297a60927317b8a7aa4723d39720edbd1e5cab45d9d463e085e146e575` |
| 38 | `abbrev` | [UniversalCoprimeFactorizationRing](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring--6c64eb259550588729d7c283.md) | 545 | `declaration-track:6c64eb259550588729d7c28378e439fb8f6d4bb47d20b213089f550e20e0d28f` |
| 39 | `def` | [UniversalCoprimeFactorizationRing.factor₁](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-factor--662ecd892d5b661f0d39a759.md) | 551 | `declaration-track:662ecd892d5b661f0d39a7591be831d6d3df81907dc7d71448b32344690a68e2` |
| 40 | `def` | [UniversalCoprimeFactorizationRing.factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-factor--d23018a2347a7ff8bad5cd69.md) | 555 | `declaration-track:d23018a2347a7ff8bad5cd69add4d3aad0b6f927e42edfdc11e63b37a03d306f` |
| 41 | `lemma` | [UniversalCoprimeFactorizationRing.factor₁_mul_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-factor-mul-factor--be6fc8cdeeb03837f9b56d1c.md) | 558 | `result-track:be6fc8cdeeb03837f9b56d1cfd384755e66abefd994836a4961c60ed607c964f` |
| 42 | `lemma` | [UniversalCoprimeFactorizationRing.isCoprime_factor₁_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-iscoprime-factor-factor--2ee4e08c39d850237cd783f6.md) | 563 | `result-track:2ee4e08c39d850237cd783f6ce8dcd124253291a6be93e63f00e835ce9eea0e7` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/instance--eb92cfe07ebcb7729e9b3b15.md) | 576 | `declaration-track:eb92cfe07ebcb7729e9b3b157b226904b205448d0a7c6206b96c3e1a721a0572` |
| 44 | `def` | [UniversalCoprimeFactorizationRing.homEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-homequiv--a9d4b9797285221bc1c5100a.md) | 593 | `declaration-track:a9d4b9797285221bc1c5100a200dbd59213f9ac931eb4d487d2d3f02bbd93627` |
| 45 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_fst](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-homequiv-comp-fst--6df1774d971d00281cb43f16.md) | 631 | `result-track:6df1774d971d00281cb43f16e2e62f558af3e4a7838e00c44867a0334598c70a` |
| 46 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_snd](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-homequiv-comp-snd--125faf872a5c0fe7409935fd.md) | 639 | `result-track:125faf872a5c0fe7409935fdfc07b47334239ccecb69bace09d7b23e6ca8cbd2` |
| 47 | `lemma` | [UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/universalcoprimefactorizationring-exists-liesover-residuefieldmap-biject--2467910e6191b9453fcac87b.md) | 651 | `result-track:2467910e6191b9453fcac87b9eb7c7c686612aabbefb8a7c8db1a3a751489ba0` |
| 48 | `lemma` | [_root_.GRWTSK.Algebra.FreeMonic.Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.Algebra.exists_etale_bijective_residueFieldMap_and_map_eq_mul_and_isCoprime.](../../../../mathematics/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/declarations/root-grwtsk-algebra-freemonic-variantb9d4e8b2c2dd8227f62d787f5e91d624a5f--50755867ce002f84b83e8133.md) | 696 | `result-track:50755867ce002f84b83e8133f78242c3d0f1e1b9c112e9f885f7a0226c4b1ce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
