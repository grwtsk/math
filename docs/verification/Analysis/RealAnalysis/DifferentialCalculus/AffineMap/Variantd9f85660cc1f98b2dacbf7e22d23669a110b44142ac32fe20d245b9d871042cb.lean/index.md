# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793b314cbe1d0a74f5556a214eaa8324a8208412",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793b314cbe1d0a74f5556a214eaa8324a8208412`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiff--1f959036c2b9d6e0e3cfc6ac.md) | 41 | `result-track:1f959036c2b9d6e0e3cfc6ac964715e0e1d1b2271736337fe80c66406e5a2ac8` |
| 2 | `theorem` | [contDiff_lineMap_uncurry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiff-linemap-uncurry--4c00dc838beacb9887e85bb2.md) | 55 | `result-track:4c00dc838beacb9887e85bb21e26e3abcb37e8fca8caa3209ac72bf879ad5ed4` |
| 3 | `theorem` | [contDiff_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiff-linemap--ef9bfe4c875aa7e4170a27d2.md) | 61 | `result-track:ef9bfe4c875aa7e4170a27d2851afe0fb4ed74e8f12c23e3963dacee627c8657` |
| 4 | `theorem` | [ContDiffWithinAt.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiffwithinat-linemap--941d21b6c47ac4cc4fc564a7.md) | 75 | `result-track:941d21b6c47ac4cc4fc564a7f822364ce078b38c34510bf7841fac659b6d7153` |
| 5 | `theorem` | [ContDiffAt.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiffat-linemap--b4b077547cff5448a2748ede.md) | 81 | `result-track:b4b077547cff5448a2748ede2e239c589fc6106d1a5e690a8d79922bba4d02f8` |
| 6 | `theorem` | [ContDiffOn.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiffon-linemap--848b1da7e0d89e7f9376bf5a.md) | 86 | `result-track:848b1da7e0d89e7f9376bf5abbc2e11e243898e78ffe6e1cfa9b1d522462d9bc` |
| 7 | `theorem` | [ContDiff.lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb.lean/declarations/contdiff-linemap--c5e5fd0b6219610c97f51e78.md) | 91 | `result-track:c5e5fd0b6219610c97f51e78eeb7bdff6a824a3d993d4d5ac71a9f2a1c1d7789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
