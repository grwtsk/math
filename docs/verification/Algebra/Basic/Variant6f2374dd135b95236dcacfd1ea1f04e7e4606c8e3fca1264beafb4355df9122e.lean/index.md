# Verification target: GRWTSK.Algebra.Basic.Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224f704719226915ab23482aa01c3e65c11f16af",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224f704719226915ab23482aa01c3e65c11f16af`.

Source path: `GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventSet](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/resolventset--6c8b22f811f497d92c7eb7b0.md) | 67 | `declaration-track:6c8b22f811f497d92c7eb7b06ace786c86910556d1f62439d903efb7875b08f4` |
| 2 | `def` | [spectrum](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/spectrum--d3ae2fd99f5c9e46650710ef.md) | 75 | `declaration-track:d3ae2fd99f5c9e46650710efa9b136e7af1e06228af4bc5c4c5a9b240e68d7e1` |
| 3 | `def` | [resolvent](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/resolvent--50a47a3552071c199ca67401.md) | 83 | `declaration-track:50a47a3552071c199ca67401e87227d5e359f94fadcc1013d20d17cfd92c22a4` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/isunit-subinvsmul--19798aa5a8f4f246ffcd5f5c.md) | 88 | `declaration-track:19798aa5a8f4f246ffcd5f5c04c96139e28c2342f1d082c521b6e8c8a7e3f9ac` |
| 5 | `theorem` | [mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/mem-iff--f0241a0f3f4826b5b7bcfa8d.md) | 107 | `result-track:f0241a0f3f4826b5b7bcfa8d85ecd92b7e104510715b615765a20564485ed95b` |
| 6 | `theorem` | [notMem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/notmem-iff--1079670d4cecf9f193e75078.md) | 110 | `result-track:1079670d4cecf9f193e750780beb7bf89747b6daf54f20704ba3351e0333fd2f` |
| 7 | `theorem` | [zero_mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/zero-mem-iff--fd1358f6f673cd0438efb65c.md) | 118 | `result-track:fd1358f6f673cd0438efb65c7acc56b09ff3918c5ac85ae6bb2480454dc39b9f` |
| 8 | `theorem` | [zero_notMem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/zero-notmem-iff--e1b07202b1bd6ab7d9f377b5.md) | 123 | `result-track:e1b07202b1bd6ab7d9f377b59fe2b530609c95d3d66aa7992612c12f3cb63577` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.ResolventSet.Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.Units.zero_notMem_spectrum](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/root-grwtsk-algebra-resolventset-variant49f1d87e11caf0f19ff23b2d6bb77057--e819af1f79f09f12dcbc72fd.md) | 134 | `result-track:e819af1f79f09f12dcbc72fdb57ea5249cd40dbd76fdb8d3ded36e55dd26b54a` |
| 10 | `lemma` | [subset_singleton_zero_compl](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/subset-singleton-zero-compl--9deb272079972da71bd27fef.md) | 140 | `result-track:9deb272079972da71bd27fefc6d171aa0718a6477670dbe0f5bbf9210a31e13a` |
| 11 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/mem-resolventset-of-left-right-inverse--771445ca391f397f6038ab1c.md) | 145 | `result-track:771445ca391f397f6038ab1cbf352bb27fa2d06e321b9e2f0291bbd1b5834e53` |
| 12 | `theorem` | [mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/mem-resolventset-iff--092fcd97c953c667d64b092a.md) | 149 | `result-track:092fcd97c953c667d64b092af5776c3f01f2e6c1cc6ce19979e42d480a7e36e2` |
| 13 | `theorem` | [algebraMap_mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/algebramap-mem-iff--0a14824172cae360710998ae.md) | 153 | `result-track:0a14824172cae360710998ae82a7c33207297dc354681e899da75477fa5ec928` |
| 14 | `theorem` | [preimage_algebraMap](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/preimage-algebramap--8dcf76f99f342b4859586e88.md) | 161 | `result-track:8dcf76f99f342b4859586e880dc03fdb7e426c4cade2456daf973fe397c82994` |
| 15 | `theorem` | [resolventSet_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/resolventset-of-subsingleton--1155720a8f03f424f003be07.md) | 167 | `result-track:1155720a8f03f424f003be07b6b18068c0de0ecf19fcfdd0f19353c9af47ba3c` |
| 16 | `theorem` | [of_subsingleton](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/of-subsingleton--b7c2983978c9b4aa6d974b0e.md) | 171 | `result-track:b7c2983978c9b4aa6d974b0eade19464d6a949a5bb46c81c17c4b1492d58f25f` |
| 17 | `theorem` | [resolvent_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/resolvent-eq--850c5a7f201f464e955ddd92.md) | 174 | `result-track:850c5a7f201f464e955ddd9277a95f9eeacb8272f03323c4a8d6e7d44ed3d683` |
| 18 | `theorem` | [units_smul_resolvent](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/units-smul-resolvent--144ac5d70c56253d6215c279.md) | 177 | `result-track:144ac5d70c56253d6215c2791733f841163f6af4dcd49643abbb39b20b16ab69` |
| 19 | `theorem` | [units_smul_resolvent_self](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/units-smul-resolvent-self--432ce6a7aba4ae53b563b825.md) | 193 | `result-track:432ce6a7aba4ae53b563b825435ec25a2fa1b8b42ad6d96184ce110e8b372ebb` |
| 20 | `theorem` | [isUnit_resolvent](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/isunit-resolvent--0c80713bcff121ee911f85c3.md) | 199 | `result-track:0c80713bcff121ee911f85c3a45897a3bff92a598b8562523abc5cf1f21fe500` |
| 21 | `theorem` | [inv_mem_resolventSet](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/inv-mem-resolventset--150889c0f31dbaba0b45f362.md) | 202 | `result-track:150889c0f31dbaba0b45f362b949c5d25b867c40329caebce72052fe867f8fff` |
| 22 | `theorem` | [inv_mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/inv-mem-iff--8a532a35fccacf2e1974eeba.md) | 213 | `result-track:8a532a35fccacf2e1974eeba4eadfe1eef64b95f86a0959a45d026e5264372e6` |
| 23 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/zero-mem-resolventset-of-unit--b9e0aeb1f6b03f948630f434.md) | 216 | `result-track:b9e0aeb1f6b03f948630f43406da103f9b4aa70559931c1c69cb3622365d5613` |
| 24 | `theorem` | [ne_zero_of_mem_of_unit](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/ne-zero-of-mem-of-unit--b662901aa2d168f82f7b9354.md) | 219 | `result-track:b662901aa2d168f82f7b9354cdb42facba268f2e30c3ab86c1b003e169b25424` |
| 25 | `theorem` | [add_mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/add-mem-iff--ab7655ef4a474c70884a727b.md) | 222 | `result-track:ab7655ef4a474c70884a727b519eea5a3cd82f954348743570ddb39bc5d39f8c` |
| 26 | `theorem` | [add_mem_add_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/add-mem-add-iff--79036a680fef061a74fbfaab.md) | 225 | `result-track:79036a680fef061a74fbfaab0d2ce5304305d97176c4d3525a856237814e201b` |
| 27 | `theorem` | [smul_mem_smul_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/smul-mem-smul-iff--e0d9242c29c959358f0272ef.md) | 228 | `result-track:e0d9242c29c959358f0272efaf5c8c20595b31a3dd40e67b8a5dd2792c276f67` |
| 28 | `theorem` | [unit_smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/unit-smul-eq-smul--4173b158ed32dddb8f749745.md) | 232 | `result-track:4173b158ed32dddb8f7497451734c6e4de584689bbb9b9ad6ca56db53f42f47d` |
| 29 | `theorem` | [unit_mem_mul_comm](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/unit-mem-mul-comm--b89e84294ae5f617da44037c.md) | 243 | `result-track:b89e84294ae5f617da44037c886a3b1d5b590864e5730aa54ef06183ede054e3` |
| 30 | `theorem` | [preimage_units_mul_comm](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/preimage-units-mul-comm--e8cceef5502f52e8fd873d8f.md) | 261 | `result-track:e8cceef5502f52e8fd873d8f6757c2b7e9b54e56cd164c3de04cb35cc46d8525` |
| 31 | `theorem` | [setOf_isUnit_inter_mul_comm](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/setof-isunit-inter-mul-comm--c12ed95a1e93ef18cfdc6f8e.md) | 268 | `result-track:c12ed95a1e93ef18cfdc6f8ef53cfa57a42c21401791e335ddbd58855aedb3a3` |
| 32 | `theorem` | [star_mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/star-mem-resolventset-iff--8f5a7657f17e2f599fe079e5.md) | 277 | `result-track:8f5a7657f17e2f599fe079e580def28e84fd02589028518c3c60e07009907fef` |
| 33 | `theorem` | [map_star](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/map-star--7a20524a7b2dd04b62d8bb28.md) | 283 | `result-track:7a20524a7b2dd04b62d8bb28091044cf4133ed31cfd0098e39b982ab56d24fa3` |
| 34 | `theorem` | [subset_subalgebra](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/subset-subalgebra--d3d692abc00158a0c96b96e9.md) | 300 | `result-track:d3d692abc00158a0c96b96e9befedff5c22f2602d2e7073ca75645299e51c898` |
| 35 | `theorem` | [singleton_add_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/singleton-add-eq--318b48104f44a919ad977115.md) | 305 | `result-track:318b48104f44a919ad9771154f8e9e7a7b7a0832de08d76bd379bb7e98ed7191` |
| 36 | `theorem` | [add_singleton_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/add-singleton-eq--b06b1a6103abc72950ebee1c.md) | 309 | `result-track:b06b1a6103abc72950ebee1c553376426a333c3ef3114b0b5b8166ec55421de6` |
| 37 | `theorem` | [vadd_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/vadd-eq--20750d9ac66865951440724f.md) | 312 | `result-track:20750d9ac66865951440724ff5e84c7801cdd6a4b1b098bd8dfc34c120b04bb2` |
| 38 | `theorem` | [neg_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/neg-eq--087373cb2acd285e50e77669.md) | 315 | `result-track:087373cb2acd285e50e77669d57b651e4464ae8caaa1c59946a3e811d7164a24` |
| 39 | `theorem` | [singleton_sub_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/singleton-sub-eq--249471ac60bf6c5299b33e19.md) | 319 | `result-track:249471ac60bf6c5299b33e194fd4015f1d3f2996d92344b802d96bd5e8901073` |
| 40 | `theorem` | [sub_singleton_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/sub-singleton-eq--0d6bf75c45248c53a02ba9df.md) | 322 | `result-track:0d6bf75c45248c53a02ba9df486a710fe1bab59e301eac4f709442b7c402e5ed` |
| 41 | `lemma` | [inv₀_mem_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/inv-mem-iff--5ef4072bfe46d9ff277fa7db.md) | 332 | `result-track:5ef4072bfe46d9ff277fa7dbfe996740538652c2a7b465bed559be04a0060f6f` |
| 42 | `lemma` | [inv₀_mem_inv_iff](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/inv-mem-inv-iff--7b1558b5cca9d5e54508da10.md) | 339 | `result-track:7b1558b5cca9d5e54508da102fbd8af6115858bf8c6984c51636fd738b3f306e` |
| 43 | `theorem` | [zero_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/zero-eq--4e4630332729043d0b5804cb.md) | 359 | `result-track:4e4630332729043d0b5804cb33186146a8de01e21d95bb28a8104a1e2638586c` |
| 44 | `theorem` | [scalar_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/scalar-eq--405d1a86aee6ad8fdebb8d2e.md) | 368 | `result-track:405d1a86aee6ad8fdebb8d2e2449340d240ee2c0ede951a624417bab4cca1911` |
| 45 | `theorem` | [one_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/one-eq--3e02e529ea884f06e27ea049.md) | 372 | `result-track:3e02e529ea884f06e27ea0495ddff6d76362d5c0a70d59aad7308c1d63032532` |
| 46 | `theorem` | [smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/smul-eq-smul--8a912f671ebc6d6bea5b1543.md) | 379 | `result-track:8a912f671ebc6d6bea5b1543e2a7b71451ed37ebf4c78c47fdf7ec53d4d4c6f0` |
| 47 | `theorem` | [nonzero_mul_comm](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/nonzero-mul-comm--9e3be4dc4c6a7b3518878abd.md) | 385 | `result-track:9e3be4dc4c6a7b3518878abda80bef8af1a9d7e04e872973a530027fbfd82edd` |
| 48 | `theorem` | [map_inv](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/map-inv--636f1b21cbd2852d139de5a9.md) | 392 | `result-track:636f1b21cbd2852d139de5a9a1c4419759521fe87ab69f70ffe2b4588d37567b` |
| 49 | `theorem` | [mem_resolventSet_apply](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/mem-resolventset-apply--019a0ae40e7d4ecd0397e5b9.md) | 417 | `result-track:019a0ae40e7d4ecd0397e5b987275acd54aaef5af79be4aa1fc9dee75e09526c` |
| 50 | `theorem` | [spectrum_apply_subset](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/spectrum-apply-subset--6f5d1163d389150ac45648b6.md) | 421 | `result-track:6f5d1163d389150ac45648b60a48276473a24b0699aa617181499edcbf47b700` |
| 51 | `theorem` | [apply_mem_spectrum](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/apply-mem-spectrum--a805e851cf692565d730f936.md) | 435 | `result-track:a805e851cf692565d730f936c1187dc5a4044bdfbbf87257edefa9325f5a43e8` |
| 52 | `theorem` | [AlgEquiv.spectrum_eq](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/algequiv-spectrum-eq--02529e707e2eb54e0127b451.md) | 447 | `result-track:02529e707e2eb54e0127b4517d9c8c55e2a975318b96fc603f42ceeadeac5de4` |
| 53 | `lemma` | [spectrum.units_conjugate](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/spectrum-units-conjugate--46539feba73d9b254fc8861e.md) | 460 | `result-track:46539feba73d9b254fc8861e8d807373187d33d5e36d14185f6ecefd7645be70` |
| 54 | `lemma` | [spectrum.units_conjugate'](../../../../mathematics/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/declarations/spectrum-units-conjugate--596fe98903b23f9b78ee59d1.md) | 473 | `result-track:596fe98903b23f9b78ee59d1a864e6f0341ad7b4b992925cd2ca022394c0a9ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
