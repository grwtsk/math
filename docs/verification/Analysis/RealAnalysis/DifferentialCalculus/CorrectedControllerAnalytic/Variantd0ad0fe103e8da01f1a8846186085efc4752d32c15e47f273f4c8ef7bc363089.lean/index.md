# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrectedControllerAnalytic.Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2fadc302170a5969bc232ff029b6f16f1aa4a41",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2fadc302170a5969bc232ff029b6f16f1aa4a41`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reducedW](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/reducedw--1bbea987d8684527623ee3e7.md) | 21 | `declaration-track:1bbea987d8684527623ee3e70e173235c3f0f25acf4f8f343b1c6982c124725f` |
| 2 | `theorem` | [W_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/w-factor--34eebea7044ea04399dd713e.md) | 26 | `result-track:34eebea7044ea04399dd713e1c35eaf92977eded77d0e077241f5e08c3aad878` |
| 3 | `theorem` | [reducedW_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/reducedw-differentiable--c71116690aa2de22471778df.md) | 32 | `result-track:c71116690aa2de22471778dfb92e2132bb6ea509ac54e28e33363df7f73b735c` |
| 4 | `theorem` | [reducedW_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/reducedw-ne-zero--3b232352b0f920a22cc85077.md) | 39 | `result-track:3b232352b0f920a22cc850774513336ee59da8e326fa9a5c8d04cf972edce611` |
| 5 | `theorem` | [W_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/w-zero-iff--57c5ff5bff6c1583a60231e7.md) | 54 | `result-track:57c5ff5bff6c1583a60231e73b73151c778ef5978c6f161ca562e145a5d2768c` |
| 6 | `theorem` | [reducedW_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/reducedw-half--9b3ab744f15430ae4ed26b88.md) | 59 | `result-track:9b3ab744f15430ae4ed26b885b660b5bce9fb2989b1f57b7ce242431e3d95a62` |
| 7 | `def` | [quotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/quotient--1b77c545fa5b797fbc709c40.md) | 71 | `declaration-track:1b77c545fa5b797fbc709c408a7b69ca6c39be5aa7f143134a756ab695c90459` |
| 8 | `theorem` | [quotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/quotient-of-ne--e12c2b8ba643acce5b0aef7e.md) | 74 | `result-track:e12c2b8ba643acce5b0aef7eff08e0ac8bbe7932cc65f78e42bb51bda5b141c2` |
| 9 | `theorem` | [W_mul_quotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/w-mul-quotient--038c9c9e44515f565ff0a2bf.md) | 80 | `result-track:038c9c9e44515f565ff0a2bfb47c9c334695525d23272ebd3162607441edf66b` |
| 10 | `theorem` | [quotient_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/quotient-half--89b60d5cb8b216cdf648a459.md) | 86 | `result-track:89b60d5cb8b216cdf648a459a716e9bfe9d25f5028c6087d61dcfc7fcc34b759` |
| 11 | `theorem` | [quotient_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/quotient-differentiableat--61ed12598e0aef919a95a5ea.md) | 91 | `result-track:61ed12598e0aef919a95a5eac1914b85dba0b38bc2e942b22e27082698079301` |
| 12 | `def` | [candidate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/candidate--3816124c8346ec4d30d28876.md) | 97 | `declaration-track:3816124c8346ec4d30d288768f5e030c122fe3de770a17feb50ee5a611888ff5` |
| 13 | `theorem` | [candidate_denominators_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/candidate-denominators-ne-zero--2bd4cfccff9b5747cb026a97.md) | 101 | `result-track:2bd4cfccff9b5747cb026a97ee7d5aca31b43a25f23b4f2e4661cf144eba69ad` |
| 14 | `theorem` | [candidate_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/declarations/candidate-differentiableat--0db2709db54b9adb7e2d0913.md) | 116 | `result-track:0db2709db54b9adb7e2d0913611b03521db1ff6eff3c2d12730c900e02a2bb87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
