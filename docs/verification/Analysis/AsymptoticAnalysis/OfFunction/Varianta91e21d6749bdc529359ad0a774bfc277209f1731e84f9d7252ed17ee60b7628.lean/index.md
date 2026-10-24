# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.OfFunction.Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e14b07315fc17f7cf534c1736e086d2ac5582b0",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e14b07315fc17f7cf534c1736e086d2ac5582b0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction--7acbe2e9157ffbf0e13cc117.md) | 61 | `declaration-track:7acbe2e9157ffbf0e13cc1179e763611f087c175099ee04a5319e699e5ab045b` |
| 2 | `theorem` | [ofFunction_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-apply--40785180218540bfc64c0ee7.md) | 101 | `result-track:40785180218540bfc64c0ee77fafae70e38b7368c478c3c3bf1f735a61c5dc14` |
| 3 | `theorem` | [ofFunction_eq_iInf_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-eq-iinf-mem--df2ead9f405799dc327da8a2.md) | 110 | `result-track:df2ead9f405799dc327da8a2da9b862314277edb9e0db327a98ce04ff3a2894d` |
| 4 | `theorem` | [ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-le--80b732978557c8abb46c9db3.md) | 128 | `result-track:80b732978557c8abb46c9db3296967a166b33836d40a5d2500d9f5d94a16f9a5` |
| 5 | `theorem` | [ofFunction_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-eq--b217ba19389d7f4c51088b97.md) | 137 | `result-track:b217ba19389d7f4c51088b97f85eb0208054f6c5e927d02857e7ab741c2d89b8` |
| 6 | `theorem` | [le_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/le-offunction--c1154523bc19b0255c68c930.md) | 143 | `result-track:c1154523bc19b0255c68c93085eb9dc40c7ac417fa4a327ed4448fbfd9d99bb0` |
| 7 | `theorem` | [isGreatest_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/isgreatest-offunction--6037da7da78dd7e68bcab350.md) | 150 | `result-track:6037da7da78dd7e68bcab350974258fe24631aa1fbb75972c92bcc23dc062ba9` |
| 8 | `theorem` | [ofFunction_eq_sSup](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-eq-ssup--268fd43f4568117e8684cd83.md) | 154 | `result-track:268fd43f4568117e8684cd8329e2cc11b1afd31e2802bf102b47c4f4ca31d870` |
| 9 | `theorem` | [ofFunction_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/offunction-union-of-top-of-nonempty-inter--260ed3ddcc481305dc158dad.md) | 163 | `result-track:260ed3ddcc481305dc158dad7c8d74673adb6231f95ad06a4e5d0e44ef33a6b0` |
| 10 | `theorem` | [comap_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/comap-offunction--fa8aaa3f41afd3cf90c94e13.md) | 195 | `result-track:fa8aaa3f41afd3cf90c94e133755434679e4035c2c0edafc1824ac30d67bc2a7` |
| 11 | `theorem` | [map_ofFunction_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-offunction-le--92127932ad994f370f226ca6.md) | 209 | `result-track:92127932ad994f370f226ca6de1b162dfb95884e5de8af21186873eb8c07d3e6` |
| 12 | `theorem` | [map_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-offunction--39a402f3e515c94915776038.md) | 216 | `result-track:39a402f3e515c94915776038d10acc4e05e128ff23f8531782ae9fb7e9020a62` |
| 13 | `theorem` | [restrict_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/restrict-offunction--0c4bd0a2d396dc23e7f7cc01.md) | 229 | `result-track:0c4bd0a2d396dc23e7f7cc013a44734a69c080093ce8e5c1766e72caac87c02e` |
| 14 | `theorem` | [smul_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/smul-offunction--1cceb15c6c5141cf57b2f2fe.md) | 237 | `result-track:1cceb15c6c5141cf57b2f2fe3efa1eaea0013495fba09eb7d43b3edeca2b9be5` |
| 15 | `def` | [boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby--20a5649ab2f04e0f542d485b.md) | 254 | `declaration-track:20a5649ab2f04e0f542d485bf8a72c6b55068aa91d2a5af7d87ba764e2dcda1f` |
| 16 | `theorem` | [boundedBy_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-le--49b75f4693ea8bb83fff1d42.md) | 259 | `result-track:49b75f4693ea8bb83fff1d427ac77f29664171542b1a7170176ec7061589f4ba` |
| 17 | `theorem` | [boundedBy_eq_ofFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-eq-offunction--339dab311034f4d6c8bc0c82.md) | 262 | `result-track:339dab311034f4d6c8bc0c82916cb794255df2035bb59723d64e44607c374caf` |
| 18 | `theorem` | [boundedBy_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-apply--b869e9395f413f88d25da03a.md) | 269 | `result-track:b869e9395f413f88d25da03a942889289c39284b8067ae579a3697b68f540f6c` |
| 19 | `theorem` | [boundedBy_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-eq--ec3b82ec4f48c53e67bfdc34.md) | 274 | `result-track:ec3b82ec4f48c53e67bfdc34712e5babe4e1816f360e44507bbf8b717c0be443` |
| 20 | `theorem` | [boundedBy_eq_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-eq-self--f8fef0da7f326691cfc128de.md) | 279 | `result-track:f8fef0da7f326691cfc128de206c5034c6d231febf92dc5df909e3a082daafc5` |
| 21 | `theorem` | [le_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/le-boundedby--8169b6276f98b5c41bc21d48.md) | 282 | `result-track:8169b6276f98b5c41bc21d489e7b367aebc4c4c19cacaba963043d2f2f946863` |
| 22 | `theorem` | [le_boundedBy'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/le-boundedby--613174be77422f67d190d57c.md) | 286 | `result-track:613174be77422f67d190d57cf78a2daa3091ab96b84e0031fb7597aaadbc5d0d` |
| 23 | `theorem` | [boundedBy_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-top--14a9357826cb4e408b3feb04.md) | 293 | `result-track:14a9357826cb4e408b3feb04406daa4bbab514bd92769981c4de47b437a8828b` |
| 24 | `theorem` | [boundedBy_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-zero--b7b7b507ab4a5e9425163c5b.md) | 300 | `result-track:b7b7b507ab4a5e9425163c5b504813cb81ced776a34be36f2ea14a7873b2f778` |
| 25 | `theorem` | [smul_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/smul-boundedby--9f01090ebd1c036c223b9477.md) | 304 | `result-track:9f01090ebd1c036c223b9477ab72a50da83ce90686f60443c3ec03be2dfea94e` |
| 26 | `theorem` | [comap_boundedBy](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/comap-boundedby--dcfce24ae49decab3a3d93ad.md) | 309 | `result-track:dcfce24ae49decab3a3d93adc61def8a43736ee22719887f4065c8f5a10ab012` |
| 27 | `theorem` | [boundedBy_union_of_top_of_nonempty_inter](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/boundedby-union-of-top-of-nonempty-inter--b0cc59252e2ca50ccf6837e1.md) | 326 | `result-track:b0cc59252e2ca50ccf6837e139cf7fb52491bb57d5ef1af2ed3f35f8f85ec6be` |
| 28 | `def` | [sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/sinfgen--f404575657681b65d8747c2a.md) | 342 | `declaration-track:f404575657681b65d8747c2a8bbd17964a6fe2456ee51b838e28f5f6577f4a43` |
| 29 | `theorem` | [sInfGen_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/sinfgen-def--b16e592e291f5f6043a890dd.md) | 345 | `result-track:b16e592e291f5f6043a890dda5fc3712e611c9d15130138cb6b3ec63f1f67226` |
| 30 | `theorem` | [sInf_eq_boundedBy_sInfGen](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/sinf-eq-boundedby-sinfgen--faf337e623bce947e4298a7c.md) | 349 | `result-track:faf337e623bce947e4298a7c5d0926c9e3027bf0b95fc29d22511eaae06bfb22` |
| 31 | `theorem` | [iSup_sInfGen_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/isup-sinfgen-nonempty--f37c12b3a1d669b0dff93425.md) | 358 | `result-track:f37c12b3a1d669b0dff93425823fb664ab144f16bf30d8355e93e801b5bc0392` |
| 32 | `theorem` | [sInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/sinf-apply--f7a70a6e706fa134c2b2d5d8.md) | 367 | `result-track:f7a70a6e706fa134c2b2d5d86eb212f8ffea138329160eafe18340b2c34d3359` |
| 33 | `theorem` | [sInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/sinf-apply--0237a61fd106357051ee654c.md) | 375 | `result-track:0237a61fd106357051ee654c771e67ef885c4382e98978452b9fd682a0cc39b0` |
| 34 | `theorem` | [iInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/iinf-apply--56f6f9ae2705040206aa383e.md) | 383 | `result-track:56f6f9ae2705040206aa383e20d4ad79ec5631ee793d0360f6d66520febae79a` |
| 35 | `theorem` | [iInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/iinf-apply--8289aded1157cfa42ea5078e.md) | 391 | `result-track:8289aded1157cfa42ea5078ecb3261e6c56eb1513f7a4e8baf37a69bd12ee901` |
| 36 | `theorem` | [biInf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/biinf-apply--b645494e5ee6ed18b92fb6ec.md) | 399 | `result-track:b645494e5ee6ed18b92fb6ecaa5e6c70fabdc9aa82d2569c409ec48ddc6f2ad4` |
| 37 | `theorem` | [biInf_apply'](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/biinf-apply--95a318542ce5927f09e94e92.md) | 407 | `result-track:95a318542ce5927f09e94e92fd0f87ad95c563fa2eaa338ce57ab278564ecd57` |
| 38 | `theorem` | [map_iInf_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-iinf-le--95af3b26faa9ccdf371ecd6f.md) | 411 | `result-track:95af3b26faa9ccdf371ecd6fa76932cf3b66ebcb73fc120280541323f10de292` |
| 39 | `theorem` | [comap_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/comap-iinf--3e4f897eab5451273f12de7f.md) | 415 | `result-track:3e4f897eab5451273f12de7fe952078e26d7c7d0bfd4d776839bd55d51f7ab74` |
| 40 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-iinf--7a2d72ba635949be1fbf9995.md) | 424 | `result-track:7a2d72ba635949be1fbf9995d0153f18d1b3e3c1d5e85c4b3b238395eb59f68c` |
| 41 | `theorem` | [map_iInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-iinf-comap--a043195fd1ff5909f003e0de.md) | 429 | `result-track:a043195fd1ff5909f003e0de722eaca647e2f02cce003d5976344e4d10f0467d` |
| 42 | `theorem` | [map_biInf_comap](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/map-biinf-comap--faa02299491ec411d44c7027.md) | 442 | `result-track:faa02299491ec411d44c702733176bb388a1822e25dc4bb588963768867ba79c` |
| 43 | `theorem` | [restrict_iInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/restrict-iinf-restrict--8af303f6f906638103d8759f.md) | 448 | `result-track:8af303f6f906638103d8759ff6ebed2d5c67622d46e829ad9fb8d776a6c932e3` |
| 44 | `theorem` | [restrict_iInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/restrict-iinf--e17b15facab98f4c4d98e071.md) | 455 | `result-track:e17b15facab98f4c4d98e0716518568274c7c3371b46f86c4c992d1a347ac8b4` |
| 45 | `theorem` | [restrict_biInf](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/restrict-biinf--535f8deb9180d277a8cff190.md) | 459 | `result-track:535f8deb9180d277a8cff1901dbcfe0fa77a2466e77a77ea3617878d3cd26b26` |
| 46 | `theorem` | [restrict_sInf_eq_sInf_restrict](../../../../../mathematics/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/declarations/restrict-sinf-eq-sinf-restrict--1302b922d4213121f6a58377.md) | 467 | `result-track:1302b922d4213121f6a58377e9cd600fc9a9016e95969fa5c2b8a7e67f1da136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
