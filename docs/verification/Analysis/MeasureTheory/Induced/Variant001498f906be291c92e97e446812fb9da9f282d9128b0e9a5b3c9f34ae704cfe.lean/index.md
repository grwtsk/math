# Verification target: GRWTSK.Analysis.MeasureTheory.Induced.Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0993464d26219d292db38b1110186ac18faeb15d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0993464d26219d292db38b1110186ac18faeb15d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Caratheodory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend--87bc7a5221841dceef280e7f.md) | 53 | `declaration-track:87bc7a5221841dceef280e7f6a7d2ae55c966bcbc63bd30b239ac7ed1ea67ffb` |
| 2 | `theorem` | [extend_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-eq--40405bd9ef91849b942e41a6.md) | 56 | `result-track:40405bd9ef91849b942e41a6547452ff8d0ceb84df9ff25e39c562b4fe394352` |
| 3 | `theorem` | [extend_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-eq-top--2db76f1a6b0f9a4e4d9ef661.md) | 58 | `result-track:2db76f1a6b0f9a4e4d9ef6611685100337470db7c64d524348d9a8a8c2131d59` |
| 4 | `theorem` | [smul_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/smul-extend--0cc09b2d9e7ec2266a077693.md) | 60 | `result-track:0cc09b2d9e7ec2266a07769362317828a6f1cbd05f34edc753f2985cff365fe6` |
| 5 | `theorem` | [le_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/le-extend--baf81bbeaf373b772d398fec.md) | 70 | `result-track:baf81bbeaf373b772d398fec9e5f01b25e7f62c0b30cc2620fdd6ec98e099385` |
| 6 | `theorem` | [extend_congr](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-congr--8f31a630b303e143d9480e05.md) | 76 | `result-track:8f31a630b303e143d9480e05abf411c37e3ecf369a16357632034bed78c4359a` |
| 7 | `theorem` | [extend_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-top--bdd4b81f6489365b18b20798.md) | 82 | `result-track:bdd4b81f6489365b18b20798f4b6f71fbf8c11907e2ba20ae9f39f53f31871be` |
| 8 | `theorem` | [extend_iUnion_nat](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-iunion-nat--3034c2de3009d2de373af28b.md) | 101 | `result-track:3034c2de3009d2de373af28be76b69955cb7189c68ce922c64f68873c8cc1538` |
| 9 | `theorem` | [extend_empty](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-empty--8d53a8f9a580101b19a385c2.md) | 110 | `result-track:8d53a8f9a580101b19a385c20a0793f5094400790d252f58b542574a841ba7ab` |
| 10 | `theorem` | [extend_iUnion_le_tsum_nat'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-iunion-le-tsum-nat--243c62310ee81a8a1f0da33e.md) | 116 | `result-track:243c62310ee81a8a1f0da33e9d09fe819079b13f81b032a6e863d0a9e2907fbb` |
| 11 | `theorem` | [extend_mono'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-mono--42ab648a5c311331d91bb055.md) | 131 | `result-track:42ab648a5c311331d91bb0555e2bfd7a7c4af0d8012613322aa933c78d010edf` |
| 12 | `theorem` | [extend_iUnion](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-iunion--6ebe9e07965993d3afec9155.md) | 142 | `result-track:6ebe9e07965993d3afec91550b90bf552e61e2025a748af3cd48953d389ca5d8` |
| 13 | `theorem` | [extend_union](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-union--9058d68f80be36b02f41aa88.md) | 152 | `result-track:9058d68f80be36b02f41aa88cca305d370a4018fa5f8d407e31141b81a3eb8ac` |
| 14 | `def` | [inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure--3b88e40dc3031c722dd8e2d1.md) | 165 | `declaration-track:3b88e40dc3031c722dd8e2d12ef7b3d7e8d8ed8a86a23a150a6542c05301b9d5` |
| 15 | `theorem` | [le_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/le-inducedoutermeasure--82baf5d2939b657a16d492b6.md) | 170 | `result-track:82baf5d2939b657a16d492b6c422aacea28fcfc52ca667af16a380ff3dd7b71d` |
| 16 | `theorem` | [inducedOuterMeasure_union_of_false_of_nonempty_inter](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-union-of-false-of-nonempty-inter--56faa445d792c71316848f47.md) | 179 | `result-track:56faa445d792c71316848f47e924056fa928752d601bf93a231f7ac6679e0986` |
| 17 | `theorem` | [inducedOuterMeasure_eq_extend'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-eq-extend--ac5d07367b6a0dd13e3ba39e.md) | 187 | `result-track:ac5d07367b6a0dd13e3ba39e23ffe1c02fea339e2a8aa14e2c73b7a35026213b` |
| 18 | `theorem` | [inducedOuterMeasure_eq'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-eq--172a4ea2c19d2ab21a2f991a.md) | 191 | `result-track:172a4ea2c19d2ab21a2f991a1c70145e4ab885e29c002c7f794754211dd3ea8c` |
| 19 | `theorem` | [inducedOuterMeasure_eq_iInf](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-eq-iinf--517ddb8ebcd581a22c6b95e6.md) | 194 | `result-track:517ddb8ebcd581a22c6b95e6f8e199bbb57b21935797ba54d926c99554a38f88` |
| 20 | `theorem` | [inducedOuterMeasure_preimage](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-preimage--530d96578124f5e2a8167d73.md) | 210 | `result-track:530d96578124f5e2a8167d7345490a4f147db32d0a239f484ff768fe4ecb9528` |
| 21 | `theorem` | [inducedOuterMeasure_exists_set](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-exists-set--78844de0d43758ac9b4f25ad.md) | 219 | `result-track:78844de0d43758ac9b4f25ad33ac25bf1403e353ed95b31d8302a241212b5998` |
| 22 | `theorem` | [inducedOuterMeasure_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-caratheodory--28b87c35d6ad78dc03aaa21d.md) | 236 | `result-track:28b87c35d6ad78dc03aaa21d847fb7f38e552033e53fb767df6748b90bd691e5` |
| 23 | `theorem` | [extend_mono](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-mono--4c0d3ec3beea8dd5579257fd.md) | 274 | `result-track:4c0d3ec3beea8dd5579257fdbc3ec7a36c21da1dd0cdd39d1e12bac99b578543` |
| 24 | `theorem` | [extend_iUnion_le_tsum_nat](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/extend-iunion-le-tsum-nat--48a3b0b66df2125c8bd06ddf.md) | 284 | `result-track:48a3b0b66df2125c8bd06ddf7992e1510090e65cb098fd35eb9cac14b50576cc` |
| 25 | `theorem` | [inducedOuterMeasure_eq_extend](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-eq-extend--4a3492856547b1a64f7ebac4.md) | 293 | `result-track:4a3492856547b1a64f7ebac424bb639ed0868529a37b7ce97dfaed2991b885db` |
| 26 | `theorem` | [inducedOuterMeasure_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/inducedoutermeasure-eq--9cb066951055ae1fec79ec21.md) | 297 | `result-track:9cb066951055ae1fec79ec216fc70072409e65268db14157b971691cd1511a73` |
| 27 | `def` | [trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim--c93e51e244ac30abe89e0746.md) | 309 | `declaration-track:c93e51e244ac30abe89e0746b487faffc79b49c2826fc23720e30afd59e4487a` |
| 28 | `theorem` | [le_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/le-trim-iff--5ff6a7dafb75e50781eb9bc8.md) | 312 | `result-track:5ff6a7dafb75e50781eb9bc8d33e478f8ef9d6123beafa84a294e064b49602b9` |
| 29 | `theorem` | [le_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/le-trim--bed36b61277e776c67f1650e.md) | 316 | `result-track:bed36b61277e776c67f1650e87371f484704b30fcd185dc78c0ce784dab4937a` |
| 30 | `lemma` | [null_of_trim_null](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/null-of-trim-null--2b64d530d4d2f1317d5eafcd.md) | 318 | `result-track:2b64d530d4d2f1317d5eafcd79594da44d67072be5c87f6526a0c016b0a5c9c7` |
| 31 | `theorem` | [trim_eq](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-eq--45d8cfcee381cc909bb1becc.md) | 322 | `result-track:45d8cfcee381cc909bb1beccf63f3dd3c25e6a3b933763b0a94c1075315f2641` |
| 32 | `theorem` | [trim_congr](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-congr--2c5ce8f7b1f17493d2a0b841.md) | 326 | `result-track:2c5ce8f7b1f17493d2a0b841bd1aacab68dffc3a66bf56ad2ac58d8a4dcb9bcb` |
| 33 | `theorem` | [trim_mono](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-mono--6a5d661b1675c00ea2ddf9df.md) | 331 | `result-track:6a5d661b1675c00ea2ddf9dfc164a4ac7ebd0b84e2a3c0109a9526592dcc05e0` |
| 34 | `theorem` | [trim_anti_measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-anti-measurablespace--d7000b6d82aac8f9c7949632.md) | 335 | `result-track:d7000b6d82aac8f9c7949632c6ee81459f3fa9c923b98ecd081e31a3305ea2e1` |
| 35 | `theorem` | [trim_le_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-le-trim-iff--c3f3d9ec54ae403201a2a2b0.md) | 341 | `result-track:c3f3d9ec54ae403201a2a2b0549a28b4b94edb8c0411998e126e1bdc2fd6d2bf` |
| 36 | `theorem` | [trim_eq_trim_iff](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-eq-trim-iff--8b5dc047834b98c2bc3fd338.md) | 345 | `result-track:8b5dc047834b98c2bc3fd3388b73070ce082c1a9b077f0bcb1fc6ce5fca29d81` |
| 37 | `theorem` | [trim_eq_iInf](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-eq-iinf--8259d4961ffccf40c6ec6fab.md) | 349 | `result-track:8259d4961ffccf40c6ec6fab02e3e03b6ea5e255e3efb62e0f9a1eb339422450` |
| 38 | `theorem` | [trim_eq_iInf'](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-eq-iinf--bfd524bc06c1a30e6589f8d1.md) | 355 | `result-track:bfd524bc06c1a30e6589f8d1d5ceb56ddc32a229af47cbe671902ffcdab6c3de` |
| 39 | `theorem` | [trim_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-trim--88b602a18117903fb97e46c1.md) | 358 | `result-track:88b602a18117903fb97e46c11acc9415bf5633e7e81856ee200a9194225566cc` |
| 40 | `theorem` | [trim_top](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-top--1d84444a85aa6f517bc7fbf2.md) | 362 | `result-track:1d84444a85aa6f517bc7fbf2fded5e65a5bf68312d0a0ce02ffff13ae49361d0` |
| 41 | `theorem` | [trim_zero](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-zero--abe49a283aa62acd1c10cd64.md) | 366 | `result-track:abe49a283aa62acd1c10cd64ccc2c8b51991da458ff29337a6948d6d8f081119` |
| 42 | `theorem` | [trim_sum_ge](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-sum-ge--6f096c380fa24cf67c982802.md) | 372 | `result-track:6f096c380fa24cf67c9828022a5eb435bf69ac10367634319cea8c337893da5b` |
| 43 | `theorem` | [exists_measurable_superset_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/exists-measurable-superset-eq-trim--000e3fe7c1e6cf844915b80c.md) | 378 | `result-track:000e3fe7c1e6cf844915b80c3ffa820b4ce5f0d23a33014fe19f228f99aa5df9` |
| 44 | `theorem` | [exists_measurable_superset_of_trim_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/exists-measurable-superset-of-trim-eq-zero--d5a810364bfa81d98f1a3bb5.md) | 405 | `result-track:d5a810364bfa81d98f1a3bb5cbb6a2c78b0c88e490b3ae08b54a23f847feac46` |
| 45 | `theorem` | [exists_measurable_superset_forall_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/exists-measurable-superset-forall-eq-trim--5a8cf6b2c2449846cd3c2eb5.md) | 412 | `result-track:5a8cf6b2c2449846cd3c2eb572dbcfb2e8223845ca3712fb372163493aea2f58` |
| 46 | `theorem` | [trim_binop](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-binop--32641a3259e0a498aaa8437e.md) | 422 | `result-track:32641a3259e0a498aaa8437ed36cf947d43d5fdc250d9149080a5fa2060011c1` |
| 47 | `theorem` | [trim_op](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-op--04323a864dca7cb69b4901b4.md) | 429 | `result-track:04323a864dca7cb69b4901b4b97f734fcf18a5132a8f5baba83402c1dc9ba35d` |
| 48 | `theorem` | [trim_add](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-add--d2f20b3acf088c07bea6da45.md) | 434 | `result-track:d2f20b3acf088c07bea6da4521fcf8ac5353eb31e37e9e00887d2064b4fa92a2` |
| 49 | `theorem` | [trim_smul](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-smul--9699855936e4b93d99b555a4.md) | 438 | `result-track:9699855936e4b93d99b555a4a835fb6d67dc5a0232c59da1122cdbaea066cee3` |
| 50 | `theorem` | [trim_sup](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-sup--59d71872f5897553fdea048a.md) | 443 | `result-track:59d71872f5897553fdea048a4704e309a034e4530ce813b59abe179ea7906c62` |
| 51 | `theorem` | [trim_iSup](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/trim-isup--ed9d120cc6dcfe4cac346063.md) | 448 | `result-track:ed9d120cc6dcfe4cac3460639ee7cce8966a7c76ba69d0b7a62693986d015cec` |
| 52 | `theorem` | [restrict_trim](../../../../../mathematics/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/declarations/restrict-trim--c9de6878099d91ef35dae8a3.md) | 461 | `result-track:c9de6878099d91ef35dae8a36ed3b25a0d276042ae7860cc3a7272807aadce84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
