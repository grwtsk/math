# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FactorisationProperties.Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4799791ddff35c2670dc8987be4381330ec5eb3a",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4799791ddff35c2670dc8987be4381330ec5eb3a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean.json)

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
| 1 | `def` | [Abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant--96e626435a5bcb595e61b564.md) | 59 | `declaration-track:96e626435a5bcb595e61b56402e5800bcb7967e5eca3452397a6c610cdde506f` |
| 2 | `def` | [Deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient--845c0bd9684a072756be9352.md) | 63 | `declaration-track:845c0bd9684a072756be9352f3fc80bab784477209234b5940e30b2e95b0bcf4` |
| 3 | `def` | [Pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/pseudoperfect--0db05cdfcfec934da75931c7.md) | 68 | `declaration-track:0db05cdfcfec934da75931c722d688fde449f467c1069ab33d001cfcbbca007d` |
| 4 | `def` | [Weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/weird--d9606c20c082a664539dd344.md) | 73 | `declaration-track:d9606c20c082a664539dd344a2cbb6073fd7f56e8513404840a61cd16e81f545` |
| 5 | `def` | [abundancyIndex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundancyindex--46b1a92002cb0951428c9228.md) | 77 | `declaration-track:46b1a92002cb0951428c9228c34d297ea335f774bc49ea7b6a887daafadb61e2` |
| 6 | `theorem` | [not_pseudoperfect_iff_forall](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/not-pseudoperfect-iff-forall--27e63f8d29ec68c3a9838a71.md) | 79 | `result-track:27e63f8d29ec68c3a9838a7152cfd425702f812a132f992a397d182af1dd0e6e` |
| 7 | `theorem` | [not_deficient_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/not-deficient-zero--2e46cc442a434a5eb1c3b301.md) | 83 | `result-track:2e46cc442a434a5eb1c3b301a6ebc4e20c5e8e4493e4f55781c6d16981cc6cc5` |
| 8 | `theorem` | [deficient_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-one--28dcb2182fa38e6a6e344584.md) | 86 | `result-track:28dcb2182fa38e6a6e3445848e1143b096e0d85e6347652af75cfecacff9eeff` |
| 9 | `theorem` | [deficient_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-two--3e93edd3a849645d8c23a36a.md) | 89 | `result-track:3e93edd3a849645d8c23a36ac2851351dbfafe4de24f62b1c28a0a464b64967d` |
| 10 | `theorem` | [deficient_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-three--341a281f60e83b3ce62c57b2.md) | 92 | `result-track:341a281f60e83b3ce62c57b2ef066078fb730cd4875c2bed1ca66f4e0eef630e` |
| 11 | `theorem` | [not_abundant_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/not-abundant-zero--5562af96f3f506e11f9fd2e0.md) | 95 | `result-track:5562af96f3f506e11f9fd2e04025c2e1293b540fe3032a6a26bf9610d4879566` |
| 12 | `theorem` | [abundant_twelve](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-twelve--091bd7ea90b5c69146ddd2e1.md) | 98 | `result-track:091bd7ea90b5c69146ddd2e14c8b6da6ca3f950be4f88eaa37f2ada6ecf8a8d2` |
| 13 | `theorem` | [not_weird_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/not-weird-zero--dbf96ce5cceb904286d6ea69.md) | 101 | `result-track:dbf96ce5cceb904286d6ea693b1870e71bfcb7cc6c2e0a41f6410e26219f6997` |
| 14 | `theorem` | [weird_seventy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/weird-seventy--95bf6984df5c17a48bc8141b.md) | 104 | `result-track:95bf6984df5c17a48bc8141bdd4c81ba2c899f4874a3bb515c1117560dfc656e` |
| 15 | `lemma` | [Deficient.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-pos--de130b66706222782274d2b7.md) | 107 | `result-track:de130b66706222782274d2b75f34fe464dec169e0d16323381f0ddb7da7cb33d` |
| 16 | `lemma` | [Abundant.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-pos--7dd82c6671af3945aa5eef03.md) | 110 | `result-track:7dd82c6671af3945aa5eef035062f00846b02edbbf2b2391093ae0d78c314c8a` |
| 17 | `lemma` | [Weird.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/weird-pos--654751dd87a4263334694449.md) | 113 | `result-track:654751dd87a4263334694449a6fb548dc929e6b4b5f336452b9d9940f0e49413` |
| 18 | `lemma` | [deficient_iff_not_abundant_and_not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-iff-not-abundant-and-not-perfect--5bf2f41db23442c3ad6d30a5.md) | 116 | `result-track:5bf2f41db23442c3ad6d30a50c9c98320958f6aa7d5eb3989e70822ca6b187ed` |
| 19 | `lemma` | [perfect_iff_not_abundant_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/perfect-iff-not-abundant-and-not-deficient--7a93407cfa87453b65921492.md) | 120 | `result-track:7a93407cfa87453b65921492aa89248e4b25c56f69fe81b54f41c98960c3fb82` |
| 20 | `lemma` | [abundant_iff_not_perfect_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-iff-not-perfect-and-not-deficient--62048c8f13a974bd0a689dc0.md) | 124 | `result-track:62048c8f13a974bd0a689dc0adbb7e6ca04ffd7dd477ad51609e86bec3de4ed8` |
| 21 | `theorem` | [deficient_or_perfect_or_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/deficient-or-perfect-or-abundant--47d8f24925bee451b23d5d0a.md) | 129 | `result-track:47d8f24925bee451b23d5d0a5e56b05c017f3ba9c4fe024ace7c5d64d85fd7c7` |
| 22 | `theorem` | [Perfect.pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/perfect-pseudoperfect--4acc0ffcf35b14aa34ba0220.md) | 133 | `result-track:4acc0ffcf35b14aa34ba02207ee53c20136b7b66618c030d5bfcc6dac935dad7` |
| 23 | `theorem` | [Prime.not_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-not-abundant--1c0001467ce01d834eedee63.md) | 136 | `result-track:1c0001467ce01d834eedee639e5645f99ae837c3f97189f8914a5e2d5e98313c` |
| 24 | `theorem` | [Prime.not_weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-not-weird--de9d681eafc6c3410f5bbe79.md) | 139 | `result-track:de9d681eafc6c3410f5bbe79b0f9bc65ad5e15f4bf6805d288c3bca35d640c53` |
| 25 | `theorem` | [Prime.not_pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-not-pseudoperfect--c8fd7396db96716470d1a8a1.md) | 142 | `result-track:c8fd7396db96716470d1a8a18ccb08e4bc55d987cc9841f8b28f38f4f949f52d` |
| 26 | `theorem` | [Prime.not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-not-perfect--15d3b6bc6451f00d6288adf7.md) | 148 | `result-track:15d3b6bc6451f00d6288adf77bcd89dbd7f709d9db2e0ace41bb41a13d02f06f` |
| 27 | `theorem` | [Prime.deficient_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-deficient-pow--237cb8d9ec6e4bac3a70890d.md) | 152 | `result-track:237cb8d9ec6e4bac3a70890da5e0c2aca113f01efe35868f209c6c0441186911` |
| 28 | `theorem` | [_root_.IsPrimePow.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/root-isprimepow-deficient--db98bb6b5c87db373da8276e.md) | 163 | `result-track:db98bb6b5c87db373da8276e935a74dd0901a74dfd437cf2d01d4574bec749a9` |
| 29 | `theorem` | [Prime.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/prime-deficient--ed59842ae4e017690ddbbb90.md) | 167 | `result-track:ed59842ae4e017690ddbbb904edc96f5d1a03ee57dcf6ad3aa0026bf2aa235fb` |
| 30 | `theorem` | [infinite_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/infinite-deficient--fd3622be576ba380d1effbf6.md) | 171 | `result-track:fd3622be576ba380d1effbf6486af96569fa3765e5ed1b548d3156e9e6b65b97` |
| 31 | `theorem` | [infinite_even_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/infinite-even-deficient--9c52cd068a19180e6af8211b.md) | 177 | `result-track:9c52cd068a19180e6af8211bee59349b6b17d2f453d93003ba3c8192edefa8bc` |
| 32 | `theorem` | [infinite_odd_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/infinite-odd-deficient--d1710f916a0a436e8e29bb7c.md) | 187 | `result-track:d1710f916a0a436e8e29bb7ccb8d7fdb82086037b05a3c9b150adbec6852de7d` |
| 33 | `theorem` | [abundant_iff_sum_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-iff-sum-divisors--feecb45a82feabfd12f5aa78.md) | 194 | `result-track:feecb45a82feabfd12f5aa78507d8f0102ae6e5c34ff01ced2652eb0ee744eeb` |
| 34 | `theorem` | [abundant_iff_two_lt_abundancyIndex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-iff-two-lt-abundancyindex--234d2dab915702a6e71aca62.md) | 197 | `result-track:234d2dab915702a6e71aca6245dbca73eea233a5e716ccfa7b0283811095af03` |
| 35 | `theorem` | [abundancyIndex_le_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundancyindex-le-of-dvd--99c2caaa3e2a5532b974baa2.md) | 203 | `result-track:99c2caaa3e2a5532b974baa27d549787635650aada1a366588c5af428bcd9f21` |
| 36 | `theorem` | [Abundant.of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-of-dvd--de594088369d2a0a2123ebc3.md) | 213 | `result-track:de594088369d2a0a2123ebc372d006101b64dce118e5ddf34d8f3b2fbae8f9dd` |
| 37 | `theorem` | [Abundant.mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/abundant-mul-left--da3d73c4850615419a774df8.md) | 217 | `result-track:da3d73c4850615419a774df87d0e2dc181f0b4f8fb2dd7b0ec1620c75f62e487` |
| 38 | `theorem` | [infinite_even_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/infinite-even-abundant--c4bcd7b5ade0c3430243e544.md) | 222 | `result-track:c4bcd7b5ade0c3430243e5446b42096f3c55356c836c57ae78639d52725140a9` |
| 39 | `theorem` | [infinite_odd_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant2a687df21b53a8e043cc64df0c427d6769f172f1fa3f0023233c9671a30bf7c9.lean/declarations/infinite-odd-abundant--c3df406a745919cfcbe76f39.md) | 229 | `result-track:c3df406a745919cfcbe76f39a361e19923f5e84dcbf02dbccc365210aacdc859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
