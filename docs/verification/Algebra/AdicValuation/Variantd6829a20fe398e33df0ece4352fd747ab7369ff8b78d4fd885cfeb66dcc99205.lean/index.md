# Verification target: GRWTSK.Algebra.AdicValuation.Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa73aedb4ac193b41a3f33fd885d99f34e614ed3",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/index.md) · [Full source](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa73aedb4ac193b41a3f33fd885d99f34e614ed3`.

Source path: `GRWTSK/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ExtendToLocalization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.WithVal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intValuationDef](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluationdef--def18be8713ae7f61f1a8dad.md) | 82 | `declaration-track:def18be8713ae7f61f1a8dad3597d3a3f338f7e856dc1019cdede3790e8489a4` |
| 2 | `theorem` | [intValuationDef_if_pos](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluationdef-if-pos--4b8dc4ebad80af5f4ff3158a.md) | 88 | `result-track:4b8dc4ebad80af5f4ff3158a8b7d161e847be5e2159381a6e7a4bcc3598c7a7e` |
| 3 | `theorem` | [intValuationDef_zero](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluationdef-zero--de4b8e1e8396cb4869d71540.md) | 92 | `result-track:de4b8e1e8396cb4869d7154058acc498f4f33cc2bfda46a1a4cce61cdb33d2d9` |
| 4 | `theorem` | [intValuationDef_if_neg](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluationdef-if-neg--e55c866327fc2b6d6d8a0702.md) | 96 | `result-track:e55c866327fc2b6d6d8a0702bc5940b2aa9f316502edb09e01a372a7046b489e` |
| 5 | `theorem` | [intValuation.map_zero'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-map-zero--6e53ecbfbe7bdfa30afd12f2.md) | 104 | `result-track:6e53ecbfbe7bdfa30afd12f2468a3d7694b6291da4a47f58ea6313b18b6d4204` |
| 6 | `theorem` | [intValuation.map_one'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-map-one--b39a5ca5abf9adb9e36b74b1.md) | 108 | `result-track:b39a5ca5abf9adb9e36b74b124e9ab3e862958b3995633419acc1255f2ce63d5` |
| 7 | `theorem` | [intValuation.map_mul'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-map-mul--b00e0ba44e4ce54e7623b131.md) | 116 | `result-track:b00e0ba44e4ce54e7623b131125ac6658f801108898da74a76a306f47901f448` |
| 8 | `theorem` | [intValuation.le_max_iff_min_le](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-le-max-iff-min-le--63f18d72e2d691f53d963cc4.md) | 130 | `result-track:63f18d72e2d691f53d963cc497aa34b7795629c7bebe01a70165498a9e6a82bd` |
| 9 | `theorem` | [intValuation.map_add_le_max'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-map-add-le-max--c9f5672a3e9bed86aaf08b9e.md) | 138 | `result-track:c9f5672a3e9bed86aaf08b9e79450baa1cbf68a7efec05d8168681db1db2713a` |
| 10 | `def` | [intValuation](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation--f444e34435c435721f579b8f.md) | 174 | `declaration-track:f444e34435c435721f579b8fde736c6965d73f9ad1ceb641bab5d586a79d2903` |
| 11 | `theorem` | [intValuation_apply](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-apply--2a04b987e4d55290bc5f2407.md) | 181 | `result-track:2a04b987e4d55290bc5f24078aaacaa8b558228b534c33ccaffc730078cf3978` |
| 12 | `theorem` | [intValuation_def](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-def--16046db37e65fe8c4dd37d89.md) | 185 | `result-track:16046db37e65fe8c4dd37d898ab878edeaaf0ae75689cc353f9e5de8eaeebdc8` |
| 13 | `theorem` | [intValuation_toFun](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-tofun--6e8928efdefce7a7b680d70b.md) | 192 | `result-track:6e8928efdefce7a7b680d70b229fbb88fcc80d2448c8dfff62e58d696c90491d` |
| 14 | `theorem` | [intValuation_if_neg](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-if-neg--b6283a44e34bbe83724b9f40.md) | 196 | `result-track:b6283a44e34bbe83724b9f40363e78af1a2f0dab6680b07a7e0c3fe877f27a83` |
| 15 | `theorem` | [intValuation_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-ne-zero--412918c3c640203100b5d14c.md) | 203 | `result-track:412918c3c640203100b5d14c2ef856008822fffea7c1d40c5d808e359e6556b8` |
| 16 | `theorem` | [intValuation_ne_zero'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-ne-zero--b123730201281193d7f5680f.md) | 208 | `result-track:b123730201281193d7f5680f077fee8381f0aec7ddad9bca982a951bbb6ebfc7` |
| 17 | `theorem` | [intValuation_zero_lt](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-zero-lt--23d5b556b9f657c27bd068a0.md) | 212 | `result-track:23d5b556b9f657c27bd068a0e806585a61a65769cf80958091aef43c7fb23878` |
| 18 | `theorem` | [intValuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-le-one--e90f26d5200a52ae9d1e5115.md) | 220 | `result-track:e90f26d5200a52ae9d1e511581261e6ea1084054cfd438878e1a0c422d405b34` |
| 19 | `theorem` | [intValuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-lt-one-iff-dvd--8970d4ba8cee251684ffca3e.md) | 228 | `result-track:8970d4ba8cee251684ffca3e23d960da372de2ce79efd74efe3c34228f8ea820` |
| 20 | `theorem` | [intValuation_lt_one_iff_mem](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-lt-one-iff-mem--b83aa2a5eb962df3c76c09ab.md) | 241 | `result-track:b83aa2a5eb962df3c76c09ab35bb5521ed446589ce9d78c5aad73b266347d9e1` |
| 21 | `theorem` | [intValuation_le_pow_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-le-pow-iff-dvd--f49855aaf1c1f405d1cb5ada.md) | 247 | `result-track:f49855aaf1c1f405d1cb5ada178184c0103139d54c2540f384af3e8043d64583` |
| 22 | `theorem` | [intValuation_le_pow_iff_mem](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-le-pow-iff-mem--7da269f214333834352c7509.md) | 259 | `result-track:7da269f214333834352c75092b39677bdd06b652707f9d3e4711706be0ea08d6` |
| 23 | `theorem` | [intValuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-exists-uniformizer--2d866bb910e44f44b3201839.md) | 264 | `result-track:2d866bb910e44f44b3201839b84e325151d93b53becffd6d8ce0a4ed531a483a` |
| 24 | `theorem` | [intValuation_singleton](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/intvaluation-singleton--83d0b69413c8bcc89c4f9a75.md) | 289 | `result-track:83d0b69413c8bcc89c4f9a7563e59655a82693098a9bfcc6db876ca0c7010003` |
| 25 | `def` | [valuation](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation--512a5e9dc8a91e534809b532.md) | 301 | `declaration-track:512a5e9dc8a91e534809b5322979d976d33679ed5220555a2a01ae7c5fa42edb` |
| 26 | `theorem` | [valuation_def](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-def--117519d142eb6478c1e15d0c.md) | 305 | `result-track:117519d142eb6478c1e15d0cd434cc9830dc1da29be5090b8a97c968956359a0` |
| 27 | `theorem` | [valuation_of_mk'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-of-mk--337802a161b9ccf770ce1063.md) | 312 | `result-track:337802a161b9ccf770ce1063612713e6dc14f5325c22fe73fe91e641e31ff62c` |
| 28 | `theorem` | [valuation_of_algebraMap](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-of-algebramap--b00eab82e29ab2bcbe3e0cd6.md) | 318 | `result-track:b00eab82e29ab2bcbe3e0cd606648125190018217605b51e594c9c910dfb4fb8` |
| 29 | `lemma` | [valuation_eq_intValuationDef](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-eq-intvaluationdef--e812a182bb89ccc9aaa8a69f.md) | 323 | `result-track:e812a182bb89ccc9aaa8a69fd62f19da7471ed962880093264af7b7af242ad2b` |
| 30 | `theorem` | [valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-le-one--84a9c3ec3b680cd819ab1f19.md) | 328 | `result-track:84a9c3ec3b680cd819ab1f19c7af5fc56eaec156eebb26c8bd127afdabcecf9d` |
| 31 | `theorem` | [valuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-lt-one-iff-dvd--1cd825098c6f869939f70b94.md) | 333 | `result-track:1cd825098c6f869939f70b9467c3cf34b99ab8ed5bebf2005580d20f7d700203` |
| 32 | `theorem` | [valuation_lt_one_iff_mem](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-lt-one-iff-mem--60eec7e12312b8b69c9d67ca.md) | 339 | `result-track:60eec7e12312b8b69c9d67ca5b32200cf1e07741e5dff1c192e4aaeeaf091052` |
| 33 | `theorem` | [valuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-exists-uniformizer--6e28f111201dc2f64026aca1.md) | 346 | `result-track:6e28f111201dc2f64026aca1bea820109b01ed50e1356fd3395a99f31b9317df` |
| 34 | `theorem` | [valuation_uniformizer_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuation-uniformizer-ne-zero--72ddd7473903e4d6fa932562.md) | 354 | `result-track:72ddd7473903e4d6fa932562830885cbc0095fcb1c0c1e7dfaaae0433993bda5` |
| 35 | `theorem` | [mem_integers_of_valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/mem-integers-of-valuation-le-one--d6c04560b85d0f5121014a09.md) | 358 | `result-track:d6c04560b85d0f5121014a098bd1a588e21a7455186b6653b8e19881b7c9c201` |
| 36 | `def` | [adicValued](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adicvalued--48a4fc3405ed3cd521093210.md) | 393 | `declaration-track:48a4fc3405ed3cd5210932101c917e2b6b6833295fd3c0ad8e8a7d617cb1bb15` |
| 37 | `theorem` | [adicValued_apply](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adicvalued-apply--c7c0be346e09c1ce39acd5dd.md) | 396 | `result-track:c7c0be346e09c1ce39acd5dd07842e61e987f96912e02375bbdf1a2170c3ed54` |
| 38 | `theorem` | [adicValued_apply'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adicvalued-apply--38ff8f8de18830121ee53d40.md) | 400 | `result-track:38ff8f8de18830121ee53d40b420e71e54dbbdfb57ab593220c8921b536b0d88` |
| 39 | `abbrev` | [adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adiccompletion--f38d7d60a810c9deb1a175f6.md) | 406 | `declaration-track:f38d7d60a810c9deb1a175f6ca173c6a65ba5c9303de6e673887c73fffce2b48` |
| 40 | `theorem` | [valuedAdicCompletion_def](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuedadiccompletion-def--7d1edcf4558c84f951e9d35b.md) | 408 | `result-track:7d1edcf4558c84f951e9d35b76b18d11a2b8aefd3427b6668db2c15cc5a0e51d` |
| 41 | `def` | [adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adiccompletionintegers--cdfb2fd5acb29dbf21ba7752.md) | 416 | `declaration-track:cdfb2fd5acb29dbf21ba7752f7fe48a2c1b7d6747f7b3b305c09305ad9312828` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/instance--2df0b8b62d5bf46105dc69b4.md) | 419 | `declaration-track:2df0b8b62d5bf46105dc69b46328f5eba2da61ea4aa34e0cd1c33710d04e37c3` |
| 43 | `theorem` | [mem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/mem-adiccompletionintegers--30301c7bb57bc02075b33d58.md) | 424 | `result-track:30301c7bb57bc02075b33d58ab1ba76442e9c6a327a079ae9054dfeaa74317a3` |
| 44 | `theorem` | [notMem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/notmem-adiccompletionintegers--73114de8463582341eb97501.md) | 428 | `result-track:73114de8463582341eb97501045f826954ef09998037c4b7d187ccf20951720f` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/instance--e6577eb8da4fbf9e742ab726.md) | 438 | `declaration-track:e6577eb8da4fbf9e742ab726a182178ae7a2f8e8070f5f22431f69580e62e5b0` |
| 46 | `instance` | [adicValued.uniformContinuousConstSMul](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adicvalued-uniformcontinuousconstsmul--e9de6bf7bfa98b8e305162bd.md) | 445 | `declaration-track:e9de6bf7bfa98b8e305162bdf8aab5135d2b17782f9a5c19a18f14b2df4d99ce` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/instance--d0a7e213a30bc934ca11f31b.md) | 452 | `declaration-track:d0a7e213a30bc934ca11f31bec085e7fd231766ae37af382aadd9cf80eed59ae` |
| 48 | `theorem` | [coe_smul_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/coe-smul-adiccompletion--e9f44acff7cb7ee7655b5399.md) | 473 | `result-track:e9f44acff7cb7ee7655b5399f0022ad32d4f00986829136a13aade101433bce8` |
| 49 | `theorem` | [algebraMap_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/algebramap-adiccompletion--14f2b8c4e7053b83ac1af730.md) | 477 | `result-track:14f2b8c4e7053b83ac1af7300891a75e23b9125e74745045a9937386ffea7783` |
| 50 | `theorem` | [coe_algebraMap_mem](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/coe-algebramap-mem--0dd0561ab411bf17ce0ecd54.md) | 482 | `result-track:0dd0561ab411bf17ce0ecd542d57905bfbd57c10d9988d6589d6de6d8d478588` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/instance--78cc23ba0991d128f60c8fcd.md) | 489 | `declaration-track:78cc23ba0991d128f60c8fcd697489191f8b02ad176a806bf6eed974d22631ed` |
| 52 | `theorem` | [valuedAdicCompletion_eq_valuation](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuedadiccompletion-eq-valuation--7c7b7207ecdfc5c8a18c85d5.md) | 520 | `result-track:7c7b7207ecdfc5c8a18c85d5a0e2684bbcbddf859662450b67fd98d291c5b339` |
| 53 | `theorem` | [valuedAdicCompletion_eq_valuation'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/valuedadiccompletion-eq-valuation--33137398c3cb6e693f91fac8.md) | 526 | `result-track:33137398c3cb6e693f91fac850d91d46692550d3618e8a095d7d61f29b5b024f` |
| 54 | `lemma` | [coe_mem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/coe-mem-adiccompletionintegers--eecd89acecf87ff05874b228.md) | 533 | `result-track:eecd89acecf87ff05874b228dcc8d69bd83e5010a5f84f3a66466299f8acd7a3` |
| 55 | `theorem` | [coe_smul_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/coe-smul-adiccompletionintegers--9e8a7a3e3038e82fcc2430f8.md) | 539 | `result-track:9e8a7a3e3038e82fcc2430f8041181684e574e3cf96d6ad6b43d6ebac5dcb69b` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/instance--224a9549468a89e0285259d0.md) | 543 | `declaration-track:224a9549468a89e0285259d006686cd0c897652c93df6006ed89395d34111114` |
| 57 | `instance` | [adicCompletion.instIsScalarTower'](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adiccompletion-instisscalartower--baca22ffad5648757871ba34.md) | 551 | `declaration-track:baca22ffad5648757871ba341eeb43b0d46c0f8f7820a46e8f6b19fabd68399c` |
| 58 | `lemma` | [adicCompletion.mul_nonZeroDivisor_mem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variantd6829a20fe398e33df0ece4352fd747ab7369ff8b78d4fd885cfeb66dcc99205.lean/declarations/adiccompletion-mul-nonzerodivisor-mem-adiccompletionintegers--86cc2129449891b3ebb7bd46.md) | 559 | `result-track:86cc2129449891b3ebb7bd4628b92b8dde9bb29707592b9ad456ca217fa1a2a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
