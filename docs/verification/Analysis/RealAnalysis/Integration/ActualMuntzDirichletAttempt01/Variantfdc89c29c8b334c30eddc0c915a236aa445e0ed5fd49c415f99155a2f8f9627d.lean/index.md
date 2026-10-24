# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt01.Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f440bbb7a20f5af0c1136e6d8a8922613d5c4a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f440bbb7a20f5af0c1136e6d8a8922613d5c4a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzMellinDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample--e9312c0d739fc8304d509aef.md) | 22 | `declaration-track:e9312c0d739fc8304d509aef433bb1505106613affeab571c635b90eddfe385f` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/sourcenormmoment--aec4f286ab6cf68ff4620ccb.md) | 25 | `declaration-track:aec4f286ab6cf68ff4620ccbc44f9dc04460ae2cb58c6186e37958dea4949b62` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-integrable--eb777d545c2dcd3b65ba623c.md) | 28 | `result-track:eb777d545c2dcd3b65ba623c9a087a1ce68e6e7a46c22a60b055b548fbb463c9` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-norm--ff86ad09a41f61acbbac78d4.md) | 34 | `result-track:ff86ad09a41f61acbbac78d4c101c710b78893b0c7307787dff18f79acd67ebd` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-norm-integral--2830a3813da6d5d8426e548c.md) | 40 | `result-track:2830a3813da6d5d8426e548c56a31820478cf27995155be7884c6f097a1bf857` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-norm-integrals-summable--eeb2927c042a08b605261ecf.md) | 61 | `result-track:eeb2927c042a08b605261ecfb0070f9db50406b154f7d2a1857f04ad24445bc8` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/complexmuntz-eq-tsum--a952b6e42f78d3f1d0e5f6e3.md) | 67 | `result-track:a952b6e42f78d3f1d0e5f6e31bce6870131f736413b173d1eab3924ef6ffa992` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-tsum--c9b38b7faef27cc5a8273de7.md) | 72 | `result-track:c9b38b7faef27cc5a8273de737c04630d3f0aa1a499744ac490415454b5053f5` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/weightedsample-integral--a87dfe4b490b6451d8f6774a.md) | 76 | `result-track:a87dfe4b490b6451d8f6774a75b36fcd1a8d223fe405ff588521fe8076aa8fd6` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt01/Variantfdc89c29c8b334c30eddc0c915a236aa445e0ed5fd49c415f99155a2f8f9627d.lean/declarations/actual-muntz-mellin-dirichlet--19af8cd107059b6214032997.md) | 84 | `result-track:19af8cd107059b6214032997a96f2224062d17089206324b3296f939a9b9b138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
