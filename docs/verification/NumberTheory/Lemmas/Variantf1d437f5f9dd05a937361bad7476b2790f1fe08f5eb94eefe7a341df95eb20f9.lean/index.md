# Verification target: GRWTSK.NumberTheory.Lemmas.Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a90d56bec1499206a106408f2986f8d90aecbd4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a90d56bec1499206a106408f2986f8d90aecbd4`.

Source path: `GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.MulChar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_iff](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/eq-iff--160913a9c360f66e26d08cb5.md) | 17 | `result-track:160913a9c360f66e26d08cb530bda645ef3e7234347a9ed257409c40e83207f7` |
| 2 | `def` | [starComp](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/starcomp--0b9e06dd8c6fc85459d5d2d1.md) | 30 | `declaration-track:0b9e06dd8c6fc85459d5d2d15989406d13c322307cb361fc95cc876ee8dcbdbf` |
| 3 | `instance` | [instStarMul](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/inststarmul--389df158e2cd39fa84398bd6.md) | 33 | `declaration-track:389df158e2cd39fa84398bd6188bfa1e7af5244b4422851f870a967a16e16792` |
| 4 | `lemma` | [star_apply](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/star-apply--e47f2fd8f0fa15e2631cbe1b.md) | 44 | `result-track:e47f2fd8f0fa15e2631cbe1b2534678cd20517724ece798b0201d22d187fdf62` |
| 5 | `lemma` | [apply_mem_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/apply-mem-rootsofunity--54ceff88b8f6848191f08183.md) | 48 | `result-track:54ceff88b8f6848191f081831e6872851848616b65e7ba29f475201b458c266b` |
| 6 | `lemma` | [star_eq_inv](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/star-eq-inv--072b30e804455eda06ac379c.md) | 56 | `result-track:072b30e804455eda06ac379c9816875e27189729340ea096bbb5b4eb780b86bc` |
| 7 | `lemma` | [star_apply'](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/star-apply--554f3887dd1285f2db568838.md) | 62 | `result-track:554f3887dd1285f2db56883824fb13e6b9880cbf71364b4fe775c7b4ede88a4e` |
| 8 | `def` | [ofRootOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/ofrootofunity--5a3d52e4a02804d28cba0b9c.md) | 79 | `declaration-track:5a3d52e4a02804d28cba0b9c0b69309d1d66b73f98aedcfcb84168fc11c68001` |
| 9 | `lemma` | [ofRootOfUnity_spec](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/ofrootofunity-spec--7ef5bd34f2c4361bd407ffbc.md) | 87 | `result-track:7ef5bd34f2c4361bd407ffbca968c701a520b759a183b5251fc9277cc33d5eef` |
| 10 | `def` | [equiv_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/equiv-rootsofunity--083d6966010ffa1231305e96.md) | 96 | `declaration-track:083d6966010ffa1231305e9631d222c90956ce089bd0a9af573c57b92eca9012` |
| 11 | `lemma` | [exists_mulChar_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/exists-mulchar-orderof--3f00aa9431a4a698302ad242.md) | 126 | `result-track:3f00aa9431a4a698302ad2422deb5e23f4f0f872e0e803d7c6b3d29b1983cd8c` |
| 12 | `lemma` | [orderOf_dvd_card_sub_one](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/orderof-dvd-card-sub-one--fbcf429334c340cca9eec0c1.md) | 149 | `result-track:fbcf429334c340cca9eec0c1cb907c31f3735d64697b68e0ae96e01eb1d444ee` |
| 13 | `lemma` | [exists_mulChar_orderOf_eq_card_units](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/exists-mulchar-orderof-eq-card-units--0c5c559d4cbbfa9429348e53.md) | 156 | `result-track:0c5c559d4cbbfa9429348e5311e5f79be472e200724f7ee3c629c8eadc4a706c` |
| 14 | `lemma` | [apply_mem_rootsOfUnity_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/apply-mem-rootsofunity-orderof--e36c56881ffefacfb322aa05.md) | 167 | `result-track:e36c56881ffefacfb322aa053adeea9c5c4143ff83d5c0cf000482239d963fd0` |
| 15 | `lemma` | [apply_mem_rootsOfUnity_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/apply-mem-rootsofunity-of-pow-eq-one--048909249b2ed78695491c9b.md) | 178 | `result-track:048909249b2ed78695491c9b8aae2a2838e7c74b94d2c253edfac8a4295b321b` |
| 16 | `lemma` | [exists_apply_eq_pow](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/exists-apply-eq-pow--aeac0306c8c3eeee9bad45ac.md) | 189 | `result-track:aeac0306c8c3eeee9bad45ac5792ae5f4959e5ab49d2949900dbdac226acdc82` |
| 17 | `lemma` | [apply_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/apply-mem-algebraadjoin-of-pow-eq-one--c5a3027c08d4f9e6d474f900.md) | 199 | `result-track:c5a3027c08d4f9e6d474f900d99b4247a9e5a125104b87513793e9cc8160f85e` |
| 18 | `lemma` | [apply_mem_algebraAdjoin](../../../../mathematics/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/declarations/apply-mem-algebraadjoin--0c5c48c79eef2d9e878d6795.md) | 211 | `result-track:0c5c48c79eef2d9e878d6795529a4070704659ca4fcb5d641efba388cd38392e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
