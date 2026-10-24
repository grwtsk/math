# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RatioClassBudget.Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76e41e90eeab38989cbde6fa04c08eb9e163ca5f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76e41e90eeab38989cbde6fa04c08eb9e163ca5f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ratioClassContribution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/ratioclasscontribution--77217fb994710f506da02340.md) | 23 | `declaration-track:77217fb994710f506da02340b3770181820d66f1c61ad30ddda719f4a7ed2f2e` |
| 2 | `theorem` | [source_harmonic_sum_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/source-harmonic-sum-le--54bc2dc9051fab01c80746c0.md) | 29 | `result-track:54bc2dc9051fab01c80746c0fb7992af5a6bc370e68cb81944e215e9373e3e63` |
| 3 | `theorem` | [moebius_real_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/moebius-real-abs-le--455c4d339532ef2a332bb5eb.md) | 35 | `result-track:455c4d339532ef2a332bb5eb848883b46519ecee04e6bc8ab9b05c14b29483ed` |
| 4 | `theorem` | [ratio_term_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/ratio-term-abs-le--14f3d98ca33b7f12b95fc1c7.md) | 38 | `result-track:14f3d98ca33b7f12b95fc1c7ac5158e429d57486f25651590c88ac6047b7f94c` |
| 5 | `theorem` | [ratioClass_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/ratioclass-abs-le--4342fbb531648bcf0f7eb5be.md) | 69 | `result-track:4342fbb531648bcf0f7eb5be678b05954319ead918e730d18ea7812412dfa1e5` |
| 6 | `theorem` | [supported_ratio_sum_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioClassBudget/Variantd6274410c2cef607e960edd716e3749b095b08664fbb8fa9fcefcbbabf818e88.lean/declarations/supported-ratio-sum-abs-le--5a7a35b98431cc528edba3e8.md) | 104 | `result-track:5a7a35b98431cc528edba3e8145849d21e7d664100fb55283032b6b39160840e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
