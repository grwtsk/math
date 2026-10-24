# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinLogDerivative.Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep--62dc1921c2b2a257b1a5626b.md) | 42 | `declaration-track:62dc1921c2b2a257b1a5626bc5b7802ef6fb2c96d8c9dd047e4cb59a1f59edb2` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-natcast--155c3bc3fc845d5a297bb26d.md) | 50 | `result-track:155c3bc3fc845d5a297bb26d56ba011b29bdf7258df3a21e0b6007020dc44924` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-eq-floor-add-error--80b9eab7d5342d2eb71fafc5.md) | 65 | `result-track:80b9eab7d5342d2eb71fafc5546590538460028c6c80fccf09f2fec440fd0975` |
| 4 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/norm-dirichletprincipalindicator-le-one--f0148bc4fce9d5185cecec42.md) | 75 | `result-track:f0148bc4fce9d5185cecec42b1af5ae3204cd7d61cc2636341db6dd0cf778651` |
| 5 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-isbigo-rpow--7f3a8a26dcc7271dd46ff59a.md) | 87 | `result-track:7f3a8a26dcc7271dd46ff59a7a01de9a56a82c51e26b6e59795610c0daf4e1da` |
| 6 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-locallyintegrable--49469f9fcb80284f0c1d0837.md) | 140 | `result-track:49469f9fcb80284f0c1d0837a7fa2998df2c07c69b0853241d013a476c90e22f` |
| 7 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero--3a08a4ba71581e737b5bc9fc.md) | 179 | `result-track:3a08a4ba71581e737b5bc9fca01a3fc3ffe78cafd325f058a3de10e0fed7c455` |
| 8 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsistep-isbigo-zero-rpow--b1551a2c23836bd56d911ccd.md) | 189 | `result-track:b1551a2c23836bd56d911ccd17e80dfced966948cd781149c34827e1d93cd8ef` |
| 9 | `def` | [centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsimellin--60f4d74bace4601582d24f8a.md) | 200 | `declaration-track:60f4d74bace4601582d24f8ad375401a6620407759c58f32bf44463c4ee8e04d` |
| 10 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/differentiableat-centeredtwistedpsimellin--89623a82581dae5fa96a9002.md) | 207 | `result-track:89623a82581dae5fa96a9002e57eabe87076afb19134c9ab7926c52a7695115b` |
| 11 | `theorem` | [centeredPsiMellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredpsimellin-differentiable--a7ac54612428f4d855afe9e2.md) | 239 | `result-track:a7ac54612428f4d855afe9e2c58f77a72d77ad56fd87c07848e9dbdfaef26c3b` |
| 12 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/twistedvonmangoldtnormpartialsums-isbigo--ee923c520b0831b541f894ec.md) | 247 | `result-track:ee923c520b0831b541f894ec4451e1ddf0efe0ed853615a6552b5e564f38e6d3` |
| 13 | `def` | [uncenteredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/uncenteredtwistedpsistep--f71138d413fddc76cc48fc97.md) | 279 | `declaration-track:f71138d413fddc76cc48fc97cebbb99dfe139e04467c353e638ce297e7a61249` |
| 14 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/twistedvonmangoldtlseries-eq-uncenteredmellin--d9b0738ccc9f6bd682aaf6fb.md) | 283 | `result-track:d9b0738ccc9f6bd682aaf6fb7f2fb11c9d4c38580483c27a49951194982c7cb3` |
| 15 | `theorem` | [twistedPsi_isBigO_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/twistedpsi-isbigo-one--9084e782a2307fb451ffb75b.md) | 311 | `result-track:9084e782a2307fb451ffb75b06dff253f10bdf664e45e028dea2f93b1a2798a7` |
| 16 | `theorem` | [twistedPsiKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/twistedpsikernel-integrable--24be713cceecbd1805c5578f.md) | 320 | `result-track:24be713cceecbd1805c5578ff43d2ef1f5d81a387e8a6d7482147845babc07eb` |
| 17 | `theorem` | [principalMellinKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/principalmellinkernel-integrable--f85312725df83d0b337d8786.md) | 383 | `result-track:f85312725df83d0b337d8786a4a7851235f34b6f31133eee8cf7051f40c88548` |
| 18 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsimellin-eq-lseries-sub-principal--aca4c3d8b18e27eec0fb74e9.md) | 412 | `result-track:aca4c3d8b18e27eec0fb74e924dbfb44f1fd42c360d4ba4ec957bb2a0437265c` |
| 19 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo--10d5c7f41dd18cb2462c7137.md) | 517 | `result-track:10d5c7f41dd18cb2462c71373428c7a1cca1e1d8f12049d77dbc485e4991aa61` |
| 20 | `def` | [criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/criticalrighthalfplane--35ffa183edc0ecba1e5d758f.md) | 551 | `declaration-track:35ffa183edc0ecba1e5d758f14a8e20c534ab2e4f29edf2d656a9ca682645508` |
| 21 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/isopen-criticalrighthalfplane--3a62e645e4ef98376ed55b52.md) | 555 | `result-track:3a62e645e4ef98376ed55b52deca3382302ec0a914c23a752e6b39c400f59dbc` |
| 22 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/ispreconnected-criticalrighthalfplane--3d933df5c181566c0b65d706.md) | 559 | `result-track:3d933df5c181566c0b65d706382ad49457d42e556fff4e83a14850c733a9877b` |
| 23 | `structure` | [MellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/mellinlogderivativesquare--6f34949d6e635d0f41d45958.md) | 572 | `declaration-track:6f34949d6e635d0f41d45958365815cdd103c3c60293d9aa5f9cfb1bf13715f4` |
| 24 | `def` | [canonicalMellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/canonicalmellinlogderivativesquare--5475767f788acd2021e2f7d3.md) | 593 | `declaration-track:5475767f788acd2021e2f7d3a9cbff4edcfa9cd0233429742d9f28cd1db6a381` |
| 25 | `def` | [MellinLogDerivativeSquare.residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/mellinlogderivativesquare-residual--9a0e10ac1f9d8723094065ce.md) | 606 | `declaration-track:9a0e10ac1f9d8723094065cecd6419335887fd9abef738123636b6d16b2f7219` |
| 26 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/mellinlogderivativesquare-differentiableon-residual--99849f980dd19bf1866b643a.md) | 613 | `result-track:99849f980dd19bf1866b643a5a927fc5ffe3c6fb9d4d3c17fd00fb6a24842690` |
| 27 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--72e3b00deae2d055cc8cd9b2.md) | 628 | `result-track:72e3b00deae2d055cc8cd9b2b148a2e8ac75bffdc0035879e1a8d0c98f5648d3` |
| 28 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/mellinlogderivativesquare-residual-eq-zero--5ab146900ef738fc71d4e0b9.md) | 641 | `result-track:5ab146900ef738fc71d4e0b97b056e1b75ceb1088a99b23f148ed37ac731d13b` |
| 29 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--43988d754bfc686a6c156f00.md) | 669 | `result-track:43988d754bfc686a6c156f00319e054638c65548a40c84618668ecef535bc2d2` |
| 30 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/poleremovedl-nowherezero-righthalfplane--57946bc1c44d03579e6c7d63.md) | 720 | `result-track:57946bc1c44d03579e6c7d636790fe42799a473b72dd773e1363dfdc9ebf4f83` |
| 31 | `theorem` | [LFunction_zeroFree_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/declarations/lfunction-zerofree-righthalfplane--15e804c4990a29bdcf613a5c.md) | 762 | `result-track:15e804c4990a29bdcf613a5c3f66547709dc20a308a7728bdf5fa4f6cc26c7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
