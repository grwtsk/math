# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b699fc87d4882f0ad18076248869f9ba50eedc",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b699fc87d4882f0ad18076248869f9ba50eedc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaEven` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPsiTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetapsiterm--eb0bb43437d500ed68d251c4.md) | 46 | `declaration-track:eb0bb43437d500ed68d251c4fdccb1080543f52080734e422037b31f6a25cec6` |
| 2 | `def` | [thetaPsi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetapsi--873e09f6f4df2e1312888f65.md) | 50 | `declaration-track:873e09f6f4df2e1312888f657b12003c47dac69af46abd2fd9987aaaf70c40d6` |
| 3 | `def` | [thetaAMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamode--9850b0a640483909c592e114.md) | 54 | `declaration-track:9850b0a640483909c592e114b37b9d780f19b1c8f7a971a77afbac188735f8b1` |
| 4 | `def` | [thetaAModeDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodederiv--ecbe45096a7a06cdc5f35ef3.md) | 58 | `declaration-track:ecbe45096a7a06cdc5f35ef3bb3f31095cc85b77e2a19e93da2a0155491f68c1` |
| 5 | `def` | [thetaAModeSecond](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodesecond--b935933696347d1c2acf7b3d.md) | 63 | `declaration-track:b935933696347d1c2acf7b3d8f14b0396d8fa6ada78368367afd905371f9c1a0` |
| 6 | `def` | [thetaA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaa--d1df95601ca54e2758539856.md) | 69 | `declaration-track:d1df95601ca54e27585398566802c46051f4e2089c134bda39f3f55dcd8a8eae` |
| 7 | `def` | [thetaADerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaaderivseries--6aad304a2da8257c6e21175d.md) | 73 | `declaration-track:6aad304a2da8257c6e21175d938e47f95362826046257344a4412aa31c102b80` |
| 8 | `def` | [thetaASecondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaasecondseries--5a9a520dd1b94b247adde838.md) | 77 | `declaration-track:5a9a520dd1b94b247adde83802c38d505de5302ddb9c5da93d1382e5fb889248` |
| 9 | `theorem` | [thetaAMode_eq_gaussian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamode-eq-gaussian--42b1e37f97adf64822753f63.md) | 80 | `result-track:42b1e37f97adf64822753f639b6e62c9e8975c4751c84d54a6988147af3c0026` |
| 10 | `theorem` | [thetaAModeDeriv_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodederiv-eq-gaussians--5f6958c1c134fec01ba22d7a.md) | 85 | `result-track:5f6958c1c134fec01ba22d7aaa6949e2c9cb47d117910c36b71f8f7c3a1ba7b6` |
| 11 | `theorem` | [thetaAModeSecond_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodesecond-eq-gaussians--2618012ba7e2f4eb38e65beb.md) | 98 | `result-track:2618012ba7e2f4eb38e65bebb5a8024d9e2172ce085679265f445cdfaac6b0e7` |
| 12 | `theorem` | [thetaAModeSecond_sub_mode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodesecond-sub-mode--a7dde0629baadbdb57037cf5.md) | 118 | `result-track:a7dde0629baadbdb57037cf5633908f2fc8fcaa1f160373297db1a5fa5360666` |
| 13 | `theorem` | [thetaAMode_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamode-summable--3c54ad16611b83208fd88b76.md) | 124 | `result-track:3c54ad16611b83208fd88b7629d58f560ff2303288b1baebbcf5bd847fd7da1e` |
| 14 | `theorem` | [thetaAModeDeriv_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodederiv-summable--47f3278a7812b4e4e233df1f.md) | 130 | `result-track:47f3278a7812b4e4e233df1fdc2833cf2d54cc54ce4726d3ca4cd094d3930741` |
| 15 | `theorem` | [thetaAModeSecond_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodesecond-summable--8f2516bd25fb79a41afc75d2.md) | 140 | `result-track:8f2516bd25fb79a41afc75d2444116d31ace02ee85bbb537a6e2d22ecd3a3529` |
| 16 | `theorem` | [thetaA_eq_tsum_modes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaa-eq-tsum-modes--ecd6539a1b0137526a9edef8.md) | 152 | `result-track:ecd6539a1b0137526a9edef86802869a3b37ed999d32c9249a9fed19ee91c700` |
| 17 | `theorem` | [thetaAMode_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamode-hasderivat--4dadd3ce0187a6a3eaf7b2c7.md) | 157 | `result-track:4dadd3ce0187a6a3eaf7b2c7c95c437704b5b35f7bf3c648a530fe58177c400c` |
| 18 | `theorem` | [thetaAModeDeriv_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodederiv-hasderivat--81348b0922239d650fadb3cf.md) | 182 | `result-track:81348b0922239d650fadb3cf4504df03b16f4b591c6f0b5dc03848e773d31483` |
| 19 | `def` | [thetaADerivCompactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaaderivcompactbound--d970d87ec369a7ed1ba6cf48.md) | 206 | `declaration-track:d970d87ec369a7ed1ba6cf48092665c6e461cdb826a86f11649ccb32598aa6d0` |
| 20 | `def` | [thetaASecondCompactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaasecondcompactbound--335cb571c9fa69ff10ecc099.md) | 212 | `declaration-track:335cb571c9fa69ff10ecc09919292680cffd165a038695c1171d1bdd5cd1fa93` |
| 21 | `theorem` | [thetaADerivCompactBound_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaaderivcompactbound-summable--2be3138024704cf96db38aa7.md) | 219 | `result-track:2be3138024704cf96db38aa796f68f684629edd9806fdea50400f9a33e2f0673` |
| 22 | `theorem` | [thetaASecondCompactBound_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaasecondcompactbound-summable--a12142d17aa90f27f0f5b1a3.md) | 226 | `result-track:a12142d17aa90f27f0f5b1a3c67cf7d5f12e800f2f65fe18ca627f609c6f041a` |
| 23 | `theorem` | [f_nat_exp_four_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/f-nat-exp-four-mono--668a9a4443ef9687b295618a.md) | 235 | `result-track:668a9a4443ef9687b295618a3b6ca937a6b634eee8b7fbc44998ea03076a798b` |
| 24 | `theorem` | [thetaAModeDeriv_norm_le_compactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodederiv-norm-le-compactbound--f67634e8ff11131dc322416c.md) | 246 | `result-track:f67634e8ff11131dc322416cce9a458e7681a3b6092c27bc3bd0f1a8bbdfa670` |
| 25 | `theorem` | [thetaAModeSecond_norm_le_compactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaamodesecond-norm-le-compactbound--43a67d1856c9b6a4379f8bff.md) | 262 | `result-track:43a67d1856c9b6a4379f8bff7077a83f8acee96a34396edc4a2dca3f4f84277e` |
| 26 | `theorem` | [hasDerivAt_thetaA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/hasderivat-thetaa--4acd3e87cf798d91b8b776a8.md) | 291 | `result-track:4acd3e87cf798d91b8b776a868b94d0fce23e572045baf04946d32f942202b93` |
| 27 | `theorem` | [hasDerivAt_thetaADerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/hasderivat-thetaaderivseries--e296621bf60894e02895c641.md) | 307 | `result-track:e296621bf60894e02895c6410fba1771a6003ded3068467adf13583aac1fce5d` |
| 28 | `theorem` | [thetaA_second_deriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaa-second-deriv-sub--41bea10dfd25f624bf824219.md) | 321 | `result-track:41bea10dfd25f624bf824219cf6f5035fc90fe3fbf179d1aa29034bf6dbf1834` |
| 29 | `theorem` | [thetaPsi_eq_cosKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetapsi-eq-coskernel--e833b765aafc763e134c9507.md) | 339 | `result-track:e833b765aafc763e134c95078e203b53d723140c766c2257a0b79e69d0c91252` |
| 30 | `theorem` | [exp_four_rpow_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/exp-four-rpow-half--bdbfb89e0da4dac28ffcfc60.md) | 348 | `result-track:bdbfb89e0da4dac28ffcfc60d5d57e505edc5c0d2c16b3bf93188d62385063bb` |
| 31 | `theorem` | [one_div_exp_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/one-div-exp-four--b5a1c945b43abeac82f68233.md) | 354 | `result-track:b5a1c945b43abeac82f68233239d52bc7b4d6bd07a03b471322e6e23248e4c8e` |
| 32 | `theorem` | [thetaA_reflection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaa-reflection--b5d1f0866c0c27bf7b8a8b40.md) | 361 | `result-track:b5d1f0866c0c27bf7b8a8b40b6968e04de54325d590b920501689ac671756795` |
| 33 | `theorem` | [thetaA_deriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/thetaa-deriv-zero--4f81edcf2f5cb97664afd361.md) | 379 | `result-track:4f81edcf2f5cb97664afd3619792a8836ede67bfe728613eed428c2ce41796f2` |
| 34 | `theorem` | [theta_differential_bridge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/declarations/theta-differential-bridge--402edc5a59d1252aef178fd4.md) | 412 | `result-track:402edc5a59d1252aef178fd4a16f0642326c60664e1d55dacde45e121bc0c03c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
