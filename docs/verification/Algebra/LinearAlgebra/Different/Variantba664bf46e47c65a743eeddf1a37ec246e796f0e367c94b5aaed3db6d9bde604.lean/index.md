# Verification target: GRWTSK.Algebra.LinearAlgebra.Different.Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.KummerDedekind` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Quotient` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/submodule-tracedual--250a549020fb739a33e4cc4a.md) | 48 | `declaration-track:250a549020fb739a33e4cc4a691422ee33edd46f25f6b19567c39cd28e3bf9ff` |
| 2 | `lemma` | [mem_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/mem-tracedual--ead6fc09914fd802ad056a1f.md) | 60 | `result-track:ead6fc09914fd802ad056a1fd67918a7a36ae484f343a226aedb46591217e75f` |
| 3 | `lemma` | [le_traceDual_iff_map_le_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-tracedual-iff-map-le-one--a4615e92b8745cedb411b060.md) | 64 | `result-track:a4615e92b8745cedb411b060166cda6365f27806e544e59c628da6b2c97abf81` |
| 4 | `lemma` | [le_traceDual_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-tracedual-mul-iff--bc530ed666030b30f93151d7.md) | 70 | `result-track:bc530ed666030b30f93151d702a6f233a0b19100c580a74be94f630595ffdd37` |
| 5 | `lemma` | [le_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-tracedual--e51f109a84473d8aef45e777.md) | 74 | `result-track:e51f109a84473d8aef45e777625c0a9a7e9cc7432bb991c6e3f08852d93e58aa` |
| 6 | `lemma` | [le_traceDual_comm](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-tracedual-comm--631f791ef5c79c6c6de72651.md) | 78 | `result-track:631f791ef5c79c6c6de7265148a578ade4f9b51d7584bfa5831bbec68abc98db` |
| 7 | `lemma` | [le_traceDual_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-tracedual-tracedual--98b8767f63006a3223a719df.md) | 81 | `result-track:98b8767f63006a3223a719df9d8de114815d61d5ec6863ee59000b922a828e48` |
| 8 | `lemma` | [traceDual_bot](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/tracedual-bot--3c64333e775a715b9c8c126e.md) | 85 | `result-track:3c64333e775a715b9c8c126e0019b6761cbb73159f21a3e37017e9c75ebdc039` |
| 9 | `lemma` | [traceDual_top'](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/tracedual-top--9afb329c504e697c8dcbfbe6.md) | 89 | `result-track:9afb329c504e697c8dcbfbe692cce4cbe502fad8326af70af1c67b29daa9a090` |
| 10 | `lemma` | [traceDual_top](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/tracedual-top--c84c55ee297d0fd0d6319c69.md) | 107 | `result-track:c84c55ee297d0fd0d6319c6909b78c0a736ce9b782389d3199e6fa52824e2a86` |
| 11 | `lemma` | [map_equiv_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/map-equiv-tracedual--ea91df50866d22fcb18f073e.md) | 122 | `result-track:ea91df50866d22fcb18f073e82147cca109e6e49c9c743c8523000c80eb7e805` |
| 12 | `lemma` | [Submodule.mem_traceDual_iff_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/submodule-mem-tracedual-iff-isintegral--16ecddc983b0624b5b876f68.md) | 150 | `result-track:16ecddc983b0624b5b876f6802334ea9ca211f17157f64be87c09bad98932399` |
| 13 | `lemma` | [Submodule.one_le_traceDual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/submodule-one-le-tracedual-one--6ea0d56bc2dea724827a27bc.md) | 156 | `result-track:6ea0d56bc2dea724827a27bc912e22441bd23623c51df8e697a54a7c88fc3409` |
| 14 | `lemma` | [isIntegral_discr_mul_of_mem_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/isintegral-discr-mul-of-mem-tracedual--ad86f28d445d6de4da4c681f.md) | 170 | `result-track:ad86f28d445d6de4da4c681f2a195afe2f10f0215c75848519b147ca1c93db3d` |
| 15 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual--3b3d631e61cd88bb8ae78036.md) | 210 | `declaration-track:3b3d631e61cd88bb8ae78036224a6cc967386f136db7c3f1fdfeb4434707b079` |
| 16 | `lemma` | [coe_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/coe-dual--2ab18452800b68e515f4aef8.md) | 244 | `result-track:2ab18452800b68e515f4aef8f2a913217e2a50ec840e443671bc830f6e61f8fb` |
| 17 | `lemma` | [coe_dual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/coe-dual-one--794f3c8cda5ba4515bbe61d0.md) | 250 | `result-track:794f3c8cda5ba4515bbe61d0ea7963603af9a50c17b8a239b9a1a597ad007fa5` |
| 18 | `lemma` | [dual_zero](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-zero--db7f67ee23d3d4c1f605005e.md) | 256 | `result-track:db7f67ee23d3d4c1f605005e78d19455cd8752d16563e5ee805fe811dcf7bb93` |
| 19 | `lemma` | [mem_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/mem-dual--3adc356a69862ee0aece528c.md) | 261 | `result-track:3adc356a69862ee0aece528cb77f4b885290a3d9b9c84238167c0e14d4056405` |
| 20 | `lemma` | [dual_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-ne-zero--300936b903fd4d4d77f687bc.md) | 267 | `result-track:300936b903fd4d4d77f687bc92212a79d06c9cc87982a8b5593d3c733219d440` |
| 21 | `lemma` | [dual_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-eq-zero-iff--614cafaf04c550a7beafd897.md) | 288 | `result-track:614cafaf04c550a7beafd897d05dfb24d68efa1c4d28dfc332d52dd2a1c988b5` |
| 22 | `lemma` | [dual_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-ne-zero-iff--d3a1b854c68fc17919cb200b.md) | 292 | `result-track:d3a1b854c68fc17919cb200b62567c3bc80c9d2d06aa2e002ad15090298b0047` |
| 23 | `lemma` | [le_dual_inv_aux](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-dual-inv-aux--d6eb216f84f6da92cf91eacf.md) | 297 | `result-track:d6eb216f84f6da92cf91eacf2a2c00f1f2fc282565f2df52452b7fbb1dfca90d` |
| 24 | `lemma` | [one_le_dual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/one-le-dual-one--95f57233866f8e1b40b7cdfa.md) | 309 | `result-track:95f57233866f8e1b40b7cdfafb14655be6acff901795eebc603854f4a6ae64e1` |
| 25 | `lemma` | [le_dual_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/le-dual-iff--cca83b84f2d2a43b50229a31.md) | 313 | `result-track:cca83b84f2d2a43b50229a31ebac865bf8448b66516e58a83d1e20088c00ed18` |
| 26 | `lemma` | [inv_le_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/inv-le-dual--2c28d01f472dc313816beff8.md) | 321 | `result-track:2c28d01f472dc313816beff817fe5b6329e065a22be0997d9ee962b31b20be7b` |
| 27 | `lemma` | [dual_inv_le](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-inv-le--73042c97c02a089b4e0c1318.md) | 326 | `result-track:73042c97c02a089b4e0c1318fc0951e92220ad848ad70afce11720f381bda6e7` |
| 28 | `lemma` | [dual_eq_mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-eq-mul-inv--84981d54a5bc783070cc6b6c.md) | 334 | `result-track:84981d54a5bc783070cc6b6caf1233abd3521bab22d146114c899b5c4b58bde9` |
| 29 | `lemma` | [dual_div_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-div-dual--326c17bad8ab5f2ef63e7827.md) | 345 | `result-track:326c17bad8ab5f2ef63e78270de49bf3c916cde030bca2649b77b7e151ea0d6e` |
| 30 | `lemma` | [dual_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-mul-self--be9a5cfcd37546efdbb40833.md) | 351 | `result-track:be9a5cfcd37546efdbb40833c0378df9f53c877abd51311a15d1aed16607166a` |
| 31 | `lemma` | [self_mul_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/self-mul-dual--a1140508c93fbb5b1d3df10d.md) | 355 | `result-track:a1140508c93fbb5b1d3df10dd870f27ea033c0e118be4ac8cacf2a3a2bb13f06` |
| 32 | `lemma` | [dual_inv](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-inv--c54d330b8384d75878740662.md) | 359 | `result-track:c54d330b8384d75878740662de9362a9f067b9d03e89ee986558347d80f4de14` |
| 33 | `lemma` | [dual_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-dual--fc53a07a3d7792694456ad64.md) | 365 | `result-track:fc53a07a3d7792694456ad6478753ab80ec61d484963af22de6feee44660ae10` |
| 34 | `lemma` | [dual_le_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-le-dual--b88d22e6af3fc0d81c549a73.md) | 375 | `result-track:b88d22e6af3fc0d81c549a73572eb1293a7ee9f73f495dd5490bd50b8e087d41` |
| 35 | `lemma` | [dual_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-involutive--78c83d36a598a29f436bd112.md) | 382 | `result-track:78c83d36a598a29f436bd112fb1e66586786380d232ccf0612b06d3bb5c6f881` |
| 36 | `lemma` | [dual_injective](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/dual-injective--31230a4193c766f797ca4b90.md) | 385 | `result-track:31230a4193c766f797ca4b90207ff8d3411b20906b112e6dcdcbefb4536f428d` |
| 37 | `def` | [differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/differentideal--cf8d7120b064196dfe26c6bf.md) | 396 | `declaration-track:cf8d7120b064196dfe26c6bfcddaf45f626eecfc7c79e40c30c9dde3635835dc` |
| 38 | `lemma` | [coeSubmodule_differentIdeal_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/coesubmodule-differentideal-fractionring--e253de125c106cf300073be4.md) | 400 | `result-track:e253de125c106cf300073be4ddffa628d9ab8da8ed6f770b75e86a1535d9a78c` |
| 39 | `lemma` | [coeSubmodule_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/coesubmodule-differentideal--7c73f98b1570aba88bbe407b.md) | 422 | `result-track:7c73f98b1570aba88bbe407b0d8eb9d8f144c9aa48466bd08506b2c73554d587` |
| 40 | `lemma` | [coeIdeal_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/coeideal-differentideal--1f6d37798d3d9de0e742779d.md) | 451 | `result-track:1f6d37798d3d9de0e742779d1f1a0a72cc51ca90cc59bb5ef7589c0683e42232` |
| 41 | `lemma` | [differentialIdeal_le_fractionalIdeal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/differentialideal-le-fractionalideal-iff--e736392cfd627bb5e3579155.md) | 463 | `result-track:e736392cfd627bb5e357915593bf238da618563a697cb548d265f522a84a4fde` |
| 42 | `lemma` | [differentialIdeal_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/differentialideal-le-iff--05cf7a936257421903c90650.md) | 472 | `result-track:05cf7a936257421903c90650941192c8bba1193b917b1022a8ff0e1b2749d460` |
| 43 | `lemma` | [traceForm_dualSubmodule_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/traceform-dualsubmodule-adjoin--6ac2fe6655625226d499c690.md) | 481 | `result-track:6ac2fe6655625226d499c6907eb44f4a43c66ca8ea68997503e58f6246852966` |
| 44 | `lemma` | [conductor_mul_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/conductor-mul-differentideal--6e95291454ab329f6cbd9455.md) | 526 | `result-track:6e95291454ab329f6cbd945574b001adfee5fbf3af8f30d760edf799c4039c49` |
| 45 | `lemma` | [aeval_derivative_mem_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/aeval-derivative-mem-differentideal--54f89ffe243f1a8d95a09df8.md) | 567 | `result-track:54f89ffe243f1a8d95a09df855243abb46674e1b1440aff482d500244f40d091` |
| 46 | `lemma` | [pow_sub_one_dvd_differentIdeal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/pow-sub-one-dvd-differentideal-aux--eac07425492cdbd3cd6ea4d9.md) | 577 | `result-track:eac07425492cdbd3cd6ea4d9842a4a0ef79cac5d78865559e59888feb92c800e` |
| 47 | `lemma` | [pow_sub_one_dvd_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/declarations/pow-sub-one-dvd-differentideal--eb4e63312b2cafb3eff78fad.md) | 627 | `result-track:eb4e63312b2cafb3eff78fad9a59ec11e9a828575528c02f8fa064fa44a51efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
