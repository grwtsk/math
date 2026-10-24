# Verification target: GRWTSK.Analysis.ComplexAnalysis.ZetaReflect.Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e279fcf45f11c687d78384dbea40a6ffa3f21ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e279fcf45f11c687d78384dbea40a6ffa3f21ac`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zeta_conj_of_one_lt_re](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/zeta-conj-of-one-lt-re--cabe7341e5fa5a1300ab7b4e.md) | 40 | `result-track:cabe7341e5fa5a1300ab7b4ebf3229c35b05823e1de833727439ea7db3c94281` |
| 2 | `theorem` | [riemannZeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/riemannzeta-conj--a014f94d1059d8e541e07d70.md) | 62 | `result-track:a014f94d1059d8e541e07d70d2370ab878b7646acad437571a6ca179e0cfb166` |
| 3 | `lemma` | [tendsto_conj_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/tendsto-conj-nhds--ec49b2773ad2d2afa16fabc9.md) | 102 | `result-track:ec49b2773ad2d2afa16fabc9f67aef7af2ab8546d38afacaddf3c6600e9aa93c` |
| 4 | `lemma` | [analyticAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/analyticat-conj-conj--7d7c37a3e858a72b8d1ef2c6.md) | 107 | `result-track:7d7c37a3e858a72b8d1ef2c60703466c33a5c0d7bbca37e04ebd4009ceb3208e` |
| 5 | `theorem` | [analyticOrderAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/analyticorderat-conj-conj--83174d4f48b7e91aa9d1a241.md) | 116 | `result-track:83174d4f48b7e91aa9d1a24108e75a83e5b76ad2e079d97f9ed4a26383eef61f` |
| 6 | `theorem` | [analyticOrderAt_zeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/analyticorderat-zeta-conj--60143c2efdeb429817fba81f.md) | 144 | `result-track:60143c2efdeb429817fba81fce3f1156e4a8efea14c6a9386038d600eb14e867` |
| 7 | `def` | [Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/efac--89ef670c4601a5ce63730c55.md) | 163 | `declaration-track:89ef670c4601a5ce63730c5587d7a6e9bed0b22aaa15af7e06312ab9daf1a04c` |
| 8 | `lemma` | [two_pi_ne_zero'](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/two-pi-ne-zero--a46d84dc528d02a4db52810c.md) | 166 | `result-track:a46d84dc528d02a4db52810ceed850f727246534f434c68633d353d59c42b086` |
| 9 | `lemma` | [Efac_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/efac-ne-zero--c1cadac65a56229b4d869eb7.md) | 170 | `result-track:c1cadac65a56229b4d869eb7b0af34964b0491b75df3fb4f9eaa1b5147d267d1` |
| 10 | `lemma` | [analyticAt_Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/analyticat-efac--ecc7e526754b5f0869c1a8e6.md) | 199 | `result-track:ecc7e526754b5f0869c1a8e6ac963e965151bc80bebb3f7b30c750c623ad96d9` |
| 11 | `theorem` | [analyticOrderAt_zeta_one_sub](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/analyticorderat-zeta-one-sub--cf6eb6ea4cf5ea833e8e8b33.md) | 224 | `result-track:cf6eb6ea4cf5ea833e8e8b3386943a94f8fecaa70f6f4cf364708e153a3f28ca` |
| 12 | `theorem` | [zeta_reflect_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/zeta-reflect-zero--8d3cb9564e9565f8ad667b1e.md) | 278 | `result-track:8d3cb9564e9565f8ad667b1eecc970676709e22063ccfe518929a7bb566016d3` |
| 13 | `theorem` | [zeta_mult_reflect](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/declarations/zeta-mult-reflect--b2665fbf95b9081d975aeee0.md) | 314 | `result-track:b2665fbf95b9081d975aeee0b77a1f4bb9c3840aca1d3a20108042b29295b755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
