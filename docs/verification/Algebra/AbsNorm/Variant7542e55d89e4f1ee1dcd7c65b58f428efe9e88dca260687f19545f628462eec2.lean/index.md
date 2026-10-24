# Verification target: GRWTSK.Algebra.AbsNorm.Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cf86c846e82d6163a654a3f42d383163d0372b4",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cf86c846e82d6163a654a3f42d383163d0372b4`.

Source path: `GRWTSK/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.CardQuotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basis` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicative` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot--62e2300daf9d4d6bb46279cc.md) | 61 | `declaration-track:62e2300daf9d4d6bb46279cc1a2dfb527799457fa7ed91f505ffaf0856ced185` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-apply--c4665cb99c6382d8a5171d44.md) | 64 | `result-track:c4665cb99c6382d8a5171d4458b97c6111f8f073101196de4415aaa8ab2842ff` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-bot--fadc326233f959d1ac4c1956.md) | 70 | `result-track:fadc326233f959d1ac4c1956215423992f6ff4c1f9b5185af574d9afae70edcb` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-top--dcda84610ce52b05c36058de.md) | 74 | `result-track:dcda84610ce52b05c36058defefd5d3eca1cbf9a32d0984f024f7597df3387dd` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-eq-one-iff--ea7269e957cd9167f1616038.md) | 80 | `result-track:ea7269e957cd9167f1616038133a398de9ac7e03ae4c1e170fbc2aca32b0f0dc` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-mul-of-coprime--810565b24a876c581a2add2d.md) | 96 | `result-track:810565b24a876c581a2add2d5d2011c06a03826fc848b9ba5e59e9b3d23d2807` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/ideal-mul-add-mem-pow-succ-inj--750c251c85a231088d7edeb1.md) | 105 | `result-track:750c251c85a231088d7edeb1e4ca9ce436c255003976f597991213a44f8791c7` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/ideal-exists-mul-add-mem-pow-succ--790528008732b6a73d22edf4.md) | 121 | `result-track:790528008732b6a73d22edf47292db4ed9acc1c76b3d9e34458a8374ca46882b` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/ideal-mem-prime-of-mul-mem-pow--57d440272fe17202d4268b3a.md) | 136 | `result-track:57d440272fe17202d4268b3a25124fb290b14e3da93632be5e6dbf31d67cb93e` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/ideal-mul-add-mem-pow-succ-unique--bb62cfec64b1fc9a3a000e27.md) | 145 | `result-track:bb62cfec64b1fc9a3a000e277cb5384159d7680952a66beda4f810751abce981` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-pow-of-prime--5b328cbaeb01ae3f2fcca0f9.md) | 155 | `result-track:5b328cbaeb01ae3f2fcca0f9ffffb078464269353d7f66df2dc19610e349d142` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/cardquot-mul--4816624b5c55c9fd9432ce6d.md) | 190 | `result-track:4816624b5c55c9fd9432ce6d0b6e9a4e0870ae2f2ccb67c8a52a82b366c3a569` |
| 13 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/ideal-absnorm--b38a64a9aea7e71aa8812461.md) | 204 | `declaration-track:b38a64a9aea7e71aa88124613b97e8adfdf9398dcad13341b1b0e7a7e60387cc` |
| 14 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-apply--20cd39d0010a624f268733c6.md) | 217 | `result-track:20cd39d0010a624f268733c6c00a1e68884a410da1e56fa6a19aeb1d2ae87492` |
| 15 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-bot--cfa0f57ffc7b73fae3a14f5b.md) | 220 | `result-track:cfa0f57ffc7b73fae3a14f5b6c72ad989bd01404dbc5f75ad6e573adbbcab61c` |
| 16 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-top--f58fe7583d48526445e96995.md) | 223 | `result-track:f58fe7583d48526445e9699529546c2e2ef000e3aa0596f5300f33e11e9f22ab` |
| 17 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-eq-one-iff--42e8245914fb613e1c23665a.md) | 226 | `result-track:42e8245914fb613e1c23665a5bf32dfe9ca15d2cbe77dec04cac1b7d0592c7c7` |
| 18 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-ne-zero-iff--0935de63e01c0e948e9f73cc.md) | 229 | `result-track:0935de63e01c0e948e9f73cce6664d9412b55f276a7eaff1cff08a29ce5202e2` |
| 19 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-dvd-absnorm-of-le--8f6ab77df3f84dcd73390f26.md) | 233 | `result-track:8f6ab77df3f84dcd73390f26ba8c7f89867e9010e2eeb51683e3e6d0aa65f2dd` |
| 20 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/irreducible-of-irreducible-absnorm--aae6da6cafeae6b5aad9c6d3.md) | 236 | `result-track:aae6da6cafeae6b5aad9c6d3b4d365dcb483ef13866af50f4535d63b560186d7` |
| 21 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/isprime-of-irreducible-absnorm--4562560a20852e4fa876d10a.md) | 246 | `result-track:4562560a20852e4fa876d10a0893e623f0076cbaa007d87c9cbd82335bb19efd` |
| 22 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/prime-of-irreducible-absnorm-span--432ffdd0515ff246a5a2ed92.md) | 251 | `result-track:432ffdd0515ff246a5a2ed924f83e629af0db537ecbfa81e79d6093f0a8f985d` |
| 23 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-mem--67d54db107e1d09281cdcb72.md) | 255 | `result-track:67d54db107e1d09281cdcb7272fec6fa491b907ed681987524618914a761c558` |
| 24 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/span-singleton-absnorm-le--4e2136ad0765ff90c9c24617.md) | 259 | `result-track:4e2136ad0765ff90c9c246179e1b59684a82b7b930cf51862031a017efdafede` |
| 25 | `theorem` | [span_singleton_absNorm](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/span-singleton-absnorm--090b2b005f6ef016dcaea324.md) | 262 | `result-track:090b2b005f6ef016dcaea324d7f84695f1f374e89bca5497a6681063f97fd6ac` |
| 26 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/natabs-det-equiv--b3dafdcf133fcbd6f01398bb.md) | 279 | `result-track:b3dafdcf133fcbd6f01398bb68793c54fb83565c338e1c114939ab2d794e359b` |
| 27 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/natabs-det-basis-change--a7e2346b082d3ae152b560eb.md) | 295 | `result-track:a7e2346b082d3ae152b560eb5d0af359a563d20476531a868883290b476050dd` |
| 28 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-span-singleton--74b050a6f184a373e096f324.md) | 300 | `result-track:74b050a6f184a373e096f324bde1d11d350710fa4c2114505a126703604b315a` |
| 29 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-dvd-norm-of-mem--4dd44da4e03de1006e4effcf.md) | 313 | `result-track:4dd44da4e03de1006e4effcfece2fbd67144c9abc6232885a02976a4d89c38a0` |
| 30 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-span-insert--5b957b59ec175e89fbd13ad4.md) | 319 | `result-track:5b957b59ec175e89fbd13ad42ebbd2f3255220f9747458d5f1a6935c6d977dea` |
| 31 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-eq-zero-iff--6bdba1f607ff2a6c88a066ca.md) | 327 | `result-track:6bdba1f607ff2a6c88a066ca7405f52c0afd5be83d27db087a8e654a9a5c9c0c` |
| 32 | `theorem` | [absNorm_ne_zero_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-ne-zero-iff-mem-nonzerodivisors--4224f14974445c1d84a85429.md) | 339 | `result-track:4224f14974445c1d84a854299b150109bc2eabc053680c3fead58e79c480581d` |
| 33 | `theorem` | [absNorm_pos_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-pos-iff-mem-nonzerodivisors--653e1f95276652167d7e5101.md) | 343 | `result-track:653e1f95276652167d7e510111a78d4cd024b479a8a5815f257cd7919d1c885f` |
| 34 | `theorem` | [absNorm_ne_zero_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-ne-zero-of-nonzerodivisors--4b7f94b99b8b7b68bf097334.md) | 347 | `result-track:4b7f94b99b8b7b68bf097334c770c25f685b084e1a7e004f0e3af4c196fc0096` |
| 35 | `theorem` | [absNorm_pos_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/absnorm-pos-of-nonzerodivisors--d7bc00e269352de34c6e3bcb.md) | 350 | `result-track:d7bc00e269352de34c6e3bcb0f646485027138e074212651ecf5ea0bece0a888` |
| 36 | `theorem` | [finite_setOf_absNorm_eq](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/finite-setof-absnorm-eq--93be7b68f12ce26d14b8a8c2.md) | 353 | `result-track:93be7b68f12ce26d14b8a8c253e29885651e8e049bd034910ef3b7d4403794d4` |
| 37 | `theorem` | [finite_setOf_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/finite-setof-absnorm-le--0276657fed4994816c7df610.md) | 371 | `result-track:0276657fed4994816c7df61053ad2c6b9f4f5475a9f1a6d25e69f98128646565` |
| 38 | `theorem` | [finite_setOf_absNorm_le₀](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/finite-setof-absnorm-le--e52b63e3b3f0ee3a4d3fdcfb.md) | 377 | `result-track:e52b63e3b3f0ee3a4d3fdcfb4a364d90922d044b83496714402e00b534506414` |
| 39 | `theorem` | [card_norm_le_eq_card_norm_le_add_one](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/card-norm-le-eq-card-norm-le-add-one--0576581b4a73a5039de00da4.md) | 383 | `result-track:0576581b4a73a5039de00da4cc32ac180b1af704a0fe45b0bdbd4b38e4a4d8d6` |
| 40 | `theorem` | [norm_dvd_iff](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/norm-dvd-iff--636d19895a11d2957c58b6c2.md) | 406 | `result-track:636d19895a11d2957c58b6c2aebea3939e22da523e994761f579c016c4331198` |
| 41 | `theorem` | [Int.ideal_span_absNorm_eq_self](../../../../mathematics/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/declarations/int-ideal-span-absnorm-eq-self--0fc1bb5be1433dd727560a40.md) | 422 | `result-track:0fc1bb5be1433dd727560a40da039f3f1855e963bf1385dbe2dce404a81bb700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
