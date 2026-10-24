# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Traces.Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.AssemblyD` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [JD](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/jd--23c8850f660b226c898a38d7.md) | 44 | `declaration-track:23c8850f660b226c898a38d77fe3562752318b1b3659339e07582d12a9a65247` |
| 2 | `def` | [mainTr2Xi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/maintr2xi--b170b984c84c4b580c83c0b7.md) | 47 | `declaration-track:b170b984c84c4b580c83c0b7745828b5037cef8f0487650b88f5e9e415d72bc1` |
| 3 | `structure` | [TracesBoundsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tracesboundsxi--545e7b07ea02a079d8c7645b.md) | 53 | `declaration-track:545e7b07ea02a079d8c7645bbda8624982db57aab54f86e39a7b2a2cb55e574b` |
| 4 | `lemma` | [isLittleO_of_le_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/islittleo-of-le-mul--e3eb6ff71a496be559e66287.md) | 69 | `result-track:e3eb6ff71a496be559e6628723b72c6c581912393b46be627ee8f70d734863ae` |
| 5 | `lemma` | [evBound_isLittleO_of_le_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/evbound-islittleo-of-le-mul--d3206e387d31b71443e5a2d9.md) | 82 | `result-track:d3206e387d31b71443e5a2d9893b2b634f2429d69e832a2191a5c17f46c16510` |
| 6 | `lemma` | [eventually_abs_sub_le_of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/eventually-abs-sub-le-of-isequivalent--8388ebaeffd7665d7d88a325.md) | 92 | `result-track:8388ebaeffd7665d7d88a32559d0fb84ecec7b75f33b1a01c4e33f2f7d3fbfac` |
| 7 | `lemma` | [tendsto_l_sq_mul_X_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tendsto-l-sq-mul-x-div--334ff9d9cbbb72176321b4d6.md) | 105 | `result-track:334ff9d9cbbb72176321b4d62b70045063285d1238a5629838f7c37c6c03e3f7` |
| 8 | `lemma` | [tendsto_rpow_half_lam_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tendsto-rpow-half-lam-sub-one--daa199ac918e1399ac79f04e.md) | 142 | `result-track:daa199ac918e1399ac79f04e44234bebec57ad7032478e2f502f738ca3f8348c` |
| 9 | `lemma` | [tendsto_inv_l_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tendsto-inv-l-sq--f67ffedcc5d9f7c539874621.md) | 148 | `result-track:f67ffedcc5d9f7c539874621ce6ea483746eecfe7c3a57095a6a8302cc782e6b` |
| 10 | `lemma` | [tendsto_inv_T](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tendsto-inv-t--90e9646018678a3156300332.md) | 152 | `result-track:90e9646018678a3156300332711c47bc4f18cafc11106b04c30e059fed57254d` |
| 11 | `structure` | [DataXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/dataxi--1d6dca68bd9f1f377edda6c7.md) | 160 | `declaration-track:1d6dca68bd9f1f377edda6c7636a983c36b35bcf63ca15f5e757f12e44023637` |
| 12 | `def` | [Rxi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/rxi--a2ef1da26d40cd9fb68ce34f.md) | 195 | `declaration-track:a2ef1da26d40cd9fb68ce34f84f2a78cc313259ac8b2c580cf96f1322fda8715` |
| 13 | `def` | [Mstar](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/mstar--0732379794144b18472c5617.md) | 198 | `declaration-track:0732379794144b18472c5617a8de6bafe431ea8b0bbb9242340737d7a8d6fe25` |
| 14 | `structure` | [FactsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/factsxi--0286231255c313c8e73faa89.md) | 203 | `declaration-track:0286231255c313c8e73faa890e475e370f6812c5fbba650026de26f30259fe19` |
| 15 | `lemma` | [ratio_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/ratio-identity--df6e2edd22392d3918d7827c.md) | 243 | `result-track:df6e2edd22392d3918d7827ca740265f4130420308c2a3b5e42128d5cf0bf0f4` |
| 16 | `lemma` | [frhat_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/frhat-identity--c64de665440dd9b45cc1796c.md) | 258 | `result-track:c64de665440dd9b45cc1796c309444375eaaf9020e455c42e392a8174c73b236` |
| 17 | `lemma` | [regime](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/regime--694c5c2f1a9245ab9788728c.md) | 272 | `result-track:694c5c2f1a9245ab9788728c137fd66af990a6aabb03b84b85dcf78ea1944027` |
| 18 | `lemma` | [Ncnt_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/ncnt-lower--94c8c37c6fb03aa862c44ac3.md) | 280 | `result-track:94c8c37c6fb03aa862c44ac3ff770a793f13bc9e88399eebba0d0b3f05411322` |
| 19 | `lemma` | [Ncnt_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/ncnt-pos--8b10080fa626d7f6b1b79b8a.md) | 293 | `result-track:8b10080fa626d7f6b1b79b8a132933b30628d13e14e91c772d9d7c9ca4a034f6` |
| 20 | `lemma` | [isEquivalent_Ncnt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/isequivalent-ncnt--e7beeb48331a4d4096b5e474.md) | 300 | `result-track:e7beeb48331a4d4096b5e47486c5e1c5cf58146bc8b788bc2ea56c1b37ae3f8c` |
| 21 | `theorem` | [tr1'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tr1--fcdc2c7f713a8ca1c91d93b2.md) | 311 | `result-track:fcdc2c7f713a8ca1c91d93b23169e8b2c125d766aafeeeb8d2e3caf1c377950f` |
| 22 | `lemma` | [tr2_first](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tr2-first--5b0601cd2ff45898163056a8.md) | 336 | `result-track:5b0601cd2ff45898163056a8c5de7c40232486d05dc786207cd7997c0d97d320` |
| 23 | `lemma` | [Mstar_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/mstar-le--baa7d0e73736d04e3baf6c04.md) | 386 | `result-track:baa7d0e73736d04e3baf6c04d9419250ad63c68a7a1fc0ad86e4a55d20e1d08c` |
| 24 | `theorem` | [tr2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tr2--5bc9ae9da9c0dbef6b0857a1.md) | 405 | `result-track:5bc9ae9da9c0dbef6b0857a14ddc63495fac9f6df9b9caf9aa9869c3a5cea2d9` |
| 25 | `lemma` | [nonzeros](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/nonzeros--3376269ae736620bd09b078f.md) | 466 | `result-track:3376269ae736620bd09b078f39aac391f5a731e5e5778b4cd0befef3b9ae5adf` |
| 26 | `theorem` | [ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/ratio--abefa47f7f499fb7f8891314.md) | 477 | `result-track:abefa47f7f499fb7f88913144a28641961dfdb82a3a7b056b4cad64f2f482852` |
| 27 | `theorem` | [frhat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/frhat--b5287344366d31333ad7e63d.md) | 504 | `result-track:b5287344366d31333ad7e63d4e2937f42baef0f954d7711573c5492e66a89e8b` |
| 28 | `theorem` | [tracesBoundsXi_of_factsXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/tracesboundsxi-of-factsxi--1dbc189d837f2ef4d74e10fc.md) | 524 | `result-track:1dbc189d837f2ef4d74e10fc9f63b3310f5d22c0ba04b135b60e658a5d5b1195` |
| 29 | `theorem` | [moments_trace](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/moments-trace--4428458d6c4d7a3239a109af.md) | 541 | `result-track:4428458d6c4d7a3239a109afebaed0919f66e81ed31234b18cea97ec9fa7b3e5` |
| 30 | `theorem` | [moments_frob](../../../../../mathematics/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/declarations/moments-frob--2855085e65d254f65d573f03.md) | 555 | `result-track:2855085e65d254f65d573f0307881edf0a9cf31f4d5bdc639e03f4c5222da048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
