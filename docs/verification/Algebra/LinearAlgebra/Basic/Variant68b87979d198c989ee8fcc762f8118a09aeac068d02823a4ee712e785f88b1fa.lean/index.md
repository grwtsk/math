# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be686d7a739311091392ea7d3b164df50a53b1ca`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean.json)

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
| 1 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-card--5ab7121e7b66a4372da3d299.md) | 71 | `result-track:5ab7121e7b66a4372da3d2994812f1c00d601e1e957f1e06b3af5a7f831d7841` |
| 2 | `instance` | [nonempty_linearIndependent_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/nonempty-linearindependent-set--ed55d9fe5161fdd17e5ed32d.md) | 74 | `declaration-track:ed55d9fe5161fdd17e5ed32d1602128a724a9e9c0f10e6486b98cb270aa2ea96` |
| 3 | `theorem` | [cardinal_lift_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/cardinal-lift-le-rank--1cd6eaa52f9c970b720b5cc1.md) | 84 | `result-track:1cd6eaa52f9c970b720b5cc1ce398de3c168e09c72b107309cc27b2ce995a102` |
| 4 | `lemma` | [aleph0_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/aleph0-le-rank--3e414126d95173e813fcfc4d.md) | 91 | `result-track:3e414126d95173e813fcfc4d8e5e0ef4403253372c4a7a6b35352dc8fe3d1104` |
| 5 | `theorem` | [cardinal_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/cardinal-le-rank--9af0abc0ade6e21e5fb58e1f.md) | 95 | `result-track:9af0abc0ade6e21e5fb58e1fa649da8699d2bdf76145bfe563901a40d83499cd` |
| 6 | `theorem` | [cardinal_le_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/cardinal-le-rank--1e434a417ce84ff43095f8b3.md) | 99 | `result-track:1e434a417ce84ff43095f8b3311903323636403c864990c8e7c38a586e8937ad` |
| 7 | `theorem` | [_root_.LinearIndepOn.encard_le_toENat_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/root-linearindepon-encard-le-toenat-rank--ef84c77823dcca770260b43e.md) | 103 | `result-track:ef84c77823dcca770260b43ea34475f2938e662297f71966dbf6a066892d456e` |
| 8 | `theorem` | [exists_set_linearIndependent_of_lt_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/exists-set-linearindependent-of-lt-lift-rank--ff6721d498cbe15cb6c975f0.md) | 113 | `result-track:ff6721d498cbe15cb6c975f0faf4ca679eeac1f0c99ef7ecbc20b75469d43f41` |
| 9 | `theorem` | [exists_set_linearIndependent_of_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/exists-set-linearindependent-of-lt-rank--326f6f4bfb721a3b63911b29.md) | 121 | `result-track:326f6f4bfb721a3b63911b298c9b2dd10dab612124594e8840d867cac89cd314` |
| 10 | `theorem` | [le_rank_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/le-rank-iff-exists-finset--38de7dd8a608fba9a31bd4e0.md) | 131 | `result-track:38de7dd8a608fba9a31bd4e062e75e762fe80e87abe0228796599f6311e9454c` |
| 11 | `theorem` | [le_rank_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/le-rank-iff--b4d10798b210e4881e4c78fe.md) | 144 | `result-track:b4d10798b210e4881e4c78fedcc98b8f3c18e45c5175e19d22e5d4ed69467c82` |
| 12 | `theorem` | [le_rank_iff_exists_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/le-rank-iff-exists-linearmap--a720a16259214874a45c51fe.md) | 150 | `result-track:a720a16259214874a45c51fe2a418d543349ba5a93fc0f751ad9d8fb4f1af3ce` |
| 13 | `theorem` | [rank_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-subsingleton--6296ddca11630a26f12364f5.md) | 166 | `result-track:6296ddca11630a26f12364f56dc6e95b27d0fc9ccd6163de85ffad9b62b0811e` |
| 14 | `theorem` | [Module.one_le_rank_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/module-one-le-rank-iff--9fc1e03b9ee3083dcf4dfac2.md) | 173 | `result-track:9fc1e03b9ee3083dcf4dfac2339e4c10dafbc5cfcd33fa79219fc78f41426cba` |
| 15 | `theorem` | [Module.rank_eq_zero_of_not_faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/module-rank-eq-zero-of-not-faithfulsmul--4fdad65dab26a5d58ed916b3.md) | 179 | `result-track:4fdad65dab26a5d58ed916b32cb6d498c7a3f79d03b3fa4afecaf5fa60309f53` |
| 16 | `theorem` | [lift_rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-le-of-injective-injective--eecb3413385d824ce9f8cee2.md) | 192 | `result-track:eecb3413385d824ce9f8cee25e93c7b0816cfebbb56c23823db1464aa0ac0ca7` |
| 17 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-le-of-surjective-injective--2ec62fe1137f159206644610.md) | 205 | `result-track:2ec62fe1137f15920664461077d340ac7f57608c9ac1797aef5ccd41342bda33` |
| 18 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-eq-of-equiv-equiv--406e2ef6e24a785a2667824e.md) | 218 | `result-track:406e2ef6e24a785a2667824ec5f3632ffef1862d0de90181ceab2d1c912e5626` |
| 19 | `theorem` | [rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-injective-injective--57169ee5e51c44facb7c4908.md) | 230 | `result-track:57169ee5e51c44facb7c4908c2687957e6a21f469e70ab9850c068ded5038f5e` |
| 20 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-surjective-injective--d719efe6fe17a8d68041ae99.md) | 237 | `result-track:d719efe6fe17a8d68041ae99f655ced8e00ce3ad314fafa897a852fc18bf3c47` |
| 21 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-eq-of-equiv-equiv--345deb331952ef0597bf2dd3.md) | 244 | `result-track:345deb331952ef0597bf2dd3a91e431b8e92c9e1e8692797423fa58c6562534b` |
| 22 | `theorem` | [CommSemiring.rank_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/commsemiring-rank-self--45b849ba6b50e406276cc568.md) | 257 | `result-track:45b849ba6b50e406276cc56816a6acf62f040dac944ac4801213526ed82ec343` |
| 23 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-le-of-injective-injective--fdce469982f5c8a70b17b73a.md) | 276 | `result-track:fdce469982f5c8a70b17b73adcc72b05564d0055d3761dbfb46e1106fe5bb35a` |
| 24 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-injective-injective--ea4ba108d78a706027703604.md) | 287 | `result-track:ea4ba108d78a70602770360432352abbf853973ef6e5f0b2da465ad544be7a11` |
| 25 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-le-of-injective-injective--411092b41faa09e6f845a887.md) | 303 | `result-track:411092b41faa09e6f845a88714190b33eb6944cdc0bde079279a33658d8a9bb5` |
| 26 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-le-of-surjective-injective--8e4d16cb975aff499ae061e3.md) | 315 | `result-track:8e4d16cb975aff499ae061e37fbb42ef1d69a51cddc9e12ab05024f50f98569a` |
| 27 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-eq-of-equiv-equiv--da976d16543acf32d98a31d3.md) | 327 | `result-track:da976d16543acf32d98a31d3d098e6af8a2090f0759bfff135e318a15a80556d` |
| 28 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-injective-injective--c9b0a29a2b9280bf61a566aa.md) | 338 | `result-track:c9b0a29a2b9280bf61a566aa64697724b64c52a3eda5ca1f361b805fecafa132` |
| 29 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-surjective-injective--c15bcbc291a7c7a78f8ec4ff.md) | 345 | `result-track:c15bcbc291a7c7a78f8ec4ffd8ecf7469d0393053140490789963664aaf4bd82` |
| 30 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-eq-of-equiv-equiv--d489a199ec50080191507fca.md) | 352 | `result-track:d489a199ec50080191507fca628a465a7779a14191bdc703e55ce9347bfa3cbc` |
| 31 | `theorem` | [LinearMap.lift_rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearmap-lift-rank-le-of-injective--403c994116c397350d3c3494.md) | 367 | `result-track:403c994116c397350d3c349453e9d5edcecccc9f8fe844e16f70df8c1650e491` |
| 32 | `theorem` | [LinearMap.rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearmap-rank-le-of-injective--38320685d86d4e245efbd127.md) | 371 | `result-track:38320685d86d4e245efbd127211993aaea71a587506a47ff639e106ae9c7bdad` |
| 33 | `theorem` | [lift_rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-range-le--10ea9483e6103fa428b4560e.md) | 378 | `result-track:10ea9483e6103fa428b4560ebb6fde4ce852baad27362921d716b208f273c34d` |
| 34 | `theorem` | [rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-range-le--10d7804fc0a53a288091d212.md) | 392 | `result-track:10d7804fc0a53a288091d2124ea0c1cb4c0cf6471b0b27cd97bde9bde36748d6` |
| 35 | `theorem` | [lift_rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-map-le--f2d88784d89a455778a7ffed.md) | 395 | `result-track:f2d88784d89a455778a7ffed930ae33e7dbdef3aa63fa28ee27a93b857055789` |
| 36 | `theorem` | [rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-map-le--7a83ab1fe8fd843fabe5d3e5.md) | 400 | `result-track:7a83ab1fe8fd843fabe5d3e530d6c4d0b445b981804391d889f93c7f530206bd` |
| 37 | `theorem` | [rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-map-eq--cd3b582f0f1070790988faa1.md) | 403 | `result-track:cd3b582f0f1070790988faa1920b22a4b354ecf618a5b81ff7c843ba3f8c6dae` |
| 38 | `lemma` | [Submodule.rank_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/submodule-rank-mono--93b1d3d559148333a4393840.md) | 408 | `result-track:93b1d3d559148333a43938409d3e6358f0e71c5bfaf15fa0cc9de4b3dee96824` |
| 39 | `theorem` | [LinearEquiv.lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearequiv-lift-rank-eq--163cde2f2456d196660bedf3.md) | 414 | `result-track:163cde2f2456d196660bedf3ad554ad67f0919edf30acb4af2022340daf364dd` |
| 40 | `theorem` | [LinearEquiv.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearequiv-rank-eq--8fd62772928b994b26bd7346.md) | 421 | `result-track:8fd62772928b994b26bd734645c697205725beb9967f8f4386eb6c37a174aa84` |
| 41 | `theorem` | [lift_rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/lift-rank-range-of-injective--ab975e829f4ed0b9e3776c4f.md) | 424 | `result-track:ab975e829f4ed0b9e3776c4fc3ddfa230dc83c58021c218d6b461cc2dbfda1a6` |
| 42 | `theorem` | [rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-range-of-injective--7efce87a76a0cc0a401a7fc9.md) | 428 | `result-track:7efce87a76a0cc0a401a7fc98d7ca5998e13b9bc630bcae1952df94f93f7a32e` |
| 43 | `theorem` | [LinearEquiv.lift_rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearequiv-lift-rank-map-eq--a7cae1215952258026583c21.md) | 432 | `result-track:a7cae1215952258026583c215b1c5b49738667e6f7ba6cd6272acd41b3636b1a` |
| 44 | `theorem` | [LinearEquiv.rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearequiv-rank-map-eq--8b33b6c37f804e46c1cb6f54.md) | 437 | `result-track:8b33b6c37f804e46c1cb6f54c8ee0aa66ee31a47e77a278704415f39a0b928bf` |
| 45 | `theorem` | [rank_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-top--81e22f41d8f4caa3befedbd9.md) | 444 | `result-track:81e22f41d8f4caa3befedbd9d0f1c172d9e48215e56223d28f33f8cd5cd52503` |
| 46 | `theorem` | [rank_range_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-range-of-surjective--1c330a04f99d255d5e0b6bb6.md) | 449 | `result-track:1c330a04f99d255d5e0b6bb6628ec9d46a76f8a3a7ccc580218846b0c006c50b` |
| 47 | `theorem` | [Submodule.rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/submodule-rank-le--f5cc4a1395edc05da6e36cbf.md) | 453 | `result-track:f5cc4a1395edc05da6e36cbfc4da6b70ac70ac9acfe6792b0aeb5b2c6b81e384` |
| 48 | `theorem` | [LinearMap.lift_rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearmap-lift-rank-le-of-surjective--194e29a48781609054dbbf12.md) | 457 | `result-track:194e29a48781609054dbbf12bad8d847f2530cf0af913d27714a9366afdc3dd7` |
| 49 | `theorem` | [LinearMap.rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/linearmap-rank-le-of-surjective--332dacf75b5e8d35eb96409d.md) | 462 | `result-track:332dacf75b5e8d35eb96409d1b3106621e9955aa2c3a90e4ba240c6ddf585d33` |
| 50 | `lemma` | [rank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/rank-le-of-issmulregular--9c9d7a730c9d94354f74e5a6.md) | 467 | `result-track:9c9d7a730c9d94354f74e5a6218479df1902d6bbf263db9097b9c45cddb1eb1a` |
| 51 | `lemma` | [Module.rank_top_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/module-rank-top-le-rank-of-isscalartower--32abd145a17b7a2755529081.md) | 475 | `result-track:32abd145a17b7a27555290816fa2511c30ae92e5c416950d86685088e35884e8` |
| 52 | `lemma` | [Module.lift_rank_bot_le_lift_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/module-lift-rank-bot-le-lift-rank-of-isscalartower--d8647943a271b20e12a67233.md) | 483 | `result-track:d8647943a271b20e12a672334243ed321ce623e5598b9254a0fcf38dd929387e` |
| 53 | `lemma` | [Module.rank_bot_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/declarations/module-rank-bot-le-rank-of-isscalartower--d036f3abdd264559fe1bf1db.md) | 491 | `result-track:d036f3abdd264559fe1bf1db9f2909d76eccac48d5a3b3536dd0f70cd8825860` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
