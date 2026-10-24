# Verification target: GRWTSK.Algebra.Basic.Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bebd7790e9c825573e9fa1eb1f97034061db954",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bebd7790e9c825573e9fa1eb1f97034061db954`.

Source path: `GRWTSK/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean.json)

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
| 1 | `def` | [ringKrullDim](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim--7cc8c129b3584da807fc27ce.md) | 37 | `declaration-track:7cc8c129b3584da807fc27cea1c70948372f01c089989563917ab759bacc7085` |
| 2 | `abbrev` | [Ring.KrullDimLE](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle--e5dd868240a0f0749ac6d7e3.md) | 41 | `declaration-track:e5dd868240a0f0749ac6d7e3995c75d35c9f76dfb9033c72707d06d1fd91a081` |
| 3 | `lemma` | [Ring.krullDimLE_iff](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-iff--6509ad6518b35dc9b09667d5.md) | 46 | `result-track:6509ad6518b35dc9b09667d51db4dd2ec1376f90253c915f20996a38b26e8591` |
| 4 | `lemma` | [ringKrullDim_eq_bot_iff_subsingleton](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-eq-bot-iff-subsingleton--fefd57526c325b5e8ad8ed86.md) | 49 | `result-track:fefd57526c325b5e8ad8ed867b7e613e68ca97e24cc6aaa2f07e847b1c02be5c` |
| 5 | `lemma` | [ringKrullDim_eq_bot_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-eq-bot-of-subsingleton--2954ab37f378199627b8e8d2.md) | 55 | `result-track:2954ab37f378199627b8e8d2ea790fd085876fd326934f98e4848ab31c8508a2` |
| 6 | `lemma` | [zero_le_ringKrullDim_iff_nontrivial](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/zero-le-ringkrulldim-iff-nontrivial--a92b6638994626eff3abbf14.md) | 58 | `result-track:a92b6638994626eff3abbf14517538f3df6b9465f772d12f37af4a4e78ce960b` |
| 7 | `lemma` | [ringKrullDim_nonneg_of_nontrivial](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-nonneg-of-nontrivial--597bab723660fa4d74225396.md) | 62 | `result-track:597bab723660fa4d74225396fa968224ed3ed4c1d1342f51befc1f00c8ff8892` |
| 8 | `theorem` | [ringKrullDim_le_of_surjective](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-le-of-surjective--615b439c3132e6319fc6877e.md) | 66 | `result-track:615b439c3132e6319fc6877ea1d2383e8b72564d7bbdd0987a0239b0c89e302a` |
| 9 | `theorem` | [ringKrullDim_quotient_le](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-quotient-le--e0b403da6a1681653d22d0ee.md) | 74 | `result-track:e0b403da6a1681653d22d0eed4a1e08a7618963207267a67bf0d5ecc6bbdfc43` |
| 10 | `theorem` | [ringKrullDim_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-eq-of-ringequiv--bd27722a659e29f041b50f62.md) | 79 | `result-track:bd27722a659e29f041b50f62d87692d104eb665919d5fa28a702c076b30a85a1` |
| 11 | `abbrev` | [FiniteRingKrullDim](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/finiteringkrulldim--0feff8b19522601812ca63ae.md) | 88 | `declaration-track:0feff8b19522601812ca63aee088b791e681adb20c1aeea5e22dd6361def94cd` |
| 12 | `lemma` | [ringKrullDim_ne_top](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-ne-top--e6684a0cd11c199376b14934.md) | 91 | `result-track:e6684a0cd11c199376b149341af11ffe0cfd25b36108222ccbafdd970dfb2375` |
| 13 | `lemma` | [ringKrullDim_lt_top](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-lt-top--11cb6a5175fb1c768b6f6db1.md) | 94 | `result-track:11cb6a5175fb1c768b6f6db10797c67f35d38a874bd7cb95947f798c437269c4` |
| 14 | `lemma` | [ringKrullDim_ne_bot](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ringkrulldim-ne-bot--39d000d8acede0156b80bee0.md) | 97 | `result-track:39d000d8acede0156b80bee096bb3a6d515ca3874170e705dd88c3b50b89ea47` |
| 15 | `lemma` | [finiteRingKrullDim_iff_ne_bot_and_top](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/finiteringkrulldim-iff-ne-bot-and-top--6b87c976ea24174de33bed13.md) | 100 | `result-track:6b87c976ea24174de33bed139ff1b87bf9b31384c4153a013045ecf44e3fe4d7` |
| 16 | `lemma` | [Nontrivial.of_finiteRingKrullDim](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/nontrivial-of-finiteringkrulldim--944a8433c5184d9c275390a0.md) | 104 | `result-track:944a8433c5184d9c275390a0a33529b9e7a1e00a4806982544ee89b947df5d76` |
| 17 | `lemma` | [Ring.krullDimLE_zero_iff](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-zero-iff--930c4b686cda0369eee12e9e.md) | 112 | `result-track:930c4b686cda0369eee12e9ed670502f61c00e12290f79b75786f48223d344b2` |
| 18 | `theorem` | [Ring.krullDimLE_zero_iff_forall_minimalPrimes_isMaximal](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-zero-iff-forall-minimalprimes-ismaximal--5a252334fea3b79582d20c99.md) | 119 | `result-track:5a252334fea3b79582d20c99f6963eac0390e3a5908b1e26cbe67435afb11125` |
| 19 | `lemma` | [Ring.KrullDimLE.mk₀](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-mk--8a0407bb4322bdfe20202310.md) | 125 | `result-track:8a0407bb4322bdfe2020231042b8762bb0bd4e1c0cf268a8a5f5d17177793deb` |
| 20 | `lemma` | [Ideal.isMaximal_of_isPrime](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-ismaximal-of-isprime--02982948b6233601a7d7fdc7.md) | 128 | `result-track:02982948b6233601a7d7fdc700758bb1f931660ef71688131518910323115702` |
| 21 | `lemma` | [Ideal.IsPrime.isMaximal'](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-isprime-ismaximal--26c7a6bc68a35aef9a7d7d3d.md) | 132 | `result-track:26c7a6bc68a35aef9a7d7d3dbdb7eea688c7843e64cb6f147218a85e1929e890` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/instance--82d9e04d569826f1bfeb6215.md) | 135 | `declaration-track:82d9e04d569826f1bfeb6215523fcc7e49c63739f03cddd7ceebd38a76727e2e` |
| 23 | `lemma` | [Ideal.isMaximal_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-ismaximal-iff-isprime--fe2b38b6c22913ecf61593dd.md) | 138 | `result-track:fe2b38b6c22913ecf61593dd012ee83643d2b49a8a73f9b0029b543200c30ba4` |
| 24 | `lemma` | [Ideal.mem_minimalPrimes_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-mem-minimalprimes-of-krulldimle-zero--301bf22293990e0daf997182.md) | 141 | `result-track:301bf22293990e0daf997182d2a59168736a1eacc84a8f6ee3c217df6511a7e9` |
| 25 | `lemma` | [Ideal.mem_minimalPrimes_iff_isPrime](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-mem-minimalprimes-iff-isprime--f94ed63f4fe1e68f7ab7295b.md) | 146 | `result-track:f94ed63f4fe1e68f7ab7295b8407c22e6764d708f6138ed2a8ad9fb5c9884fd3` |
| 26 | `theorem` | [nilradical_le_jacobson](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/nilradical-le-jacobson--56948dc06d8f8f911ada9283.md) | 150 | `result-track:56948dc06d8f8f911ada92832732ad3aa50cbbc3654ba2acedfb557068bccb35` |
| 27 | `theorem` | [Ring.jacobson_eq_nilradical_of_krullDimLE_zero](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-jacobson-eq-nilradical-of-krulldimle-zero--85d52d3431e317df40a4cf7f.md) | 153 | `result-track:85d52d3431e317df40a4cf7f1f4f4a447cbea1a3032015ee8956c3f7f1eced79` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/instance--bcc6bdace63a6cc3bd77fe1d.md) | 162 | `declaration-track:bcc6bdace63a6cc3bd77fe1dc8f18d6aab34c4c6b3f1506ed849f6f6c2988c71` |
| 29 | `lemma` | [Ring.krullDimLE_one_iff](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-one-iff--7518b0eb4850502cce7aab7f.md) | 164 | `result-track:7518b0eb4850502cce7aab7fa1adaaa9b13e569a66415dc683c876e7f655d156` |
| 30 | `lemma` | [Ring.KrullDimLE.mk₁](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-mk--c8678c6e48b7b79c6835c667.md) | 171 | `result-track:c8678c6e48b7b79c6835c6672b87fd3d1b695d229cc8c7dec431bf227345b71e` |
| 31 | `lemma` | [Ring.krullDimLE_one_iff_of_isPrime_bot](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-one-iff-of-isprime-bot--53ca67e9e4a8adf7cebab7ec.md) | 175 | `result-track:53ca67e9e4a8adf7cebab7ec304446fa6a53c5e2dfb01d2463551c597d0c047a` |
| 32 | `lemma` | [Ring.krullDimLE_one_iff_of_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-one-iff-of-nozerodivisors--ca54eb0975b62641306fce29.md) | 184 | `result-track:ca54eb0975b62641306fce296f3d81ae73e33a6648ee976d7e67fdea3d5b72df` |
| 33 | `lemma` | [Ideal.IsPrime.isMaximal_of_ne_bot](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-isprime-ismaximal-of-ne-bot--e611588935082d1e8c225de2.md) | 190 | `result-track:e611588935082d1e8c225de22168b25127a6a77903e4dae0b7b0ce4aa3f0dca1` |
| 34 | `lemma` | [Ideal.isMaximal_of_isPrime_of_ne_bot](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-ismaximal-of-isprime-of-ne-bot--83db1c53b882bbfebe8acf7c.md) | 195 | `result-track:83db1c53b882bbfebe8acf7c7ed7e6559fb0b0f94cbde2a401ddb6faaf7347a5` |
| 35 | `lemma` | [Ring.KrullDimLE.mk₁'](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ring-krulldimle-mk--d588b77950cc5dd7ff6c1c19.md) | 201 | `result-track:d588b77950cc5dd7ff6c1c1963ab371cf1df6bfc64b147fd02abbc5892ef30d4` |
| 36 | `lemma` | [Prime.isMaximal_span_singleton](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/prime-ismaximal-span-singleton--aaf7bc3d72ef1c8da329f07e.md) | 208 | `result-track:aaf7bc3d72ef1c8da329f07e83868cfaf469b62cf54dbf3326f520066808b02c` |
| 37 | `lemma` | [Ideal.liesOver_span_iff](../../../../mathematics/Algebra/Basic/Variant8a521a11326847f05a398675c2262362c3c538024c192f75a10d07c5881abaee.lean/declarations/ideal-liesover-span-iff--84132c398670707408cdfc1f.md) | 212 | `result-track:84132c398670707408cdfc1fc3c6e2c991b1e745d683c82d10440987473a6293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
