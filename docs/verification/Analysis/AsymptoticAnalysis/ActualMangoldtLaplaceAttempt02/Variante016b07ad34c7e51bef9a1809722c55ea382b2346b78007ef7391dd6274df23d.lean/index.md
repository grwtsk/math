# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMangoldtLaplaceAttempt02.Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aea00beb5ca268fd7f936b8e8c7713543d2222ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aea00beb5ca268fd7f936b8e8c7713543d2222ff`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean.json)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/mangoldtweight--9af52c01ccb1db42dc9e078d.md) | 26 | `declaration-track:9af52c01ccb1db42dc9e078d1cfbcced7eb7f92a10dc499a09766557193181d5` |
| 2 | `def` | [laplaceAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/laplaceatom--bb28b1ba6170ad3478ba447a.md) | 29 | `declaration-track:bb28b1ba6170ad3478ba447a93fc5316f31865c4261f05441c65944de0c19348` |
| 3 | `theorem` | [onset_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/onset-pos--83b619ddafe9a0086dfc1a4d.md) | 33 | `result-track:83b619ddafe9a0086dfc1a4d672d89cba14df6f9b7627051a104f69fc9400ae9` |
| 4 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/weight-nonneg--5183adc130187d03b0641376.md) | 36 | `result-track:5183adc130187d03b0641376b9e0ff65fa84aafed676f872a0c1b12d080f4dcf` |
| 5 | `theorem` | [atom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-nonneg--38bb2264b09eaed2a4b03f08.md) | 40 | `result-track:38bb2264b09eaed2a4b03f08aba97211a396a6065b526bc1a302ecefffca5464` |
| 6 | `theorem` | [atom_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-measurable--32601915161cbb44f168b545.md) | 43 | `result-track:32601915161cbb44f168b545cb88a8e5bf5de9138861bb4b4196b5408a25cdc3` |
| 7 | `theorem` | [atom_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-integrable--1c189bd6e8d4a2772cd3c6e9.md) | 49 | `result-track:1c189bd6e8d4a2772cd3c6e9574cc89bbdd797606d240380e387f29badb08a10` |
| 8 | `theorem` | [atom_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-integral--7a8bd44d6228063a51c66b8b.md) | 56 | `result-track:7a8bd44d6228063a51c66b8bb3b5b1f2ef2a67bfadffb4a0fd364e0fdb7732b7` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/weighted-exp-eq-norm-term--98eee21f2c17e6688426ea70.md) | 64 | `result-track:98eee21f2c17e6688426ea705554e3c97ca91b2d83e37e404c2ecde1943acdeb` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-norm-integrals-summable--c17e5da59e12baa0afec3331.md) | 77 | `result-track:c17e5da59e12baa0afec33315172e08be5053cbeb5b3be12f7b729a869ebda6b` |
| 11 | `theorem` | [onset_closed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/onset-closed-iff--33a503d74b40feeab56f5cea.md) | 90 | `result-track:33a503d74b40feeab56f5cea4d7323faa6a24d0217eccd7a6b64e52b7ec3ccc4` |
| 12 | `theorem` | [atom_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atom-zero-outside--d599cb01ec43ec50c3e38bb1.md) | 95 | `result-track:d599cb01ec43ec50c3e38bb14f26397365e7842076478a87cfee136c940b7c88` |
| 13 | `theorem` | [atoms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atoms-summable--d499aafe5ff3c3b4f064a12c.md) | 104 | `result-track:d499aafe5ff3c3b4f064a12cc6e83c16ec5e442f21467569a4ed1e2eff4edc8e` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variante016b07ad34c7e51bef9a1809722c55ea382b2346b78007ef7391dd6274df23d.lean/declarations/atoms-tsum-eq-actual--9c1b515f54e3ac97cbf11728.md) | 107 | `result-track:9c1b515f54e3ac97cbf117287f202ed649548c65b6984aa27f16bb08bcfecd76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
