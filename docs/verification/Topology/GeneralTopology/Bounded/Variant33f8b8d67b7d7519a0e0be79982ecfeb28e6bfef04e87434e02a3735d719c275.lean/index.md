# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fc4b6693f7a9f0253bd04c13407b8c9c32e634",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fc4b6693f7a9f0253bd04c13407b8c9c32e634`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded--96815bfa22fd3b8a9b0c681a.md) | 69 | `declaration-track:96815bfa22fd3b8a9b0c681a3b5057cc7056121a00300bda7fdd1ceeb88614f6` |
| 2 | `theorem` | [isVonNBounded_empty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-empty--4438a7253ead939777eee2bf.md) | 75 | `result-track:4438a7253ead939777eee2bf6557166474f3ec37c192c69bafe6a3bd60e21bce` |
| 3 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff--be5ba86a5730193d5f9f6a07.md) | 79 | `result-track:be5ba86a5730193d5f9f6a072ddb514be9696d635b27f45be6da02fcb26c6c74` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.Filter.HasBasis.isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/root-grwtsk-topology-generaltopology-isvonnbounded-variant6c046b24223936--4e7dc6f71caee95bed6b673a.md) | 82 | `result-track:4e7dc6f71caee95bed6b673a33976bdf7d1829d3b0e017d08f5538275c4fb4b4` |
| 5 | `theorem` | [IsVonNBounded.subset](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-subset--aaa1fd8546b20648a567709a.md) | 89 | `result-track:aaa1fd8546b20648a567709a2a68d575325a3d3f80828f2e8d2dbe559e24df30` |
| 6 | `theorem` | [isVonNBounded_union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-union--b6805890c065d0a25c582125.md) | 93 | `result-track:b6805890c065d0a25c5821251e0b9d123595616dbfd26e63a2b8cffab265dc49` |
| 7 | `theorem` | [IsVonNBounded.union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-union--bdaeb4dd348c7a72ab4d9a4a.md) | 98 | `result-track:bdaeb4dd348c7a72ab4d9a4a3dca232d0d0a9557fc65b5d1d41250fbd60efaf8` |
| 8 | `theorem` | [IsVonNBounded.of_boundedSpace](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-boundedspace--86075a6ebc871613fdd12e31.md) | 102 | `result-track:86075a6ebc871613fdd12e31deafa95d5b78a59ff24af0d2c68cbd75e031f2c4` |
| 9 | `theorem` | [IsVonNBounded.of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-subsingleton--6fb86efa6118b8e7703dbca8.md) | 106 | `result-track:6fb86efa6118b8e7703dbca83eaeba87c7174e1f8b6106b89dca880db81b0caf` |
| 10 | `theorem` | [isVonNBounded_iUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iunion--70e866055fc8bdaa88be3fef.md) | 112 | `result-track:70e866055fc8bdaa88be3fef18aea6bf8f4f361d2ee74f03b123ac6d866ab405` |
| 11 | `theorem` | [isVonNBounded_biUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-biunion--c4e077964ab211adce826f49.md) | 116 | `result-track:c4e077964ab211adce826f49ae68bea1fd034687967888cbc5759a101a39e103` |
| 12 | `theorem` | [isVonNBounded_sUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-sunion--c960c31f664bd6d06005339a.md) | 121 | `result-track:c960c31f664bd6d06005339a5166e076dd0d8b1f11f146ffa52507a42afa40e5` |
| 13 | `theorem` | [IsVonNBounded.add](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-add--b2077824ee88c09a7358900b.md) | 132 | `result-track:b2077824ee88c09a7358900b3fe3aab7501186c732f1b2a437cd7461f539c677` |
| 14 | `theorem` | [IsVonNBounded.neg](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-neg--2e78dfd0cafbe3a2b7059102.md) | 144 | `result-track:2e78dfd0cafbe3a2b705910273f5f291e52bba4bcaacb35b0e11743309f76e20` |
| 15 | `theorem` | [isVonNBounded_neg](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-neg--dea4c0a372d3227bef38d76b.md) | 149 | `result-track:dea4c0a372d3227bef38d76b76e3fa3e389a1dd273408bbd2a8ad551fd75e448` |
| 16 | `theorem` | [IsVonNBounded.sub](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-sub--038579ca44e2a94fa86443f5.md) | 154 | `result-track:038579ca44e2a94fa86443f5813bebaf7f14ab6e9679dc7089a7a6a30f0b9665` |
| 17 | `theorem` | [IsVonNBounded.of_topologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-topologicalspace-le--19a58d87a1595bbb0e6b65bf.md) | 169 | `result-track:19a58d87a1595bbb0e6b65bf221cc82bf587c9b93d23a85b7855105aebc4c72a` |
| 18 | `lemma` | [isVonNBounded_iff_tendsto_smallSets_nhds](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff-tendsto-smallsets-nhds--1584f89d71d8a18c4be823d4.md) | 175 | `result-track:1584f89d71d8a18c4be823d4e80101145ff7b14328a3a7e7298421b79153a8fb` |
| 19 | `lemma` | [isVonNBounded_iff_absorbing_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff-absorbing-le--7694438c2da433a1133f86ee.md) | 184 | `result-track:7694438c2da433a1133f86ee5e38b20b0db5b52ca0eba3d95b4dbdc692ea01b0` |
| 20 | `lemma` | [isVonNBounded_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-pi-iff--fd1019b0ab730bc92257f3de.md) | 189 | `result-track:fd1019b0ab730bc92257f3de2123aa63c9c4f88890079fe19a8f47179565abd9` |
| 21 | `theorem` | [IsVonNBounded.image](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-image--15456bee22f596d5d76f093d.md) | 202 | `result-track:15456bee22f596d5d76f093dac74138cfe691181053872c948b463629c344712` |
| 22 | `theorem` | [IsVonNBounded.smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-smul-tendsto-zero--2a1cfbe4d7c4e962132fce56.md) | 215 | `result-track:2a1cfbe4d7c4e962132fce56e7b39156f9408d901fed6caba3b9f59096004baa` |
| 23 | `theorem` | [isVonNBounded_of_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-smul-tendsto-zero--00f1de29aa0d8a6f55f36590.md) | 225 | `result-track:00f1de29aa0d8a6f55f365902194b157af039ac1b180b14e1402ed8e4f16519f` |
| 24 | `theorem` | [isVonNBounded_iff_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff-smul-tendsto-zero--4109bf4f775938a2c2c87538.md) | 249 | `result-track:4109bf4f775938a2c2c87538151341d5577a86ee39a8b330048b45c833570a3f` |
| 25 | `theorem` | [IsVonNBounded.extend_scalars](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-extend-scalars--5fe2fc7aa6192c7f44711aa8.md) | 260 | `result-track:5fe2fc7aa6192c7f44711aa8f6a10b5e66208847200897c4449b9a3672fe0617` |
| 26 | `theorem` | [isVonNBounded_singleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-singleton--181b684256c12779b117762d.md) | 277 | `result-track:181b684256c12779b117762d0126d7e20402f24ac16534b194cfc417ed84c9af` |
| 27 | `theorem` | [isVonNBounded_insert](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-insert--ca2db5ac5f4db56488936450.md) | 281 | `result-track:ca2db5ac5f4db56488936450fe5c8ea187c889ddffdd4081944688ca4ebcb921` |
| 28 | `theorem` | [IsVonNBounded.vadd](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-vadd--d6718cd00d0e3c4c6c1bed36.md) | 291 | `result-track:d6718cd00d0e3c4c6c1bed36809014d8066f6800a07e57387ddf7c2ffecef523` |
| 29 | `theorem` | [isVonNBounded_vadd](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-vadd--e48ca488f23659c000002bb0.md) | 298 | `result-track:e48ca488f23659c000002bb00e2f3126d1dca578f49067d34c615ee009d865aa` |
| 30 | `theorem` | [IsVonNBounded.of_add_right](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-add-right--55084301617088436b9d177e.md) | 301 | `result-track:55084301617088436b9d177e1d7bb63e0d26c58c0220541325aa9ecc436988fa` |
| 31 | `theorem` | [IsVonNBounded.of_add_left](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-add-left--15a79df34e2ffce86d519fee.md) | 306 | `result-track:15a79df34e2ffce86d519feeb6d0abe3ba21bd4bca6770abc2027b682149f8a5` |
| 32 | `theorem` | [isVonNBounded_add_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-add-of-nonempty--90cb074f79e8dfd975c379aa.md) | 310 | `result-track:90cb074f79e8dfd975c379aabef043b3989f033ffe43e5e3a2c32c1fd51619fd` |
| 33 | `theorem` | [isVonNBounded_add](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-add--64bb994503296d60420586b0.md) | 314 | `result-track:64bb994503296d60420586b0f9d9cc53a7b1e8dd0012d05011453987084c550c` |
| 34 | `theorem` | [isVonNBounded_add_self](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-add-self--1ef0c232a6106acf32e695c5.md) | 321 | `result-track:1ef0c232a6106acf32e695c502df9fe152460ede27adaad0b347e66ded2b7781` |
| 35 | `theorem` | [IsVonNBounded.of_sub_left](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-sub-left--9daef4ba43556aa1ba3bc44d.md) | 324 | `result-track:9daef4ba43556aa1ba3bc44d610caacdd74c6f453cced074c7e379f57b13ed15` |
| 36 | `theorem` | [IsVonNBounded.of_sub_right](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-sub-right--d5c85de3685c1d2d2d506e1f.md) | 334 | `result-track:d5c85de3685c1d2d2d506e1fd33c55f7ec15be88b0df048488361fbbefe8f33b` |
| 37 | `theorem` | [isVonNBounded_sub_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-sub-of-nonempty--ff5df61da2afc503f4f3aac7.md) | 338 | `result-track:ff5df61da2afc503f4f3aac7f58b6a893195ecb7b3812f6e0c66e16352cc8951` |
| 38 | `theorem` | [isVonNBounded_sub](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-sub--ee99a86b8ec31670cc259cdf.md) | 342 | `result-track:ee99a86b8ec31670cc259cdf4353406a5b7e43a76d0389d653ba4accb3d720b9` |
| 39 | `theorem` | [isVonNBounded_covers](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-covers--9fd15f2c915f8ef1885c5edc.md) | 349 | `result-track:9fd15f2c915f8ef1885c5edc360eccc0affdc6ecb2e8a6f8db929db1fd4a0f6e` |
| 40 | `abbrev` | [vonNBornology](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/vonnbornology--71f6b0af72b0d68cc0988247.md) | 360 | `declaration-track:71f6b0af72b0d68cc0988247c090c1bacd3e7cb9b85136c30d8bf28cd87cac7f` |
| 41 | `theorem` | [isBounded_iff_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isbounded-iff-isvonnbounded--7ae8f51a9db05d6caf36b6f7.md) | 367 | `result-track:7ae8f51a9db05d6caf36b6f7b5e28e86e0fb87cfed2fe8d0c79c0350d57be69f` |
| 42 | `theorem` | [TotallyBounded.isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/totallybounded-isvonnbounded--f0e96e3e5a4bbf95067a24a5.md) | 380 | `result-track:f0e96e3e5a4bbf95067a24a5adfba45b86465c7aba8e97b6b0e372386774993e` |
| 43 | `theorem` | [Filter.Tendsto.isVonNBounded_range](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/filter-tendsto-isvonnbounded-range--fca4a9cabb71a089060d84cf.md) | 406 | `result-track:fca4a9cabb71a089060d84cf33b7916b1f3be38a68d093a952dbc2b5a580b296` |
| 44 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/bornology-isvonnbounded-restrict-scalars-of-nontrivial--9cdfefa6378902118581f8b6.md) | 414 | `result-track:9cdfefa6378902118581f8b6ac095ff5a77ff3b16ead91b9466547246fd998ef` |
| 45 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/bornology-isvonnbounded-restrict-scalars--a82789bbfc8e60df461b81c6.md) | 426 | `result-track:a82789bbfc8e60df461b81c6377cbce96d8a19ef1538ddad1a5d0f933461b0f4` |
| 46 | `theorem` | [isVonNBounded_of_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-of-isbounded--5a8078dc6aba8eff39cdab9c.md) | 447 | `result-track:5a8078dc6aba8eff39cdab9cb7c3ecb92736088554296aad22a79840d2b09bcc` |
| 47 | `theorem` | [isVonNBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-ball--7dd2de306206dcc99194cc29.md) | 456 | `result-track:7dd2de306206dcc99194cc29848473b4d66e9d2f7a1b5cb8d2ef862537c3b606` |
| 48 | `theorem` | [isVonNBounded_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-closedball--248a85b100320f796ea691ee.md) | 459 | `result-track:248a85b100320f796ea691ee7c39c64954fcfdda5e34cc7273c5ca100bb8cdf9` |
| 49 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff--e80bf5b7801f38d26c5769a5.md) | 468 | `result-track:e80bf5b7801f38d26c5769a55300b6db5e24cdc1c554bf2877e8fce43bcb0ce9` |
| 50 | `theorem` | [isVonNBounded_iff'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isvonnbounded-iff--10bbb7aef8916f66368ee259.md) | 477 | `result-track:10bbb7aef8916f66368ee259a0c9b96a8022636afb375f3a0e86046487cb2151` |
| 51 | `theorem` | [image_isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/image-isvonnbounded-iff--3d544a607ac61cdab2404373.md) | 481 | `result-track:3d544a607ac61cdab2404373b1c421a34deacab0613dd830ac13f98269db5e0c` |
| 52 | `theorem` | [vonNBornology_eq](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/vonnbornology-eq--9df4d3c169675fe142b4f15d.md) | 487 | `result-track:9df4d3c169675fe142b4f15d1b85a44d345ef8cbf2e748a7e2c34674e8a4baf0` |
| 53 | `theorem` | [isBounded_iff_subset_smul_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isbounded-iff-subset-smul-ball--dd15a91e61b35f12b06431f9.md) | 493 | `result-track:dd15a91e61b35f12b06431f9584a0958d290be5ae5e1b51491cdbd96dbd6fb53` |
| 54 | `theorem` | [isBounded_iff_subset_smul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/declarations/isbounded-iff-subset-smul-closedball--7e570b413cc5087a3c78c7c3.md) | 504 | `result-track:7e570b413cc5087a3c78c7c3d6692002aad4b78ca52f3e4dc0d9a22fd67e746f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
