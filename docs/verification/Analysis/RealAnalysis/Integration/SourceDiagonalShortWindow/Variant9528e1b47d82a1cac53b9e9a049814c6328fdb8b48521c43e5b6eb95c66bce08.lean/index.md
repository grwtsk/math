# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceDiagonalShortWindow.Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6b4a73958596b082fb680043db5e84c16fdbba",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6b4a73958596b082fb680043db5e84c16fdbba`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [diagonalCorrelation_sub_one_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/declarations/diagonalcorrelation-sub-one-abs-le--ecf77a4af2a65f03b1f6cc82.md) | 13 | `result-track:ecf77a4af2a65f03b1f6cc82fb165e86cedde8bb636936a63883230f09670d1f` |
| 2 | `theorem` | [diagonalCorrelation_short_integral_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/declarations/diagonalcorrelation-short-integral-error--9c0e326957906fb38dbed194.md) | 26 | `result-track:9c0e326957906fb38dbed19475977956db47cc5c7f2f29813b33a7e5ab83b3ce` |
| 3 | `theorem` | [floor_square_log_square_div_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/declarations/floor-square-log-square-div-bound--c48b5a97679dd6695073d708.md) | 49 | `result-track:c48b5a97679dd6695073d708c15094432ec2108c4b552f826623736dbf4a0763` |
| 4 | `theorem` | [floor_square_short_integral_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant9528e1b47d82a1cac53b9e9a049814c6328fdb8b48521c43e5b6eb95c66bce08.lean/declarations/floor-square-short-integral-error--3bc4ec7e8cb0725072ef897e.md) | 68 | `result-track:3bc4ec7e8cb0725072ef897e4ee380c7125352797d280c6592a8196f3310be5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
