# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSummability.Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "473fb216573d593b7c54ff243a87e60336043939",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `473fb216573d593b7c54ff243a87e60336043939`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shellIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/shellindex--3a7e3d2f5ab42fa20d04b95a.md) | 34 | `declaration-track:3a7e3d2f5ab42fa20d04b95aa95b35e49f2a24c3b034a04224cb050ed363da7b` |
| 2 | `def` | [ZeroShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/zeroshell--974e0a03070c3ed6d344bf1d.md) | 36 | `declaration-track:974e0a03070c3ed6d344bf1d5aac6c5616cf8ffc1343efc1a9b20bf4ae42a927` |
| 3 | `def` | [ZeroBallPoints](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/zeroballpoints--8d96727cae549368015dc62c.md) | 38 | `declaration-track:8d96727cae549368015dc62c30f5edc3a63b434b7747897310dcb019c740cdd5` |
| 4 | `theorem` | [zeroBallPoints_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/zeroballpoints-finite--dcd60b124848844b2232d465.md) | 41 | `result-track:dcd60b124848844b2232d465b4924c6b333e9a7f7015a46b2c9be18c637ea474` |
| 5 | `theorem` | [zeroShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/zeroshell-finite--4b53f0b6d0a4d654b8abc210.md) | 56 | `result-track:4b53f0b6d0a4d654b8abc210b1fdb3cad0e28ca98e0faba7268d6e7112adcbc5` |
| 6 | `def` | [QuarticShellCountObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/quarticshellcountobligation--35e8df50c95b81ee50c61ad9.md) | 71 | `declaration-track:35e8df50c95b81ee50c61ad90dd3f9a074fab98c7798405760fef4dc3509de82` |
| 7 | `def` | [weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/weight--88ccba9c95f1ab24ce8b85b4.md) | 75 | `declaration-track:88ccba9c95f1ab24ce8b85b4b073e61d0550982d36ad862cd28c5bd433acf656` |
| 8 | `theorem` | [weight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/weight-nonneg--f755703f1cf4d18afec835c6.md) | 78 | `result-track:f755703f1cf4d18afec835c630ca3e2aed267649405007e92665ec779dc88fd2` |
| 9 | `theorem` | [shell_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/shell-weight-le--5dafba65626855c423286b43.md) | 82 | `result-track:5dafba65626855c423286b432670f8fa1cf72bde6f43cd25c01a52dc82f31fe3` |
| 10 | `theorem` | [shell_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/shell-sum-bound--e0e1f8668aee51970f30f78d.md) | 90 | `result-track:e0e1f8668aee51970f30f78ddafc409afb32798fecef77a29c8694511222a879` |
| 11 | `theorem` | [zero_summability_of_quartic_shell_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant6840cd90fedf385b7edbb84f4e754e0e349ecd53d8b62feb23f2a2ca16aa62c0.lean/declarations/zero-summability-of-quartic-shell-count--6a0a3cf02d17d62761035430.md) | 107 | `result-track:6a0a3cf02d17d62761035430a645ec05408ea48a15eac8fef1c57fd2019123bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
