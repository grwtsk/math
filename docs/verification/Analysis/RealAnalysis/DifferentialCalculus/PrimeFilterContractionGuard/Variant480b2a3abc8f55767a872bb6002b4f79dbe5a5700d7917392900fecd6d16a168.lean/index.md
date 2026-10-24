# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimeFilterContractionGuard.Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frequency](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/frequency--73b8e09c8759b4014a93cfee.md) | 13 | `declaration-track:73b8e09c8759b4014a93cfee968ce7073813b33ee44258b42353a9b97d8dc9a9` |
| 2 | `def` | [oscillatoryRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/oscillatoryremainder--392a7f11dfef5df3e3e5f251.md) | 15 | `declaration-track:392a7f11dfef5df3e3e5f2510ed51da03b7db66ba5457ba14cbb87cbbac7ce8d` |
| 3 | `theorem` | [frequency_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/frequency-pos--2c108dd29378b8696276b272.md) | 18 | `result-track:2c108dd29378b8696276b272aa9f0eb61a9633b1b28f7adc02c28ec8f488e75b` |
| 4 | `theorem` | [remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/remainder-abs-le--1a7971d6521940e588c9b78d.md) | 21 | `result-track:1a7971d6521940e588c9b78dda12d3d8c9e361c4272f9a7d48acfec498c95ab0` |
| 5 | `theorem` | [remainder_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/remainder-hasderivat--57b64bdfb95a62c4bbe3f4f2.md) | 26 | `result-track:57b64bdfb95a62c4bbe3f4f2ef8b19ab911574d0c771a0136eae189a13714215` |
| 6 | `theorem` | [remainder_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/remainder-derivative-abs-le--a481ac65e26a86597c678c64.md) | 39 | `result-track:a481ac65e26a86597c678c642881c091825bd54a2c351145a948b545339a30bf` |
| 7 | `theorem` | [derivative_coefficient_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/derivative-coefficient-le--c8d5687177506508c061a489.md) | 57 | `result-track:c8d5687177506508c061a489a6fc3fdeba1755c93ad0103fb1706c81aff920ce` |
| 8 | `theorem` | [remainder_derivative_abs_le_twenty_eight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/remainder-derivative-abs-le-twenty-eight--b2da6d0df79bc88a0671fcd2.md) | 68 | `result-track:b2da6d0df79bc88a0671fcd23c1813eff9b7b0c713c240fcdd7ff9897ca66b22` |
| 9 | `theorem` | [value_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/value-one--944eeb4bf1ed30390b6d55c9.md) | 73 | `result-track:944eeb4bf1ed30390b6d55c9d3d173946b591deaeba9565e5d9c7539c455b9b4` |
| 10 | `theorem` | [value_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/value-two--1edd0fef142cac0325579f3a.md) | 76 | `result-track:1edd0fef142cac0325579f3a0c132cf30454d67e3efaa4743f7a12d8ce3ae263` |
| 11 | `theorem` | [prime_two_filter_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/prime-two-filter-value--adeffdc2201c249b12da8f48.md) | 80 | `result-track:adeffdc2201c249b12da8f4817f450b5dc22688afc6cb7e3b7b75db87a0f1c15` |
| 12 | `theorem` | [prime_two_filter_not_contractive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/prime-two-filter-not-contractive--fd29a04ef42733f2befa35f4.md) | 87 | `result-track:fd29a04ef42733f2befa35f404e51d1f315193e59f1b810afbf87d70cbf67c1c` |
| 13 | `theorem` | [decay_exponents_do_not_force_contraction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean/declarations/decay-exponents-do-not-force-contraction--f5a7928b5b8f8c576fb34248.md) | 93 | `result-track:f5a7928b5b8f8c576fb3424846b3c0ac33a581a60b946f91431de5b7d62d00cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
