# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinLogDerivative.Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e502a9084252a158def2399fc084d6ac35834148",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e502a9084252a158def2399fc084d6ac35834148`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep--3d9ce80be9644eef264914cc.md) | 50 | `declaration-track:3d9ce80be9644eef264914cc6b29d778c0db0dd440ca50bc96564c9e44c5a9b5` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-natcast--cc9cb038998b2b562192476b.md) | 58 | `result-track:cc9cb038998b2b562192476bf3dafef843d8ca4a0fc549cbf63d63f6c072f0ee` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-eq-floor-add-error--f77307d35000a35d0f8cc219.md) | 73 | `result-track:f77307d35000a35d0f8cc2193e14114de311a1e6bdac93f29ee8a5916e20fb20` |
| 4 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/norm-dirichletprincipalindicator-le-one--16ee6ece42cd31cb04aa039a.md) | 83 | `result-track:16ee6ece42cd31cb04aa039a30467b7f685b3666629e4db939f1776b32db7d72` |
| 5 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-isbigo-rpow--761905235330804b529916c5.md) | 95 | `result-track:761905235330804b529916c53ac2c8f537688be8911012dfa4b8fa1937951ff3` |
| 6 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-locallyintegrable--983c3c7b8c0d71f832de38a4.md) | 148 | `result-track:983c3c7b8c0d71f832de38a466d6c5bd6a0721aaf5b99c7893b8b746c5c9b1c2` |
| 7 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero--1b29f118892895f081aafd91.md) | 187 | `result-track:1b29f118892895f081aafd91b7dcc37904f0020a33820442b8782cc8738ad336` |
| 8 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsistep-isbigo-zero-rpow--8eb4c140489eb71d213f5390.md) | 197 | `result-track:8eb4c140489eb71d213f5390058bf78239b76f6ea9cbdc8d57f3874678716bf7` |
| 9 | `def` | [centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsimellin--51247a09bbaa6da6d7866422.md) | 208 | `declaration-track:51247a09bbaa6da6d78664227d5a752a4adbb689be0f3577988141da5526dc3f` |
| 10 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/differentiableat-centeredtwistedpsimellin--5bc9ed2791e6fcb3dd8c65e3.md) | 215 | `result-track:5bc9ed2791e6fcb3dd8c65e33dccc787577af6c7b46b7e4ee5fc81482214b5fb` |
| 11 | `theorem` | [centeredPsiMellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredpsimellin-differentiable--5c34e9e7ac29467b9db59849.md) | 247 | `result-track:5c34e9e7ac29467b9db598490d2c78fda96c2ecf4a970f7ef456d003a085141b` |
| 12 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/twistedvonmangoldtnormpartialsums-isbigo--b18ef631d111615a7d322b72.md) | 255 | `result-track:b18ef631d111615a7d322b722551fe7ac427ee8bf0a7473a783546b6c8164731` |
| 13 | `def` | [uncenteredTwistedPsiStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/uncenteredtwistedpsistep--7ce42ae1f834c2da8075af45.md) | 287 | `declaration-track:7ce42ae1f834c2da8075af45cd3b5e737f920ab475b2a937efba37024d8c831a` |
| 14 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/twistedvonmangoldtlseries-eq-uncenteredmellin--4f8c0e79886ee4cd42def354.md) | 291 | `result-track:4f8c0e79886ee4cd42def354dce6dbc709a2fee42139a784a0b774d2b244664d` |
| 15 | `theorem` | [twistedPsi_isBigO_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/twistedpsi-isbigo-one--e33b0decd6768b3230e9d136.md) | 319 | `result-track:e33b0decd6768b3230e9d136cc981d4edaa4f5468c0df3fb61f55904499c874d` |
| 16 | `theorem` | [twistedPsiKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/twistedpsikernel-integrable--69260c7d68192301a3d0a3fa.md) | 328 | `result-track:69260c7d68192301a3d0a3fa7d1385c5c87ec5d08a182589359e7c3efafb1b16` |
| 17 | `theorem` | [principalMellinKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/principalmellinkernel-integrable--ea898eb4ae6e957e642ee465.md) | 391 | `result-track:ea898eb4ae6e957e642ee465fc1f0890bac0b58dbf49c0a3cf00528d7ba23bd3` |
| 18 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsimellin-eq-lseries-sub-principal--c24b80a173f1b2ebbd12a5c0.md) | 420 | `result-track:c24b80a173f1b2ebbd12a5c09cbd1bdce60755cbabe22d17ccbdbc469d17dd02` |
| 19 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo--134f1e24e1bdcf5bcd0c58a1.md) | 525 | `result-track:134f1e24e1bdcf5bcd0c58a141043b3b3724657b2ed6624747212e6c6259b7a6` |
| 20 | `def` | [criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/criticalrighthalfplane--6434bb474af636090e382044.md) | 559 | `declaration-track:6434bb474af636090e382044f6a9be61d25de487e44a35dedfc832e43d789613` |
| 21 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/isopen-criticalrighthalfplane--d9b66542f0cdb4367113f88e.md) | 563 | `result-track:d9b66542f0cdb4367113f88e3b5cc7bab55d22d2a9beb8f99e9f39df6085ff67` |
| 22 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/ispreconnected-criticalrighthalfplane--d17c61efdf189c50b84d47d0.md) | 567 | `result-track:d17c61efdf189c50b84d47d0d2f28b001757f415d43b699e57ca93e56c1087b3` |
| 23 | `structure` | [MellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/mellinlogderivativesquare--81d8c4caf270d5efe33e7c3d.md) | 580 | `declaration-track:81d8c4caf270d5efe33e7c3d9e216ee3147a8c486fbbaf3b124da31374ee63f1` |
| 24 | `def` | [canonicalMellinLogDerivativeSquare](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/canonicalmellinlogderivativesquare--d5fa1584952d63c4e29f477b.md) | 601 | `declaration-track:d5fa1584952d63c4e29f477ba20a4b5838a48c64463ee3019b1d075a3ff74f88` |
| 25 | `def` | [MellinLogDerivativeSquare.residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/mellinlogderivativesquare-residual--9b795498126d9e91f496af2f.md) | 614 | `declaration-track:9b795498126d9e91f496af2fde66dfced325a3b0605c5c6ecb2f7aba628b86ac` |
| 26 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/mellinlogderivativesquare-differentiableon-residual--15b6d50d9ce0fe938ebb7cf2.md) | 621 | `result-track:15b6d50d9ce0fe938ebb7cf22cbb2c6c7da4bac35188838c697bbd93ac47b60c` |
| 27 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--093ac1243df833305bde248a.md) | 636 | `result-track:093ac1243df833305bde248a7d549d032242a78f68ee790f14442a89b68748cb` |
| 28 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/mellinlogderivativesquare-residual-eq-zero--b1ec64059d57ee6c7771ca45.md) | 649 | `result-track:b1ec64059d57ee6c7771ca4542f25c0f79ab3de38aefd1cd23e702799e2da06f` |
| 29 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--2d1449430da556183bb51037.md) | 677 | `result-track:2d1449430da556183bb51037e4e98b441f28594a45fbb9350c555e8944b7bd65` |
| 30 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/poleremovedl-nowherezero-righthalfplane--39473f53f3eb5cd817b57e58.md) | 728 | `result-track:39473f53f3eb5cd817b57e58b57de3d7ebe243bc38baecd3442f4118dafabae4` |
| 31 | `theorem` | [LFunction_zeroFree_rightHalfPlane](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/declarations/lfunction-zerofree-righthalfplane--08b34d786417d9372664549f.md) | 770 | `result-track:08b34d786417d9372664549f8d2848388be31a491875555c831da779e0c0c758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
