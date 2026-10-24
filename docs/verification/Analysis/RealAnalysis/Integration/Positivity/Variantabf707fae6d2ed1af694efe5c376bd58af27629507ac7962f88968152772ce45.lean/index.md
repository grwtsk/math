# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Positivity.Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6c668791c9dc7364259d5f960a42ccc58f9571",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6c668791c9dc7364259d5f960a42ccc58f9571`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.MGFAnalytic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/exponentialterm--8fc64041f08bb76d6d573309.md) | 30 | `declaration-track:8fc64041f08bb76d6d5733090f2885fb9c1f683e935a332852722ba36cdc1a34` |
| 2 | `lemma` | [exponentialTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/exponentialterm-hassum--23260fb21592d64393d87e95.md) | 34 | `result-track:23260fb21592d64393d87e9538f4cf928563dc47c6284ae08da0156f4623805f` |
| 3 | `theorem` | [integrable_exp_add_of_summable_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/integrable-exp-add-of-summable-moments--9c356992c186dcfce51d982c.md) | 50 | `result-track:9c356992c186dcfce51d982c5033c36b03a7e045314aaecd2caa202c75d6a167` |
| 4 | `theorem` | [integrable_exp_add_of_summable_mgf_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/integrable-exp-add-of-summable-mgf-moments--18f686e0a99a540ab5c3b64e.md) | 89 | `result-track:18f686e0a99a540ab5c3b64e24a442ba705f6a146676745b19e36547453a52ea` |
| 5 | `lemma` | [iteratedDeriv_complexMGF_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/iteratedderiv-complexmgf-real--fb74eced53c1f5637bf88135.md) | 98 | `result-track:fb74eced53c1f5637bf881350c2eabdc684171601c6e3fbf3f5a7c48d37e3694` |
| 6 | `theorem` | [integrable_exp_add_of_holomorphic_extension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/integrable-exp-add-of-holomorphic-extension--8c3a8a3c3ff84839abb95eac.md) | 108 | `result-track:8c3a8a3c3ff84839abb95eac3c6dc98044e47aa10c8a1b14e172a42d5a13bafe` |
| 7 | `theorem` | [not_analyticAt_of_finite_convergence_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/not-analyticat-of-finite-convergence-boundary--17e4ff511bab6bafc3dc2664.md) | 139 | `result-track:17e4ff511bab6bafc3dc2664d0218a549fe0ba362c63f00175676754fae56c29` |
| 8 | `theorem` | [not_analyticAt_laplace_of_finite_abscissa](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variantabf707fae6d2ed1af694efe5c376bd58af27629507ac7962f88968152772ce45.lean/declarations/not-analyticat-laplace-of-finite-abscissa--2bdd4f9e46eadb5de95078c5.md) | 188 | `result-track:2bdd4f9e46eadb5de95078c5392a501d0e1fb0695424a9c12730f56a07c497a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
