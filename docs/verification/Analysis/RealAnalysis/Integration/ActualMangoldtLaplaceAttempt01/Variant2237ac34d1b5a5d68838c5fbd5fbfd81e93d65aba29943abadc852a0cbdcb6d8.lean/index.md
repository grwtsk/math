# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt01.Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f9bbd35d3926f57acb2ca95d73643c7a424a26e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f9bbd35d3926f57acb2ca95d73643c7a424a26e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/mangoldtweight--5b7770b7588fab0326b1af25.md) | 18 | `declaration-track:5b7770b7588fab0326b1af25cc167bab78612d34790057ad815f0cdaed2255f3` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/laplaceatom--0802c59982dcdbf6cc8e1d30.md) | 21 | `declaration-track:0802c59982dcdbf6cc8e1d30a193274e3e691ee6b045d46cf0725802873be429` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/onset-pos--7fd52f921fec96762a2d7b10.md) | 25 | `result-track:7fd52f921fec96762a2d7b10aed69761f66471adc1b1d80aee99b4aa05c38684` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/weight-nonneg--18f919d60f65e51eb63b4b28.md) | 28 | `result-track:18f919d60f65e51eb63b4b28e13f6644978f2056e1dbc20c0ed50a847811bd3c` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/atom-nonneg--c129000af471f5cd7f9eec43.md) | 32 | `result-track:c129000af471f5cd7f9eec4347b3ed96297f0a5f004d469666aaa6aafcaa95e9` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/atom-measurable--a18b0789493fa7f9516d8da0.md) | 35 | `result-track:a18b0789493fa7f9516d8da0f74fd0d208cbd5a5dae0824f98ddfa4e6be2594b` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/atom-integrable--ca4634e3256f600d8704fa37.md) | 40 | `result-track:ca4634e3256f600d8704fa37f1136dc94c154c0e964a6431dccf5d51ecd134e5` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/atom-integral--7d6062af08af0a35b96cc17e.md) | 47 | `result-track:7d6062af08af0a35b96cc17ebf3ab56724c0ec0f073a62ad03d58a42b790bebe` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/weighted-exp-eq-norm-term--276b8e72f7d91ec50a82dd58.md) | 55 | `result-track:276b8e72f7d91ec50a82dd588029137c3f2832d928767d87519f0fa1b11b1afa` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant2237ac34d1b5a5d68838c5fbd5fbfd81e93d65aba29943abadc852a0cbdcb6d8.lean/declarations/atom-norm-integrals-summable--0d180eba5d736e024493777f.md) | 68 | `result-track:0d180eba5d736e024493777f286c44c27a0603aabdcce3f1fbec7ed2f7ac9ff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
