# Verification target: GRWTSK.Algebra.LinearAlgebra.Fixed.Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65bb441b54a7c277a532f352a73d9847cab8426c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.GroupRingAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Invariant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finiteness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedBy.subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/fixedby-subfield--40e0bf04ed5943d2021c8733.md) | 44 | `declaration-track:40e0bf04ed5943d2021c8733d3702596c55e0d7ae7b7f9e8c6afc4d59edfbba9` |
| 2 | `class` | [IsInvariantSubfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/isinvariantsubfield--c3d3b7e2be88f4cc37511e20.md) | 58 | `declaration-track:c3d3b7e2be88f4cc37511e206ab0e1e1aa6eeba9550a2bdf0796556e18cbef5f` |
| 3 | `instance` | [IsInvariantSubfield.toMulSemiringAction](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/isinvariantsubfield-tomulsemiringaction--1f50de65d30c7c0953357973.md) | 63 | `declaration-track:1f50de65d30c7c095335797339a2fdddbf5b4ade17bc73e38bee9a7e3d149463` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/instance--7b9422e3030bb62e8ddca7fd.md) | 73 | `declaration-track:7b9422e3030bb62e8ddca7fda0e952590348b18aa3cc2f4d2b7fc5d97621e07b` |
| 5 | `def` | [subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/subfield--7014ce2b4aaabebcb058bdbb.md) | 84 | `declaration-track:7014ce2b4aaabebcb058bdbbc1abc40c80f7605b5d84d20547ae3024fecc694b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/instance--0b3f8f7ecaafcc932dcfee9a.md) | 88 | `declaration-track:0b3f8f7ecaafcc932dcfee9a6ef52b45b77af641d4987f266013181308ea359e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/instance--1a973862efd5b7cbe20cf919.md) | 91 | `declaration-track:1a973862efd5b7cbe20cf919c2aa4e7aa9d2d29cad43353ee05f1cb9b76c04ae` |
| 8 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/smulcommclass--fdab2b2aecb8ede37e8d8f1a.md) | 94 | `declaration-track:fdab2b2aecb8ede37e8d8f1a04ad181dc8449cad3f22a5f5a1812571a635c98e` |
| 9 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/smul--d9656867d17b4a8c10b2e040.md) | 98 | `result-track:d9656867d17b4a8c10b2e04051b720170542770c959a69ed86a0ee8ae8c63a31` |
| 10 | `theorem` | [smul_polynomial](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/smul-polynomial--34753e33703c871cdb533984.md) | 103 | `result-track:34753e33703c871cdb533984e8695ebe57029a90363b638613b830a0280f1325` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/instance--12d89ab032a2f20da2984b99.md) | 108 | `declaration-track:12d89ab032a2f20da2984b99ea5fed06fc98d659eab4abdcaa3018f0377360df` |
| 12 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/coe-algebramap--2b3e5b79fe0ae92e68821afb.md) | 110 | `result-track:2b3e5b79fe0ae92e68821afb0467717c2e7f365145bec02f526814a402167eb5` |
| 13 | `theorem` | [linearIndependent_smul_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/linearindependent-smul-of-linearindependent--483a6ab8b7a24d4f9da3d4d1.md) | 114 | `result-track:483a6ab8b7a24d4f9da3d4d1600a0119f4234bb380f3d9599db260a015231699` |
| 14 | `def` | [minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/minpoly--1c0e77b62ddcd6f456d6de8b.md) | 164 | `declaration-track:1c0e77b62ddcd6f456d6de8b2a13d0651c5541dd28a117a4764f3c223e0a371b` |
| 15 | `theorem` | [monic](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/monic--d6a99a2c144297318492f0cf.md) | 171 | `result-track:d6a99a2c144297318492f0cf84c034c90efc738767c96ffa2eb6fffebc0501ee` |
| 16 | `theorem` | [eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/eval--e747d363741e9fb82ee4b94a.md) | 176 | `result-track:e747d363741e9fb82ee4b94a95a819e1ba76904a242919d278ef7417d7533287` |
| 17 | `theorem` | [eval₂'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/eval--5a63842741613b832f978bd0.md) | 182 | `result-track:5a63842741613b832f978bd0c0cba75f3fdf8e60b38eb83ff100182741f61f22` |
| 18 | `theorem` | [ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/ne-one--812196e860acca6d380b8eb3.md) | 186 | `result-track:812196e860acca6d380b8eb3d77ba4fdfac994d492562546f5f3582448eb235c` |
| 19 | `theorem` | [of_eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/of-eval--db828828ecd7e6a6b7d6acc6.md) | 190 | `result-track:db828828ecd7e6a6b7d6acc6d0a4729001fe6402dbcfb4301cd27f5d4de1f558` |
| 20 | `theorem` | [irreducible_aux](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/irreducible-aux--311ed5d4ff007710ed3bcef4.md) | 208 | `result-track:311ed5d4ff007710ed3bcef419a90fce304c760bb28a3d154c380b5eb58d16d8` |
| 21 | `theorem` | [irreducible](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/irreducible--1a115196d2756f680ac8dfa3.md) | 226 | `result-track:1a115196d2756f680ac8dfa3048d3ad9bf94fc0fb47ad64d3092dcb9cff28da3` |
| 22 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/isintegral--639a330b210d43caa02be868.md) | 233 | `result-track:639a330b210d43caa02be8688854871adc87777c25b1e78d46ea24add23fa2ca` |
| 23 | `theorem` | [minpoly_eq_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/minpoly-eq-minpoly--1bab6d011932b19700d96754.md) | 240 | `result-track:1bab6d011932b19700d96754d775619610e7ff815ebf63f5405d5ce14c8b9c82` |
| 24 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/rank-le-card--3a68cb59bb329b014940e8a0.md) | 244 | `result-track:3a68cb59bb329b014940e8a045694d948691b59e40ae37436f87264399e28066` |
| 25 | `instance` | [normal](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/normal--32c7a351ba6ea79e7329bd4d.md) | 256 | `declaration-track:32c7a351ba6ea79e7329bd4d6d01246163da6aa0f4d25629af7c2e8e688888cc` |
| 26 | `instance` | [isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/isseparable--85c8c1d3eddb8ccdb73c3de0.md) | 265 | `declaration-track:85c8c1d3eddb8ccdb73c3de08362d42b27c43c714468590b9a5bcd03dcf56982` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/instance--05c46d89b1bba23754be7a1c.md) | 274 | `declaration-track:05c46d89b1bba23754be7a1c6b6ef7bb0690fdb6f3ac9b031ae5f2f52fd63aa2` |
| 28 | `theorem` | [finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/finrank-le-card--12c09f039eab831f524036a9.md) | 281 | `result-track:12c09f039eab831f524036a944592661e2b7d16c2138d1643a21c7b85177dece` |
| 29 | `theorem` | [linearIndependent_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/linearindependent-tolinearmap--17c26b0e3ee3712b1e648cff.md) | 287 | `result-track:17c26b0e3ee3712b1e648cff91e4eb05dbc96047896a8e2fc953bab81c4a2fd4` |
| 30 | `theorem` | [cardinalMk_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/cardinalmk-alghom--32997e98ac0ae2c1b6e90eaa.md) | 296 | `result-track:32997e98ac0ae2c1b6e90eaa297738e1b013710c13eeeebe86b226c86e1f84bb` |
| 31 | `instance` | [AlgEquiv.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/algequiv-fintype--a635f987623b7ffc6100e932.md) | 303 | `declaration-track:a635f987623b7ffc6100e93278ed074353452e3122071c9f09ad87db442c0b78` |
| 32 | `theorem` | [finrank_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/finrank-alghom--8ce620a8d438eb93faa62d3c.md) | 307 | `result-track:8ce620a8d438eb93faa62d3c00303e11422e0cf0144ecbaa154eaea6c2cb3f01` |
| 33 | `theorem` | [AlgHom.card_le](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/alghom-card-le--9468769ea90075571816c816.md) | 311 | `result-track:9468769ea90075571816c816f8caeb352961dcad0973c475087567b7cceb3684` |
| 34 | `theorem` | [AlgEquiv.card_le](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/algequiv-card-le--43e6846620dfc574ac6719f2.md) | 315 | `result-track:43e6846620dfc574ac6719f27a9f72b24772dd80eeed947acd3e98f65a75df90` |
| 35 | `theorem` | [finrank_eq_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/finrank-eq-card--ad49e62b7ed7452c896c0676.md) | 326 | `result-track:ad49e62b7ed7452c896c06762a77462dda689de47448ef7bf2b5a4274dba422f` |
| 36 | `theorem` | [toAlgHom_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/toalghom-bijective--c848b18fb24ca81defea0ea7.md) | 336 | `result-track:c848b18fb24ca81defea0ea72e71cb6e7907ee9c9473af957476e563010add79` |
| 37 | `def` | [toAlgHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/toalghomequiv--0e4011e4b848dc8e9c59c174.md) | 348 | `declaration-track:0e4011e4b848dc8e9c59c174420b11dd2165fc1e16837f10d4036cc901c1d977` |
| 38 | `theorem` | [toAlgAut_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/toalgaut-bijective--86387bc84c5c08ddd7929996.md) | 352 | `result-track:86387bc84c5c08ddd7929996793263df9e247bb51e9467ab2c3bbe4860e96955` |
| 39 | `def` | [toAlgAutMulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/toalgautmulequiv--265f38aa2cfd55ec473dfeb9.md) | 359 | `declaration-track:265f38aa2cfd55ec473dfeb9ad81d5b784cc2fc4988ebc8deef19e0dc08b3cb5` |
| 40 | `theorem` | [toAlgAut_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/declarations/toalgaut-surjective--2367e18bdce2996ef0fc8c17.md) | 363 | `result-track:2367e18bdce2996ef0fc8c1728d6b696b51fe499a3f8b07a8eb93b88a5616fb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
