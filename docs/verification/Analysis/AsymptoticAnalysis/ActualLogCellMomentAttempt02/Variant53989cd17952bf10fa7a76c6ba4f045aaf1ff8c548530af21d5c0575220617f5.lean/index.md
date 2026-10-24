# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMomentAttempt02.Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0fdf9bee72a6ab0d38920e181723de98e971378",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0fdf9bee72a6ab0d38920e181723de98e971378`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell--208178f02d7363230038ae00.md) | 23 | `declaration-track:208178f02d7363230038ae000eb7178ca114e8b55033b0ba130bcc1cec3c4794` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcellsum--06db1649c7304ad4d35da143.md) | 26 | `declaration-track:06db1649c7304ad4d35da14359322378ad91e8f5f6f2ebed05b87319041d263d` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-integrable--47f1725ebee2731448e527f7.md) | 28 | `result-track:47f1725ebee2731448e527f7ad5c704a266a41636a8b5eba726416ae09eef05c` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-eval--208976bdc8da59cc8652f2a8.md) | 40 | `result-track:208976bdc8da59cc8652f2a884bddf76c098a2f5d5ce58d4ae341b24437766ff` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-nonneg--c09fe990efb5e47c125dca32.md) | 67 | `result-track:c09fe990efb5e47c125dca32a01845518d6e3f1b02f770ce2fb76a5ca560275d` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcellsum-eval--a4ed8d2dc3a0e0123c04de8c.md) | 75 | `result-track:a4ed8d2dc3a0e0123c04de8cc30939ba2c99520b9b575cb3a2cd46c708033702` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcellsum-tendsto--7d02aed58b847010c7deac3a.md) | 89 | `result-track:7d02aed58b847010c7deac3a3250dd017e44c03fa3660b8227692a127ccc9372` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-hassum--2c62fc800c98f8f456a9d5a7.md) | 101 | `result-track:2c62fc800c98f8f456a9d5a7c26d188774f6dbf28748fb76e5b4e8b310c8cc69` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-summable--9ae0f25cf26c83e1af42a39c.md) | 107 | `result-track:9ae0f25cf26c83e1af42a39c0d1c0b4c6520b9574760187e051d9abf35dfed5d` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant53989cd17952bf10fa7a76c6ba4f045aaf1ff8c548530af21d5c0575220617f5.lean/declarations/logcell-tsum--d0cc2c67e318e6f20e7b4ea4.md) | 110 | `result-track:d0cc2c67e318e6f20e7b4ea41c6273cc68f543278fb3d5e6c771ffe073f870a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
