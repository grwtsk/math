# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Stirling.Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c50b837025089333914bcbe2294c9dcb66b7238",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c50b837025089333914bcbe2294c9dcb66b7238`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean.json)

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
| 1 | `def` | [stirlingFirst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst--9094810a0ff5537ecc5fd087.md) | 65 | `declaration-track:9094810a0ff5537ecc5fd087dac744bce5ad9e69d2a4a113e7eb29bf2b256744` |
| 2 | `theorem` | [stirlingFirst_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-zero--c8c43944bdd5a8f970bbf09b.md) | 72 | `result-track:c8c43944bdd5a8f970bbf09bc1312ae4c7e88a5e00beeb526660a63511a62c77` |
| 3 | `theorem` | [stirlingFirst_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-zero-succ--0cd066ecbc00dd746004a4b9.md) | 76 | `result-track:0cd066ecbc00dd746004a4b9b06209592a75dd79b9fbc0b10f76664cfcc7ac17` |
| 4 | `theorem` | [stirlingFirst_succ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-succ-zero--b3c3e4a3d494078f52a7ce61.md) | 80 | `result-track:b3c3e4a3d494078f52a7ce61593087c2bea97113e8c24eaffcc8504ac8125037` |
| 5 | `theorem` | [stirlingFirst_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-succ-left--0444df2d02963cddd3a648a3.md) | 83 | `result-track:0444df2d02963cddd3a648a33ea3db30faf8ca64da30899467171b9d90be334d` |
| 6 | `theorem` | [stirlingFirst_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-succ-right--2ea2ed1b019ad3e7450ad371.md) | 88 | `result-track:2ea2ed1b019ad3e7450ad3714f783ff93c428b0cd8ef8716fb8de991b73d2fb9` |
| 7 | `theorem` | [stirlingFirst_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-succ-succ--cffd9044b8d9b7d84a2c0b92.md) | 94 | `result-track:cffd9044b8d9b7d84a2c0b92080d73725315ec33b360c691d3030a17bdbeaae0` |
| 8 | `theorem` | [stirlingFirst_eq_zero_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-eq-zero-of-lt--4b5b0c8b0186dcab7c4fe0fa.md) | 98 | `result-track:4b5b0c8b0186dcab7c4fe0faa86ca92fa80f83266b38dbdc0c61a216845e4864` |
| 9 | `theorem` | [stirlingFirst_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-self--d05eaf3d6bce7195a6df068c.md) | 105 | `result-track:d05eaf3d6bce7195a6df068c9cf330bef776dee0b2d1f4181b5242ff16920b95` |
| 10 | `theorem` | [stirlingFirst_succ_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-succ-self-left--a74753eee743ae963b2af076.md) | 109 | `result-track:a74753eee743ae963b2af076f74fc0ff4bae25a65d6c86d52839c699718ea903` |
| 11 | `theorem` | [stirlingFirst_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingfirst-one-right--b9b8e1e27658d42d03f030d7.md) | 116 | `result-track:b9b8e1e27658d42d03f030d76c0043671c791d9969fb30ec6462124cd3e0a6ce` |
| 12 | `def` | [stirlingSecond](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond--6d31591dfa425bf767f98061.md) | 128 | `declaration-track:6d31591dfa425bf767f98061d834c95119fa9069cb1f53f7670b1fed8a7afacc` |
| 13 | `theorem` | [stirlingSecond_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-zero--e8049f1eb1c11d6a97bee0d8.md) | 136 | `result-track:e8049f1eb1c11d6a97bee0d8803c2b28affc52bbc8025359f146ec2531349b02` |
| 14 | `theorem` | [stirlingSecond_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-zero-succ--71fe40292f190308ba3a0a5f.md) | 140 | `result-track:71fe40292f190308ba3a0a5ffbee80736302d17bacc647270d9e566c07f1f416` |
| 15 | `theorem` | [stirlingSecond_succ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-succ-zero--6778f2a77c1c59d76d4b60d1.md) | 144 | `result-track:6778f2a77c1c59d76d4b60d172348dd5d213746f974a33734c11102f90d39413` |
| 16 | `theorem` | [stirlingSecond_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-succ-left--a661cc6e60945d5ee6050ebc.md) | 147 | `result-track:a661cc6e60945d5ee6050ebc4efe7ea909bd05dd1cb1b350bd4c2f8228bd4e17` |
| 17 | `theorem` | [stirlingSecond_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-succ-right--06b3bc57cf94429ae494c2a7.md) | 152 | `result-track:06b3bc57cf94429ae494c2a7ec9566f94f1ba5feb4ce845824bc5c264999438f` |
| 18 | `theorem` | [stirlingSecond_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-succ-succ--511bd69e31a2b5084987f141.md) | 158 | `result-track:511bd69e31a2b5084987f141eff8c10ca92a0d2668c608c01188df5de41b8db1` |
| 19 | `theorem` | [stirlingSecond_eq_zero_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-eq-zero-of-lt--7931ac653ace4b9d074b3abe.md) | 162 | `result-track:7931ac653ace4b9d074b3abe942df6ab69f981faac8597b97bb85acd5ab240d7` |
| 20 | `theorem` | [stirlingSecond_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-self--3e472eb03e95c3c0d3628429.md) | 169 | `result-track:3e472eb03e95c3c0d362842935b8b7a9c2b9244de1615d13360f31408e2781ea` |
| 21 | `theorem` | [stirlingSecond_one_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-one-right--eebaeea5356b5a8541bedf59.md) | 173 | `result-track:eebaeea5356b5a8541bedf59f063918655dc199a2d8e3c0e242b1f31a9dabea5` |
| 22 | `theorem` | [stirlingSecond_succ_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/stirlingsecond-succ-self-left--5a68b5959c8684f2a93f40cd.md) | 178 | `result-track:5a68b5959c8684f2a93f40cdbd4af4d2ab8f30e9511ce1109e8f85a8b001546c` |
| 23 | `theorem` | [pow_eq_sum_stirlingSecond_mul_descFactorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stirling/Variantcadf4bbda2c28ee7110ec6feae38e3552de0a943e4dfbac6b27b68b28bed6f06.lean/declarations/pow-eq-sum-stirlingsecond-mul-descfactorial--f8a096f2912e34b4c804c04d.md) | 188 | `result-track:f8a096f2912e34b4c804c04d01dbded43238772d85828d51e19d6bf8a0d1ba88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
