# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile.Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2313b340f858d5e0c07f65732dcfcc6ed7c164ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2313b340f858d5e0c07f65732dcfcc6ed7c164ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/det-fin-three-normalize-first-row--12c161ee133febf19e9c2892.md) | 9 | `result-track:12c161ee133febf19e9c2892837e56881fbd550638bb789d391853d57ec6a0ed` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/det-fin-three-normalized-eq-differences--4b28823912eb79c30e9bf9ca.md) | 20 | `result-track:4b28823912eb79c30e9bf9caf6f166e2127aa48b84b203b84b243240e14abb43` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/det-fin-three-normalized-eq-secants--cedec02377ec425d7f82c7b4.md) | 27 | `result-track:cedec02377ec425d7f82c7b4b611de1cbaff9dd6d50249f10b28e1957ca9b1b6` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/oriented-plucker-three-scalar--952c11e55da450cfad1bf180.md) | 36 | `result-track:952c11e55da450cfad1bf180af3e7467e20205c87a579ccefcd7b5795b9f008a` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/oriented-plucker-three--759a5ef2f66a0a12f26a0b9d.md) | 43 | `result-track:759a5ef2f66a0a12f26a0b9d21b01443550dc1fca43b01c915ffd056ef0115eb` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/image-sub-neg-of-hasderivat-neg--66d5588a0904b3c5d612113f.md) | 51 | `result-track:66d5588a0904b3c5d612113f1f8ebfe5e285f03fcca6a6545f4d2d0b728c6fb9` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio--1d40df93aa354623d6f0e33c.md) | 59 | `result-track:1d40df93aa354623d6f0e33c5fdf8a0a2cbaab171c579e091876be2064677a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
