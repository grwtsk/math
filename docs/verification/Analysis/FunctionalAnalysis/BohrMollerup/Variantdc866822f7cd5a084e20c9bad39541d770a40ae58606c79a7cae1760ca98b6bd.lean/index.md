# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BohrMollerup.Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d2fda4d34175de21c216eed35ec14fefef3a6f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d2fda4d34175de21c216eed35ec14fefef3a6f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/convexon-congr--a260b22affc3eb22ed8738c5.md) | 63 | `result-track:a260b22affc3eb22ed8738c597f4cecd922f76855f473ccd73abc9bfbc3311c7` |
| 2 | `theorem` | [ConcaveOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/concaveon-congr--70d6e450e2b44357a2949ff4.md) | 68 | `result-track:70d6e450e2b44357a2949ff4e66d60d6497e97a78eb8bc911bd11ad1f3920d12` |
| 3 | `theorem` | [StrictConvexOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/strictconvexon-congr--d02b20677fc4d39c54dea52c.md) | 73 | `result-track:d02b20677fc4d39c54dea52c36d22d9369f8c91b3932221432a334dfbc6a4b99` |
| 4 | `theorem` | [StrictConcaveOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/strictconcaveon-congr--c3a018941b7c43e67c0342c5.md) | 80 | `result-track:c3a018941b7c43e67c0342c57f534721ba2f8cd7a2e262c0130df02be8a492bd` |
| 5 | `theorem` | [ConvexOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/convexon-add-const--625da0cba8e70b7a53f6c7d6.md) | 87 | `result-track:625da0cba8e70b7a53f6c7d6b982d81df4f73c135361813184d89ff41b8854c1` |
| 6 | `theorem` | [ConcaveOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/concaveon-add-const--aed79d0b4410b1f70f808948.md) | 92 | `result-track:aed79d0b4410b1f70f8089486d6fdd074c42a44f57cf2daf72ddbfdb061cffa2` |
| 7 | `theorem` | [StrictConvexOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/strictconvexon-add-const--d9ce6e986a6c059bb673f999.md) | 97 | `result-track:d9ce6e986a6c059bb673f999a735b5090b0d82183e35585fe7ad5b508937e5b5` |
| 8 | `theorem` | [StrictConcaveOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/strictconcaveon-add-const--49b1f8d1db4c9a224750b72e.md) | 102 | `result-track:49b1f8d1db4c9a224750b72ec6dc928ce303ed2a561e03659997a577c0b61cdf` |
| 9 | `theorem` | [Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/gamma-mul-add-mul-le-rpow-gamma-mul-rpow-gamma--fd7449a4fcd771526e9ceb2a.md) | 115 | `result-track:fd7449a4fcd771526e9ceb2af2eddd76fd495e63855df0154855bb6524e10e0c` |
| 10 | `theorem` | [convexOn_log_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/convexon-log-gamma--00b225d86187a3575f75b971.md) | 173 | `result-track:00b225d86187a3575f75b9710861f363e49fafe7e84a3605701206786ae04f6f` |
| 11 | `theorem` | [convexOn_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/convexon-gamma--dd66d2219c4cb9fad99357df.md) | 186 | `result-track:dd66d2219c4cb9fad99357df675d2f9acacdfb0352d1dc67ae159ad521b6edc1` |
| 12 | `def` | [logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/loggammaseq--ad71e6cfe8c8006ff0428d9d.md) | 205 | `declaration-track:ad71e6cfe8c8006ff0428d9de29c7d92bacf9443067671f9fd673dcde13b4986` |
| 13 | `theorem` | [f_nat_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/f-nat-eq--01477c8cca7a6f45fb13ae03.md) | 211 | `result-track:01477c8cca7a6f45fb13ae03632f058436f561d1cd03d1684220703ca8e70d77` |
| 14 | `theorem` | [f_add_nat_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/f-add-nat-eq--1997e9086cb8415ef1733027.md) | 223 | `result-track:1997e9086cb8415ef17330271eaecb73fedf14575851ae9be0fc947b6bbef070` |
| 15 | `theorem` | [f_add_nat_le](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/f-add-nat-le--2206d5a5bb92956bb8b95ee5.md) | 235 | `result-track:2206d5a5bb92956bb8b95ee5caebb8e7c32fd1f70e502fac07a66c80d6d6add9` |
| 16 | `theorem` | [f_add_nat_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/f-add-nat-ge--49080c9b8867f08e8f214ee2.md) | 246 | `result-track:49080c9b8867f08e8f214ee29d7c8bb5e8c496adbb09c921dc188095ea078612` |
| 17 | `theorem` | [logGammaSeq_add_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/loggammaseq-add-one--859b844db5db7ed53d90e788.md) | 262 | `result-track:859b844db5db7ed53d90e788a86fbee929ee4d605701c435ddec511b4d37323c` |
| 18 | `theorem` | [le_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/le-loggammaseq--3e7d989717056a1bce08ea9d.md) | 280 | `result-track:3e7d989717056a1bce08ea9dab8a3fa5b5cf5fceb827b7b8480ce7a539456ab2` |
| 19 | `theorem` | [ge_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/ge-loggammaseq--c03e1783b93737949f18ef1a.md) | 289 | `result-track:c03e1783b93737949f18ef1aed5c5941e742e78ceb29b023a38362464ef71f67` |
| 20 | `theorem` | [tendsto_logGammaSeq_of_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/tendsto-loggammaseq-of-le-one--eb772751fb4c091edded3a2e.md) | 302 | `result-track:eb772751fb4c091edded3a2e0e325c302ec4524e599ad5c666fbdc4c753a1fb5` |
| 21 | `theorem` | [tendsto_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/tendsto-loggammaseq--b70a47b0770c9839c6ecb4a6.md) | 323 | `result-track:b70a47b0770c9839c6ecb4a68c3abe0e34a564b00733171de4cd36fb0efaa943` |
| 22 | `theorem` | [tendsto_log_gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/tendsto-log-gamma--a2ba768f46639d33d862ad23.md) | 374 | `result-track:a2ba768f46639d33d862ad236cf27ab07946f865698d8b45af3d8c5ec9a05de9` |
| 23 | `theorem` | [eq_Gamma_of_log_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/eq-gamma-of-log-convex--44ffc124f7ab31817dbb6829.md) | 389 | `result-track:44ffc124f7ab31817dbb682955d98ad24f5a9f57c0cd031ed1fc119376b9b626` |
| 24 | `theorem` | [Gamma_two](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/gamma-two--7f1696582087017ebcc20ff1.md) | 408 | `result-track:7f1696582087017ebcc20ff1f9b245f01abe98b81eadc06d918774e29c7feb06` |
| 25 | `theorem` | [Gamma_three_div_two_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/gamma-three-div-two-lt-one--7abbcb69b55b96ca698dfa57.md) | 411 | `result-track:7abbcb69b55b96ca698dfa576611887cf0a4d2e7b2203537985ec4ed8b119fd4` |
| 26 | `theorem` | [Gamma_strictMonoOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/gamma-strictmonoon-ici--be0ad441fd78d216f4d7c8e4.md) | 434 | `result-track:be0ad441fd78d216f4d7c8e442b8d5f6f2edddc9f620b5f6415cc0709d9ab413` |
| 27 | `def` | [doublingGamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/doublinggamma--a84167530a7737fa0f6ca22e.md) | 457 | `declaration-track:a84167530a7737fa0f6ca22e0305db43c8370e5867c37fee913ea480fa80aa00` |
| 28 | `theorem` | [doublingGamma_add_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/doublinggamma-add-one--e49776f1585a956083e5cd86.md) | 461 | `result-track:e49776f1585a956083e5cd8637c6523e45e0a114d85e49618006ae9b52754fbd` |
| 29 | `theorem` | [doublingGamma_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/doublinggamma-one--ed62eb0735a97e582066a896.md) | 468 | `result-track:ed62eb0735a97e582066a8961c805791b33c04f49222299178a2979c7fcee12c` |
| 30 | `theorem` | [log_doublingGamma_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/log-doublinggamma-eq--fda8f03321db47befe8a0847.md) | 473 | `result-track:fda8f03321db47befe8a08476ae4eb229e8a4780ca5e10eec903a9268870d22a` |
| 31 | `theorem` | [doublingGamma_log_convex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/doublinggamma-log-convex-ioi--d7615bb6815b858d37f78f53.md) | 488 | `result-track:d7615bb6815b858d37f78f53c7d0e3c0a8089a01c6306b6bb47f829379314f96` |
| 32 | `theorem` | [doublingGamma_eq_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/doublinggamma-eq-gamma--84885e85c06d7ddfa639dc7d.md) | 514 | `result-track:84885e85c06d7ddfa639dc7d14dd0310a69151aba420fead7c9aef107077bc69` |
| 33 | `theorem` | [Gamma_mul_Gamma_add_half_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/declarations/gamma-mul-gamma-add-half-of-pos--871510dd19a6ac7df281e55b.md) | 525 | `result-track:871510dd19a6ac7df281e55b18c8782cc0321633f535bc1234f4ece97fec99bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
