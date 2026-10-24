# Verification target: GRWTSK.Algebra.Extension.Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d7baedf257510901671435a40f1de81543fcec8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d7baedf257510901671435a40f1de81543fcec8`.

Source path: `GRWTSK/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean.json)

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
| 1 | `class` | [HasExtension](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/hasextension--04376b0a6aef08b12ffd81aa.md) | 65 | `declaration-track:04376b0a6aef08b12ffd81aa5be5a5eeeb7f9a8e1e9967c26a813687d57ad876` |
| 2 | `theorem` | [val_map_le_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-le-iff--7abd828dfc840e04462045e6.md) | 76 | `result-track:7abd828dfc840e04462045e63a94e52436014fa97c08c994b0dbfe5683e332ce` |
| 3 | `theorem` | [val_map_lt_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-lt-iff--eea7c42d17f00fe9a03ef9d1.md) | 79 | `result-track:eea7c42d17f00fe9a03ef9d1f9c902101872630dbc24ea9cf92f0f47ad297c2c` |
| 4 | `theorem` | [val_map_eq_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-eq-iff--10d7fc61d90ec13b63435bd6.md) | 82 | `result-track:10d7fc61d90ec13b63435bd6b79fb2e10c17ccf082cf7cf1d41d649d5805a9be` |
| 5 | `theorem` | [val_map_le_one_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-le-one-iff--8a4c7a5521f5e9c1d7bcd1ac.md) | 85 | `result-track:8a4c7a5521f5e9c1d7bcd1ac0fe001217bd65d666549c1a434e782b75721c54b` |
| 6 | `theorem` | [val_map_lt_one_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-lt-one-iff--a8093576b31f1822fc6bce3a.md) | 88 | `result-track:a8093576b31f1822fc6bce3a1b725d1a09af92d34c2d18721f6bc300eb3dc7ba` |
| 7 | `theorem` | [val_map_eq_one_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-map-eq-one-iff--e437d863086541da0b7c82bd.md) | 91 | `result-track:e437d863086541da0b7c82bd3fcf61e23766640425ce33e84912b9bd0dce3997` |
| 8 | `instance` | [id](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/id--1f3c157d911ac3a789c06e1e.md) | 97 | `declaration-track:1f3c157d911ac3a789c06e1e8fc989df8a9019e2cfca6d22d54a9676b810616f` |
| 9 | `theorem` | [ofComapInteger](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/ofcomapinteger--e0b9c1a01e613934a287e56e.md) | 112 | `result-track:e0b9c1a01e613934a287e56eb0e3c0eecd3e58c12fa042754777bed40028d785` |
| 10 | `instance` | [instAlgebraInteger](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instalgebrainteger--c48a457388f10592f588e3e6.md) | 119 | `declaration-track:c48a457388f10592f588e3e6052035628ef551e65572ca5f633ff25e584b2ea4` |
| 11 | `theorem` | [val_smul](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-smul--5bc477f5f88def940f990bf7.md) | 128 | `result-track:5bc477f5f88def940f990bf734d5073a4be756d4eb404394b495ba53a4c0dc75` |
| 12 | `lemma` | [mk_smul_mk](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/mk-smul-mk--39c152be18ea4048a951f5d1.md) | 132 | `result-track:39c152be18ea4048a951f5d1740611d1c390a336617afac98fc69bf895cc1ff0` |
| 13 | `theorem` | [val_algebraMap](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/val-algebramap--720cf9fd40901863d3074681.md) | 137 | `result-track:720cf9fd40901863d3074681a590cff0fc9bc7a6661da7ec70f196cf4c2e0773` |
| 14 | `instance` | [instIsScalarTowerInteger](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instisscalartowerinteger--3d751efeb5dc847a0d142453.md) | 141 | `declaration-track:3d751efeb5dc847a0d1424537a5e36e90d81eadd780e449c23aebfaa3867a7f0` |
| 15 | `instance` | [instIsTorsionFreeInteger](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instistorsionfreeinteger--0322ca5ff0cd1acb32702136.md) | 146 | `declaration-track:0322ca5ff0cd1acb3270213633fbbd2f99ecb3aedd10face2c6c619f68ab4a09` |
| 16 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/algebramap-injective--0bbc8764219aaa5e91835696.md) | 149 | `result-track:0bbc8764219aaa5e918356965d1576adda9aa959aa5aa34e70ea64c26f05bbf2` |
| 17 | `theorem` | [instIsLocalHomValuationInteger](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instislocalhomvaluationinteger--b38a1a3efd98e0d15944ebc3.md) | 154 | `result-track:b38a1a3efd98e0d15944ebc355882c33efbb200de304937f1c84b9382788c4e2` |
| 18 | `lemma` | [algebraMap_mem_valuationSubring](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/algebramap-mem-valuationsubring--d4523a67c988301c441baf6a.md) | 177 | `result-track:d4523a67c988301c441baf6a51fc0ff41e95a262ad60eba65b2175325b4cac24` |
| 19 | `instance` | [instAlgebra_valuationSubring](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instalgebra-valuationsubring--6ca3337522d0abfc79e95680.md) | 182 | `declaration-track:6ca3337522d0abfc79e95680ef54925a5a7f4222ccf10406cecd022f977a04a0` |
| 20 | `lemma` | [coe_algebraMap_valuationSubring_eq](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/coe-algebramap-valuationsubring-eq--4ebbeb8784ae28d7112efb26.md) | 186 | `result-track:4ebbeb8784ae28d7112efb26d5f9dc5712b21ba4a7a3d65dcb09b8b5822ae8af` |
| 21 | `instance` | [instIsScalarTower_valuationSubring](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instisscalartower-valuationsubring--8a55b31315a032bf2a76270b.md) | 189 | `declaration-track:8a55b31315a032bf2a76270ba99d008f7b5a64d5aa06edd908015fa298f446db` |
| 22 | `instance` | [instIsScalarTower_valuationSubring'](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instisscalartower-valuationsubring--0489c21fe8dced439b2ccaa3.md) | 192 | `declaration-track:0489c21fe8dced439b2ccaa3b471aaae26eb91c0415b760a06d76e91b821d375` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instance--c4068a299b893ae2c1374d28.md) | 195 | `declaration-track:c4068a299b893ae2c1374d28e6570f850569870119d3fb9e5c4dcb1a96694804` |
| 24 | `lemma` | [algebraMap_mem_maximalIdeal_iff](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/algebramap-mem-maximalideal-iff--bbcf0529e4dbc73dad6577e2.md) | 197 | `result-track:bbcf0529e4dbc73dad6577e25ca7cf086a1e497a1ccfd933b85922d370aa6a90` |
| 25 | `lemma` | [maximalIdeal_comap_algebraMap_eq_maximalIdeal](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/maximalideal-comap-algebramap-eq-maximalideal--1e05ed5339119f9fb2a112a4.md) | 201 | `result-track:1e05ed5339119f9fb2a112a48cf08bce19841ffce73f0908d038bbffb663e618` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/instance--3111d35184785e5d9efc4898.md) | 205 | `declaration-track:3111d35184785e5d9efc48984a7f125b08dc229a8686bceaaa0c1a2dffba0779` |
| 27 | `lemma` | [algebraMap_residue_eq_residue_algebraMap](../../../../mathematics/Algebra/Extension/Variant2569d97e54cc4913c40b6c06441b2b53a8016ea0c888a1bff1882e1344c36f9c.lean/declarations/algebramap-residue-eq-residue-algebramap--46b89eb501b9887d8d87549d.md) | 208 | `result-track:46b89eb501b9887d8d87549d049db91f0a3855c221de05983973b324723cea6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
