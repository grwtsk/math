# Verification target: GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cedbbaac59215df5bb72f3a1e041b43697e028d0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cedbbaac59215df5bb72f3a1e041b43697e028d0`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow`](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProgressionCircleWindowMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressioncirclewindowmajorsum--69d9032201c73a0d845d21de.md) | 48 | `declaration-track:69d9032201c73a0d845d21de4035d56d73fd7a2bfa409959ff5dc24b8b8f237f` |
| 2 | `def` | [goldbachProgressionSymmetricWindowMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressionsymmetricwindowmajorsum--efa95306b47f1a521dd34dfd.md) | 56 | `declaration-track:efa95306b47f1a521dd34dfd663c6fda340fc1a964708ccd8a67564098695209` |
| 3 | `theorem` | [goldbachProgressionFactoredMajorSum_eq_circleWindow](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressionfactoredmajorsum-eq-circlewindow--05df863685ae8c2f51ad0613.md) | 64 | `result-track:05df863685ae8c2f51ad061339b0922c6b618fe3e1b5f6a4471d5de0b3988d61` |
| 4 | `theorem` | [goldbachProgressionFactoredMajorSum_eq_symmetricWindow](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressionfactoredmajorsum-eq-symmetricwindow--5b9d6556e9d5ce4cb702b914.md) | 76 | `result-track:5b9d6556e9d5ce4cb702b9145aee5a4b6e9d1636e77765e1548252555ff010cb` |
| 5 | `theorem` | [goldbachProgressionDenominatorMajorBlock_eq_common](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressiondenominatormajorblock-eq-common--715030757cfb411649634faa.md) | 90 | `result-track:715030757cfb411649634faa4f25eda4990ec9fac1d77302f2727fc4c914f70f` |
| 6 | `theorem` | [goldbachProgressionDenominatorMajorBlock_eq_symmetric](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachprogressiondenominatormajorblock-eq-symmetric--7e41a8448a5379bb0574a6c2.md) | 112 | `result-track:7e41a8448a5379bb0574a6c2a691a62367f9e1e975ba8e391efae087f7102d10` |
| 7 | `theorem` | [goldbachCount_pos_of_circleWindow_progression_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachcount-pos-of-circlewindow-progression-bounds--9c32a2d16de3aa571b681bee.md) | 126 | `result-track:9c32a2d16de3aa571b681bee38c2ed9562b8b4edd0fceb038184ecd341eb8cde` |
| 8 | `theorem` | [goldbachCount_pos_of_symmetricWindow_progression_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachcount-pos-of-symmetricwindow-progression-bounds--bec986adf977e5af26ebe081.md) | 161 | `result-track:bec986adf977e5af26ebe0811a731f2848296a478e6670121019976eff7aef0f` |
| 9 | `theorem` | [goldbachCount_pos_of_symmetricWindow_coefficient_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/declarations/goldbachcount-pos-of-symmetricwindow-coefficient-certificate--ad3e17bd73a2e9c21516a26b.md) | 197 | `result-track:ad3e17bd73a2e9c21516a26b3ad2393c6913713771a05b49a53f73c55388b7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
