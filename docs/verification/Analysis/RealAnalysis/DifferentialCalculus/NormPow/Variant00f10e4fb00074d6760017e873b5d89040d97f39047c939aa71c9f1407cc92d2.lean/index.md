# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormPow.Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec731a7d9ba868d41fbf109b51a137c5f0b8e71d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec731a7d9ba868d41fbf109b51a137c5f0b8e71d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/hasfderivat-norm-rpow--69e8d35ec4b0855c281051e8.md) | 28 | `result-track:69e8d35ec4b0855c281051e8f5f4dbbae5c56ed5ee68e9163470beccbe383863` |
| 2 | `theorem` | [differentiable_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/differentiable-norm-rpow--0baf2fe92c5230f26adce725.md) | 51 | `result-track:0baf2fe92c5230f26adce725ca73ef4c85dfc4a5f06314dc82551e3fdc2a1083` |
| 3 | `theorem` | [hasDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/hasderivat-norm-rpow--00e0bf64672d3b94dc653c29.md) | 55 | `result-track:00e0bf64672d3b94dc653c293480a563cc75f08770131a61433e849f0eb0e608` |
| 4 | `theorem` | [hasDerivAt_abs_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/hasderivat-abs-rpow--d4d2233421116ba224258804.md) | 59 | `result-track:d4d2233421116ba224258804d0c94371b035b94e1617f3f627a6929575f46279` |
| 5 | `theorem` | [fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/fderiv-norm-rpow--2d4ec1326fb67a1abaf88bf7.md) | 63 | `result-track:2d4ec1326fb67a1abaf88bf701a29dab58b707b3b7c6976ffe88b70cbdc0a567` |
| 6 | `theorem` | [Differentiable.fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/differentiable-fderiv-norm-rpow--d5a896735b342cc23ce4c88e.md) | 67 | `result-track:d5a896735b342cc23ce4c88e51f140fe2d0e28313f40b62128d9ca644b7821b2` |
| 7 | `theorem` | [norm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/norm-fderiv-norm-rpow-le--edc6c700c8e59235850961d2.md) | 73 | `result-track:edc6c700c8e59235850961d224db8af8c0f1b12db3f77baebc112baaa87fae2f` |
| 8 | `theorem` | [norm_fderiv_norm_id_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/norm-fderiv-norm-id-rpow--94c45e53a7704fe7515247e9.md) | 85 | `result-track:94c45e53a7704fe7515247e95450d1818db7b0e0a797a996b67038cf74fd4534` |
| 9 | `theorem` | [nnnorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/nnnorm-fderiv-norm-rpow-le--b47113e01a523d9d12c57a2e.md) | 93 | `result-track:b47113e01a523d9d12c57a2ea7595e0cfc6825f0d89592bb624d9e7680d79e86` |
| 10 | `lemma` | [enorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/enorm-fderiv-norm-rpow-le--8a48e28182280067dff764e5.md) | 98 | `result-track:8a48e28182280067dff764e552d69e874c3cc0ca63291dd2b619557b0d3d0f44` |
| 11 | `theorem` | [contDiff_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/contdiff-norm-rpow--1f83de1efd92743c7e3f72d7.md) | 104 | `result-track:1f83de1efd92743c7e3f72d7bf12ae505a66fb8a63c11e313b3290a27302afa6` |
| 12 | `theorem` | [ContDiff.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/contdiff-norm-rpow--6adc78cd2d7141640d95e9e7.md) | 120 | `result-track:6adc78cd2d7141640d95e9e705404b732287e95007bd8f59161d543f72823dba` |
| 13 | `theorem` | [Differentiable.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant00f10e4fb00074d6760017e873b5d89040d97f39047c939aa71c9f1407cc92d2.lean/declarations/differentiable-norm-rpow--4293d87d0d34496736f732d8.md) | 124 | `result-track:4293d87d0d34496736f732d87749ac9d36a715569550a0bf9193c795523a85b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
