# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteEventL1Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "299267ab1f8f9ab5f66f4af4d36df8633460668e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `299267ab1f8f9ab5f66f4af4d36df8633460668e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBoundaryTriangle`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSignedEventMass](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finitesignedeventmass--b06aef17cd70a4b26cfb6557.md) | 44 | `declaration-track:b06aef17cd70a4b26cfb6557c33df35e41516a82e39c0767cad411ecc24622f1` |
| 2 | `def` | [finiteSignedEventSup](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finitesignedeventsup--c793dbb2fd0faf5eea48a89b.md) | 49 | `declaration-track:c793dbb2fd0faf5eea48a89b634d5589290420d3f62df534a9b53d27cf42ac99` |
| 3 | `def` | [finiteEventSign](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finiteeventsign--e4f79ae7a9a29e9fb02387a1.md) | 55 | `declaration-track:e4f79ae7a9a29e9fb02387a147d370338007b17c7f4d6353d71ea349adce04f7` |
| 4 | `theorem` | [finiteEventSign_pairing](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finiteeventsign-pairing--0fe8549540178d35ccc551a6.md) | 60 | `result-track:0fe8549540178d35ccc551a619b2fdb7249e1952bbb0a144c6937ce9e2dfc97d` |
| 5 | `theorem` | [finiteEventSign_mul_abs](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finiteeventsign-mul-abs--ba489558d92c9d17430543b2.md) | 83 | `result-track:ba489558d92c9d17430543b287f55652700e116c61f40c2a4399c13101bf95b7` |
| 6 | `theorem` | [two_mul_abs_finiteSignedEventMass_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/two-mul-abs-finitesignedeventmass-le--8624e033fa0592f93ce2f297.md) | 90 | `result-track:8624e033fa0592f93ce2f297a6cd1875df9318e0fee0b721d9b00ec9a3cd7e56` |
| 7 | `def` | [nonnegativeMassEvent](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/nonnegativemassevent--b20a0e12e7deb53bc8308403.md) | 110 | `declaration-track:b20a0e12e7deb53bc8308403f4e45efa48021b05c42da332022048fd730f145b` |
| 8 | `theorem` | [nonnegativeMassEvent_sign](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/nonnegativemassevent-sign--bea7f9a5480a0c9dadf8c8c5.md) | 115 | `result-track:bea7f9a5480a0c9dadf8c8c5ed78e9af0eca7984f455ab7a9c13d3fd24d1d7cf` |
| 9 | `theorem` | [finiteSignedEventSup_eq_half_l1](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/finitesignedeventsup-eq-half-l1--3542a7d88d0141099a66f56d.md) | 124 | `result-track:3542a7d88d0141099a66f56de796018598b82af528e2e2779eb6b12ee8c2efd7` |
| 10 | `def` | [normalizedCategoryDifference](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/normalizedcategorydifference--d65071b69d56745c40daf686.md) | 168 | `declaration-track:d65071b69d56745c40daf6865cf1eddf8ab042151fe7bc9fb1bec45bd4ae39b8` |
| 11 | `theorem` | [normalizedCategoryDifference_sum_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/normalizedcategorydifference-sum-zero--d7027a794c6b68c06c1fce1f.md) | 175 | `result-track:d7027a794c6b68c06c1fce1f7ad25fd5af34c98cbf49a568a6531ee3746806ad` |
| 12 | `def` | [categoricalEventSupTV](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/categoricaleventsuptv--850d35ba4c89b58bdb2bc332.md) | 184 | `declaration-track:850d35ba4c89b58bdb2bc332f1366f46fcd8d036ac05663cf5eda12b28e67568` |
| 13 | `theorem` | [categoricalEventSupTV_eq_categoricalTotalVariation](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/declarations/categoricaleventsuptv-eq-categoricaltotalvariation--6687cfb3a58f12ce01d029a6.md) | 191 | `result-track:6687cfb3a58f12ce01d029a69ca00c1822111daba6a98fd6c9421a908304a02f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
