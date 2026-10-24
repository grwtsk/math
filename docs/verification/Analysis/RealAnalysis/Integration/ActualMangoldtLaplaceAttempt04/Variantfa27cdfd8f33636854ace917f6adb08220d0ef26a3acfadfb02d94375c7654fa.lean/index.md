# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt04.Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4dd293e8be80cf0e4ad0c945305a1cf091bd441",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4dd293e8be80cf0e4ad0c945305a1cf091bd441`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/mangoldtweight--ed01451576bcdd24c5abc271.md) | 27 | `declaration-track:ed01451576bcdd24c5abc27170bf7f4a6f4ea2284054ef2fa409ec780f6aca9e` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/laplaceatom--d791952257b5db1984c51494.md) | 30 | `declaration-track:d791952257b5db1984c5149443fe8692286491cc782545a855eda6a511312b05` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/onset-pos--91b7f007396e586599a22f03.md) | 34 | `result-track:91b7f007396e586599a22f03e9e059a0cd659fc4ae961a0c17f9d8199386e8c4` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/weight-nonneg--d84d810e3bb6a582b2329fbe.md) | 37 | `result-track:d84d810e3bb6a582b2329fbebd9b5bf4f329c446e10c6fc7e99acbde51910fd3` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-nonneg--8eb60143ab1ee2e85637725d.md) | 41 | `result-track:8eb60143ab1ee2e85637725d45cfe4654c92ce7c8add2d63894db5f909b02433` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-measurable--76b059cae95a582b29c07269.md) | 44 | `result-track:76b059cae95a582b29c07269e04ee487464c7c1134466d216b12e421bc92d1b3` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-integrable--07dc2073791e5fcc6888ef9e.md) | 50 | `result-track:07dc2073791e5fcc6888ef9e06716e040be38f100c0efa8ad93d96f58be97e1c` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-integral--24e712649f6e349662e6d9d6.md) | 57 | `result-track:24e712649f6e349662e6d9d6511fdaf498a40abbc1b20950f50296db9e2cb526` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/weighted-exp-eq-norm-term--4350df48ac7b8c35c24ad739.md) | 65 | `result-track:4350df48ac7b8c35c24ad739ed52f8f1f8271102aefd26b09f69104f6aee3ad3` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-norm-integrals-summable--244146be596435d262fa2707.md) | 78 | `result-track:244146be596435d262fa270785c1cbdf8195bb426eb8757e755318c1b7aa3028` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/onset-closed-iff--2978bd985a2bd0a681e1db05.md) | 91 | `result-track:2978bd985a2bd0a681e1db05de2af3cb576335d0b85618d0c84162c8c2bd925b` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atom-zero-outside--7ed9b035b943e3e12bf8b38e.md) | 96 | `result-track:7ed9b035b943e3e12bf8b38e6ef6644784f44517624f4c3a792a94fe3a5d7bfc` |
| 13 | `theorem` | [atoms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atoms-summable--9d4632c15870dfd80b829e0c.md) | 105 | `result-track:9d4632c15870dfd80b829e0c34ce28363f67728887e55a71c6979365a631a404` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atoms-tsum-eq-actual--8cb49ee8eb51f4791d682856.md) | 108 | `result-track:8cb49ee8eb51f4791d68285693a5d72db30bbc64e4ce5ee38d5d30f359f3b13e` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atoms-tsum-eq-indicator--b9ebcb8dcaa56ec26ddf4abd.md) | 134 | `result-track:b9ebcb8dcaa56ec26ddf4abd196195e1c5aa02d766dcbadcb02e4d9fb93b885d` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atoms-integrals-summable--0ba5e4f06b4752fc7b31543b.md) | 148 | `result-track:0ba5e4f06b4752fc7b31543b976d1e79ab13ec8a36e59b4127b6017eee4c4795` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/atoms-lintegral--8e23daba0050d473ece09a5f.md) | 153 | `result-track:8e23daba0050d473ece09a5f3c335794a7382ef1b4781cb1cf1480b0cd5dea07` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/actual-prefix-laplace-integrable--8143bc4631a41899555b1c24.md) | 171 | `result-track:8143bc4631a41899555b1c24ee4a6463ba53cb27e2f391d37e0574b21793b707` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/actual-prefix-laplace-eq-tsum--dc068a183d1d914e14c18c12.md) | 181 | `result-track:dc068a183d1d914e14c18c12b8ad07194a96727531149691ddd81c338a3533e9` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/weighted-exp-eq-term--0c28f10b2d686a6822191949.md) | 190 | `result-track:0c28f10b2d686a682219194930ee1bfa21f3ebb3f8a1bcd0b77c4843a4f2fbc8` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/declarations/actual-prefix-laplace-eq-lseries--55c7f6ba04337d80b8a5ef51.md) | 202 | `result-track:55c7f6ba04337d80b8a5ef51499a29c98f629a3aaf724f51786a9a23e8045b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
