# Verification target: GRWTSK.NumberTheory.Lcm.Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb`.

Source path: `GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondarySummary` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Chebyshev` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [σ](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/anonymous--bf038343e757848d29205f9f.md) | 22 | `declaration-track:bf038343e757848d29205f9fd17de2aea50ab4466f5a209f4743cb2a899bd9a3` |
| 2 | `abbrev` | [σnorm](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/norm--8aa83f9f439de1e133387803.md) | 24 | `declaration-track:8aa83f9f439de1e133387803fab8242f4817ff5ff23a881e57471af4ade4bbad` |
| 3 | `def` | [HighlyAbundant](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/highlyabundant--89e2f6285e5ca5c36c32f4f6.md) | 36 | `declaration-track:89e2f6285e5ca5c36c32f4f6be740f9f0d6011f9e5282cbad8a80ff21e446475` |
| 4 | `def` | [L](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/l--5d61b8d6d90f9aec0073007c.md) | 52 | `declaration-track:5d61b8d6d90f9aec0073007ced33e22f70fa252e754f6154f07cb8bdfe070018` |
| 5 | `structure` | [Criterion](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion--f9dd36acfa0ea8edc32e1f21.md) | 110 | `declaration-track:f9dd36acfa0ea8edc32e1f2152e08eeec74f6c46c999e848076e6cc199356c2b` |
| 6 | `theorem` | [Criterion.prod_p_le_prod_q](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-prod-p-le-prod-q--52747bf865e60163d6811e53.md) | 131 | `result-track:52747bf865e60163d6811e5301d33a83a2d639123ccaf0ae1d8b117909a7a835` |
| 7 | `lemma` | [Criterion.p_gt_two](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-p-gt-two--893a2a41ae80c99c23db1359.md) | 141 | `result-track:893a2a41ae80c99c23db1359542afc1302074bf4ddd01b722af111df546cdb33` |
| 8 | `lemma` | [Criterion.q_gt_two](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-q-gt-two--5803e43a7d0feee39d941b58.md) | 155 | `result-track:5803e43a7d0feee39d941b58e392165256ad8ed99b35676a4fc04be52fa19bc0` |
| 9 | `def` | [Criterion.L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-l--cbe6962a0ebd983cbd8500f6.md) | 168 | `declaration-track:cbe6962a0ebd983cbd8500f60df00090b1c40677e67d07cc1dcc418b34d58a59` |
| 10 | `lemma` | [Criterion.prod_q_dvd_L](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-prod-q-dvd-l--fb96c7f0b51f113fb704f307.md) | 170 | `result-track:fb96c7f0b51f113fb704f307a66c42e6e0a22273276ba1b753d28b5b9a3219f5` |
| 11 | `lemma` | [Criterion.L_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-l-pos--af9fc391eda31c2cc5d7a0e9.md) | 175 | `result-track:af9fc391eda31c2cc5d7a0e915e4cb6cf73c712ad3280afaaf435a0574411779` |
| 12 | `lemma` | [Criterion.L'_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-l-pos--1023e2010f1719f9e0ee6fe8.md) | 178 | `result-track:1023e2010f1719f9e0ee6fe83c600d8fb2788a22e9f63aa2522e00bfebdb6192` |
| 13 | `lemma` | [Criterion.L_eq_prod_q_mul_L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-l-eq-prod-q-mul-l--5e28247bc12b39a8d84582ef.md) | 181 | `result-track:5e28247bc12b39a8d84582efb08fbcee8a658e5686a2fc41fddb9362cb1195b3` |
| 14 | `lemma` | [Criterion.val_two_L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-val-two-l--759bb9706c0354b33e6c9a71.md) | 184 | `result-track:759bb9706c0354b33e6c9a71e8ccb64f31768326120067887202c9ee18db975d` |
| 15 | `lemma` | [Criterion.val_p_L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-val-p-l--25995f78d66c364e33c7e6da.md) | 216 | `result-track:25995f78d66c364e33c7e6daea718a11e1f372bb93c97b422ff9dab9bff8ec88` |
| 16 | `theorem` | [Criterion.ln_eq](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-ln-eq--3188ceaa45791ed395bb6a12.md) | 285 | `result-track:3188ceaa45791ed395bb6a12297530027eee0e77c5245bc475351099b87ab22f` |
| 17 | `theorem` | [Criterion.q_not_dvd_L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-q-not-dvd-l--4d00603036c3b00e5f07c354.md) | 309 | `result-track:4d00603036c3b00e5f07c3548a1c6f771b74d476312aaa6430625bad0b40ad5e` |
| 18 | `theorem` | [Criterion.σnorm_ln_eq](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-norm-ln-eq--fcccac97b06e1167fb2863d4.md) | 379 | `result-track:fcccac97b06e1167fb2863d4b911312df95315d7073de3928859dab438cd217c` |
| 19 | `def` | [Criterion.m](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-m--045ea7ef1da18257da3299af.md) | 401 | `declaration-track:045ea7ef1da18257da3299af358e67085711cd6e7b7ce438528ee979b42de9f6` |
| 20 | `def` | [Criterion.r](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-r--68016a72235f4cc82d7f0a2b.md) | 403 | `declaration-track:68016a72235f4cc82d7f0a2bcc7be2ca2454c4174165358c4415efe3c99e278f` |
| 21 | `theorem` | [Criterion.r_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-r-ge--0d3c469ddedf6868d9de3669.md) | 413 | `result-track:0d3c469ddedf6868d9de3669cd181ef50f7875a2c254621b26e7b995ba2a3dc0` |
| 22 | `theorem` | [Criterion.r_le](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-r-le--8d02c11110f05094038d4d6d.md) | 433 | `result-track:8d02c11110f05094038d4d6d9715b515e3aa8a581f63a31b12be93954bee92a0` |
| 23 | `theorem` | [Criterion.prod_q_eq](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-prod-q-eq--c687d5ae24919776cb010687.md) | 446 | `result-track:c687d5ae24919776cb010687e1b7903f4002dc477e4718053300e744db60727e` |
| 24 | `def` | [Criterion.M](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-m--da7049938db45f8640898b60.md) | 457 | `declaration-track:da7049938db45f8640898b608a0b545ec25e72c4c074ed902e25bf035c51fa40` |
| 25 | `lemma` | [Criterion.m_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-m-pos--34807e085033afe9de284c7b.md) | 459 | `result-track:34807e085033afe9de284c7bf1b5054294eef14068fb4453c5d59ed082fe29e9` |
| 26 | `lemma` | [Criterion.M_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-m-pos--80361321cb061856246ffba1.md) | 462 | `result-track:80361321cb061856246ffba1307bd2bebc58135e3d1734333909f1103b84a129` |
| 27 | `lemma` | [Criterion.val_two_M_ge_L'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-val-two-m-ge-l--b254c01bea7723c31ea1077e.md) | 465 | `result-track:b254c01bea7723c31ea1077e4eed40047beb5fecb5a3653938ef5488d0861c14` |
| 28 | `lemma` | [Criterion.val_p_M_ge_two](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-val-p-m-ge-two--3ff6c8be0e87b4a72de2ccc5.md) | 478 | `result-track:3ff6c8be0e87b4a72de2ccc5b848032be734162352b85655bdde642535142aa6` |
| 29 | `theorem` | [Criterion.M_lt](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-m-lt--dfaf29f5296073b664ab221e.md) | 542 | `result-track:dfaf29f5296073b664ab221e0ab452bfa9576930d69ae60ea2b6734a98a91be8` |
| 30 | `theorem` | [Criterion.Ln_div_M_gt](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-ln-div-m-gt--a5f847a0fdf0b8b92daff99a.md) | 586 | `result-track:a5f847a0fdf0b8b92daff99ac2cd21bc6c912583cc4b2d3806a55d9e27810bae` |
| 31 | `theorem` | [Criterion.Ln_div_M_lt](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-ln-div-m-lt--4c78f892db0a9b9e1bfb1e2e.md) | 628 | `result-track:4c78f892db0a9b9e1bfb1e2e0dd7dbb2ba2337fd40c4a399936368dcb14ac2a1` |
| 32 | `theorem` | [Criterion.not_highlyAbundant_1](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-not-highlyabundant-1--5cdfc8aeac751e0286fad827.md) | 699 | `result-track:5cdfc8aeac751e0286fad827cab324476e0bd50733ba7a1ec16377819f5708d1` |
| 33 | `theorem` | [Criterion.not_highlyAbundant_2](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-not-highlyabundant-2--55028cf92977f14201f1b289.md) | 750 | `result-track:55028cf92977f14201f1b289be0268243e09bc3a93cae906693d4a00e3bcf75b` |
| 34 | `lemma` | [σnorm_ratio_ge_aux](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/norm-ratio-ge-aux--cb9590c7af1bcb576189d558.md) | 777 | `result-track:cb9590c7af1bcb576189d558177d917082e7d27591f6956a32272dfef85cd8db` |
| 35 | `theorem` | [Criterion.σnorm_M_ge_σnorm_L'_mul](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-norm-m-ge-norm-l-mul--c15d703ccbbce6bde9820fdc.md) | 835 | `result-track:c15d703ccbbce6bde9820fdce31a849247cfd9506617ed2707cbe742f2115f43` |
| 36 | `theorem` | [Criterion.not_highlyAbundant](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-not-highlyabundant--3b6f4bc4533378e4d4d670f7.md) | 973 | `result-track:3b6f4bc4533378e4d4d670f707fef8a332f362d6b233144538f90605ee95dfab` |
| 37 | `abbrev` | [X₀](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/x--c51db4f1065504756336c1ac.md) | 984 | `declaration-track:c51db4f1065504756336c1acc9972fcfc63919a5103653c960d90244708cda28` |
| 38 | `lemma` | [hsqrt_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/hsqrt-ge--4577f57640bf5374b2263d56.md) | 986 | `result-track:4577f57640bf5374b2263d562f59e7f8a5c98a667d5384b76ff46abe71a7b57c` |
| 39 | `lemma` | [log_X₀_gt](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/log-x-gt--1274290b3f882867106f5f49.md) | 989 | `result-track:1274290b3f882867106f5f4912c9fba796339d36e7c972718083c23e81462a0b` |
| 40 | `lemma` | [hlog](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/hlog--1496106a1bb7e3718fefbfec.md) | 995 | `result-track:1496106a1bb7e3718fefbfecdfe923c3c85a753f6b2f5ed1338d4d6e88a07cc2` |
| 41 | `lemma` | [hε_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/h-pos--3c465169d506b09296ae51f8.md) | 1000 | `result-track:3c465169d506b09296ae51f8a8a699304020fa9436cbf269d7e9f0b553709417` |
| 42 | `lemma` | [log_X₀_pos](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/log-x-pos--698048b162af140c5e6ff180.md) | 1003 | `result-track:698048b162af140c5e6ff1809790381af37cdd1dfc5a757d538e99c4bcc8c60d` |
| 43 | `theorem` | [exists_p_primes](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/exists-p-primes--7dcc80ba65931f38a1bc5dbb.md) | 1030 | `result-track:7dcc80ba65931f38a1bc5dbbd6f08864c44a7a56f597034983c4e11977415268` |
| 44 | `theorem` | [exists_q_primes](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/exists-q-primes--6ea2990a32095e7f19c32199.md) | 1086 | `result-track:6ea2990a32095e7f19c3219903e1fc3d0b48a54af17ce5ea692ec41bff025478` |
| 45 | `theorem` | [prod_q_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/prod-q-ge--996c192ff096824618b55e24.md) | 1248 | `result-track:996c192ff096824618b55e24435df7fa40468d22d7c4ac6990bb0e429d3982f6` |
| 46 | `theorem` | [prod_p_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/prod-p-ge--1e965fb34c44fd31076d8cfc.md) | 1302 | `result-track:1e965fb34c44fd31076d8cfce661977b727b7509d44a705dcbb0384cd97a3e6e` |
| 47 | `theorem` | [pq_ratio_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/pq-ratio-ge--78d644e0ae5e106d6cef2881.md) | 1363 | `result-track:78d644e0ae5e106d6cef2881f837bf20c53b91d15f5fd0999f9da5331d6aeba4` |
| 48 | `theorem` | [inv_cube_log_sqrt_le](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/inv-cube-log-sqrt-le--77aeb6a3f50911b362ba90bb.md) | 1417 | `result-track:77aeb6a3f50911b362ba90bb42a6c4a300091d6cf93fa4e590bfede09fe5bf85` |
| 49 | `theorem` | [inv_n_pow_3_div_2_le](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/inv-n-pow-3-div-2-le--de44f3938fc567ed7739c390.md) | 1445 | `result-track:de44f3938fc567ed7739c390983e4b13869a056913130804d87f9ac92eb9f90a` |
| 50 | `theorem` | [inv_n_add_sqrt_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/inv-n-add-sqrt-ge--baa75e9835c806299c1f58e7.md) | 1474 | `result-track:baa75e9835c806299c1f58e7175ec00a0a7bdb511b75ee91b529eb41765530a9` |
| 51 | `theorem` | [prod_epsilon_le](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/prod-epsilon-le--c396d2c709d40072758e2d10.md) | 1510 | `result-track:c396d2c709d40072758e2d10e76334b4ef3478cf4a1b3669f737f64a82317fab` |
| 52 | `theorem` | [prod_epsilon_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/prod-epsilon-ge--9a42f3949e83eeb90613e9a8.md) | 1545 | `result-track:9a42f3949e83eeb90613e9a82ea58048e8923224268447e2f3abfba5ef658945` |
| 53 | `theorem` | [final_comparison](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/final-comparison--18bf1f0d08a04fff470566d4.md) | 1578 | `result-track:18bf1f0d08a04fff470566d43ca9a45fa05589b793f9d0a44d4ff97b8fb48df9` |
| 54 | `def` | [Criterion.mk'](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/criterion-mk--96e11e57eeb088dd3ef5a360.md) | 1596 | `declaration-track:96e11e57eeb088dd3ef5a36038b026953c453e1c108ae934968c723b0dc4fdea` |
| 55 | `theorem` | [L_not_HA_of_ge](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/l-not-ha-of-ge--d7374d3c14e31db78fbc2185.md) | 1668 | `result-track:d7374d3c14e31db78fbc2185e781f02b3b59b78316c516530c59a99265c74afc` |
| 56 | `theorem` | [L_eq_prod](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/l-eq-prod--18c721dd1ec7f1abddf8c0ab.md) | 1683 | `result-track:18c721dd1ec7f1abddf8c0abf20a91d389a3881bacb42c7b46761c0c3ea69d88` |
| 57 | `theorem` | [psi_eq_prod](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/psi-eq-prod--ee0f136e008d195c9ab311ea.md) | 1693 | `result-track:ee0f136e008d195c9ab311eadda2a06db39e885a54e241a4066df2b59bcf1f73` |
| 58 | `theorem` | [log_L_eq_psi](../../../../mathematics/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/declarations/log-l-eq-psi--a8813272becc04bb1ca2b678.md) | 1705 | `result-track:a8813272becc04bb1ca2b67873d9b4cc6fab6b83ea2ac599f3e645bbf772946a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
