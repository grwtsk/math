# Verification target: GRWTSK.Analysis.ComplexAnalysis.Analytic.Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d3ba84205d8d2f70a1b1448d53cd927a6c59c41",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d3ba84205d8d2f70a1b1448d53cd927a6c59c41`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticAt_clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-clog--60447dfe08bd4a054012006f.md) | 33 | `result-track:60447dfe08bd4a054012006f0b72ee362e0ad3f824c281f3597805dce8c59df0` |
| 2 | `theorem` | [AnalyticAt.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-clog--a26915aa6cc42a7704d8ae1e.md) | 41 | `result-track:a26915aa6cc42a7704d8ae1e1701fd511c666e85b523d95b647d52cb44372563` |
| 3 | `theorem` | [AnalyticWithinAt.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticwithinat-clog--c8fccc3dbf6ca75215bdc553.md) | 45 | `result-track:c8fccc3dbf6ca75215bdc55301fbd8ccf85bafbd249df0e901081497b0a98d3c` |
| 4 | `theorem` | [AnalyticOnNhd.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-clog--33de3a622f627acff1f95191.md) | 50 | `result-track:33de3a622f627acff1f95191f03211226c16c06fb53f0520fb62d90d222332c3` |
| 5 | `theorem` | [AnalyticOn.clog](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-clog--53a29db84d2d9f521f23f196.md) | 54 | `result-track:53a29db84d2d9f521f23f196244ae266f0b64e23e8da6e5cdba40bd66556e94b` |
| 6 | `theorem` | [AnalyticWithinAt.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticwithinat-cpow--95f8ad9445027bfc89c9c415.md) | 59 | `result-track:95f8ad9445027bfc89c9c41548630b5ee03006fcbb960b6207d4996d637386f6` |
| 7 | `theorem` | [AnalyticAt.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-cpow--afb9e19edf54d1ce7627f7a5.md) | 70 | `result-track:afb9e19edf54d1ce7627f7a5a202ff3e648ec11253f426ea610bd3a2c639fe43` |
| 8 | `theorem` | [AnalyticOn.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-cpow--6b68cd4929ed765200591b03.md) | 76 | `result-track:6b68cd4929ed765200591b03202f99cf840d24a93117774b3364302a796fc322` |
| 9 | `theorem` | [AnalyticOnNhd.cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-cpow--ba08ff9d03a5af372195ea8a.md) | 81 | `result-track:ba08ff9d03a5af372195ea8ae102c3936dbaaddf1adc295f0ef38bf9cc3004eb` |
| 10 | `lemma` | [AnalyticAt.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-re-ofreal--d41acc055bc6f17c4b2b798c.md) | 90 | `result-track:d41acc055bc6f17c4b2b798c402dc17e7f2bb74f16a3693650ac26b22873ad06` |
| 11 | `lemma` | [AnalyticAt.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-im-ofreal--4e2ba5ee2671cd879a33aa39.md) | 95 | `result-track:4e2ba5ee2671cd879a33aa3999a0073ca7ff9497a09a1c13311952895406f7a5` |
| 12 | `lemma` | [AnalyticWithinAt.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticwithinat-re-ofreal--1ce2bda8561d9b8cc277f1fc.md) | 99 | `result-track:1ce2bda8561d9b8cc277f1fcb1e3bde32549c0ab57dc243a3c65bcc764fec01b` |
| 13 | `lemma` | [AnalyticWithinAt.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticwithinat-im-ofreal--81b15fd11e49f1f3dbcb266b.md) | 104 | `result-track:81b15fd11e49f1f3dbcb266bb698fd6e8bc8cbe293471fa579ebe35b9adf3892` |
| 14 | `lemma` | [AnalyticOn.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-re-ofreal--23b9b6973e049ce375e5dcc6.md) | 109 | `result-track:23b9b6973e049ce375e5dcc6c3f20c780e6a562b2243453cb324bec594346613` |
| 15 | `lemma` | [AnalyticOn.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-im-ofreal--6ac8ac15c161f32b90b20bfb.md) | 114 | `result-track:6ac8ac15c161f32b90b20bfbf19ae9e3bdff4db4c899d6a55a74beb982787704` |
| 16 | `lemma` | [AnalyticOnNhd.re_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-re-ofreal--aee2300efc21d34220fab3d0.md) | 119 | `result-track:aee2300efc21d34220fab3d0ca457fae4c268d9597bee7cf2b35dbae70b43eb0` |
| 17 | `lemma` | [AnalyticOnNhd.im_ofReal](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-im-ofreal--9881c1d819d7f94918419a59.md) | 124 | `result-track:9881c1d819d7f94918419a590660131ee708ce404201cdccabc61111d5e561d6` |
| 18 | `lemma` | [analyticAt_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-log--32917eb6043ad6fc4116fc36.md) | 136 | `result-track:32917eb6043ad6fc4116fc365402dcb2bdb7cb7e0f84f941a4ef812cf955e576` |
| 19 | `lemma` | [analyticOnNhd_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-log--4dc213ae1c4903e06a80384d.md) | 142 | `result-track:4dc213ae1c4903e06a80384d706b947682abc74d0d1c344af61ba5801ba4c03a` |
| 20 | `lemma` | [analyticOn_log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-log--a4045131e836f0b01572d615.md) | 144 | `result-track:a4045131e836f0b01572d61539025fc98475bc592e20f0562cf0fb5c548f7eca` |
| 21 | `lemma` | [AnalyticAt.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticat-log--920126138eff69cf9ca8c5b2.md) | 147 | `result-track:920126138eff69cf9ca8c5b2d3042b3ebd7b31b94faf1f443a0d9cd21cdad9f7` |
| 22 | `lemma` | [AnalyticWithinAt.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticwithinat-log--97825b7c3bf6ad18cad1cede.md) | 151 | `result-track:97825b7c3bf6ad18cad1cede8f65a3d6056eb460e5c5f42821a0372c4b883f7c` |
| 23 | `lemma` | [AnalyticOnNhd.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticonnhd-log--dd964d20ebdd75f1fa3f521b.md) | 155 | `result-track:dd964d20ebdd75f1fa3f521be2053c648c87ad703b9918348b7288fa04c86804` |
| 24 | `lemma` | [AnalyticOn.log](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantf98e10d62b050e0dde0041919216dea1c52755a83b5672bd3b41db9c50a4bf6e.lean/declarations/analyticon-log--299a5218524eaf364434ac6c.md) | 159 | `result-track:299a5218524eaf364434ac6ca494e3a069b67b6c9e0f9d474bb6573ea81ffba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
