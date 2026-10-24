# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroShellGrowth.Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "248fa7a39462de76ad3c0d98605b4803b2ebb954",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `248fa7a39462de76ad3c0d98605b4803b2ebb954`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/zetamajorant--ba0f1950067eabdd7b44a4c7.md) | 22 | `declaration-track:ba0f1950067eabdd7b44a4c725b91a495da051b547e044dfbb43c08f445735fc` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/zetamajorant-nonneg--ef382f575c6ff647d7e1512e.md) | 24 | `result-track:ef382f575c6ff647d7e1512e822a12c542f8421e29a4a83f8de7b801198f7630` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-zeta-nat-le--ea658d7ee615a48069a818b4.md) | 27 | `result-track:ea658d7ee615a48069a818b411e92828a640f703e11ee0021121609b999aadab` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/factorial-le-exp-square--d5bd32c0d549db0d39e81d29.md) | 45 | `result-track:d5bd32c0d549db0d39e81d29b2a121809b08576e01074a68d22221201e006128` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-gammar-even-le--23a9a0f9b126c03cdf475735.md) | 53 | `result-track:23a9a0f9b126c03cdf4757358aab27cfb3050c16e6f00c3f191625253f8f1f0d` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-completed-even-le--6ba274f2e629b963d4d89ce6.md) | 72 | `result-track:6ba274f2e629b963d4d89ce6086e4b64079384072ac1841f6fa1ae1ed3425279` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-pole-zero-le-one--61fe0040f0196bc86546047f.md) | 90 | `result-track:61fe0040f0196bc86546047fea7dc8d538be83b99dea23c5c3bc230cc5cef595` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-pole-one-le-one--79d688c8421c59ed3b22198b.md) | 97 | `result-track:79d688c8421c59ed3b22198b475ec361ed2598a2c30f716f6487b1be2be1f6ce` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/norm-completed-zero-even-le--0a679babade8cc81701961bd.md) | 110 | `result-track:0a679babade8cc81701961bdaa4fea01bb087e248d55eb7849ceb30d8f98be84` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/completed-zero-even-re-bound--377d08932032fce710a3fac8.md) | 131 | `result-track:377d08932032fce710a3fac868c512b0e814c16732e042d9ace064def50cce96` |
| 11 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-evenkernel-one-le--3cd8d7d4080e5aa8a89a2204.md) | 140 | `result-track:3cd8d7d4080e5aa8a89a22047494795a3d8daa9391682bb311d62d46b5df08c1` |
| 12 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-fmodif-im--6e9e718d559d18d753a49f70.md) | 154 | `result-track:6e9e718d559d18d753a49f70a6c04ec07915bf384b4cd3f7bbf0d070bd309acc` |
| 13 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-fmodif-nonneg--f27db904b3cfa0130168283d.md) | 160 | `result-track:f27db904b3cfa0130168283d002c8b15ecb4d7915625e4825f3cf0c77e684ea3` |
| 14 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-fmodif-real--c6783e8dd6b1b055551b5286.md) | 183 | `result-track:c6783e8dd6b1b055551b5286071ebd5a3c05f9e754b6878e1990679986cfcb20` |
| 15 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-mellin-integrable--d47947071f752c1b565d5d9e.md) | 187 | `result-track:d47947071f752c1b565d5d9e633cbfcfe5f4900e2d0e2459cb675af63563c590` |
| 16 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-lambda-integral--081a4c8ac3a0a9bc5800ac75.md) | 192 | `result-track:081a4c8ac3a0a9bc5800ac75e803c248b96dbf2024e038a03c411db9340a9e28` |
| 17 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-real-integrand--adba0492cf534d97dd61d82d.md) | 197 | `result-track:adba0492cf534d97dd61d82daf7d4258a6db8c1c0a1689f38cb6a77ab69b4bb3` |
| 18 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-real-integrable--2b723e7b9f8841ad9a4b7f49.md) | 204 | `result-track:2b723e7b9f8841ad9a4b7f4903bb4dd8f7e7b58c658fe3ebad3301fb3a6723d7` |
| 19 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-real-integral--feb6622bfabedf189645cd41.md) | 213 | `result-track:feb6622bfabedf189645cd414d1a6ad50b7a4a973df50f174e13731ae632d322` |
| 20 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-strip-bound--45df124b590ebac7881fe1af.md) | 227 | `result-track:45df124b590ebac7881fe1af19a91147aac27d7ec43fd3dfb3c05829edb94751` |
| 21 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-integer-endpoint-bound--4f8cc30791da579429868607.md) | 254 | `result-track:4f8cc30791da57942986860776c5966231c8a343ed0e05d631aaad4a382c9b5e` |
| 22 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-sphere-of-endpoint--e1613330aab347ed63f4c06c.md) | 263 | `result-track:e1613330aab347ed63f4c06c82e6ac55178441e2f40b7d6059072f47a99ea89e` |
| 23 | `lemma` | [shellGrowth_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/declarations/shellgrowth-global--093ad965f0e8a614ac0e9057.md) | 324 | `result-track:093ad965f0e8a614ac0e90574ec026bba2ce6d4316db3c82a424102c5143a7b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
