# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Convergence.Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eebd1fa6bca1141983c8ed822e9c77f36c54e6c3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eebd1fa6bca1141983c8ed822e9c77f36c54e6c3`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Upcrossing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_frequently_of_upcrossings_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/not-frequently-of-upcrossings-lt-top--a31289ccab3c811602a841d5.md) | 111 | `result-track:a31289ccab3c811602a841d5fa0bac30e1ed14e092ac141c24b1c8085f585ede` |
| 2 | `theorem` | [upcrossings_eq_top_of_frequently_lt](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/upcrossings-eq-top-of-frequently-lt--8e36142c53cd4ed8c1d4d7b7.md) | 132 | `result-track:8e36142c53cd4ed8c1d4d7b73ff154c8e040c5c46c9af217859a234c48aedc53` |
| 3 | `theorem` | [tendsto_of_uncrossing_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/tendsto-of-uncrossing-lt-top--a1e34c485ceb9ea038d72169.md) | 142 | `result-track:a1e34c485ceb9ea038d7216962ee54b0c9700bbcc6642055118528138b8fc29d` |
| 4 | `theorem` | [Submartingale.upcrossings_ae_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-upcrossings-ae-lt-top--215ce4f984ae074d92a436d3.md) | 157 | `result-track:215ce4f984ae074d92a436d357a14b7517d44cc05de008999f82c6453b356db7` |
| 5 | `theorem` | [Submartingale.upcrossings_ae_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-upcrossings-ae-lt-top--864f0de487695a120e6bf276.md) | 188 | `result-track:864f0de487695a120e6bf276bd0855d61ac47c03065be0e2cabe9e59665961e6` |
| 6 | `theorem` | [Submartingale.exists_ae_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-exists-ae-tendsto-of-bdd--f4ad693d3b257980f3db3344.md) | 196 | `result-track:f4ad693d3b257980f3db3344eb2645936000622f0c882b216c5bdb2552dd9d34` |
| 7 | `theorem` | [Submartingale.exists_ae_trim_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-exists-ae-trim-tendsto-of-bdd--773e33d8fefe5790648bfe6f.md) | 203 | `result-track:773e33d8fefe5790648bfe6f5f58f15d257b63937782adbe07c55c150770191d` |
| 8 | `theorem` | [Submartingale.ae_tendsto_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-ae-tendsto-limitprocess--91e597018bd27b9b96133e2c.md) | 215 | `result-track:91e597018bd27b9b96133e2cfef8aedf413ed9c0f0f271cd8646f3b967eceaf9` |
| 9 | `theorem` | [Submartingale.memℒp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-mem-p-limitprocess--303e529ec43c5c45228eb1e4.md) | 241 | `result-track:303e529ec43c5c45228eb1e4f715d94e948a8c05b1dd447c21e5a0584a59daf2` |
| 10 | `theorem` | [Submartingale.tendsto_snorm_one_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-tendsto-snorm-one-limitprocess--a499a1d78c4f5e4aaf17d99e.md) | 320 | `result-track:a499a1d78c4f5e4aaf17d99eac5f20f441ffe70d818ae0d87384b75954ef2a1a` |
| 11 | `theorem` | [Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/submartingale-ae-tendsto-limitprocess-of-uniformintegrable--375c9bc7610e824f2fce5139.md) | 331 | `result-track:375c9bc7610e824f2fce51395e1c315e38b03b5cf30ca1d200fd5c59ca90ef69` |
| 12 | `theorem` | [Martingale.eq_condexp_of_tendsto_snorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/martingale-eq-condexp-of-tendsto-snorm--c1bdced18887c64797418e94.md) | 340 | `result-track:c1bdced18887c64797418e9409ce82cddcbc3e4e57f0091f90fd5891741c5d66` |
| 13 | `theorem` | [Martingale.ae_eq_condexp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/martingale-ae-eq-condexp-limitprocess--48d54a48fb0b2b5adf4b2469.md) | 359 | `result-track:48d54a48fb0b2b5adf4b2469305213e7c4bf036d26c70fc10ced8ed608a6eb58` |
| 14 | `theorem` | [Integrable.tendsto_ae_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/integrable-tendsto-ae-condexp--af1530adbadfddc07ff13f55.md) | 372 | `result-track:af1530adbadfddc07ff13f559d3de3cf00445f07a94c3fa949735bc9878f890c` |
| 15 | `theorem` | [Integrable.tendsto_snorm_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/integrable-tendsto-snorm-condexp--f5622c29b30c9b3f6288ef3a.md) | 428 | `result-track:f5622c29b30c9b3f6288ef3a45baf97e12a570ba61af76664d96a111b2c06f1c` |
| 16 | `theorem` | [tendsto_ae_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/tendsto-ae-condexp--62a605c0250d5a4991ab750c.md) | 441 | `result-track:62a605c0250d5a4991ab750c941894bcccb27441e782f4b87f20c1775e2b6d6d` |
| 17 | `theorem` | [tendsto_snorm_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/declarations/tendsto-snorm-condexp--edd513afd1791d0e31fe5aaa.md) | 454 | `result-track:edd513afd1791d0e31fe5aaaae468fc9706ad815f4c82009a619ffc05879913b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
