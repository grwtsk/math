# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ecc4c1e95a78687dcab344f3b356db2347aa22",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ecc4c1e95a78687dcab344f3b356db2347aa22`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_at_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-at-zero--5d4097a9a011423c5e500021.md) | 45 | `result-track:5d4097a9a011423c5e50002112a7c89085c69a6478a0244ea21a227a6b809fad` |
| 2 | `theorem` | [eval₂_C_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-c-x--1b77dec13b4346f892b5d9e6.md) | 51 | `result-track:1b77dec13b4346f892b5d9e66f890171751acaa58711bf30a1ceff65609a7df0` |
| 3 | `theorem` | [coeff_zero_eq_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/coeff-zero-eq-eval-zero--0a87acea00223392d43b6fbe.md) | 61 | `result-track:0a87acea00223392d43b6fbe0e4b414e303199649af730f6ac3f1103c5e8ce13` |
| 4 | `theorem` | [zero_isRoot_of_coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/zero-isroot-of-coeff-zero-eq-zero--add6403aa36e53e66b0c2d03.md) | 69 | `result-track:add6403aa36e53e66b0c2d03049be1c082e86261de95d5d88a5e95e86b260dc8` |
| 5 | `theorem` | [coeff_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/coeff-map--2c12bcd38dcb4b9d4a126a2b.md) | 80 | `result-track:2c12bcd38dcb4b9d4a126a2bcc1942d7b50e41cc630d690d876b796d3452757c` |
| 6 | `lemma` | [coeff_map_eq_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/coeff-map-eq-comp--7509b6697ae150f0bfcee2cb.md) | 87 | `result-track:7509b6697ae150f0bfcee2cb5df29a42a6044e80f30d37f8437c8912aae62d1c` |
| 7 | `theorem` | [map_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-map--d403bd61cdfb36b674bf1d2d.md) | 90 | `result-track:d403bd61cdfb36b674bf1d2deab1d0b060283fbdcb813352d6b9e3a38f9c3b6b` |
| 8 | `theorem` | [map_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-id--1c6b23f3f48aac516416a159.md) | 94 | `result-track:1c6b23f3f48aac516416a159c732139bf158b3e4ea40d6f8612516e79db33847` |
| 9 | `def` | [piEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/piequiv--b1fd25cca10a987a9bdd1154.md) | 98 | `declaration-track:b1fd25cca10a987a9bdd11546baecc301cb92bb7ad06e2594ecedc1d5403b6b3` |
| 10 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-injective--497927b82e5a804d6d36e685.md) | 107 | `result-track:497927b82e5a804d6d36e6850083adae5f909069d6b536aeb3eba7daa46d6228` |
| 11 | `theorem` | [map_injective_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-injective-iff--e30bfe5370a99d866fe89e47.md) | 110 | `result-track:e30bfe5370a99d866fe89e4769ba3d3712e0701f23572f0416229421d108006c` |
| 12 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-surjective--0c968e0abc0296119bc92ed7.md) | 113 | `result-track:0c968e0abc0296119bc92ed79adc7334220f2073c5f8a42a2acfe32b7e5be19e` |
| 13 | `theorem` | [map_surjective_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-surjective-iff--443c295e43bbf5ecc50d0728.md) | 120 | `result-track:443c295e43bbf5ecc50d0728b7753fa03fbb07384ea8167d27572cb8e8caf58f` |
| 14 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-eq-zero-iff--a3eac50a4f2057b4c5aa3ada.md) | 125 | `result-track:a3eac50a4f2057b4c5aa3ada25dc67b0aa9a813f259b84686ece2484136b5ca1` |
| 15 | `theorem` | [map_ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/map-ne-zero-iff--bcfe5f246505d4b19d26bd8b.md) | 128 | `result-track:bcfe5f246505d4b19d26bd8bf58e35edec5d59a257175e314b2090522607b4e8` |
| 16 | `theorem` | [mapRingHom_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/mapringhom-id--340b631598983c7a689668ff.md) | 134 | `result-track:340b631598983c7a689668ff903af7b0fd209b1b5d84b4b2e7448f5a2604ff3c` |
| 17 | `theorem` | [mapRingHom_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/mapringhom-comp--9b04eeb7de7c6d3564d4399f.md) | 138 | `result-track:9b04eeb7de7c6d3564d4399f3dcbd6e5fee9b8649081c1f55423bcdc7fa836e8` |
| 18 | `theorem` | [eval₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-map--de42d9606c90bc436724ff23.md) | 142 | `result-track:de42d9606c90bc436724ff236f99cf875be2f71b90068c63b64cb25752b2e159` |
| 19 | `theorem` | [eval_zero_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-zero-map--ac742efa4bf8bc80370f80c6.md) | 147 | `result-track:ac742efa4bf8bc80370f80c636b10891b23685ee2efd839ec3c6d756c4b8eb5b` |
| 20 | `theorem` | [eval_one_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-one-map--68f2690082669a751e0cc775.md) | 151 | `result-track:68f2690082669a751e0cc7753a6c8d338f2f6458ba72bd0528553657ec15c86c` |
| 21 | `theorem` | [eval_natCast_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-natcast-map--acf9857e7b6ebd1b4add1da8.md) | 157 | `result-track:acf9857e7b6ebd1b4add1da886fa68fe76854286ba09b2f53a2b4ad44e0ef881` |
| 22 | `theorem` | [eval_intCast_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-intcast-map--b0298d6b4e23f4e7303be1e6.md) | 164 | `result-track:b0298d6b4e23f4e7303be1e64e508bef5b02e45a4ae35f1b41c02b9c32edb641` |
| 23 | `theorem` | [hom_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/hom-eval--81083042fd0a8aa5753bf53a.md) | 176 | `result-track:81083042fd0a8aa5753bf53ade154d2f5a97133588a938b43e0cd68d6e3c6276` |
| 24 | `theorem` | [eval₂_hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/eval-hom--483e13a35146f63858c956e8.md) | 191 | `result-track:483e13a35146f63858c956e83d3ad35d82ae18a3208ae4ebee56c31dfac65563` |
| 25 | `theorem` | [evalRingHom_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/evalringhom-zero--9968671683347f7ef1d2b71c.md) | 200 | `result-track:9968671683347f7ef1d2b71cc7695b986a50cb0a9bcfa3276fb622c212a00a6b` |
| 26 | `theorem` | [support_map_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/support-map-subset--ec2ca608c6ca80f5ca88aabc.md) | 209 | `result-track:ec2ca608c6ca80f5ca88aabcd5de650a77e02e20c641a6372cf0848bd259d066` |
| 27 | `theorem` | [support_map_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/support-map-of-injective--db1a5bac2959eeb1e5f96a35.md) | 215 | `result-track:db1a5bac2959eeb1e5f96a35d3531bec782142b21d88ff575ee9448500b563f7` |
| 28 | `theorem` | [IsRoot.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/isroot-map--0e29eeb12ee4aa3229d61f8c.md) | 222 | `result-track:0e29eeb12ee4aa3229d61f8cce8abda2df221368c2d7426fdcd733e4f1f46d55` |
| 29 | `theorem` | [IsRoot.of_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/isroot-of-map--835569b77a4961b4c58f45d0.md) | 225 | `result-track:835569b77a4961b4c58f45d0b7d77acc08d8beb0f073c54cf2088d69cda7c76b` |
| 30 | `theorem` | [isRoot_map_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/declarations/isroot-map-iff--aea7e2365e8b2eca9036441c.md) | 229 | `result-track:aea7e2365e8b2eca9036441ce94ba4ec51e6d7e71214be625f658be9e5a1a8d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
