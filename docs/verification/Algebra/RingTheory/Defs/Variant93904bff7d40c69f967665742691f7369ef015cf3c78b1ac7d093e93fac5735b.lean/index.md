# Verification target: GRWTSK.Algebra.RingTheory.Defs.Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43d77a9325594b7643c1d0871f55661a5a5e59cf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43d77a9325594b7643c1d0871f55661a5a5e59cf`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean.json)

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
| 1 | `theorem` | [IsNilpotent.map](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-map--30451c1f054d2367b88825df.md) | 42 | `result-track:30451c1f054d2367b88825df277df11a09fb90d808dcd70316e648fc9368b3b1` |
| 2 | `lemma` | [IsNilpotent.map_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-map-iff--576f92ef3de15e6601caa906.md) | 48 | `result-track:576f92ef3de15e6601caa906a298b8e4f5c6a538055ae0299a90b0f67ea6f1c1` |
| 3 | `theorem` | [IsUnit.isNilpotent_mul_unit_of_commute_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isunit-isnilpotent-mul-unit-of-commute-iff--c130df5d93db5f06c7430c4a.md) | 53 | `result-track:c130df5d93db5f06c7430c4a45c36241db1627c2f747d89167f460f063b8018b` |
| 4 | `theorem` | [IsUnit.isNilpotent_unit_mul_of_commute_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isunit-isnilpotent-unit-mul-of-commute-iff--158e53705142f4e0153df947.md) | 58 | `result-track:158e53705142f4e0153df94758ff9b9892c7010eefb4b6374614dec7af8ab573` |
| 5 | `theorem` | [isNilpotent_op](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-op--1de9c391f6462a58219e3b5e.md) | 64 | `result-track:1de9c391f6462a58219e3b5e3f424f6224adb934f04eb3ce072253d76d118bc6` |
| 6 | `theorem` | [isNilpotent_unop](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-unop--2fc1b494bc9ccaca23cc7562.md) | 71 | `result-track:2fc1b494bc9ccaca23cc75624e53a4792bf4e9deb1ca828a70903c3cafad0d9f` |
| 7 | `def` | [nilpotencyClass](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/nilpotencyclass--4aa5d30f8384e5ee687132ab.md) | 86 | `declaration-track:4aa5d30f8384e5ee687132ab640bc6ba26a7147365acbc69f8bf067068f4658b` |
| 8 | `lemma` | [nilpotencyClass_eq_zero_of_subsingleton](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/nilpotencyclass-eq-zero-of-subsingleton--449e750d38457a1a9e77b3a0.md) | 88 | `result-track:449e750d38457a1a9e77b3a071b1fd83a0ce94a6fe543d69f4a275a332b2fa8b` |
| 9 | `lemma` | [isNilpotent_of_pos_nilpotencyClass](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-of-pos-nilpotencyclass--56f82b61d777ea3043ddc09e.md) | 94 | `result-track:56f82b61d777ea3043ddc09e191234215f031e111b8c37720cc1432c7585d2fd` |
| 10 | `lemma` | [pow_nilpotencyClass](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/pow-nilpotencyclass--83cde76565b8bd4ef6b679ba.md) | 102 | `result-track:83cde76565b8bd4ef6b679bae41a34c817798341af190b70e5de96177561f22f` |
| 11 | `lemma` | [nilpotencyClass_eq_succ_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/nilpotencyclass-eq-succ-iff--011f6133a268b4bfb7477eb6.md) | 111 | `result-track:011f6133a268b4bfb7477eb6a24f5fd4874dcd889ff7f3a1b33ec89333f2ea2a` |
| 12 | `lemma` | [nilpotencyClass_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/nilpotencyclass-zero--af5ddd96730be19aa0ca2015.md) | 117 | `result-track:af5ddd96730be19aa0ca201523da94f566be4d9b142b3afa3015ab530299ba3f` |
| 13 | `lemma` | [pos_nilpotencyClass_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/pos-nilpotencyclass-iff--e4cc30af143fd9c8d018e97e.md) | 121 | `result-track:e4cc30af143fd9c8d018e97e3d5d82687fcf64798b9e1febd600588341cf914a` |
| 14 | `lemma` | [pow_pred_nilpotencyClass](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/pow-pred-nilpotencyclass--03a2e0d3a7a27ba5d1520b28.md) | 128 | `result-track:03a2e0d3a7a27ba5d1520b2836a8e009f338b6abac79885a38372abbd46e43fb` |
| 15 | `lemma` | [eq_zero_of_nilpotencyClass_eq_one](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/eq-zero-of-nilpotencyclass-eq-one--cbed79fc04bbb414cd737899.md) | 132 | `result-track:cbed79fc04bbb414cd7378996e5b90fc1caa3d626b2df1bebd930f24bd359bbc` |
| 16 | `lemma` | [nilpotencyClass_eq_one](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/nilpotencyclass-eq-one--a22582409e506d381870bf87.md) | 137 | `result-track:a22582409e506d381870bf8793ad3a4dfccf953aad8d8d75b564fddf7cf553ca` |
| 17 | `theorem` | [isReduced_mulOpposite_iff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isreduced-mulopposite-iff--ef6420d88e7e14c149f16be1.md) | 146 | `result-track:ef6420d88e7e14c149f16be117200f8004f36356c0452df36860f81c74adf648` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/instance--9deb952bbca8c1158b159344.md) | 149 | `declaration-track:9deb952bbca8c1158b1593444eaa33e5859052c59557d3d58ac6341cdacefccf` |
| 19 | `theorem` | [isReduced_of_injective](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isreduced-of-injective--68c91454ec087d2e7bdf95ee.md) | 152 | `result-track:68c91454ec087d2e7bdf95ee1dafd249afce8f4fb50fc54982d52322ec93fede` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/instance--39997f027fbe112fdd96e910.md) | 162 | `declaration-track:39997f027fbe112fdd96e91077aa3edebbb2b343502670cfa3299ff0d7cd06f2` |
| 21 | `def` | [IsRadical](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isradical--0fcbdd3ad98ab9cd537ac0c5.md) | 168 | `declaration-track:0fcbdd3ad98ab9cd537ac0c5a9f35afeaf747a6112e0780c9bfcf4e4add4d8d0` |
| 22 | `theorem` | [isRadical_iff_pow_one_lt](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isradical-iff-pow-one-lt--51e44a7b99bd75d0fc19a44b.md) | 171 | `result-track:51e44a7b99bd75d0fc19a44b4a6d5611a00a4bd420685c9386d93c6f16ccc773` |
| 23 | `theorem` | [isNilpotent_mul_right](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-mul-right--ea8c9783ef97f4701c4f79f6.md) | 181 | `result-track:ea8c9783ef97f4701c4f79f6795a3afa9205a3030d04c4a9d553c7be13fe1e69` |
| 24 | `theorem` | [isNilpotent_mul_left](../../../../../mathematics/Algebra/RingTheory/Defs/Variant93904bff7d40c69f967665742691f7369ef015cf3c78b1ac7d093e93fac5735b.lean/declarations/isnilpotent-mul-left--54c40bf83be6263215f5564e.md) | 186 | `result-track:54c40bf83be6263215f5564e7751962e58e3bd3b9c8f23045753871eabcac517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
