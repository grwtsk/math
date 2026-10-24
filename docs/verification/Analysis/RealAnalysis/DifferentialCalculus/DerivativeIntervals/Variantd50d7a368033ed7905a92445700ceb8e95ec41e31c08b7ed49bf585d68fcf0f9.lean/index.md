# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeIntervals.Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b9174136fb88902cb0cb3f4b7d9a345b865828",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b9174136fb88902cb0cb3f4b7d9a345b865828`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/exp-deriv-pos--fe2705308f6bd15ac46bce68.md) | 64 | `result-track:fe2705308f6bd15ac46bce68c7a5b87019b3430da7bc2dd70aa83c19d76f1767` |
| 2 | `theorem` | [exp_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/exp-strictmono--f9a19e69d51bf937f66b2bb8.md) | 69 | `result-track:f9a19e69d51bf937f66b2bb8da624dbf12a81d95db8f9351f9bfa71eba298bfb` |
| 3 | `theorem` | [exp_deriv_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/exp-deriv-interval--4d093fecfcc86ac21399ef88.md) | 72 | `result-track:4d093fecfcc86ac21399ef882bcf676df135f4e535e631077797a3f372988702` |
| 4 | `theorem` | [log_deriv_eq_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/log-deriv-eq-inv--0465e7a38d8a734762805897.md) | 80 | `result-track:0465e7a38d8a73476280589720bf392ce4c356390c8702816d74df48407b759c` |
| 5 | `theorem` | [log_deriv_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/log-deriv-interval--4316ba5c7796e4ec06ba8655.md) | 84 | `result-track:4316ba5c7796e4ec06ba865586a87a348cffa70ab05ae7191c425a39047e720e` |
| 6 | `theorem` | [log_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/log-strictmonoon--8642b5b61407338ea61c3fc0.md) | 94 | `result-track:8642b5b61407338ea61c3fc02657d3720b85944a4df7680089bb5d256d36a2f9` |
| 7 | `theorem` | [arctan_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-deriv-eq--21e5b15f558e84708046d58e.md) | 99 | `result-track:21e5b15f558e84708046d58ebe263af72e75b50a6e0d39deaa6881484e0eab5f` |
| 8 | `theorem` | [arctan_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-deriv-pos--376cbd0ad72f381871b4255c.md) | 103 | `result-track:376cbd0ad72f381871b4255c433eb3c3a09f28fd3458f03e5523d041c4642f8b` |
| 9 | `theorem` | [arctan_deriv_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-deriv-le-one--b5a7e04461f2fd9a17aaaf6d.md) | 108 | `result-track:b5a7e04461f2fd9a17aaaf6df5455a42b186ec0fac921703c96983023934d8b1` |
| 10 | `theorem` | [arctan_deriv_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-deriv-interval--1af3445ca542f645c069704f.md) | 114 | `result-track:1af3445ca542f645c069704fab36dd54eb7e3080481caaf93844cbccc22694ce` |
| 11 | `theorem` | [arctan_deriv_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-deriv-mem-icc--e0f9cff47c96e7b10b400af3.md) | 118 | `result-track:e0f9cff47c96e7b10b400af3b3b3b0199a1978c07fb04c5fb1e99fd82992f001` |
| 12 | `theorem` | [arctan_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arctan-strictmono--112b36f30efcf0a170bc41e9.md) | 122 | `result-track:112b36f30efcf0a170bc41e9d4795e707efdf3653cc1454781efddde00e582cd` |
| 13 | `theorem` | [arsinh_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-deriv-eq--64899711e45cf17e69cb90eb.md) | 127 | `result-track:64899711e45cf17e69cb90eb4bbdfb796fc42401119dd9bb09948f3cf9ee9176` |
| 14 | `theorem` | [sqrt_one_add_sq_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sqrt-one-add-sq-ge-one--4d0989d7e73a9003a72a8156.md) | 132 | `result-track:4d0989d7e73a9003a72a8156abbba9d20983a8e1814ea10a5692453d34b8b6b6` |
| 15 | `theorem` | [sqrt_one_add_sq_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sqrt-one-add-sq-pos--c10b8df2595edaa69d2e6446.md) | 138 | `result-track:c10b8df2595edaa69d2e64462ed46074e84060d60a54663b95f83511f099bae7` |
| 16 | `theorem` | [arsinh_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-deriv-pos--694b0d1dae2db325c112b3ac.md) | 143 | `result-track:694b0d1dae2db325c112b3acae4a1ac5eaad124d821cb3af416a8e4fa09998ca` |
| 17 | `theorem` | [arsinh_deriv_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-deriv-le-one--0395a5f846678fd7315f4259.md) | 148 | `result-track:0395a5f846678fd7315f4259dc02d425643a7645a347fb07b27f085ccf801df1` |
| 18 | `theorem` | [arsinh_deriv_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-deriv-interval--ae3d89375b90e39db9de9176.md) | 153 | `result-track:ae3d89375b90e39db9de91760bf8bf5e01bc8e51082a80808c4f047ddf60584a` |
| 19 | `theorem` | [arsinh_deriv_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-deriv-mem-icc--86c80dba2c1d2d6a44647260.md) | 157 | `result-track:86c80dba2c1d2d6a44647260c1f0cbbdb23b4a3a9ea1aecab1442d895a7f5d30` |
| 20 | `theorem` | [arsinh_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/arsinh-strictmono--508f9814beea16f82230992a.md) | 161 | `result-track:508f9814beea16f82230992abc14dd11f8bf590b1bd6faa09ae8c9ede83af63c` |
| 21 | `theorem` | [sin_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sin-deriv-eq--c69d863bd6ea5547438d063b.md) | 166 | `result-track:c69d863bd6ea5547438d063bae3e688d130a76a0d291d8dd327374415f8c5d92` |
| 22 | `theorem` | [sin_deriv_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sin-deriv-abs-le-one--b6290362fcc9d3eea4023c53.md) | 171 | `result-track:b6290362fcc9d3eea4023c53429b8c4716ddb0b9b5b3deac7ece76aa1b3ebee7` |
| 23 | `theorem` | [sin_deriv_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sin-deriv-mem-icc--505f997827f8575e73c78f70.md) | 176 | `result-track:505f997827f8575e73c78f702393f6d4aaadeae4aadf7554833b6cc63b099972` |
| 24 | `theorem` | [cos_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cos-deriv-eq--d13e92dfb27b1d0920f907b5.md) | 183 | `result-track:d13e92dfb27b1d0920f907b5fda9a387fc3344151a8cfcb7b19432e61db923db` |
| 25 | `theorem` | [cos_deriv_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cos-deriv-abs-le-one--00d56bd8320862ee3dc7c76b.md) | 188 | `result-track:00d56bd8320862ee3dc7c76b1c2e586e78690b2404718d8c4b18ad62c3abc03b` |
| 26 | `theorem` | [cos_deriv_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cos-deriv-mem-icc--ce40390fb8c2367f271867e1.md) | 193 | `result-track:ce40390fb8c2367f271867e1f76a6e9f257c17d042dc1fb249faafe3b4effbf5` |
| 27 | `theorem` | [sinh_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sinh-deriv-eq--70ae08b2c878bf0800703872.md) | 202 | `result-track:70ae08b2c878bf0800703872aca747aef804e86422769272497ff429cc30797e` |
| 28 | `theorem` | [sinh_deriv_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sinh-deriv-ge-one--56c9e55a11e44f5dcb9fa5e9.md) | 207 | `result-track:56c9e55a11e44f5dcb9fa5e97f9aec5839ab9e51fa220c3c6e738d2c56953b4a` |
| 29 | `theorem` | [sinh_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sinh-deriv-pos--9ca14b87ae1c32a0687a430b.md) | 212 | `result-track:9ca14b87ae1c32a0687a430bde30bca6f43b0409608a9c514b5fcdc5b5eeb237` |
| 30 | `theorem` | [sinh_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/sinh-strictmono--d0819dda82462a7e69082135.md) | 217 | `result-track:d0819dda82462a7e6908213594d3d7e9e479fcd00bdd3b0e948cae37bba11730` |
| 31 | `theorem` | [cosh_deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-deriv-eq--55847143f02701be1eb73c42.md) | 222 | `result-track:55847143f02701be1eb73c42bd4df5c4d13161c7093eed2dd3159307b6505f5f` |
| 32 | `theorem` | [cosh_deriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-deriv-zero--57b5d0e526dbd90082207ca7.md) | 227 | `result-track:57b5d0e526dbd90082207ca7bd87953f450fd1bd09d6a660b47e5b9279e45c69` |
| 33 | `theorem` | [cosh_deriv_pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-deriv-pos-of-pos--100ba01789e41f6e87c549cb.md) | 231 | `result-track:100ba01789e41f6e87c549cbbf468309a915ca10d7cfa472864bbe60dbc288d7` |
| 34 | `theorem` | [cosh_deriv_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-deriv-neg-of-neg--77c97c5b6870c41981a07d18.md) | 236 | `result-track:77c97c5b6870c41981a07d186f7e29c2740d6c4cc3cf54dea13d57865cacd30e` |
| 35 | `theorem` | [cosh_strictAntiOn_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-strictantion-nonpos--e0aa76f38285658268b055ce.md) | 241 | `result-track:e0aa76f38285658268b055ceeaafe1e94cad9b3a719cfb2b3bb4a6728b8c59c8` |
| 36 | `theorem` | [cosh_strictMonoOn_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/cosh-strictmonoon-nonneg--e89fb1d77f2f078dd4be8ad7.md) | 255 | `result-track:e89fb1d77f2f078dd4be8ad7cf9c57b227587ba9ae79f5ef8c087cadfc2b6bd6` |
| 37 | `theorem` | [one_le_exp_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/one-le-exp-of-nonneg--75cc4fe5ed53208b1ac55135.md) | 277 | `result-track:75cc4fe5ed53208b1ac55135a558c1883576f54542c94539c93726708307b645` |
| 38 | `theorem` | [one_add_le_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/one-add-le-exp--812d6b17467d05bab9de13f8.md) | 281 | `result-track:812d6b17467d05bab9de13f807ca54bd4abc0a81bf97d43bf6448601b73a8329` |
| 39 | `theorem` | [add_one_le_exp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/add-one-le-exp--04b83be89994cac70966c043.md) | 286 | `result-track:04b83be89994cac70966c04361e2bdca176a2a89951fa0ac42b3e6738b2110a7` |
| 40 | `theorem` | [monotoneOn_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/monotoneon-of-deriv-nonneg--d1b9b87f409d495ddb06aa74.md) | 294 | `result-track:d1b9b87f409d495ddb06aa740ad06ab5532e8346e5d335685f2ed8626b225a44` |
| 41 | `theorem` | [strictMonoOn_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/strictmonoon-of-deriv-pos--2e3e39f0b5a8553fcffea062.md) | 304 | `result-track:2e3e39f0b5a8553fcffea0622e4c205d91aa6f769932b429777af291342ae2ba` |
| 42 | `theorem` | [antitoneOn_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/antitoneon-of-deriv-nonpos--4caf3edb95e9315e6d7179af.md) | 313 | `result-track:4caf3edb95e9315e6d7179af1765d7ffd66244d10da130b4f58a03f09e5576f0` |
| 43 | `theorem` | [strictAntiOn_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean/declarations/strictantion-of-deriv-neg--c43bc362efcf1b8d3b9fb2dd.md) | 323 | `result-track:c43bc362efcf1b8d3b9fb2dd79cb32514e24318efe0dc9471338ca59eb9878d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
