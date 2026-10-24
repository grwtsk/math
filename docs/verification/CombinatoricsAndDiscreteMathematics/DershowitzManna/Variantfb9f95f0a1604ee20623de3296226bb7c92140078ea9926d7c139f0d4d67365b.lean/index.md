# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DershowitzManna.Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3ce96b10551666f81cc00b755604a7e4d9bf0a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3ce96b10551666f81cc00b755604a7e4d9bf0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt--70a410c663de32461eb9db85.md) | 43 | `declaration-track:70a410c663de32461eb9db852b444407c61276432bdf5738a7268c8a2b1224e8` |
| 2 | `lemma` | [IsDershowitzMannaLT.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt-trans--2f27250069e76b109779c9c1.md) | 51 | `result-track:2f27250069e76b109779c9c1ef32aa357084bf4da0bd6d4648980add2970eff5` |
| 3 | `def` | [OneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/onestep--8e8a6e13b4dc91d8788ee711.md) | 73 | `declaration-track:8e8a6e13b4dc91d8788ee711fd358d51f86ed5b0bc5554e79148975d56f97e8c` |
| 4 | `lemma` | [isDershowitzMannaLT_of_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt-of-onestep--f917500f508035c5e3e7436e.md) | 79 | `result-track:f917500f508035c5e3e7436e80edb8260b589f5d0db0f16c24ab427484502b62` |
| 5 | `lemma` | [isDershowitzMannaLT_singleton_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt-singleton-insert--bfe92bd97fd745aea6504675.md) | 84 | `result-track:bfe92bd97fd745aea6504675acd3f4b050ff68c2dfde4061a195bd610c168ce2` |
| 6 | `lemma` | [acc_oneStep_cons_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/acc-onestep-cons-of-acc-lt--a06054dd79e08886c73e7fbb.md) | 101 | `result-track:a06054dd79e08886c73e7fbb01d14693245d95417c1e287861e99d3c08622011` |
| 7 | `lemma` | [acc_oneStep_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/acc-onestep-of-acc-lt--d0fb270f6b9b84af2efeb171.md) | 120 | `result-track:d0fb270f6b9b84af2efeb1711eaf61c9bdfe29efb36585d80eeb061b8a24080b` |
| 8 | `lemma` | [isDershowitzMannaLT_singleton_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt-singleton-wf--f25799051f477374cf7547e5.md) | 130 | `result-track:f25799051f477374cf7547e5adcf5c46eefefeb34ec552a29ce422763fd4945d` |
| 9 | `lemma` | [transGen_oneStep_of_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/transgen-onestep-of-isdershowitzmannalt--53d8ce7d27ddf662835d4b9a.md) | 134 | `result-track:53d8ce7d27ddf662835d4b9afc64c263eab2fd3a825a57dbd3f75602c1085996` |
| 10 | `lemma` | [isDershowitzMannaLT_of_transGen_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/isdershowitzmannalt-of-transgen-onestep--fb303379b9712cf8751be072.md) | 149 | `result-track:fb303379b9712cf8751be0725405d33b8e221abba1a4ec744ecfad3e27f1a362` |
| 11 | `lemma` | [transGen_oneStep_eq_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/transgen-onestep-eq-isdershowitzmannalt--2cd59f5e137985000f9161d4.md) | 155 | `result-track:2cd59f5e137985000f9161d4f03f514a8d22435fd6c17884ae7e63758654ec59` |
| 12 | `theorem` | [wellFounded_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/wellfounded-isdershowitzmannalt--5c042dc8910b94b295c3a477.md) | 161 | `result-track:5c042dc8910b94b295c3a477ed68d96fd2dfb440e94b2d14334fd3384ce26e48` |
| 13 | `instance` | [instWellFoundedisDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variantfb9f95f0a1604ee20623de3296226bb7c92140078ea9926d7c139f0d4d67365b.lean/declarations/instwellfoundedisdershowitzmannalt--8d1e1daeccf4e5fa94ae04c8.md) | 166 | `declaration-track:8d1e1daeccf4e5fa94ae04c8aa1a833c203e1294ed559dda49aaf9ccdf236552` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
