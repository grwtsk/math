# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01Source.Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e9a44b130979cefac66bbb7a7d836724d16d01",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e9a44b130979cefac66bbb7a7d836724d16d01`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfHarmonic` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualEarlyFractionalZeta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfHarmonicFractionalTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/halfharmonicfractionaltail--cb8111e384fbb84ba0eefa20.md) | 29 | `declaration-track:cb8111e384fbb84ba0eefa204949eca46e95d3486a782a2839234e8dabd20241` |
| 2 | `def` | [positiveUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/positiveunit--908a8c8ae00f4706860062a4.md) | 32 | `declaration-track:908a8c8ae00f4706860062a421f3b5eb35eb27ed6e98333a522da46aff377e6e` |
| 3 | `theorem` | [positiveUnit_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/positiveunit-sum--c34e3006c73c3f65a801feca.md) | 34 | `result-track:c34e3006c73c3f65a801fecaa8ec6656d9d606fe88e04d5cbdf67ae7b632ae05` |
| 4 | `theorem` | [positiveUnit_weighted_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/positiveunit-weighted-sum--daa2e37c22d3bf512e562eee.md) | 46 | `result-track:daa2e37c22d3bf512e562eee718e8e6e7ff127fa2cfc4213f33a391e69e02264` |
| 5 | `theorem` | [inv_sqrt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/inv-sqrt-hasderivat--df04a60c8a16541614230aa3.md) | 58 | `result-track:df04a60c8a16541614230aa3bf913653a49af2b83282cdaf67ac91608cba76f7` |
| 6 | `theorem` | [inv_sqrt_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/inv-sqrt-deriv-integrable--d84eeea6b1b31522a387d365.md) | 67 | `result-track:d84eeea6b1b31522a387d3653ba5dbd42d726f4b52c8cd2922e757d4dd822344` |
| 7 | `theorem` | [finiteHalfHarmonic_eq_sqrt_zeta_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/finitehalfharmonic-eq-sqrt-zeta-tail--738b0978ffdbfa7a31827b7e.md) | 82 | `result-track:738b0978ffdbfa7a31827b7ec1712fee696230b98cbc157f4cea38b61546469f` |
| 8 | `theorem` | [halfHarmonicFractionalTail_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/halfharmonicfractionaltail-bounds--ce2f35c8d6592bd43934ea5f.md) | 113 | `result-track:ce2f35c8d6592bd43934ea5f1c839dd026ccf12c7706bcde86e4a0a063cc5801` |
| 9 | `theorem` | [finiteHalfHarmonic_sub_sqrt_zeta_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/declarations/finitehalfharmonic-sub-sqrt-zeta-abs-le--deb03d0bed98718866a8cf54.md) | 122 | `result-track:deb03d0bed98718866a8cf5441ad73aaac72f4cf08e45218155dc39137bfe346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
