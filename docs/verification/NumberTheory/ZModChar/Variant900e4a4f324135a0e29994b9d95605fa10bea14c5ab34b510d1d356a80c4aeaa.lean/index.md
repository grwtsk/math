# Verification target: GRWTSK.NumberTheory.ZModChar.Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aef4a5cd5769374a3b5ff8da4d1b3c4e52abdc47",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aef4a5cd5769374a3b5ff8da4d1b3c4e52abdc47`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean.json)

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
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/anonymous--d7bf5dcb9485fbd6218c3508.md) | 42 | `declaration-track:d7bf5dcb9485fbd6218c3508b7dd049b1b50cdd9ba2ce9c32c26048cc1fab7f1` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/isquadratic--0ed8e87b7f9e24394ddf3827.md) | 53 | `result-track:0ed8e87b7f9e24394ddf3827c5e886a0267c2480ed5a7a4f1f3373a2920d79cc` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-mod-four--e5f609c40df08c35d8d8df0c.md) | 58 | `result-track:e5f609c40df08c35d8d8df0c057c99d48eaa322af44cce869b57ae589d60f8f5` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-mod-four--a345c2af4eb7e30c8eeca082.md) | 61 | `result-track:a345c2af4eb7e30c8eeca0821d59924aafe20faa29b6b0187374c4fc08b156b2` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-eq-if-mod-four--292ef96c46335814d2e3945b.md) | 65 | `result-track:292ef96c46335814d2e3945b99cc363e9a302490b68cb318483d378b76d02e95` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-eq-if-mod-four--31dde2909226d19fbeb46605.md) | 72 | `result-track:31dde2909226d19fbeb4660520700845a80b964b569a9b75911d213bb87566af` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/eq-neg-one-pow--83a2bc42ee1976f3425e24be.md) | 77 | `result-track:83a2bc42ee1976f3425e24befaebc0505280b2cf06ff5b3fbb701022043b37f0` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-one-mod-four--748e42760be95aa4ab85c411.md) | 88 | `result-track:748e42760be95aa4ab85c411c51a1f1cb58ce4f66bc28722c7ca9b5531bc0b5e` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-three-mod-four--747b1688961dad400804d6fb.md) | 93 | `result-track:747b1688961dad400804d6fbd9d82efe36bb3467801fbeeacb74b859ab16c5ee` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-one-mod-four--e0171b54c47484c8708b1966.md) | 98 | `result-track:e0171b54c47484c8708b1966e5140b6c235c12b8e092d097f36aabc274306ebf` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-three-mod-four--cf1ffd23958f917b82fb7c88.md) | 103 | `result-track:cf1ffd23958f917b82fb7c8863bf4039fba871e9188243bba782fa8575c4160e` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/neg-one-pow-div-two-of-one-mod-four--891ed4aa51c7de9ad407bc64.md) | 108 | `result-track:891ed4aa51c7de9ad407bc64667cd1112bfc7456819d5f324f5a4f2eb1a49a59` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/neg-one-pow-div-two-of-three-mod-four--3e171c96e8f07ce300857873.md) | 112 | `result-track:3e171c96e8f07ce3008578736e8dbfd4f649842a380325d883d8973c183edaa6` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/anonymous--1dad5ca6eed0ae07b6732ea9.md) | 118 | `declaration-track:1dad5ca6eed0ae07b6732ea959f0e54821efecee379468954a9843fe4d11d4dd` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/isquadratic--78d8d2d88d71cf1e268d8364.md) | 129 | `result-track:78d8d2d88d71cf1e268d83641621504b3bcdc9d2a7df5b061a7ba59b8293acd3` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-mod-eight--02b1b557114acaf0205ed540.md) | 134 | `result-track:02b1b557114acaf0205ed5404b4352358713029f37927181c162b6c2940f2de9` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-mod-eight--3bc8d2de21fd7ad788b9cd97.md) | 138 | `result-track:3bc8d2de21fd7ad788b9cd979f8437d66b08b027cbf2c19eac3c9af19dda362d` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-eq-if-mod-eight--efa768f414051b5a5c5b7897.md) | 142 | `result-track:efa768f414051b5a5c5b78973a61c6ac0ad0ea8b5c91938678efff9e6edd2199` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-eq-if-mod-eight--268d0e1cdac31a28f8996bb1.md) | 150 | `result-track:268d0e1cdac31a28f8996bb1df0da9171c2e177904183589fba4df60cdacf203` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/anonymous--85c35553086e79602487ced4.md) | 157 | `declaration-track:85c35553086e79602487ced49e81c434dc6c2ef6a80897d2cf5146e3702683ef` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/isquadratic--9f358407d7f3dc56b51a51ac.md) | 168 | `result-track:9f358407d7f3dc56b51a51ac757fb51b4999b9fb5a983d22605b1530608ffd47` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-eq-if-mod-eight--b005a948cc02a02127105163.md) | 173 | `result-track:b005a948cc02a02127105163e564ceb88a5ff816f2e2c3490af5ab3e43ff1439` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/nat-eq-if-mod-eight--eab15bd0e484f6a359552373.md) | 181 | `result-track:eab15bd0e484f6a3595523734194d8b0510a20b88e103142b39508fb07f7cc2d` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/eq-mul--32ecc2734ec5f97c05cfbfd0.md) | 186 | `result-track:32ecc2734ec5f97c05cfbfd093f257164f59723e17d8e57577a5781bef53194c` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant900e4a4f324135a0e29994b9d95605fa10bea14c5ab34b510d1d356a80c4aeaa.lean/declarations/int-eq-mul--898e0f9bd16121d08d98a2a4.md) | 189 | `result-track:898e0f9bd16121d08d98a2a4a7bc7b1a8cd7e6963b671e9b76ec38580d81fdb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
