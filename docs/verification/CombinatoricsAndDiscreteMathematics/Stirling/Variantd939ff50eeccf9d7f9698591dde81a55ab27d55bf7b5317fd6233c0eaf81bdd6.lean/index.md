# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Stirling.Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cccc7840e2ee5aff43bdac4f6f353bd2b2e2f1cb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cccc7840e2ee5aff43bdac4f6f353bd2b2e2f1cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean.json)

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
| 1 | `def` | [stirlingFirst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst--5d8411a4b03405cf8698c95e.md) | 57 | `declaration-track:5d8411a4b03405cf8698c95e002cad334227aea253900cf27b6677053c0dc442` |
| 2 | `theorem` | [stirlingFirst_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-zero--d0173c4034e7a04466f51ab0.md) | 64 | `result-track:d0173c4034e7a04466f51ab04cb4a23a3047431c7cc458402861ea40577e713d` |
| 3 | `theorem` | [stirlingFirst_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-zero-succ--6befa0e00ae59080675a698e.md) | 68 | `result-track:6befa0e00ae59080675a698ef5c7f063a162785662516b097b8732ef2ffcbfad` |
| 4 | `theorem` | [stirlingFirst_succ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-succ-zero--f8e413bd4570bc9c792fd10b.md) | 72 | `result-track:f8e413bd4570bc9c792fd10b04c65ffc60dcd5b66bcb65974c582c9a72d22ad5` |
| 5 | `theorem` | [stirlingFirst_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-succ-left--db5c2b7c36e223fdb6fa039c.md) | 75 | `result-track:db5c2b7c36e223fdb6fa039c14af665600b64e123612aafdf98214b08e71c577` |
| 6 | `theorem` | [stirlingFirst_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-succ-right--f91806eff3f7e667dc76e975.md) | 80 | `result-track:f91806eff3f7e667dc76e9753a6ebf1de7129d460ac4f2f1c1627a6a61fa2e68` |
| 7 | `theorem` | [stirlingFirst_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-succ-succ--d7b2f22bf4cf32b64bba45ba.md) | 86 | `result-track:d7b2f22bf4cf32b64bba45ba89d9e2b8c35932daeae3ac1a882ba7393ff635c2` |
| 8 | `theorem` | [stirlingFirst_eq_zero_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-eq-zero-of-lt--d71ec05da0ba1f9f89d30355.md) | 90 | `result-track:d71ec05da0ba1f9f89d303552df4c0d6d1fa2e11b6e2a152f69a2f0a37337aad` |
| 9 | `theorem` | [stirlingFirst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-self--d416034119140d7e8d66c520.md) | 97 | `result-track:d416034119140d7e8d66c52045a7dfed6474e0478618bc1cc330af00d051d27b` |
| 10 | `theorem` | [stirlingFirst_succ_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-succ-self-left--6593e29f79e3bca968793832.md) | 101 | `result-track:6593e29f79e3bca968793832436eeac898759b16854ecbf6dd031f298cbb94de` |
| 11 | `theorem` | [stirlingFirst_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingfirst-one-right--41cf4195efebd18c4a9a3aee.md) | 108 | `result-track:41cf4195efebd18c4a9a3aeed625dfa13ec2f7756530c1780ffcabb84fd857a4` |
| 12 | `def` | [stirlingSecond](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond--13290cd1c1b06f627d886ef0.md) | 120 | `declaration-track:13290cd1c1b06f627d886ef0a711669ad1ad796979f87a7fcff8cbb80e23403b` |
| 13 | `theorem` | [stirlingSecond_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-zero--dcff69cc9d2038ea04c3dd00.md) | 128 | `result-track:dcff69cc9d2038ea04c3dd00ba02ccd86204bf248a8a6ee9e765a1deacbe54c8` |
| 14 | `theorem` | [stirlingSecond_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-zero-succ--46196dfdfad24433a4ccaa16.md) | 132 | `result-track:46196dfdfad24433a4ccaa16fd0dce4bbc3e69926df0395beebcee78c37b9f2c` |
| 15 | `theorem` | [stirlingSecond_succ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-succ-zero--2c6d6ff220ca357fbd59caac.md) | 136 | `result-track:2c6d6ff220ca357fbd59caac501c5c7e1986aca585126364cb06f30431d9fa5a` |
| 16 | `theorem` | [stirlingSecond_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-succ-left--62b71b841ad35205a16a0280.md) | 139 | `result-track:62b71b841ad35205a16a0280f3bc01db15ba6213628946739dbd23817aab6a47` |
| 17 | `theorem` | [stirlingSecond_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-succ-right--102b71a6639692bc56761465.md) | 144 | `result-track:102b71a6639692bc56761465f4e7eb11c95ef53dff18327dbb76ee56df6aa7f4` |
| 18 | `theorem` | [stirlingSecond_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-succ-succ--40ba967ba6e04048689bb68c.md) | 150 | `result-track:40ba967ba6e04048689bb68cc1cbe42775701545dc650578d040a12e450c0d5a` |
| 19 | `theorem` | [stirlingSecond_eq_zero_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-eq-zero-of-lt--3024ad2bebb86fb18cf93944.md) | 154 | `result-track:3024ad2bebb86fb18cf93944b3dda907e644611858b1fe3f4d7817ed5ef9e428` |
| 20 | `theorem` | [stirlingSecond_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-self--6f3f7633692d9a9d36f9a2f1.md) | 161 | `result-track:6f3f7633692d9a9d36f9a2f1c8e0a648cfba3da88b31ed3c828d603ad44cc5c6` |
| 21 | `theorem` | [stirlingSecond_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-one-right--2ad81b16ebaa9fdaa3838c0c.md) | 165 | `result-track:2ad81b16ebaa9fdaa3838c0c665ab7c1a68515869d64060773707801b2596cee` |
| 22 | `theorem` | [stirlingSecond_succ_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/stirlingsecond-succ-self-left--aa8f2579d4d7cfa4c5ad12c1.md) | 170 | `result-track:aa8f2579d4d7cfa4c5ad12c12a9e407648698874cfd59e3f4918496d668186b0` |
| 23 | `theorem` | [pow_eq_sum_stirlingSecond_mul_descFactorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantd939ff50eeccf9d7f9698591dde81a55ab27d55bf7b5317fd6233c0eaf81bdd6.lean/declarations/pow-eq-sum-stirlingsecond-mul-descfactorial--f4ef98f54fdb3d5e09ad5901.md) | 180 | `result-track:f4ef98f54fdb3d5e09ad590165f88929634566620b17e7689e54c6154014dabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
