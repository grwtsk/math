# Verification target: GRWTSK.Algebra.Norm.Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c99b49893a1e688ace8d85303eb753632bea5b`.

Source path: `GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.AbsoluteValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Associated` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Determinant` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot--e923c693ce03e12a37e5d161.md) | 65 | `declaration-track:e923c693ce03e12a37e5d161f14658c43003458f876906eb506565920fa0bfb0` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-apply--32c1284d07d5db99d359fac7.md) | 70 | `result-track:32c1284d07d5db99d359fac7fbe56fa426089d8865859076dfc3de9551ec3284` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-bot--4a9d9b4088748b4de89ff0fc.md) | 80 | `result-track:4a9d9b4088748b4de89ff0fca77f4ebc07778ae537114ad852e16b4d00487ced` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-top--753cebaeccec8a897114c0c5.md) | 85 | `result-track:753cebaeccec8a897114c0c5b3a7895c3509955eaeaaed811495471300443899` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-eq-one-iff--0f823c958b96c3fedcf64eb5.md) | 92 | `result-track:0f823c958b96c3fedcf64eb5af98d4a1437369656f7622ed36ba1d0bc3bf6a8c` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-mul-of-coprime--ffc3a7b86722499b14c6fd49.md) | 109 | `result-track:ffc3a7b86722499b14c6fd495f57955362d9ef7895856fd6e27d6dc44b45f92b` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/ideal-mul-add-mem-pow-succ-inj--7d096fca5ae8e4b338885310.md) | 135 | `result-track:7d096fca5ae8e4b338885310ab6449e312992e5efff2f3dd42305dcf9b128396` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/ideal-exists-mul-add-mem-pow-succ--a2e6e7b1246dac552892e38d.md) | 151 | `result-track:a2e6e7b1246dac552892e38d11ddecb2e79f01de2af261c2f1a1f4bd0f24d551` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/ideal-mem-prime-of-mul-mem-pow--57b8c67ed9f68844753b20c2.md) | 166 | `result-track:57b8c67ed9f68844753b20c249bf398d8a0c5547c055db9a60c1f8dc2e6f0a16` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/ideal-mul-add-mem-pow-succ-unique--2849248fb8898948d7876fe3.md) | 176 | `result-track:2849248fb8898948d7876fe3dbaeefde48665a5583569eec618ad3241893adc3` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-pow-of-prime--030ab71810436f7b56e43b94.md) | 186 | `result-track:030ab71810436f7b56e43b946151e19c6ffaff3f66669e9a0310aa18163caec7` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/cardquot-mul--8044a3c78e46ddd03887a7da.md) | 230 | `result-track:8044a3c78e46ddd03887a7da7fd3aeac907ae6b7c448c86f227f2fb2fdb3f954` |
| 13 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/ideal-absnorm--5e018a192b5e69f5efc91f9f.md) | 250 | `declaration-track:5e018a192b5e69f5efc91f9f7d4be3f1e39d106826297a259041a38dc9f8a9e9` |
| 14 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-apply--5bc7c99802825d57bc85115e.md) | 262 | `result-track:5bc7c99802825d57bc85115e8b17dd6a425421ba9573ffa108d5cf6a0b9784c7` |
| 15 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-bot--e5a21a229d5f99bdb25d6db3.md) | 266 | `result-track:e5a21a229d5f99bdb25d6db35eb725ba93e8431e6d472798299025d58278fabe` |
| 16 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-top--a0afb338463a7a912b36512e.md) | 270 | `result-track:a0afb338463a7a912b36512e6e19330373c6d4c129a1d0466b5e37555ee2e4cb` |
| 17 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-eq-one-iff--173534da9b096b2a34657800.md) | 274 | `result-track:173534da9b096b2a34657800fc577a63f541bc4a02c6a15427180b2a2f94f9ef` |
| 18 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-ne-zero-iff--3424b7fb7ca075b82c2d2720.md) | 278 | `result-track:3424b7fb7ca075b82c2d272038ddb3caf93f14e9a10abfeaf0bab84d5b794e3c` |
| 19 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/natabs-det-equiv--8e65e7e17cc8599095958ddc.md) | 286 | `result-track:8e65e7e17cc8599095958ddc8e8c2ab5d8d919472a7c0972381921202e45aadc` |
| 20 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/natabs-det-basis-change--56ea4efe3803d6aaa234ee96.md) | 351 | `result-track:56ea4efe3803d6aaa234ee96e83f6a90ae9c2b940fd14e36a3449ff9c6aa6b6d` |
| 21 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-span-singleton--1f506d2292d48cc1a2b9b2e7.md) | 362 | `result-track:1f506d2292d48cc1a2b9b2e7a650a83a2edcb432641c4e149fda16478c22f96b` |
| 22 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-dvd-absnorm-of-le--8cbc76e01a7d585f98615221.md) | 376 | `result-track:8cbc76e01a7d585f98615221e0e151d17bcb5c456b56ec3433515af1d19f8690` |
| 23 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-dvd-norm-of-mem--b63af910c25f01939f777d76.md) | 380 | `result-track:b63af910c25f01939f777d76b8362bf5a39668068df60e820b84e8938adf0b66` |
| 24 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-span-insert--77b67dd7522b89136c0da909.md) | 387 | `result-track:77b67dd7522b89136c0da9093026164870b7e5904c331ae3c92c069821453a54` |
| 25 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/irreducible-of-irreducible-absnorm--f008465abe1ec39a775a21b1.md) | 396 | `result-track:f008465abe1ec39a775a21b176b5cd4c400c12c0d795b5e965124fb712764353` |
| 26 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/isprime-of-irreducible-absnorm--8f147b0e8f1a1f6791e68b9b.md) | 407 | `result-track:8f147b0e8f1a1f6791e68b9b906ff50f969700d1a3f8a627ad8b2f6b19dbca30` |
| 27 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/prime-of-irreducible-absnorm-span--b888d1a9388f4ffb3870a898.md) | 413 | `result-track:b888d1a9388f4ffb3870a89805fe06426dfd97f88cf6acda840c9ad4aebff43f` |
| 28 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/absnorm-mem--5b6fe67379d524b3be540300.md) | 418 | `result-track:5b6fe67379d524b3be5403003364e69a8ac1a7dcfa555a49d7d33a743cb69420` |
| 29 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/span-singleton-absnorm-le--4294c04780b3a420c158f26f.md) | 423 | `result-track:4294c04780b3a420c158f26f76ff6abc4961cc382e6e43bd3ace2a00bed6a316` |
| 30 | `theorem` | [finite_setOf_absNorm_eq](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/finite-setof-absnorm-eq--59d39f109612a685110ba24a.md) | 427 | `result-track:59d39f109612a685110ba24a83196c54333f609bbe7d0e8eb78f9998c649ff67` |
| 31 | `def` | [spanNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm--6488e2c7697d88d084328e02.md) | 462 | `declaration-track:6488e2c7697d88d084328e0249933b0c1e721162fb45cfc110848d20ee5a75d3` |
| 32 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-bot--2a9e4e65292845adddfce66f.md) | 467 | `result-track:2a9e4e65292845adddfce66f89e3e85835cc07ad54b93714df43b1422f987912` |
| 33 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-eq-bot-iff--17939b26faf62405763067e5.md) | 474 | `result-track:17939b26faf62405763067e592d7f610caf5483b5082fd6fadf702c255dcbcdd` |
| 34 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/norm-mem-spannorm--f62c99c5ef501f993680de7c.md) | 485 | `result-track:f62c99c5ef501f993680de7cdb26fcfecb6c38d987bc9f7a9163208f1b64d576` |
| 35 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-singleton--67b1b96211af047de371174c.md) | 490 | `result-track:67b1b96211af047de371174ceb54aea41d7e1fdf3233ebd8a51ebd71e31c8700` |
| 36 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-top--11f4aafdee7ab8ceba167840.md) | 501 | `result-track:11f4aafdee7ab8ceba1678409ec7986d76391f7ebef655a3b5df6cda79229411` |
| 37 | `theorem` | [map_spanNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/map-spannorm--6ea9bb309452566cc52df827.md) | 508 | `result-track:6ea9bb309452566cc52df827c62248d69478c862d50c2459765c91bf7d5f9ba9` |
| 38 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-mono--76e37e53b33baa3b4a8b6854.md) | 516 | `result-track:76e37e53b33baa3b4a8b6854fdc787ec1c00b18e925ae8dba5ec1e327e069d6d` |
| 39 | `theorem` | [spanNorm_localization](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-localization--db2d90df6eec56f661f2574f.md) | 520 | `result-track:db2d90df6eec56f661f2574fb4482f6a14e18c9e77a4325a5ad44a714b24e40b` |
| 40 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-mul-spannorm-le--ed07bab5cb504fc1c017a697.md) | 548 | `result-track:ed07bab5cb504fc1c017a6974bcf98b5d7f6e7b4491ed24889addd80cdf13c98` |
| 41 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-mul-of-bot-or-top--9ef3fa3fbff0183ba1e04fe1.md) | 559 | `result-track:9ef3fa3fbff0183ba1e04fe183af1314bfaf8138c4b9ead889b84ce3a165b6cd` |
| 42 | `theorem` | [spanNorm_mul_of_field](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-mul-of-field--3b08be964704552cde42b974.md) | 574 | `result-track:3b08be964704552cde42b974ea7fe242a7a6f98f17e46680c69be8a5c5b9cf43` |
| 43 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-mul--69b8e9428cfe01831acd2dc5.md) | 584 | `result-track:69b8e9428cfe01831acd2dc556d956aed7fdd28a7e53a96131e546febf6b76ce` |
| 44 | `def` | [relNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm--eb446f25f1036015f59681f4.md) | 620 | `declaration-track:eb446f25f1036015f59681f48725966fd4a0787a312485d65353ca154346f1ae` |
| 45 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-apply--267ada435bb364b374c060dc.md) | 627 | `result-track:267ada435bb364b374c060dc1fc89213d13d933c1bde3fe7f345ceeb3c3ab268` |
| 46 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/spannorm-eq--5280982f2f1784da5b990ce6.md) | 632 | `result-track:5280982f2f1784da5b990ce69601049c7ba723ae3418bea81b38d6e6160bd2ec` |
| 47 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-bot--9322bc3d05d892dfb4d7dbf3.md) | 636 | `result-track:9322bc3d05d892dfb4d7dbf35787723afe6a304af0d739d4542399df2822b83a` |
| 48 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-top--9e0a2ad5553d12bee863e78e.md) | 641 | `result-track:9e0a2ad5553d12bee863e78e49cd57b9ca960b7b65120131abaa412044c556dc` |
| 49 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-eq-bot-iff--55c5cde42469ae465b1d3bff.md) | 648 | `result-track:55c5cde42469ae465b1d3bffeac2cae1033bf8f9ff7c48ecf7e90696557947d8` |
| 50 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/norm-mem-relnorm--8c09c93efa6b9554a45fcf1a.md) | 654 | `result-track:8c09c93efa6b9554a45fcf1a04340ed734466cb6725bacbbaad2de3ca590e5f3` |
| 51 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-singleton--d77dc84389cdcf2076debb83.md) | 659 | `result-track:d77dc84389cdcf2076debb8336e3b5e7dd51c8cb20b7eda0b35b99df7173af8c` |
| 52 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/map-relnorm--28e8deb7331266a0facb6d9d.md) | 663 | `result-track:28e8deb7331266a0facb6d9dff0d5e4e0ca76191ef34736495082f2b935e691a` |
| 53 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/declarations/relnorm-mono--28b7a64868c78b89c283a8cf.md) | 669 | `result-track:28b7a64868c78b89c283a8cfcf6554eeb2bbc6fe46f91abeb29a70fc7d59c49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
