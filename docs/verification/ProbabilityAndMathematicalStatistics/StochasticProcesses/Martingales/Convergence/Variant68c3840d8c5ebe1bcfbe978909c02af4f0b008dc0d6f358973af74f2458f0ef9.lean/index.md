# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.Convergence.Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b11d6d178c04ff0cf0a9d71511894b86008c39d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b11d6d178c04ff0cf0a9d71511894b86008c39d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Upcrossing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_frequently_of_upcrossings_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/not-frequently-of-upcrossings-lt-top--e0b8be8c48bdfd11cb53f95c.md) | 119 | `result-track:e0b8be8c48bdfd11cb53f95cd74c7ec7a2d6a98caac6e44b0aa84890c5e9ecda` |
| 2 | `theorem` | [upcrossings_eq_top_of_frequently_lt](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/upcrossings-eq-top-of-frequently-lt--1c1a93a5ac7db299d4dacdd3.md) | 140 | `result-track:1c1a93a5ac7db299d4dacdd3e404ae53752986e707fb6ce0e76d66b16ab8d288` |
| 3 | `theorem` | [tendsto_of_uncrossing_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/tendsto-of-uncrossing-lt-top--f199e37a15d5c4f3accda7f0.md) | 150 | `result-track:f199e37a15d5c4f3accda7f09d099574f6ef3a3764d350f36c035f8a7e848855` |
| 4 | `theorem` | [Submartingale.upcrossings_ae_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-upcrossings-ae-lt-top--74cbf5a78ee6190564a7277f.md) | 165 | `result-track:74cbf5a78ee6190564a7277f1d85b8975d9c450ac4b712174e35b5b033f6444e` |
| 5 | `theorem` | [Submartingale.upcrossings_ae_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-upcrossings-ae-lt-top--ae30c16fe94b50e2534163a1.md) | 196 | `result-track:ae30c16fe94b50e2534163a1fe0305da2051e67190e9fb1e1150faff82031489` |
| 6 | `theorem` | [Submartingale.exists_ae_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-exists-ae-tendsto-of-bdd--1a1b410615a019361c14c987.md) | 204 | `result-track:1a1b410615a019361c14c98757a4171b42f7fd54c2505a6af9221d6a4ab5f5f3` |
| 7 | `theorem` | [Submartingale.exists_ae_trim_tendsto_of_bdd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-exists-ae-trim-tendsto-of-bdd--8d4d0f280a019fffedb82e47.md) | 211 | `result-track:8d4d0f280a019fffedb82e479e9bc125ae12012017fc967d8e4153535c41983a` |
| 8 | `theorem` | [Submartingale.ae_tendsto_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-ae-tendsto-limitprocess--c5928a8d72e20bf3bcde995f.md) | 223 | `result-track:c5928a8d72e20bf3bcde995f919a321435a015217108f79f471b48d4cfbea8ec` |
| 9 | `theorem` | [Submartingale.memℒp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-mem-p-limitprocess--2792fb87ec7e381b5230831b.md) | 249 | `result-track:2792fb87ec7e381b5230831bfd4e483e4bfe37dc20c6462d0ea6b5efabe1ee54` |
| 10 | `theorem` | [Submartingale.tendsto_snorm_one_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-tendsto-snorm-one-limitprocess--3e7e9a70e30f00d98968b0d3.md) | 328 | `result-track:3e7e9a70e30f00d98968b0d3bedbf14dc300886c2d7f6fe2c3f8801a908840a1` |
| 11 | `theorem` | [Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/submartingale-ae-tendsto-limitprocess-of-uniformintegrable--e35b9559b9f4d514cdc35874.md) | 339 | `result-track:e35b9559b9f4d514cdc358742904a64c5c95ea8c9ab064d2b019a8bfc11f9b2b` |
| 12 | `theorem` | [Martingale.eq_condexp_of_tendsto_snorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/martingale-eq-condexp-of-tendsto-snorm--c29b94991859ffaa9bf1dbf5.md) | 348 | `result-track:c29b94991859ffaa9bf1dbf5243cbcc5e27f45607d5723a02ee1ae03be1ae2ff` |
| 13 | `theorem` | [Martingale.ae_eq_condexp_limitProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/martingale-ae-eq-condexp-limitprocess--0120e05b5440072ddf891434.md) | 367 | `result-track:0120e05b5440072ddf891434e7621016d812427065105df6e67cfa179d8ddd70` |
| 14 | `theorem` | [Integrable.tendsto_ae_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/integrable-tendsto-ae-condexp--e7d9a258965f3cfa3fa59b47.md) | 380 | `result-track:e7d9a258965f3cfa3fa59b47041182039d33ead1f888784812b6e508b380a93d` |
| 15 | `theorem` | [Integrable.tendsto_snorm_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/integrable-tendsto-snorm-condexp--7793891b525ad5895dd4f086.md) | 436 | `result-track:7793891b525ad5895dd4f08646f4001052a8e1845859522d160e7c4c25caccea` |
| 16 | `theorem` | [tendsto_ae_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/tendsto-ae-condexp--abfc64ee44cdfddcc572c34c.md) | 449 | `result-track:abfc64ee44cdfddcc572c34cadd5474ecc45136936d11d89aa5c85366707d15c` |
| 17 | `theorem` | [tendsto_snorm_condexp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/declarations/tendsto-snorm-condexp--4f3ead95c0c6d1c042ce0d8f.md) | 462 | `result-track:4f3ead95c0c6d1c042ce0d8fbf2a268d52e909845f264c4f44779360760113d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
