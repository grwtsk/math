# Verification target: GRWTSK.Analysis.ERealExp.Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e7f2d888320076c76b6c8e434900a9e3dd52f2c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/index.md) · [Full source](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e7f2d888320076c76b6c8e434900a9e3dd52f2c`.

Source path: `GRWTSK/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exp](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp--9345a45d23caea1720ebf1b6.md) | 44 | `declaration-track:9345a45d23caea1720ebf1b67f38ab1107412f2bbb8ca7ee72bd5702f3867b99` |
| 2 | `lemma` | [exp_bot](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-bot--c6f1e7f9dbf9cd724324a132.md) | 49 | `result-track:c6f1e7f9dbf9cd724324a132bfd65e0c44d940afd7554d6d48453c9b6f42904c` |
| 3 | `lemma` | [exp_zero](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-zero--ebd22fceb57e3b8b7ef609d0.md) | 50 | `result-track:ebd22fceb57e3b8b7ef609d0db54bedbd0c2350d48fc6697e03ba11a0c94482f` |
| 4 | `lemma` | [exp_top](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-top--eb64de9518ef91bc533ba72e.md) | 51 | `result-track:eb64de9518ef91bc533ba72e70d5fffde73ca5ba52a605f23f1f75f39ce8ca7e` |
| 5 | `lemma` | [exp_coe](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-coe--ce455119ae87e09f15828bb5.md) | 52 | `result-track:ce455119ae87e09f15828bb5eb0c467e626452f8dd74fd5e77d9670967e7c95c` |
| 6 | `lemma` | [exp_eq_zero_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-eq-zero-iff--ff930e99e23b9f84c49c9a5f.md) | 54 | `result-track:ff930e99e23b9f84c49c9a5f74885df283e66b7d81b841bb009b8e51f3556810` |
| 7 | `lemma` | [exp_eq_top_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-eq-top-iff--a07ef9011cd1107dba3e888f.md) | 57 | `result-track:a07ef9011cd1107dba3e888ff150d1c6a4aaee2fddf39e9df25ae58ec6462b99` |
| 8 | `lemma` | [exp_strictMono](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-strictmono--ec9a9147a6b51fde95c38783.md) | 65 | `result-track:ec9a9147a6b51fde95c38783e57c12d7fed856db5312a04c2a8fce5958191a6f` |
| 9 | `lemma` | [exp_monotone](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-monotone--b6bf7b99dd26be69b36ebe93.md) | 77 | `result-track:b6bf7b99dd26be69b36ebe93e68aed6fb0c815cf35d87ff5dfe399fc33584a4b` |
| 10 | `lemma` | [exp_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-lt-exp-iff--208a8c986ad0c7d565efebd5.md) | 79 | `result-track:208a8c986ad0c7d565efebd59c037f04ca789f7f5542025da86e7348d221c8df` |
| 11 | `lemma` | [zero_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/zero-lt-exp-iff--ced916bbdcaad120f036cc5d.md) | 81 | `result-track:ced916bbdcaad120f036cc5dbde02b0346b65d7011a8b9d85a03b4ea7d22a612` |
| 12 | `lemma` | [exp_lt_top_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-lt-top-iff--3175a147c4512dcacec4bede.md) | 83 | `result-track:3175a147c4512dcacec4bedeb473764349464fd63f6292125a0fa90cc3f32926` |
| 13 | `lemma` | [exp_lt_one_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-lt-one-iff--b787db59f7c9e458d4cd7044.md) | 85 | `result-track:b787db59f7c9e458d4cd704481d66a86d845a93a0f824eb0fd0ea1cb85234d0c` |
| 14 | `lemma` | [one_lt_exp_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/one-lt-exp-iff--5bd77cdd46073fdf85cd97e2.md) | 87 | `result-track:5bd77cdd46073fdf85cd97e273034cf2c9dc12f02aaaa019443973000eaac7c7` |
| 15 | `lemma` | [exp_le_exp_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-le-exp-iff--9a8b61641952824ed9966f03.md) | 89 | `result-track:9a8b61641952824ed9966f036f5192ad308f1948144db222c2660776df064b4a` |
| 16 | `lemma` | [exp_le_one_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-le-one-iff--dd9fd9eb2d42926665ae0ecc.md) | 91 | `result-track:dd9fd9eb2d42926665ae0ecccb0ef44c1ac328a703697c6e7b2b51427a92e784` |
| 17 | `lemma` | [one_le_exp_iff](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/one-le-exp-iff--862d90ead40b65ebc7fbad9d.md) | 93 | `result-track:862d90ead40b65ebc7fbad9da97a64726bc7a30d50889bb970d005bcc2107de6` |
| 18 | `lemma` | [exp_le_exp](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-le-exp--b9712487fcabc36eefd45871.md) | 95 | `result-track:b9712487fcabc36eefd45871a4d5bf3278d5366de1c95f33921b13d98d1dd7a3` |
| 19 | `lemma` | [exp_lt_exp](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-lt-exp--08dd8aded1f59f9886c30e3d.md) | 97 | `result-track:08dd8aded1f59f9886c30e3d0dd8fd9b1ed4db4caf273a176461453ec00872f6` |
| 20 | `lemma` | [exp_neg](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-neg--ccea1bd83c1404f316e1f763.md) | 105 | `result-track:ccea1bd83c1404f316e1f763175e25ac8a2f2bbc5adc972be0224be728afac6a` |
| 21 | `lemma` | [exp_add](../../../../mathematics/Analysis/ERealExp/Variantdea57c21260c7d91a077cfb02fd303139a4ccb0f73d790d735c71fa7479af215.lean/declarations/exp-add--72f429a589bf0225a3f9c638.md) | 112 | `result-track:72f429a589bf0225a3f9c638144b0eba2bef22199a2a858100edfa9b7d84f338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
