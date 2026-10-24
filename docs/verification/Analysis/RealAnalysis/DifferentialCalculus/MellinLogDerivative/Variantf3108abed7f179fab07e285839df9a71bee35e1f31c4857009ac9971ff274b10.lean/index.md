# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinLogDerivative.Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b0fcf7d64749973a5fb5d946954d9abe24d966`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean.json)

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
| 1 | `def` | [centeredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep--c407f9216a520b862ceb3ece.md) | 42 | `declaration-track:c407f9216a520b862ceb3ece2e52948b2760335c97543c4ae29cf7aec5b1b65c` |
| 2 | `theorem` | [centeredTwistedPsiStep_zero_of_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-zero-of-lt-one--a22d5961613c8ae4196b9823.md) | 50 | `result-track:a22d5961613c8ae4196b98231a4e7f9fc4a8114dfc593f013525df92170e5a12` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-eq-of-one-le--106e05a969684e45b9fd2f7a.md) | 59 | `result-track:106e05a969684e45b9fd2f7a178cebd554fbe5848eff9138b7ed23a186b7c61a` |
| 4 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-natcast--6630472b379fc90df98770bd.md) | 67 | `result-track:6630472b379fc90df98770bd3105d1ac078fa9f30899639ff79a8bb4b65567c9` |
| 5 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-eq-floor-add-error--e8347eb67c7034188719c34f.md) | 82 | `result-track:e8347eb67c7034188719c34f8947596cfdefa48eac8060ca75016f746367ae91` |
| 6 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/norm-dirichletprincipalindicator-le-one--93a6a1e4de2393d89f306bc2.md) | 92 | `result-track:93a6a1e4de2393d89f306bc20c6f3a48563c66c5d55588e8af2be213febbcd21` |
| 7 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-isbigo-rpow--3cc6010a5546fefea8ac4506.md) | 104 | `result-track:3cc6010a5546fefea8ac450671d7ec765b801b7ade4e812fae3924b5c2c77679` |
| 8 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-locallyintegrable--70e8b8260ab0b99a9b88ff86.md) | 157 | `result-track:70e8b8260ab0b99a9b88ff86576710bca41c5bfa9a1cacb7c4b7e77e63741be4` |
| 9 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero--de5991f6d59abdb244aad43e.md) | 196 | `result-track:de5991f6d59abdb244aad43e0b876703ffe6a52c307f689ab43c1c22bfbeefb0` |
| 10 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsistep-isbigo-zero-rpow--2aa5f63d7515090946688bf1.md) | 206 | `result-track:2aa5f63d7515090946688bf1ae623f69e3a73954b70a55c875e47c51551824f9` |
| 11 | `def` | [centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsimellin--91f772e3085013100ce4a2c9.md) | 217 | `declaration-track:91f772e3085013100ce4a2c9bcc6a2c6b6aa8194c0baee9bb02cbf4323944d21` |
| 12 | `theorem` | [centeredTwistedPsiMellin_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsimellin-eq-integral--44c80f4b04d77bb85b40c117.md) | 226 | `result-track:44c80f4b04d77bb85b40c1175eec315ba4b1e4a8c14f8ff63b4f955fdf3d15ad` |
| 13 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/differentiableat-centeredtwistedpsimellin--d45a2af277108cf8c8071f32.md) | 250 | `result-track:d45a2af277108cf8c8071f3298df3b52ee9ce28a462f842ae964dd334a6c7376` |
| 14 | `theorem` | [centeredPsiMellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredpsimellin-differentiable--416f166f0df50d0a2e2709e6.md) | 282 | `result-track:416f166f0df50d0a2e2709e67d3f9da7a03cc67d7faf7e20ae66c2221b3b3b14` |
| 15 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/twistedvonmangoldtnormpartialsums-isbigo--d09947b8be2e674685bae905.md) | 290 | `result-track:d09947b8be2e674685bae905119950283303a549a6f888305c89f4508b606b82` |
| 16 | `def` | [uncenteredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/uncenteredtwistedpsistep--9dbd4a86865bd5d05894df5b.md) | 322 | `declaration-track:9dbd4a86865bd5d05894df5b63a54fdbec200d9a7c90e052a97eb8a798ddb20b` |
| 17 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/twistedvonmangoldtlseries-eq-uncenteredmellin--2cc8b9d49f25cb8352ce70e1.md) | 326 | `result-track:2cc8b9d49f25cb8352ce70e10b8eb0323e6decafba30346f702ffb3ce1d5549f` |
| 18 | `theorem` | [twistedPsi_isBigO_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/twistedpsi-isbigo-one--7ce664bb2949756080bff976.md) | 354 | `result-track:7ce664bb2949756080bff976bf7418ec8b96d1740d94a77bf17f9543d86a7f98` |
| 19 | `theorem` | [twistedPsiKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/twistedpsikernel-integrable--ef81eb5cf53dffe8e0952e63.md) | 363 | `result-track:ef81eb5cf53dffe8e0952e6364a7ea99ad50acfc37ed4d6f35dfb31c634bf3bf` |
| 20 | `theorem` | [principalMellinKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/principalmellinkernel-integrable--18e4f07df7cfa69807e07992.md) | 426 | `result-track:18e4f07df7cfa69807e07992d1a85da76ce61f3e65dcf0ed816407538d019d65` |
| 21 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsimellin-eq-lseries-sub-principal--f4bc99b7fd9c3237c8761e49.md) | 455 | `result-track:f4bc99b7fd9c3237c8761e49a8fd0f64026c749a6613111b794e21f28d2a7671` |
| 22 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo--1754b2a089d427b730152ab4.md) | 560 | `result-track:1754b2a089d427b730152ab46e6067ef557057bf12aa47736435bc49b248c9f3` |
| 23 | `def` | [criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/criticalrighthalfplane--c8251dc657786791436258f5.md) | 594 | `declaration-track:c8251dc657786791436258f5f54e4796ea6fb1877ff00e68ed7a3ea1d798d393` |
| 24 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/isopen-criticalrighthalfplane--0b0c23a9e302e969101ef4e9.md) | 598 | `result-track:0b0c23a9e302e969101ef4e967e18db84d5992769716695a140c85f16cc80709` |
| 25 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/ispreconnected-criticalrighthalfplane--f1cd81cce6362b1d601f26cb.md) | 602 | `result-track:f1cd81cce6362b1d601f26cb64be0634960cb28fd713b85f2ae5ad508cda82e4` |
| 26 | `structure` | [MellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/mellinlogderivativesquare--083bd6a68015ea20a6231142.md) | 615 | `declaration-track:083bd6a68015ea20a62311429043a662b9f486e576fbdf7c2714521a36062dfd` |
| 27 | `def` | [canonicalMellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/canonicalmellinlogderivativesquare--6dedbab27c44eb22ab16204d.md) | 636 | `declaration-track:6dedbab27c44eb22ab16204d777af5a9ea4ecf9971d2f2af47cf0ce536003f51` |
| 28 | `def` | [MellinLogDerivativeSquare.residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/mellinlogderivativesquare-residual--11482dd560fe4e1f987105c4.md) | 649 | `declaration-track:11482dd560fe4e1f987105c4c510e8a7aee9951db65ae2d5f565d227a90510cc` |
| 29 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/mellinlogderivativesquare-differentiableon-residual--6df5bcc14e3038e8049e2e48.md) | 656 | `result-track:6df5bcc14e3038e8049e2e487b3b12ffcab2ea7d34b004cbe83edc9e65865de0` |
| 30 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--6e53ddd12f50714f08bff10f.md) | 671 | `result-track:6e53ddd12f50714f08bff10fe71e769952e41d409bda8088de36bcb10779abd9` |
| 31 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/mellinlogderivativesquare-residual-eq-zero--df5a7dacb6541e99702f8f2e.md) | 684 | `result-track:df5a7dacb6541e99702f8f2eb66c3dd53587ebe34b57418fd4925b35b905b50f` |
| 32 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--6dfa51c6dd0b351ab5e20e1e.md) | 712 | `result-track:6dfa51c6dd0b351ab5e20e1e83e2593d4611f41f96783d8ac47e5363888386ba` |
| 33 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/poleremovedl-nowherezero-righthalfplane--c8a845a4ba2840461316f2a8.md) | 763 | `result-track:c8a845a4ba2840461316f2a8041011482f49ca8894a025b138599c08326cae63` |
| 34 | `theorem` | [LFunction_zeroFree_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/declarations/lfunction-zerofree-righthalfplane--224c9b18f26f714f0da47590.md) | 805 | `result-track:224c9b18f26f714f0da4759042454c45f633f9cda01efaaf8954145aa1a907cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
