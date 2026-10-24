# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28881d7a684edf47357f9c12750c8bad993f0131",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28881d7a684edf47357f9c12750c8bad993f0131`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed--584bee524a09e187562e6b0d.md) | 38 | `declaration-track:584bee524a09e187562e6b0daade28afeb49ea4eb8e7f17baf6377bbb02fa681` |
| 2 | `theorem` | [normed_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed-def--db38e7baab8d87088844ef4e.md) | 41 | `result-track:db38e7baab8d87088844ef4e7ad319da66f975af6bb7f0520d4e2473cc467046` |
| 3 | `theorem` | [nonneg_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/nonneg-normed--a7823da85c0d19f906823755.md) | 45 | `result-track:a7823da85c0d19f906823755c8fe0779c1e2bc8948ed973fbeddae706d44eeab` |
| 4 | `theorem` | [contDiff_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/contdiff-normed--90d6f2a30ffa5b00b42d044b.md) | 49 | `result-track:90d6f2a30ffa5b00b42d044bca7fbd71282b0896198172f524614570c7bdf846` |
| 5 | `theorem` | [continuous_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/continuous-normed--c4cea267807d84569dc75f12.md) | 53 | `result-track:c4cea267807d84569dc75f120bceee5a17ff3fce604be2d2420fdaddd91c8fd4` |
| 6 | `theorem` | [normed_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed-sub--ac35bcefa266be5a08ed4c2c.md) | 57 | `result-track:ac35bcefa266be5a08ed4c2caf02401be1caf7c187fe1cdd974110b7c1c652c3` |
| 7 | `theorem` | [normed_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed-neg--49209f845191fae6a37eac22.md) | 61 | `result-track:49209f845191fae6a37eac22a4fc79c05af33550edc256a1686b919e36ef6520` |
| 8 | `theorem` | [integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integrable--ef29066f4d251bbcc519cfb2.md) | 67 | `result-track:ef29066f4d251bbcc519cfb2c08fc306674cb8832c9439bb91cf2b207f934b8e` |
| 9 | `theorem` | [integrable_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integrable-normed--68e9e4011e251f57fe788586.md) | 71 | `result-track:68e9e4011e251f57fe788586f30496355c5b2ed61e41cee6011014338cdf5378` |
| 10 | `theorem` | [integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integral-pos--93ac5dd567fa6e5cf4c01f84.md) | 77 | `result-track:93ac5dd567fa6e5cf4c01f8464ee8832be2b070c734ca8a3acffe58389267df7` |
| 11 | `theorem` | [integral_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integral-normed--5b96a574cdcd5b097859250a.md) | 83 | `result-track:5b96a574cdcd5b097859250a22b0f3ef7986f78a18191eda03f6017e030cc470` |
| 12 | `theorem` | [support_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/support-normed-eq--be22dbfb6e90552040b08db4.md) | 88 | `result-track:be22dbfb6e90552040b08db4b12aff4efbae43075335f99a6ea17f2c3cf2797d` |
| 13 | `theorem` | [tsupport_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/tsupport-normed-eq--3501741da205cdbd5551e3e8.md) | 93 | `result-track:3501741da205cdbd5551e3e836546345acb43341761483c76e94dd066b80eac6` |
| 14 | `theorem` | [hasCompactSupport_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/hascompactsupport-normed--5131b12630f783acbea27c31.md) | 97 | `result-track:5131b12630f783acbea27c31699ab217d590369cc66be82e2d5f32b0cbb52537` |
| 15 | `theorem` | [tendsto_support_normed_smallSets](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/tendsto-support-normed-smallsets--1f83792b96cd1ebdfb9e588f.md) | 101 | `result-track:1f83792b96cd1ebdfb9e588f41ef6c175d2804cb8ef523bee3d583834196a872` |
| 16 | `theorem` | [integral_normed_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integral-normed-smul--9cb3b4f02e9b7f70b2ed015f.md) | 114 | `result-track:9cb3b4f02e9b7f70b2ed015fba65cb7665d18c897ead74d7d9bfbd9a50106afe` |
| 17 | `theorem` | [measure_closedBall_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/measure-closedball-le-integral--10911e0527595be2f5a3a1b7.md) | 119 | `result-track:10911e0527595be2f5a3a1b786d7682adf085cce82f0840564801b0425a7bb4e` |
| 18 | `theorem` | [normed_le_div_measure_closedBall_rIn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed-le-div-measure-closedball-rin--0c7e7c4ed2c12c39041f73e1.md) | 125 | `result-track:0c7e7c4ed2c12c39041f73e15639ddf20ccfb9c9ab56b197ed95c8aa4a302a06` |
| 19 | `theorem` | [integral_le_measure_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/integral-le-measure-closedball--80d735bfd59e0a5ea4e5f1fb.md) | 133 | `result-track:80d735bfd59e0a5ea4e5f1fbd0a351983e2292b5f9996506475816605970c5d1` |
| 20 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/macro-rules--dbb626ca65cea88978139fc8.md) | 143 | `declaration-track:dbb626ca65cea88978139fc8f62fcc5afd222acc04c46f3b9d02258f94c8df81` |
| 21 | `theorem` | [measure_closedBall_div_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/measure-closedball-div-le-integral--54130992bd23f175707b6207.md) | 145 | `result-track:54130992bd23f175707b62070a532e250c845121bbdfbd9a79b9bc3ec8a94825` |
| 22 | `theorem` | [normed_le_div_measure_closedBall_rOut](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7.lean/declarations/normed-le-div-measure-closedball-rout--29b4b9798453b1ea07e957d3.md) | 158 | `result-track:29b4b9798453b1ea07e957d36b1c4a8f2b05d7b7e2a9f1307d6017d504d3313b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
