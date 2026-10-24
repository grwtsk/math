# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Stalk.Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22ef2229574d1a86a051c065d170f01f4e725f96",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22ef2229574d1a86a051c065d170f01f4e725f96`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Preimmersion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAffineOpen.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/isaffineopen-fromspecstalk--598bf80b9958c09f7f314e4d.md) | 44 | `declaration-track:598bf80b9958c09f7f314e4d43e55fce94e7a24bc4845b68057144c1f678a009` |
| 2 | `theorem` | [IsAffineOpen.fromSpecStalk_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/isaffineopen-fromspecstalk-eq--f3e347de133fdc41c3f7a08a.md) | 53 | `result-track:f3e347de133fdc41c3f7a08abc999e1944f5e5c4816c121d61f863a639177d22` |
| 3 | `def` | [Scheme.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/scheme-fromspecstalk--8017169bd5e3f4f185799a9a.md) | 72 | `declaration-track:8017169bd5e3f4f185799a9a73a14bbdbdd73dffb77a966f3eef0cebccce1a4a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--4a2b9d21f4cdede2ae382e90.md) | 77 | `declaration-track:4a2b9d21f4cdede2ae382e90d4dccb6744b331f696cf3338983e2020bc779875` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--1c334a811d0e1edc32f6db42.md) | 80 | `declaration-track:1c334a811d0e1edc32f6db42a6573a4d7f6bc1ee90c3b7a9620ac07f69e26885` |
| 6 | `theorem` | [IsAffineOpen.fromSpecStalk_eq_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/isaffineopen-fromspecstalk-eq-fromspecstalk--d7239a0ab9d376cbc55a0092.md) | 83 | `result-track:d7239a0ab9d376cbc55a00922b36b50e07d2a896c59215922a683450125e2729` |
| 7 | `instance` | [IsAffineOpen.fromSpecStalk_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/isaffineopen-fromspecstalk-ispreimmersion--8f551b31e83e7408b41a5972.md) | 86 | `declaration-track:8f551b31e83e7408b41a59726157d0f72a365dcbdad722a13d6be6e30fbcb427` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--5cadfa8afd951969b18873a9.md) | 96 | `declaration-track:5cadfa8afd951969b18873a9d6f4edb913574546c42a5eb6cb2847df959382fa` |
| 9 | `lemma` | [IsAffineOpen.fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/isaffineopen-fromspecstalk-closedpoint--0e3a8fb498108f70098341d7.md) | 99 | `result-track:0e3a8fb498108f70098341d780ac61dfd3528f126bdb7d78de36f52f0d54f4c3` |
| 10 | `lemma` | [fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/fromspecstalk-closedpoint--ffe7a935840c67bae7e83550.md) | 108 | `result-track:ffe7a935840c67bae7e83550018ba792bee83fbc8a5969225ef913901338c436` |
| 11 | `lemma` | [fromSpecStalk_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/fromspecstalk-app--29e6d4c679d732f4e9e9f2a9.md) | 112 | `result-track:29e6d4c679d732f4e9e9f2a988c8aea7a4a4d000c1efca9b5c5d2e28dfc06aad` |
| 12 | `lemma` | [fromSpecStalk_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/fromspecstalk-apptop--b19745a0549c12ea6e374d95.md) | 123 | `result-track:b19745a0549c12ea6e374d95ded224c381130224b223d727b0707257af661d4b` |
| 13 | `lemma` | [Spec_map_stalkSpecializes_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-map-stalkspecializes-fromspecstalk--6332ec3e29eb97f1032b669f.md) | 131 | `result-track:6332ec3e29eb97f1032b669fc99bcf2c0fc88fc4b19ef1b66a804574c9a8d27a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--1feb4c4fc67f26642ab72b96.md) | 140 | `declaration-track:1feb4c4fc67f26642ab72b96c1b0a9524920e75ab6e1d60305567341041e87ea` |
| 15 | `lemma` | [Spec_map_stalkMap_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-map-stalkmap-fromspecstalk--37ba40fd76b21f5c94e2b7de.md) | 143 | `result-track:37ba40fd76b21f5c94e2b7debe053bebd344081fd8cb2de72c1cbc01d4dc1ed5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--6ca57eaa469a1f035a143c2d.md) | 155 | `declaration-track:6ca57eaa469a1f035a143c2d5c3632a0e139487e10dd8c0cebe1d789c644d8b4` |
| 17 | `lemma` | [Spec_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-fromspecstalk--700669d4ed50300feed0e9db.md) | 157 | `result-track:700669d4ed50300feed0e9db047e5c53b28ebda66c37a23298b698f1840ba595` |
| 18 | `lemma` | [Spec_fromSpecStalk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-fromspecstalk--6541cd960ad773db1cb6c054.md) | 166 | `result-track:6541cd960ad773db1cb6c054b6df2bca54015b3e3761a876fb05f675482fde3a` |
| 19 | `lemma` | [range_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/range-fromspecstalk--fc9e05724515484a23cbb4eb.md) | 171 | `result-track:fc9e05724515484a23cbb4eb536597cb8228e6bd714ad41cd4bb221fd450d6c4` |
| 20 | `def` | [Opens.fromSpecStalkOfMem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/opens-fromspecstalkofmem--d4b817b389a355d9474d76ac.md) | 185 | `declaration-track:d4b817b389a355d9474d76acc39c1854c2b20dd8730530231df243d243371379` |
| 21 | `lemma` | [Opens.fromSpecStalkOfMem_ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/opens-fromspecstalkofmem--bc394e34b7233c042e5e2a9f.md) | 190 | `result-track:bc394e34b7233c042e5e2a9f35a4ffd41fe21772e13e82b85c5bf4cef5f4d20c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/instance--a5a87b367d5229fcdeecab90.md) | 195 | `declaration-track:a5a87b367d5229fcdeecab90deb34b81402bdcfdaf500f6c80f60a4bd6c7e407` |
| 23 | `lemma` | [fromSpecStalk_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/fromspecstalk-tospec--8caa8083c6a6ad40ae9db554.md) | 199 | `result-track:8caa8083c6a6ad40ae9db5542b7a0b911b0519effd3ffd8d166c963a9d01c5c3` |
| 24 | `lemma` | [Opens.fromSpecStalkOfMem_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/opens-fromspecstalkofmem-tospec--f62ecfe7db3c510465ac1b18.md) | 206 | `result-track:f62ecfe7db3c510465ac1b184fe57985a34ff37b960d8d662ebbc2e17aac56ea` |
| 25 | `def` | [stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/stalkclosedpointiso--c83af1442809834efd1029b5.md) | 227 | `declaration-track:c83af1442809834efd1029b56b7b1c61bc0c0b4969aad4768dadc3dcdd440cc7` |
| 26 | `lemma` | [stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/stalkclosedpointiso-inv--46af5480e78b1937bfb27faf.md) | 232 | `result-track:46af5480e78b1937bfb27fafa76c28da4a7f2a80f24723205c0250d8e21904ee` |
| 27 | `lemma` | [ΓSpecIso_hom_stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/speciso-hom-stalkclosedpointiso-inv--b841ac81de74b218ab7ecfa4.md) | 237 | `result-track:b841ac81de74b218ab7ecfa443513ef3bf1afeb97b0148fa0386deda0b6acc28` |
| 28 | `lemma` | [germ_stalkClosedPointIso_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/germ-stalkclosedpointiso-hom--4670631f0db889eb32e15d9b.md) | 244 | `result-track:4670631f0db889eb32e15d9b1b24a96cf4b5d59130e2340ef51d76bec8a250d4` |
| 29 | `lemma` | [Spec_stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-stalkclosedpointiso--606c1170a00e72e432288ea8.md) | 249 | `result-track:606c1170a00e72e432288ea8aac7c6c3cc2afac73e5b3e4aa4d17aa23f60741c` |
| 30 | `def` | [stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/stalkclosedpointto--11c21abff7f313a2c59a00f1.md) | 268 | `declaration-track:11c21abff7f313a2c59a00f1c988342fb5c4819948c558ff25968996cc99a955` |
| 31 | `instance` | [isLocalHom_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/islocalhom-stalkclosedpointto--2b47f83ca5103a38f703e80e.md) | 272 | `declaration-track:2b47f83ca5103a38f703e80ee1ba4f712aedf60f0b1acbb672fbdb99c93c588a` |
| 32 | `instance` | [isLocalHom_stalkClosedPointTo'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/islocalhom-stalkclosedpointto--27070fd0e8f2adf04526680d.md) | 280 | `declaration-track:27070fd0e8f2adf04526680d9a6ba3506f9364b0b3d28256e39cffb201654c10` |
| 33 | `lemma` | [preimage_eq_top_of_closedPoint_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/preimage-eq-top-of-closedpoint-mem--4422bb3ee42c0d33713be17e.md) | 285 | `result-track:4422bb3ee42c0d33713be17e25a9a7bfe8a517eb453c41db337db49055e8a1cc` |
| 34 | `lemma` | [stalkClosedPointTo_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/stalkclosedpointto-comp--05fbbf9c76714d2c0a444a7f.md) | 289 | `result-track:05fbbf9c76714d2c0a444a7f5ff20394490cacc70332ccd65af6708c9041768e` |
| 35 | `lemma` | [germ_stalkClosedPointTo_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/germ-stalkclosedpointto-spec--7f50722a635a8d296b7503e1.md) | 294 | `result-track:7f50722a635a8d296b7503e1a4649439d0cbe19827773e914935351fb05e8575` |
| 36 | `lemma` | [germ_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/germ-stalkclosedpointto--bd3e8cced61adad9ddd4123f.md) | 303 | `result-track:bd3e8cced61adad9ddd4123f337ccd37a875c76b79d7686590e446deff35f306` |
| 37 | `lemma` | [germ_stalkClosedPointTo_Spec_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/germ-stalkclosedpointto-spec-fromspecstalk--8c3ca7455c62036510a453e9.md) | 314 | `result-track:8c3ca7455c62036510a453e9923fe81d284ec2faf09378983473ca95d9eb5792` |
| 38 | `lemma` | [stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/stalkclosedpointto-fromspecstalk--4af5da49ff1a601547d8d283.md) | 329 | `result-track:4af5da49ff1a601547d8d2835b2c263448140743c3b416191ff93163a5fb4a66` |
| 39 | `lemma` | [Spec_stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spec-stalkclosedpointto-fromspecstalk--8d6fba8acd3402e322e969f2.md) | 338 | `result-track:8d6fba8acd3402e322e969f2134401536d2bf3914217832c13554d86ce2aca37` |
| 40 | `lemma` | [SpecToEquivOfLocalRing_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spectoequivoflocalring-eq-iff--ada386c94a0a2abb1f3e766b.md) | 358 | `result-track:ada386c94a0a2abb1f3e766b8f6c7fe49aa821085f30134378f1169afaa96e2e` |
| 41 | `def` | [SpecToEquivOfLocalRing](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/declarations/spectoequivoflocalring--c34ec6a92692b34d103be112.md) | 377 | `declaration-track:c34ec6a92692b34d103be112b22e3a33b94709b663974427ea9b4472ee922fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
