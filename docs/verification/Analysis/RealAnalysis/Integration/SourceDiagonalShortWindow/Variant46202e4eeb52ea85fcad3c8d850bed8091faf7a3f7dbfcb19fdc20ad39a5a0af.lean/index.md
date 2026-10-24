# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceDiagonalShortWindow.Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59a7f91e11422165eb791e3811de56deff1f1761",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59a7f91e11422165eb791e3811de56deff1f1761`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [diagonalCorrelation_sub_one_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/declarations/diagonalcorrelation-sub-one-abs-le--8b73515421d117ad79e1dd7e.md) | 21 | `result-track:8b73515421d117ad79e1dd7e4b04eea82bad843cf41c09c29e8e06ab901051f5` |
| 2 | `theorem` | [diagonalCorrelation_short_integral_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/declarations/diagonalcorrelation-short-integral-error--c241ac18ff24d3f844e469ad.md) | 34 | `result-track:c241ac18ff24d3f844e469add8dcd3efc91fb71b77c8e325f3005ebb92dc7dd7` |
| 3 | `theorem` | [floor_square_log_square_div_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/declarations/floor-square-log-square-div-bound--3e93ab6e8a61b9b7887909bf.md) | 57 | `result-track:3e93ab6e8a61b9b7887909bfba2929b95c78d59d673a2bdaf226d76713df7610` |
| 4 | `theorem` | [floor_square_short_integral_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/declarations/floor-square-short-integral-error--8c67022271c4a9bad6af6dbc.md) | 76 | `result-track:8c67022271c4a9bad6af6dbcd366a2044633468323072986a753920399961eae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
