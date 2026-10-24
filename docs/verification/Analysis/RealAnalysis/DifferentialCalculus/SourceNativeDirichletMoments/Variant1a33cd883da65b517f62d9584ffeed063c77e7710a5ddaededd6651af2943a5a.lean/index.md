# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceNativeDirichletMoments.Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a21c13c1547fdb29adc9792c0c9d3857b6d31d6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a21c13c1547fdb29adc9792c0c9d3857b6d31d6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/dirichletmoment--c93f4f110f26382777e1d38a.md) | 15 | `declaration-track:c93f4f110f26382777e1d38ad918f1c97f33ea5ac89e916bb029813e6c92bd7e` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/dirichletmoment-nonneg--8cf3c19e8dbba30eb2f64d83.md) | 19 | `result-track:8cf3c19e8dbba30eb2f64d83820b9bef79cefa02c8d05d59028de93ae2f188d8` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/mangoldt-abscissa-le-one--2d5e279779a743b365f60e9c.md) | 26 | `result-track:2d5e279779a743b365f60e9cbd89e4f428bdeaafc7b36863e3981572c22a64c1` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/iterate-logmul-eq--863dd7797e219e884f5aa787.md) | 32 | `result-track:863dd7797e219e884f5aa7876a56c2d3d53f2f2fb0a6f1e107ad4ce10ad245e1` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/dirichletmoment-summable--c100acd1ca48259df652997c.md) | 41 | `result-track:c100acd1ca48259df652997c036ed70bc8130e57f1a7c8f66a5a813afa6435ef` |
| 6 | `theorem` | [log_moment_series_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/log-moment-series-eq--780fde371a54546767ce3b42.md) | 63 | `result-track:780fde371a54546767ce3b4279d60b67e33f62da95e6fdbf9de50270e15bf263` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/native-series-hasderivat-two--7f6580411bed14404f4e44c6.md) | 91 | `result-track:7f6580411bed14404f4e44c6d62f0a68e173c7222dfd95e6ac78d2b3c117a05a` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/native-series-second-derivative-two--a83db11425381ae4e9d9db9a.md) | 102 | `result-track:a83db11425381ae4e9d9db9afe46e86357baddb7d33d409da0ee9f09649379d9` |
| 9 | `theorem` | [combinedMultiplier_eventually_eq_series](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/combinedmultiplier-eventually-eq-series--a25ef5e2c5ab8d7afe3e5904.md) | 111 | `result-track:a25ef5e2c5ab8d7afe3e59043fff878b650c134e57fb0e6d1d46cf7a3a373e02` |
| 10 | `theorem` | [combinedMultiplier_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/combinedmultiplier-hasderivat-two--a02baabc8f18a5c58252f0de.md) | 120 | `result-track:a02baabc8f18a5c58252f0de8bb7f2cfb24fabb8df32dcbaed7f83acacdd33a7` |
| 11 | `theorem` | [dirichletMoment_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1a33cd883da65b517f62d9584ffeed063c77e7710a5ddaededd6651af2943a5a.lean/declarations/dirichletmoment-one-pos--6d9fb092d44e99ab883b82aa.md) | 125 | `result-track:6d9fb092d44e99ab883b82aa400adf38046346da4372656b92596666b2ee01df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
