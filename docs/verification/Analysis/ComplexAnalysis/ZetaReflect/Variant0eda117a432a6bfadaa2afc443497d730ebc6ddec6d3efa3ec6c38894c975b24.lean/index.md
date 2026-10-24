# Verification target: GRWTSK.Analysis.ComplexAnalysis.ZetaReflect.Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd947d90b8eac899c03f8ed8ecdb0a83a4b24a73",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd947d90b8eac899c03f8ed8ecdb0a83a4b24a73`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zeta_conj_of_one_lt_re](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/zeta-conj-of-one-lt-re--459706d2816db9097587df4b.md) | 48 | `result-track:459706d2816db9097587df4b517b5edacd06df5494324a61dbef73fb8187b974` |
| 2 | `theorem` | [riemannZeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/riemannzeta-conj--dc7ed15b41048f6514c53bbb.md) | 70 | `result-track:dc7ed15b41048f6514c53bbb2fcef237460109ac1f3af3e7744605609dd3d49a` |
| 3 | `lemma` | [tendsto_conj_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/tendsto-conj-nhds--c8ef8032b4cf2b97286acbc7.md) | 110 | `result-track:c8ef8032b4cf2b97286acbc735bbb5f8a6ac6e12ad347f8661310979f20442fd` |
| 4 | `lemma` | [analyticAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/analyticat-conj-conj--a6a27b05d8a7402c0fd820b1.md) | 115 | `result-track:a6a27b05d8a7402c0fd820b140dedf3ce8a59e8918139e64590715d16199caa7` |
| 5 | `theorem` | [analyticOrderAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/analyticorderat-conj-conj--1dbfb2d0a6329cbcfa64eca6.md) | 124 | `result-track:1dbfb2d0a6329cbcfa64eca6234495985b46d8ed2d123ff54d6fc747315f182f` |
| 6 | `theorem` | [analyticOrderAt_zeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/analyticorderat-zeta-conj--c799872ce273496e0aff1554.md) | 152 | `result-track:c799872ce273496e0aff1554c513306953dbad05f1a73b9acf4df6d1cc5a3f1b` |
| 7 | `def` | [Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/efac--940f79d7b04fa344e939d752.md) | 171 | `declaration-track:940f79d7b04fa344e939d7522f467defb6b95e64eceb2e8c84d8420695a296f6` |
| 8 | `lemma` | [two_pi_ne_zero'](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/two-pi-ne-zero--f009466550ddbcd8b0ea6009.md) | 174 | `result-track:f009466550ddbcd8b0ea60094871ca74cfe32b4ba98a762e50f4a378a62ae91f` |
| 9 | `lemma` | [Efac_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/efac-ne-zero--12071a7fbf113493285d6176.md) | 178 | `result-track:12071a7fbf113493285d6176dbc64ea601bf9a9a87ba781e183a250239d896d9` |
| 10 | `lemma` | [analyticAt_Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/analyticat-efac--2ba07e0bdac07f7b2f8c5fc2.md) | 207 | `result-track:2ba07e0bdac07f7b2f8c5fc2f8a154067d0fb4f4ffb140128ab193b949b804c8` |
| 11 | `theorem` | [analyticOrderAt_zeta_one_sub](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/analyticorderat-zeta-one-sub--7470c14dc35a945a09ee0464.md) | 232 | `result-track:7470c14dc35a945a09ee0464b51776811814d3c68032183f239b46a5215c573f` |
| 12 | `theorem` | [zeta_reflect_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/zeta-reflect-zero--8b778dd170a53dfa4d99900d.md) | 286 | `result-track:8b778dd170a53dfa4d99900dc61c80c0e8721b547b44f97974212dee84062638` |
| 13 | `theorem` | [zeta_mult_reflect](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variant0eda117a432a6bfadaa2afc443497d730ebc6ddec6d3efa3ec6c38894c975b24.lean/declarations/zeta-mult-reflect--cf287b8eec7568afba0ed48a.md) | 322 | `result-track:cf287b8eec7568afba0ed48ac3771ff67f262c141ea29c733e598dd812c76da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
