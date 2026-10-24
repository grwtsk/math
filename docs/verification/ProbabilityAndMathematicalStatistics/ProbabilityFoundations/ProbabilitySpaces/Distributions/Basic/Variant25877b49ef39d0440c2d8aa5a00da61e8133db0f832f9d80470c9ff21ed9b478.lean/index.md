# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Basic.Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beab79bdd3cb92adb1357a3315010ccc3115485b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beab79bdd3cb92adb1357a3315010ccc3115485b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Independence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.IsGaussianProcess.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gaussian.IsGaussianProcess.Independence` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Process.HasIndepIncrements.IsGaussianProcess` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPreBrownianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal--9b77763bc29dfabdc59a599a.md) | 75 | `declaration-track:9b77763bc29dfabdc59a599a3aa88fe41ebb524cd25f543d02a5cc2403759186` |
| 2 | `lemma` | [IsPreBrownianReal.congr](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-congr--8b7f1ec56ec6b3b413040047.md) | 80 | `result-track:8b7f1ec56ec6b3b413040047b05d656529510c4ac5373bad23fc802f4989fc5a` |
| 3 | `lemma` | [IsPreBrownianReal.isGaussianProcess](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-isgaussianprocess--87394c0b3d7e041ae3682d4a.md) | 88 | `result-track:87394c0b3d7e041ae3682d4ad620f03d0f7b1210bb623de3be5dfe3efef23507` |
| 4 | `lemma` | [IsPreBrownianReal.aemeasurable](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-aemeasurable--24ef5311ca1811aca93a65f6.md) | 91 | `result-track:24ef5311ca1811aca93a65f67d95550600ae227873fc7806289c19674ceb495d` |
| 5 | `lemma` | [IsPreBrownianReal.hasLaw_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-haslaw-eval--223fe13b2557d0d027fb4e37.md) | 95 | `result-track:223fe13b2557d0d027fb4e37edb52b0dc10688c8b94bd3545ee962b107b5eb5d` |
| 6 | `lemma` | [IsPreBrownianReal.eval_zero_ae_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-eval-zero-ae-eq-zero--9a84420475d966e74e0eda25.md) | 99 | `result-track:9a84420475d966e74e0eda2508a19d904a78b25a437afd47dd5e65be440ef028` |
| 7 | `lemma` | [IsPreBrownianReal.hasLaw_sub](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-haslaw-sub--c9e9c3e7e8d1c168c3f144d3.md) | 105 | `result-track:c9e9c3e7e8d1c168c3f144d3612dd860ad54b9e85da23723ca0006f65239cfe0` |
| 8 | `lemma` | [IsPreBrownianReal.integral_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-integral-eval--3aaea6a4656511396ec70c92.md) | 110 | `result-track:3aaea6a4656511396ec70c92e4465ae0763d9173aaac7d78ec6f0904d3592111` |
| 9 | `lemma` | [IsPreBrownianReal.integrable_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-integrable-eval--87fbfd6c411dffaf80ee5130.md) | 114 | `result-track:87fbfd6c411dffaf80ee5130f504b0d36cc63019d69623d7fa0c32b95274f6ba` |
| 10 | `lemma` | [IsPreBrownianReal.covariance_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-covariance-eval--82e799c9fcc793e93d15b3c6.md) | 117 | `result-track:82e799c9fcc793e93d15b3c62c58ea6507baedbda11a8bf0bd7021753681e497` |
| 11 | `lemma` | [IsPreBrownianReal.covariance_fun_eval](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-covariance-fun-eval--7b161aa7b066cd4776350409.md) | 126 | `result-track:7b161aa7b066cd4776350409a26c4e0acd4984fa4f0f9249a2d9b6ce91763acb` |
| 12 | `theorem` | [IsGaussianProcess.isPreBrownianReal_of_covariance](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isgaussianprocess-isprebrownianreal-of-covariance--8ed2ba65d07bcc24aa6e2229.md) | 131 | `result-track:8ed2ba65d07bcc24aa6e2229ddd1ce2b036b03e0fed6b4d4dceca8c716cd94f2` |
| 13 | `lemma` | [IsPreBrownianReal.hasIndepIncrements](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-hasindepincrements--643443aa2ad3c362a24979f7.md) | 169 | `result-track:643443aa2ad3c362a24979f74ad50a2df253a819516614d086abaa3a66f98c8e` |
| 14 | `theorem` | [HasIndepIncrements.isPreBrownianReal_of_hasLaw](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/hasindepincrements-isprebrownianreal-of-haslaw--cef6a35ee75667835b1b1ff8.md) | 188 | `result-track:cef6a35ee75667835b1b1ff8efe379269d8be26d19aa302f8a6ce8feb00f427b` |
| 15 | `lemma` | [IsPreBrownianReal.neg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-neg--14c84b503b32e9801e81a9b5.md) | 211 | `result-track:14c84b503b32e9801e81a9b5fb17a710dd5f3fadfc34a699aff0c689cce716ad` |
| 16 | `lemma` | [IsPreBrownianReal.smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-smul--1d15c0928944dd4ecd29c331.md) | 220 | `result-track:1d15c0928944dd4ecd29c331d57d4cf6f8cd3491ab5a696ca7f33d9bd65aaccc` |
| 17 | `lemma` | [IsPreBrownianReal.shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-shift--a5caf9e287fc22f7f8e0035d.md) | 235 | `result-track:a5caf9e287fc22f7f8e0035d82d600d0e1f5ff473b8a3273d96cd0cb4cd421b3` |
| 18 | `lemma` | [IsPreBrownianReal.indepFun_shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-indepfun-shift--43794fbbb87cf01a5b9fecc6.md) | 253 | `result-track:43794fbbb87cf01a5b9fecc6ecce7f347698c6b30ccbe9b255ec0da8a781a27d` |
| 19 | `lemma` | [IsPreBrownianReal.inv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isprebrownianreal-inv--ee025a6ecace597b0940f4cb.md) | 277 | `result-track:ee025a6ecace597b0940f4cb80f9d04bac40de124ffbaac4bdc6abbad8d42bdf` |
| 20 | `structure` | [IsBrownianReal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isbrownianreal--bb021849147eff9b32b3344c.md) | 302 | `declaration-track:bb021849147eff9b32b3344c34b7d6a20fcaedc3433c43a2cac16e7a95dfe627` |
| 21 | `lemma` | [IsBrownianReal.neg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isbrownianreal-neg--0535a585046532bf8b2f5634.md) | 306 | `result-track:0535a585046532bf8b2f563481a1f6648d2664426101a5866c05b136ff628003` |
| 22 | `lemma` | [IsBrownianReal.smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isbrownianreal-smul--36650b430249165109faa8f5.md) | 312 | `result-track:36650b430249165109faa8f5398e956b45808ead727ba0d0a2eea481b419afd2` |
| 23 | `lemma` | [IsBrownianReal.shift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isbrownianreal-shift--da3c3d4daac6ffc76a19d81e.md) | 319 | `result-track:da3c3d4daac6ffc76a19d81ec982262dcd2a501c69b6b92d06df9ea2ad675481` |
| 24 | `lemma` | [IsBrownianReal.tendsto_nhds_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean/declarations/isbrownianreal-tendsto-nhds-zero--dc1594431f13325af33511a2.md) | 326 | `result-track:dc1594431f13325af33511a2e1ef3a909655a49739d2d8e82e910f56962f9267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
