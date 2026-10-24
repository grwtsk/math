# Verification target: GRWTSK.Analysis.ComplexAnalysis.ZetaReflect.Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38e8cb2193ac13ef13fb047904bdbc74f4e3dc5f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38e8cb2193ac13ef13fb047904bdbc74f4e3dc5f`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean.json)

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
| 1 | `lemma` | [zeta_conj_of_one_lt_re](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/zeta-conj-of-one-lt-re--c13e4a2a72ca2aec266cd46a.md) | 40 | `result-track:c13e4a2a72ca2aec266cd46a2e4abb2a8cb51151a02c37d4f55985356b5f6452` |
| 2 | `theorem` | [riemannZeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/riemannzeta-conj--9d9499af601ab86334f8804d.md) | 62 | `result-track:9d9499af601ab86334f8804da86f7833c8cc04999454333841b35b4cd4007066` |
| 3 | `lemma` | [tendsto_conj_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/tendsto-conj-nhds--ee56c5bab0d6dbea31d6be63.md) | 102 | `result-track:ee56c5bab0d6dbea31d6be63048ebe5a90017541a694dbf669076756b2d93a8d` |
| 4 | `lemma` | [analyticAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/analyticat-conj-conj--4c69e196aad91960d651870c.md) | 107 | `result-track:4c69e196aad91960d651870c8a80d8d9ff781a94e0fed20c84249735906e7711` |
| 5 | `theorem` | [analyticOrderAt_conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/analyticorderat-conj-conj--264fec34864bd6490ff3655d.md) | 116 | `result-track:264fec34864bd6490ff3655d7ed1efc90b8f8f4f38d8e0a72ca84259ee82a94d` |
| 6 | `theorem` | [analyticOrderAt_zeta_conj](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/analyticorderat-zeta-conj--4e43c1510e879522a547dae0.md) | 144 | `result-track:4e43c1510e879522a547dae023acf86807ac9c9d13e3b0b71ee3586b210d9f08` |
| 7 | `def` | [Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/efac--390bb9b98bcb264b3e2e14fd.md) | 163 | `declaration-track:390bb9b98bcb264b3e2e14fdbb537f1b73f67dec27d4e4c38f9006b7ef72acb5` |
| 8 | `lemma` | [two_pi_ne_zero'](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/two-pi-ne-zero--d51026a3d9e3e59263c68e33.md) | 166 | `result-track:d51026a3d9e3e59263c68e338110469b1d20db6da5ce47ec3463a4a9a5306710` |
| 9 | `lemma` | [Efac_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/efac-ne-zero--5bd461d6f4034c3e6281f0dc.md) | 170 | `result-track:5bd461d6f4034c3e6281f0dca13f91485030e0aeded9d5257bbf2fff42bb30d2` |
| 10 | `lemma` | [analyticAt_Efac](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/analyticat-efac--99f7e1a39916e212c255c4c1.md) | 199 | `result-track:99f7e1a39916e212c255c4c1397ae452191f2dc920f87c3a22dc43805320122e` |
| 11 | `theorem` | [analyticOrderAt_zeta_one_sub](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/analyticorderat-zeta-one-sub--a452fcf2a2cf3acce2d6e3db.md) | 224 | `result-track:a452fcf2a2cf3acce2d6e3dbaa8ab2521df955fb43474407076d9eecf7601493` |
| 12 | `theorem` | [zeta_reflect_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/zeta-reflect-zero--9dc371c26e4eba3215b4ddbf.md) | 278 | `result-track:9dc371c26e4eba3215b4ddbfde44ce11e366207c63d50613fd34b55f40a33f07` |
| 13 | `theorem` | [zeta_mult_reflect](../../../../../mathematics/Analysis/ComplexAnalysis/ZetaReflect/Variantb292bfe94d88f514b9cfcf87d30faa1447c0f9e33a7a2aa9af590146a59bed60.lean/declarations/zeta-mult-reflect--791163ba39f778c088137ee3.md) | 314 | `result-track:791163ba39f778c088137ee39eee41cec5e6d55a16ca7f5cf16ff049404fd5eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
