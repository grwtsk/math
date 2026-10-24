# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpGlobalStatements.Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "343cc0d937ff968a186f6e7c523c131dbc1f1f42",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `343cc0d937ff968a186f6e7c523c131dbc1f1f42`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment--42609d012546cd24d3bebc2c.md) | 30 | `declaration-track:42609d012546cd24d3bebc2c6990aba4ad8182319eaeef697db116fcd2a717dd` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-intervalintegrable--82b284ef978675a9a1c17df5.md) | 35 | `result-track:82b284ef978675a9a1c17df592a14b4557fc02e087351cae4db675a8eff349c4` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-zero-eq-source--2b5d2723f706dc02a2d9b0ea.md) | 42 | `result-track:2b5d2723f706dc02a2d9b0ea2f78ffdaee3faf16500041cf3a8fb691d6f5e9bf` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-zero-zero--d674b7f87b369e5347d5c1d6.md) | 55 | `result-track:d674b7f87b369e5347d5c1d60f5dc8d509dbaf1c91fe07d163ee1277bd81c5a1` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpflux-hasderivat--92b5546d5344ab19e8c3237d.md) | 65 | `result-track:92b5546d5344ab19e8c3237dbbb697eab78d2bf83d1406ffd8c1e3f3f3821547` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-equation--34dbbc7fcba51cc62d20ab84.md) | 76 | `result-track:34dbbc7fcba51cc62d20ab84463b6f7ccb4c796339220b1a7ec5900e96477a63` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/re-eq-zero-of-weighted-energy--bfe66459a4285398cb59585b.md) | 111 | `result-track:bfe66459a4285398cb59585b803d13eb8ff3191727fc280eede478086050eb83` |
| 8 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-hasderivat--2ff1a4f6decc101238ae9ab5.md) | 144 | `result-track:2ff1a4f6decc101238ae9ab5efce2eb05e22545e2c29d9c7eee17336b9feea02` |
| 9 | `theorem` | [bumpMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-continuous--b9278611c27239d28784c8e8.md) | 180 | `result-track:b9278611c27239d28784c8e85423243bd1fc0e9f61d93a2622dd4714156de4ef` |
| 10 | `def` | [radialProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialprofile--80d11a36d1cf23be1cc5d1d5.md) | 185 | `declaration-track:80d11a36d1cf23be1cc5d1d5739fc50539f8bd3d729ade69b68610e291507999` |
| 11 | `def` | [radialFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialflux--85ddf4036bcdd1fafee30487.md) | 188 | `declaration-track:85ddf4036bcdd1fafee3048773b9028042af3a514c60ec9293be8303850125c1` |
| 12 | `theorem` | [radialProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialprofile-hasderivat--f65320adc3942b86a35cd9d9.md) | 192 | `result-track:f65320adc3942b86a35cd9d959ee5d2ba440848614b3964fcf4811cb556815fc` |
| 13 | `theorem` | [radialFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialflux-hasderivat--dc2a053eaa8acf6eed090166.md) | 201 | `result-track:dc2a053eaa8acf6eed090166d5a5abfe3a86b6e4f3af910f54ae4b9fc8c9d5d4` |
| 14 | `theorem` | [radialProfile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialprofile-continuous--d6440a0f17bbf17d2969774d.md) | 211 | `result-track:d6440a0f17bbf17d2969774d9643daf3d03f4f9311d0bea07d4cee0124441820` |
| 15 | `theorem` | [radialFlux_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialflux-continuous--b9d459d22e70af6218a7fa8c.md) | 215 | `result-track:b9d459d22e70af6218a7fa8c8416bee9a91221a20154d10b34da6dad617430bc` |
| 16 | `def` | [radialMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialmass--a7f0615fbeef073ea9d0d8d6.md) | 220 | `declaration-track:a7f0615fbeef073ea9d0d8d611a9222ac670369f46a294c15c31bd7ba37d0932` |
| 17 | `def` | [radialEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialenergy--ad9c3474c6a4f8c2e6965ac1.md) | 223 | `declaration-track:ad9c3474c6a4f8c2e6965ac16bb633c07e09ee6ac22e8ac34614a33f3835afaa` |
| 18 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radial-integrands-intervalintegrable--d592a117575b5747c091d02d.md) | 227 | `result-track:d592a117575b5747c091d02d88c552c0932a4d533bac124d5d15e99368011cce` |
| 19 | `theorem` | [radialEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialenergy-nonneg--d01774d889fd10d7ee2005a6.md) | 239 | `result-track:d01774d889fd10d7ee2005a66c5378a85fa4c11786c6f4355c16fce2af1e061a` |
| 20 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialprofile-eventually-ne-zero--18f2a56d21e5ec0098671309.md) | 245 | `result-track:18f2a56d21e5ec009867130931ca003d9d1344c90d0bdc7da8b57687b3c33197` |
| 21 | `theorem` | [radialMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radialmass-pos--92363c5b89b77d1955314cf5.md) | 252 | `result-track:92363c5b89b77d1955314cf5ab12d6c7bed94fd9d4372e43f5bb134f9c649b18` |
| 22 | `theorem` | [radial_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/radial-energy-identity--950cce4c26f2e8c4977e74bb.md) | 268 | `result-track:950cce4c26f2e8c4977e74bb2f8394bf623bfb4d76c28770d015d07de8ffd799` |
| 23 | `theorem` | [bumpMoment_zero_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/bumpmoment-zero-re--17309caf821fd26575e35bd3.md) | 326 | `result-track:17309caf821fd26575e35bd3d17d5613c452ee9fffdc943a3f54a949d8f65cdb` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--a009a439cde6be56d5c3249e.md) | 337 | `declaration-track:a009a439cde6be56d5c3249e81522ad944b792aba370cc16321ee806d1f1df26` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--2e016a9f362ca4748e1e8b63.md) | 341 | `declaration-track:2e016a9f362ca4748e1e8b638aa51617bd9c6383b645ccc2ec417911653c902d` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--f9a6d73bec9aa8ea06a88c72.md) | 343 | `declaration-track:f9a6d73bec9aa8ea06a88c7298fce710fd54be3b03d8a843d21e535bbf0f2828` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--4fba193380e5c0879ab121fe.md) | 345 | `declaration-track:4fba193380e5c0879ab121fe33797da26fd5bbb0ac8bd0e68d0b766920e81184` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--6b58536814a2bee9f25a972f.md) | 348 | `declaration-track:6b58536814a2bee9f25a972f40625310272a430835a37f2940b8a63095ee83e7` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--54f6a9033fc92d25ca1879c4.md) | 352 | `declaration-track:54f6a9033fc92d25ca1879c4b23db3ba9aa8a44c51ee14573ca9a7e7f542e8e7` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--5d1392aa3633e50499a7d394.md) | 356 | `declaration-track:5d1392aa3633e50499a7d3944244dbc0df590826bb88a40753213c0fe186bffe` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--19933fd6d5132360fb219485.md) | 359 | `declaration-track:19933fd6d5132360fb21948515128ee607c1bf32b0d0989f7bb18c374c93fb98` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--b62762a69b638fc2237d42f0.md) | 362 | `declaration-track:b62762a69b638fc2237d42f0ba61240cc5123e151751924c7dd2e48d55f3722c` |
| 33 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--d641609c131bd9878de0964b.md) | 368 | `declaration-track:d641609c131bd9878de0964bcae118d4bb3c8acd1a726aadc5a4f0864fee2864` |
| 34 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--ce5f1817801ed3e1b61470d4.md) | 370 | `declaration-track:ce5f1817801ed3e1b61470d4195d704f7f0811d0ebe92acc7568f93ff52deaa8` |
| 35 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--847cdaaa8c627520967ef149.md) | 372 | `declaration-track:847cdaaa8c627520967ef149cd986b98a17bd14f00a7aef2c43f7b36a33f798b` |
| 36 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--89aed24f36aa6215bc83ce1b.md) | 375 | `declaration-track:89aed24f36aa6215bc83ce1b4ad98b6ebcc58298043355d27257e152b5dd0435` |
| 37 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--a393c4db3e4997213618274f.md) | 377 | `declaration-track:a393c4db3e4997213618274f21a7ff379411cf9717952d4e358f95e7b3b219a9` |
| 38 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalStatements/Variantb112a75505855c7300ced816578478612b17729be2c096bddbab467823e83115.lean/declarations/example--3132a59399a888e0fbc5971b.md) | 384 | `declaration-track:3132a59399a888e0fbc5971b22ad1d9578ff4f509b3b8b3e1e751e670a6852c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
