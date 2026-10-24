# Verification target: GRWTSK.Algebra.LinearAlgebra.PrincipalIdealDomain.Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b6faec08b7cdb6943889243bb06324001f23bb",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b6faec08b7cdb6943889243bb06324001f23bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Submodule.IsPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/submodule-isprincipal--14c2e01cbba3a3876b4950de.md) | 60 | `declaration-track:14c2e01cbba3a3876b4950deef9d8de8be8964443aaf45b06ab6e6fd96c9bed2` |
| 2 | `theorem` | [Submodule.IsPrincipal.principal](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/submodule-isprincipal-principal--54f290b5ba7fb4551cd3dd68.md) | 64 | `result-track:54f290b5ba7fb4551cd3dd685fe010ae501c47037a575e169a07acef1bf9b512` |
| 3 | `instance` | [bot_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/bot-isprincipal--7fba03bea0171402c55a3620.md) | 69 | `declaration-track:7fba03bea0171402c55a3620acd77fd15c257814fbe4d4c6d057c1b170bf8b22` |
| 4 | `instance` | [top_isPrincipal](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/top-isprincipal--ed720113840d9fc9f23b3317.md) | 73 | `declaration-track:ed720113840d9fc9f23b3317c47d821f5c12389bd4952d6c663771075f5c1680` |
| 5 | `class` | [IsPrincipalIdealRing](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/isprincipalidealring--d24eefd2f3e6ecb2a1df7d2f.md) | 81 | `declaration-track:d24eefd2f3e6ecb2a1df7d2ffc19984fa46d2718273b8e8fa3ad541e0548ef45` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/instance--75bd7b9e0b26c1dad9f650e2.md) | 87 | `declaration-track:75bd7b9e0b26c1dad9f650e2b2ce5a7ac55a3645c6a680762ebf5972e0c9ec15` |
| 7 | `def` | [generator](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/generator--5b2ab3eb443d3b5f650a4d24.md) | 106 | `declaration-track:5b2ab3eb443d3b5f650a4d2477322db2b53e1a897b595eaac7b73e1d697ea1f8` |
| 8 | `theorem` | [span_singleton_generator](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/span-singleton-generator--8534112527ca4482dfa33487.md) | 110 | `result-track:8534112527ca4482dfa334876f03bfdc74ca7ff36d438fdac138ade244ab08d7` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsPrincipal.Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.Ideal.span_singleton_generator](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/root-grwtsk-algebra-linearalgebra-submoduleisprincipal-variant34fe13418b--30f401e58a87b71680bd6749.md) | 114 | `result-track:30f401e58a87b71680bd6749cd0f8de0b7ac88f410ff56d6c011ada6b6e05b17` |
| 10 | `theorem` | [generator_mem](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/generator-mem--0596cbbfead5c7f4bcd6ada7.md) | 120 | `result-track:0596cbbfead5c7f4bcd6ada70170c9b33239de129aa1845f29f65f166e644746` |
| 11 | `theorem` | [mem_iff_eq_smul_generator](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/mem-iff-eq-smul-generator--e74ee32ac534847857dc6da0.md) | 125 | `result-track:e74ee32ac534847857dc6da0004fa8c0a72a27958e83e60f2b6f0e766c806a02` |
| 12 | `theorem` | [eq_bot_iff_generator_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/eq-bot-iff-generator-eq-zero--d5e064d65f4e1b8ecf82b35d.md) | 130 | `result-track:d5e064d65f4e1b8ecf82b35d48ec7f1321f3ed2c82fe500f8b06d5dda614ae20` |
| 13 | `theorem` | [mem_iff_generator_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/mem-iff-generator-dvd--49796d2667c50f18b4d4e31a.md) | 140 | `result-track:49796d2667c50f18b4d4e31a06b01506d8afb8366f4731e47106d16559bd4e5a` |
| 14 | `theorem` | [prime_generator_of_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/prime-generator-of-isprime--ec82c55bb674b0fbfab558d1.md) | 144 | `result-track:ec82c55bb674b0fbfab558d1b6b0c4c21d12072032c86d4b5b6ad0c5461268d6` |
| 15 | `theorem` | [generator_map_dvd_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/generator-map-dvd-of-mem--21009746926a31b88b1e8eb0.md) | 152 | `result-track:21009746926a31b88b1e8eb0716e89284e32544583c2abce864379ee253396de` |
| 16 | `theorem` | [generator_submoduleImage_dvd_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/generator-submoduleimage-dvd-of-mem--7e1d9010fc583db633cc1742.md) | 159 | `result-track:7e1d9010fc583db633cc1742570eca6ac88db9a7449b656e7b1f3481e17fe729` |
| 17 | `theorem` | [to_maximal_ideal](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/to-maximal-ideal--9f8c539bb512eb4a70aa01ec.md) | 178 | `result-track:9f8c539bb512eb4a70aa01ec86310693bb8c4cc6d73ef7af8441f4a06b542392` |
| 18 | `theorem` | [mod_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/mod-mem-iff--705b3c4f99874077ccfc48e3.md) | 204 | `result-track:705b3c4f99874077ccfc48e373bfe37366266fd3affbe8b85e7669e002709f4a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/instance--3d4d0c3b97a61005d5a7e503.md) | 210 | `declaration-track:3d4d0c3b97a61005d5a7e5032bcd0159800f3b1a742e10740e313971f34cc647` |
| 20 | `theorem` | [IsField.isPrincipalIdealRing](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/isfield-isprincipalidealring--f3215e84e06d097fe6ee0a62.md) | 239 | `result-track:f3215e84e06d097fe6ee0a62288ff998d82db3fc77e2db79cb79e657112a1ca4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/instance--66186b6d6374417c2cab9b75.md) | 249 | `declaration-track:66186b6d6374417c2cab9b756f621973d28c06757173891febc1cdd5c3749464` |
| 22 | `theorem` | [isMaximal_of_irreducible](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/ismaximal-of-irreducible--8015db6204a2a5b1dfffdc54.md) | 258 | `result-track:8015db6204a2a5b1dfffdc541a6a0edd456c3a7a32725b74bf8b09af04fbce2e` |
| 23 | `theorem` | [irreducible_iff_prime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/irreducible-iff-prime--510cc8a8b1c8ae43e3af2166.md) | 270 | `result-track:510cc8a8b1c8ae43e3af216674bf6a17dce4fa4833509728937ff9760a63eb0b` |
| 24 | `theorem` | [associates_irreducible_iff_prime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/associates-irreducible-iff-prime--22b78ae3296c0d62f8a6e156.md) | 275 | `result-track:22b78ae3296c0d62f8a6e1565ed39acd89ecd94716fd479332e7232f56939369` |
| 25 | `def` | [factors](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/factors--12c17ab670d13b0939ef5e04.md) | 284 | `declaration-track:12c17ab670d13b0939ef5e041a0c4a0bb81dfe53743919045e3ff79f1e66f507` |
| 26 | `theorem` | [factors_spec](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/factors-spec--ff4846a65e299fe6c9eec93e.md) | 288 | `result-track:ff4846a65e299fe6c9eec93e7c9d379fd32480d2a7c0a818a130e1f79750bcf5` |
| 27 | `theorem` | [ne_zero_of_mem_factors](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/ne-zero-of-mem-factors--e7e5c7d4fb36b1abc350253d.md) | 294 | `result-track:e7e5c7d4fb36b1abc350253dab30515edcfe6ddc56daf6b98e23a8d4f5f7ebdf` |
| 28 | `theorem` | [mem_submonoid_of_factors_subset_of_units_subset](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/mem-submonoid-of-factors-subset-of-units-subset--fb3d175f71ff760a0e7067b2.md) | 299 | `result-track:fb3d175f71ff760a0e7067b2df34a1edc1be14c0a680fe54d101be2341ebeed1` |
| 29 | `theorem` | [ringHom_mem_submonoid_of_factors_subset_of_units_subset](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/ringhom-mem-submonoid-of-factors-subset-of-units-subset--c80be9fa7e82840dd73e7975.md) | 308 | `result-track:c80be9fa7e82840dd73e79750f656da0aa763bbb6d9da1a3be46b3ef197bea48` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/instance--1ee58e745fe0d710b0f5d80e.md) | 316 | `declaration-track:1ee58e745fe0d710b0f5d80e84fc86c084df739b53c1229edde05f4d2dfe0c7f` |
| 31 | `theorem` | [Submodule.IsPrincipal.of_comap](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/submodule-isprincipal-of-comap--c74e67c99f6cf0e92b494612.md) | 333 | `result-track:c74e67c99f6cf0e92b494612e1dfb9e1fd4a9fddcbcc4d7f18d65fb16375b788` |
| 32 | `theorem` | [Ideal.IsPrincipal.of_comap](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/ideal-isprincipal-of-comap--19a95a5ff5249b5f412300e3.md) | 340 | `result-track:19a95a5ff5249b5f412300e35d71f98d2f42f5eb6b8da22b70acfa5917e475fc` |
| 33 | `theorem` | [IsPrincipalIdealRing.of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/isprincipalidealring-of-surjective--6a8c7dff7f4e09778fb5137d.md) | 348 | `result-track:6a8c7dff7f4e09778fb5137dad41a85ed4152dc7d3d50bcddbd403aa52476ebe` |
| 34 | `theorem` | [span_gcd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/span-gcd--1a2db308720adab06c56f2b0.md) | 361 | `result-track:1a2db308720adab06c56f2b08795a37159fd66e080923096e994cfd9d262e8e4` |
| 35 | `theorem` | [gcd_dvd_iff_exists](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/gcd-dvd-iff-exists--be2c19c10050c12a8f6037b9.md) | 382 | `result-track:be2c19c10050c12a8f6037b935a51c25a03f7f4ad4aa5a979c7fc9c4638fc008` |
| 36 | `theorem` | [exists_gcd_eq_mul_add_mul](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/exists-gcd-eq-mul-add-mul--8a3f717102f332d2581f53fc.md) | 388 | `result-track:8a3f717102f332d2581f53fc6b010307ab77f7360f4aa296022db0273f39674c` |
| 37 | `theorem` | [gcd_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/gcd-isunit-iff--ea70463f7d4fc67f0785f580.md) | 392 | `result-track:ea70463f7d4fc67f0785f580b3e5daca4b63fb380405bc3c63a510c85c26ada4` |
| 38 | `theorem` | [isCoprime_of_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/iscoprime-of-dvd--5b05054ed5174dcb1e447598.md) | 397 | `result-track:5b05054ed5174dcb1e447598288a087c56e8d1fa510ae986aa36f4f53e57c5f3` |
| 39 | `theorem` | [dvd_or_coprime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/dvd-or-coprime--c717346ce8c647bb2afd990b.md) | 406 | `result-track:c717346ce8c647bb2afd990be53c23b730388724a473414110ebdb3bf91825a9` |
| 40 | `theorem` | [isCoprime_of_irreducible_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/iscoprime-of-irreducible-dvd--92dbfdf36b31a593a0b9edc5.md) | 416 | `result-track:92dbfdf36b31a593a0b9edc59d4bde5c0ccb31aaf73cea5922fc64a53da21577` |
| 41 | `theorem` | [isCoprime_of_prime_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/iscoprime-of-prime-dvd--8231fa1fba0b930eef79bb80.md) | 426 | `result-track:8231fa1fba0b930eef79bb80685b7408c6f42c7047455d0e66ce8d0b579ac719` |
| 42 | `theorem` | [Irreducible.coprime_iff_not_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/irreducible-coprime-iff-not-dvd--10d13ea214fc82b47ea9a7e7.md) | 431 | `result-track:10d13ea214fc82b47ea9a7e701e05f9687b1fd1ca0895aa4fed30bbd9c226a07` |
| 43 | `theorem` | [Prime.coprime_iff_not_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/prime-coprime-iff-not-dvd--234cb87d36e6d52d146bb11a.md) | 448 | `result-track:234cb87d36e6d52d146bb11a7ca13a7385756d848486444890421db9dd37a238` |
| 44 | `theorem` | [Irreducible.dvd_iff_not_coprime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/irreducible-dvd-iff-not-coprime--2b7f36b843b2a1c888dcbce9.md) | 452 | `result-track:2b7f36b843b2a1c888dcbce95cd7e04df1a375111ae116eac8511a653fdb8ff2` |
| 45 | `theorem` | [Irreducible.coprime_pow_of_not_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/irreducible-coprime-pow-of-not-dvd--9a51f84e54f1528bdb2fe4c8.md) | 456 | `result-track:9a51f84e54f1528bdb2fe4c871b041b29543e9fab20ceb8381fd93bd29407646` |
| 46 | `theorem` | [Irreducible.coprime_or_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/irreducible-coprime-or-dvd--8ba60918a84fb281ea53e3f4.md) | 461 | `result-track:8ba60918a84fb281ea53e3f42300f36eaf45548a81d82f00f8776d7f1b263de5` |
| 47 | `theorem` | [exists_associated_pow_of_mul_eq_pow'](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/exists-associated-pow-of-mul-eq-pow--417b3a8546ff5451461a62b1.md) | 465 | `result-track:417b3a8546ff5451461a62b12af1148daf82d8fb6ceccd85b29bb48f545b5636` |
| 48 | `def` | [nonPrincipals](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/nonprincipals--c4d4269152d89ccb99febaa2.md) | 479 | `declaration-track:c4d4269152d89ccb99febaa2f35de7303a202d74e3ec1520b54eda99ee27cb03` |
| 49 | `theorem` | [nonPrincipals_def](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/nonprincipals-def--39e858ac045e82d0762a973a.md) | 483 | `result-track:39e858ac045e82d0762a973ac62e2ef838f24ed45ae1651b65834e2b7520a0fd` |
| 50 | `theorem` | [nonPrincipals_eq_empty_iff](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/nonprincipals-eq-empty-iff--2dad31e90988d1776eb40c1a.md) | 489 | `result-track:2dad31e90988d1776eb40c1ab922730543e70d3a57b52e6501301c2e9a7f133d` |
| 51 | `theorem` | [nonPrincipals_zorn](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/nonprincipals-zorn--2e1a930a713cef4bc22104ef.md) | 496 | `result-track:2e1a930a713cef4bc22104ef4c726e0d258c776a2a799a6ccfc9e301321946e2` |
| 52 | `theorem` | [IsPrincipalIdealRing.of_prime](../../../../../mathematics/Algebra/LinearAlgebra/PrincipalIdealDomain/Varianta8cea27ab716361a3757baa5f05e6e6b3a2bce95ee959896248bb9c37056fdb2.lean/declarations/isprincipalidealring-of-prime--91eddee204773f9ea4115a5c.md) | 510 | `result-track:91eddee204773f9ea4115a5c91960e1413759e113dab9d8320fdc0c0e5007c43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
