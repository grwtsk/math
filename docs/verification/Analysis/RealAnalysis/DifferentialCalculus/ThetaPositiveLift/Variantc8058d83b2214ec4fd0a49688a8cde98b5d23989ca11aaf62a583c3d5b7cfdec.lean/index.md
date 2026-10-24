# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3e04a3ff3a26dab21aa087fc0c8b634e852068e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3e04a3ff3a26dab21aa087fc0c8b634e852068e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/det-fin-three-normalize-first-row--57b9704fe5a9e284f91e84ee.md) | 31 | `result-track:57b9704fe5a9e284f91e84eebd7a44a0dc5cbe1ac0b5a13620e90f12db63a64c` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/det-fin-three-normalized-eq-differences--a98966430443dc8b77e46c4d.md) | 41 | `result-track:a98966430443dc8b77e46c4d118140bac08794bd4cdab0b66b217f7f92766f57` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/det-fin-three-normalized-eq-secants--226941cdb436f02aa135eed4.md) | 48 | `result-track:226941cdb436f02aa135eed4d22b498cf745b52385efd79a93f83ae103a2aa88` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/oriented-plucker-three-scalar--d6f4beef2d70df908d9a76a7.md) | 58 | `result-track:d6f4beef2d70df908d9a76a7c35aa158fcc1475cfecfa8026d3534d47b2a9e00` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/oriented-plucker-three--6abe3ecf74e8a3ceae3bb14e.md) | 67 | `result-track:6abe3ecf74e8a3ceae3bb14e9e09f485add6cd1551febeac563e7f205e45a162` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/image-sub-neg-of-hasderivat-neg--8f1fa47c1cedacc5e16fc442.md) | 75 | `result-track:8f1fa47c1cedacc5e16fc442b1fc4e53140cabb2b978d06f2fe06b962bcdf124` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc8058d83b2214ec4fd0a49688a8cde98b5d23989ca11aaf62a583c3d5b7cfdec.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio--143cf3c86237440f44c45109.md) | 86 | `result-track:143cf3c86237440f44c45109f292d5f08356d4d96ae2a5efe9149564ddf5fb15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
