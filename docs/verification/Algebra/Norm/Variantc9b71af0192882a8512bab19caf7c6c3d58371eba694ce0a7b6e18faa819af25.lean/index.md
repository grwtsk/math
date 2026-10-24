# Verification target: GRWTSK.Algebra.Norm.Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72c13354126976e840ed0d633c68b8258aaea0cc",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72c13354126976e840ed0d633c68b8258aaea0cc`.

Source path: `GRWTSK/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/iff-eq--42d5bea73307aabff92d2ab1.md) | 32 | `result-track:42d5bea73307aabff92d2ab18f51f82d5288439d9fd417c5f6c2299dc405be79` |
| 2 | `theorem` | [eq_true_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/eq-true-eq--980cd7cf5522be1e6e3389b6.md) | 35 | `result-track:980cd7cf5522be1e6e3389b68e99581bbe00edb03419e311da6ed4eab82befbe` |
| 3 | `theorem` | [eq_false_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/eq-false-eq--ce034e2c2f2686e9e6e17a2b.md) | 36 | `result-track:ce034e2c2f2686e9e6e17a2b91b052e83e83a9c2c2bc7c4a5c376db589902cfd` |
| 4 | `theorem` | [not_eq_prop](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-eq-prop--2a1bfd5be75a4dfed27018db.md) | 37 | `result-track:2a1bfd5be75a4dfed27018db680b240dc54188d1e2bdbf59a1d6f73960404c93` |
| 5 | `theorem` | [imp_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/imp-eq--3b398afa281a6c93f7693500.md) | 42 | `result-track:3b398afa281a6c93f76935009a16c65d0ceb2470d1fed62ad831f1a045d7d3f3` |
| 6 | `theorem` | [forall_imp_eq_or](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/forall-imp-eq-or--03526c33bfab65617bfce8fd.md) | 47 | `result-track:03526c33bfab65617bfce8fdda35a0c018d71bea2c1b31870b55f00bc309ec37` |
| 7 | `theorem` | [true_imp_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/true-imp-eq--0ec669c87d60bc719ab17ec4.md) | 50 | `result-track:0ec669c87d60bc719ab17ec478286afac9be4f6d997029e643a47e8770c569dc` |
| 8 | `theorem` | [false_imp_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/false-imp-eq--b50d3d5c335c0dc48c3681f4.md) | 51 | `result-track:b50d3d5c335c0dc48c3681f4deb320ec60733794456a7d9344885138fdd12b29` |
| 9 | `theorem` | [imp_true_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/imp-true-eq--e608ff2f3c316ba507d6558d.md) | 52 | `result-track:e608ff2f3c316ba507d6558d22f1e308b1441e614256c1121a5cfbad009415d4` |
| 10 | `theorem` | [imp_false_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/imp-false-eq--60bd6858357f0a7cfbbcd22b.md) | 53 | `result-track:60bd6858357f0a7cfbbcd22b1e0993d84bb5ec62b6827ad66ae9197fa9ea8fa9` |
| 11 | `theorem` | [imp_self_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/imp-self-eq--0e206fcbd342ad75349c574a.md) | 54 | `result-track:0e206fcbd342ad75349c574ae1f2b24f63772b339ff93542f4f120e735f4c060` |
| 12 | `theorem` | [not_true](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-true--4a0a6cc4d88dbe3f09e249a5.md) | 56 | `result-track:4a0a6cc4d88dbe3f09e249a5ec1cd71ab7fc291de046a286bec0169714deb38c` |
| 13 | `theorem` | [not_false](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-false--b96dd9610beaa68d1b34373f.md) | 57 | `result-track:b96dd9610beaa68d1b34373fb2ccb4819a13a920990511f555a1866d936f78ae` |
| 14 | `theorem` | [not_not](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-not--06d019ce01d2f8e88af66948.md) | 58 | `result-track:06d019ce01d2f8e88af669487830d439d80f52cd85fe80ecc10ced02f6890ad8` |
| 15 | `theorem` | [not_and](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-and--832fbd3cf395b5c702ebbd6a.md) | 59 | `result-track:832fbd3cf395b5c702ebbd6a0f5503da04c58a7d4ce267ca5167d9b998d5cfc5` |
| 16 | `theorem` | [not_or](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-or--ea5a8dfcfda8d920820326aa.md) | 60 | `result-track:ea5a8dfcfda8d920820326aa05f239e849e5402d6590eb3f941497641b42dc03` |
| 17 | `theorem` | [not_ite](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-ite--ae21010dfa6debd19f6da683.md) | 61 | `result-track:ae21010dfa6debd19f6da68381a3427441b8445cb92750aa848ac1f8d0f28ca0` |
| 18 | `theorem` | [not_forall](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-forall--e4377d80286d3e1b6b5380fd.md) | 62 | `result-track:e4377d80286d3e1b6b5380fd1bb221fed8007a1e36d6366456abb61a2d37acc0` |
| 19 | `theorem` | [not_exists](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-exists--64edaea35b6ada7b2c6fc976.md) | 63 | `result-track:64edaea35b6ada7b2c6fc97633cd88af7f620e14be3c588ffdcb3aca147c1c81` |
| 20 | `theorem` | [not_implies](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/not-implies--0a6b644caf65496689df4e10.md) | 64 | `result-track:0a6b644caf65496689df4e10c4a09c7471f0ae46368052f815d23b084839712b` |
| 21 | `theorem` | [or_assoc](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/or-assoc--3b2d9ee96a54b7c074ec57a7.md) | 66 | `result-track:3b2d9ee96a54b7c074ec57a7fdbeca813b52b832bed25272285e22565c7cecfa` |
| 22 | `theorem` | [or_swap12](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/or-swap12--784e45b8ce90956d7fea8158.md) | 67 | `result-track:784e45b8ce90956d7fea81584fe1364dc6ecd1d26a12bcb25e5819ba9c913193` |
| 23 | `theorem` | [or_swap13](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/or-swap13--a3a31653469cdb29e3f01d92.md) | 68 | `result-track:a3a31653469cdb29e3f01d92b391642165da18dfe47365f67a9437622ee911ac` |
| 24 | `theorem` | [ite_true_false](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/ite-true-false--b4798ab7cef8aaec38bb132d.md) | 70 | `result-track:b4798ab7cef8aaec38bb132d9dc2ab6fa181261602ce9793d284a9326f8e8018` |
| 25 | `theorem` | [ite_false_true](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/ite-false-true--89694d06bfb8977b4832fcdb.md) | 73 | `result-track:89694d06bfb8977b4832fcdb48dcd5156ac44e8f5552384e9de0d04ed60a968c` |
| 26 | `theorem` | [cond_eq_ite](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/cond-eq-ite--fe303565029fc5c071aac20e.md) | 76 | `result-track:fe303565029fc5c071aac20e48879e2f5c33d61d064df453d4760c95327f10c9` |
| 27 | `theorem` | [Nat.lt_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/nat-lt-eq--a373cf81c6a7f2502b27d276.md) | 79 | `result-track:a373cf81c6a7f2502b27d276f0dbcd2e555b9042a9cce896167c4314e7ba711f` |
| 28 | `theorem` | [Int.lt_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/int-lt-eq--99e52dcf0546306220083a8b.md) | 82 | `result-track:99e52dcf0546306220083a8bdbfc5757acc8815a55422602b83a7dcc1d2d02e5` |
| 29 | `theorem` | [beq_eq_decide_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/beq-eq-decide-eq--5270e875720488d68e0c0f22.md) | 85 | `result-track:5270e875720488d68e0c0f2225920ac52f104fef03a4c85504b5f22f4c450e07` |
| 30 | `theorem` | [bne_eq_decide_not_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/bne-eq-decide-not-eq--fb62eb9f414578cccec23fd6.md) | 90 | `result-track:fb62eb9f414578cccec23fd6cb5d5e3764985edadddcfe06057a60af30b5ece6` |
| 31 | `theorem` | [natCast_div](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-div--2d1785ce01dbf9d43ce61f01.md) | 93 | `result-track:2d1785ce01dbf9d43ce61f016ad974297fd76a314ce93b026a012788223f1a84` |
| 32 | `theorem` | [natCast_mod](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-mod--d31f5c0ca1ebbb4b11db0728.md) | 94 | `result-track:d31f5c0ca1ebbb4b11db0728b153a7fa88fd303874982d107e8d5b7d09c124eb` |
| 33 | `theorem` | [natCast_add](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-add--638b954b89b591cdaeefed7c.md) | 95 | `result-track:638b954b89b591cdaeefed7ccafaaec0621d7de4c097ecf5c29fc9bdbdf137a4` |
| 34 | `theorem` | [natCast_mul](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-mul--3141ae6bd3fcfa53d36c8a26.md) | 96 | `result-track:3141ae6bd3fcfa53d36c8a2685c7290da6cd0ddb0c480147e529256c6e6b3ad5` |
| 35 | `theorem` | [natCast_pow](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-pow--5388644547e5df352e5602b1.md) | 97 | `result-track:5388644547e5df352e5602b13d4c8fc03a542c5ec827151d0abd2876da3b6702` |
| 36 | `theorem` | [natCast_id](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/natcast-id--3cf43e57892051b20af4a0a5.md) | 98 | `result-track:3cf43e57892051b20af4a0a5456930d7f3e3ccd63d162bfebc7f3dce70cad7ec` |
| 37 | `theorem` | [Nat.pow_one](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/nat-pow-one--615fa48ac2ce43b8d93a18f9.md) | 100 | `result-track:615fa48ac2ce43b8d93a18f911ea3e426c4e87a52fc22cb108a10114c930ec15` |
| 38 | `theorem` | [Int.pow_one](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/int-pow-one--a763abe275ea3cddaa3e257a.md) | 103 | `result-track:a763abe275ea3cddaa3e257a4c960f6773f6646975572e35bfb1d07f5b96b13f` |
| 39 | `theorem` | [forall_true](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/forall-true--e7269a7b8b487279e80426d8.md) | 106 | `result-track:e7269a7b8b487279e80426d8e0e474501b77b4f37ad63baac295a32912c2dfff` |
| 40 | `theorem` | [flip_bool_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/flip-bool-eq--8117cab67766177b8e0b134e.md) | 110 | `result-track:8117cab67766177b8e0b134e21b9411b7906e427ccd5318d1d7c5a63f8f540ee` |
| 41 | `theorem` | [bool_eq_to_prop](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/bool-eq-to-prop--13e643129ed06058e132fa36.md) | 114 | `result-track:13e643129ed06058e132fa36216726ecc50fd2ebed770b2db578ddbdb4eca6c1` |
| 42 | `theorem` | [forall_or_forall](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/forall-or-forall--63e99e8ade86d14a02061407.md) | 117 | `result-track:63e99e8ade86d14a020614077b58467264580158155d631a720e65a951b4af20` |
| 43 | `theorem` | [forall_forall_or](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/forall-forall-or--aae843b5d073c405709f4a92.md) | 127 | `result-track:aae843b5d073c405709f4a928b3724dadd5712f62efde4a2c3b62042d2df67f3` |
| 44 | `theorem` | [forall_and](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/forall-and--abcab6050cdd806d8dc4fc8d.md) | 137 | `result-track:abcab6050cdd806d8dc4fc8dbdf79690b2a8b3b6d0f64c40ca7ab6d9dcf23d8e` |
| 45 | `theorem` | [exists_const](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/exists-const--faaac66acc8212087e61865d.md) | 140 | `result-track:faaac66acc8212087e61865d324be15c6fe3f2fbe131cdb676257176a61e083c` |
| 46 | `theorem` | [exists_or](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/exists-or--99f5ece349778a57400a6f8c.md) | 143 | `result-track:99f5ece349778a57400a6f8ccd605d22be151b3a3aa6194fbfd2604fb40a0ae8` |
| 47 | `theorem` | [exists_prop](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/exists-prop--069a50da2031eb9bca7186bf.md) | 146 | `result-track:069a50da2031eb9bca7186bfc6ce8144c6226657b5e2c8da42e46f2411e0bffb` |
| 48 | `theorem` | [exists_and_left](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/exists-and-left--deff4e8ee4923b81575d532d.md) | 149 | `result-track:deff4e8ee4923b81575d532dceb8c86364ee30a4aabd97438c11f2b22fa22012` |
| 49 | `theorem` | [exists_and_right](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/exists-and-right--6970d55d99da5ac4044f24fd.md) | 152 | `result-track:6970d55d99da5ac4044f24fd65b2613f6c10a41f4b4511ed3bdd2cb2f167b962` |
| 50 | `theorem` | [zero_sub](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/zero-sub--61d60c7bac87c4fbbd4c15bc.md) | 155 | `result-track:61d60c7bac87c4fbbd4c15bcfe804070db2a3758c6407e25b11cfe001a71b4de` |
| 51 | `theorem` | [smul_nat_eq_mul](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/smul-nat-eq-mul--bf1058c9f4e610a833dcaa0a.md) | 159 | `result-track:bf1058c9f4e610a833dcaa0acb6858eda6b885d5146eb537f6eac3926e3fee4f` |
| 52 | `theorem` | [smul_int_eq_mul](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/smul-int-eq-mul--7acb33b3a6afa0e6f8831821.md) | 162 | `result-track:7acb33b3a6afa0e6f883182136df4e2f41c38593a4c44f57434a4aeb4619fffb` |
| 53 | `theorem` | [Int.subNatNat_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/int-subnatnat-eq--9b9297e8fc6886f0490539e3.md) | 165 | `result-track:9b9297e8fc6886f0490539e3714473d0638c4ce43fc5820351595cefec483a1e` |
| 54 | `theorem` | [Int.sign_eq](../../../../mathematics/Algebra/Norm/Variantc9b71af0192882a8512bab19caf7c6c3d58371eba694ce0a7b6e18faa819af25.lean/declarations/int-sign-eq--56adb055411704198cbd6050.md) | 168 | `result-track:56adb055411704198cbd60500ee50679919d92070afea161723303e9ffc93eb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
