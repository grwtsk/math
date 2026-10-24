# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt04.Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb36b881d9bf7fbd21cd902d3f447265b71a46a9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb36b881d9bf7fbd21cd902d3f447265b71a46a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzMellinDomain` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample--71cc7f18aa3bea234446476f.md) | 14 | `declaration-track:71cc7f18aa3bea234446476f2b8a172b2eb997f1a2198f01fdf50ae12bf7f104` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/sourcenormmoment--0930d5a8c095d528037a35eb.md) | 17 | `declaration-track:0930d5a8c095d528037a35eb8ea5faf1d8ac1f3a0eb5c9d0ec8ba1749ac1b119` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-integrable--061f0e49f7270dca18926af3.md) | 20 | `result-track:061f0e49f7270dca18926af3c314c9bc1f4d7952365b25e2ceefff7ff1c685a9` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-norm--b2558728f420d71d14b32c4e.md) | 27 | `result-track:b2558728f420d71d14b32c4e97b193679d966711cda7aeaf4db6e643a7068f19` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-norm-integral--9fe0a7472168e5fac9189ab9.md) | 33 | `result-track:9fe0a7472168e5fac9189ab968f11c80201332d85a4068867a00d1f42123cc40` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-norm-integrals-summable--0159713a562b8a0b6495e8d4.md) | 55 | `result-track:0159713a562b8a0b6495e8d4e0298d300a6f2e22f55bbbab39d140548feaa43c` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/complexmuntz-eq-tsum--4ff57ba016c4dbebef888847.md) | 62 | `result-track:4ff57ba016c4dbebef888847bd8248d060a4bdd99f889dc53a253ee87bcfb9a6` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-tsum--5b26d353e5d66e018dd02fbf.md) | 67 | `result-track:5b26d353e5d66e018dd02fbf9ad586b43554fbd65886e97debe1d2e9448c50f2` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/weightedsample-integral--5248136bfa0aa1ac8faad8ee.md) | 71 | `result-track:5248136bfa0aa1ac8faad8eed79251620f2aa289623c23643da72acd58bbdf68` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/declarations/actual-muntz-mellin-dirichlet--03df1ccbdcd877e206095458.md) | 79 | `result-track:03df1ccbdcd877e206095458b56683e6d263bb11b3aec99eb4f073eeaeb1055e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
