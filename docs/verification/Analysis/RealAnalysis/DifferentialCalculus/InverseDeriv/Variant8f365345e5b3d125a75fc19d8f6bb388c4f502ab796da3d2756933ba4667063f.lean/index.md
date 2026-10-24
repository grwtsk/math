# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InverseDeriv.Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0b05fec6aaffb7fec17cb2be7bf6e915d70294e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0b05fec6aaffb7fec17cb2be7bf6e915d70294e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_arcsin_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/deriv-arcsin-aux--1a36170b847e2d55a844f3bb.md) | 32 | `result-track:1a36170b847e2d55a844f3bb00d2ae84f976ae9d53c033db942d785e68e024c7` |
| 2 | `theorem` | [hasStrictDerivAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasstrictderivat-arcsin--d4553c44ddb761f739215540.md) | 53 | `result-track:d4553c44ddb761f739215540c9c62fa07442367caf06b1c7b3237006ea0df9a9` |
| 3 | `theorem` | [hasDerivAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivat-arcsin--eb29aa0056f6d79386d7ee42.md) | 57 | `result-track:eb29aa0056f6d79386d7ee42a58152c1963f8a0f0ba07a4dfebdf1ffbccb901f` |
| 4 | `theorem` | [contDiffAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffat-arcsin--28ca0c61dc3b1413f106820f.md) | 61 | `result-track:28ca0c61dc3b1413f106820f29c3ad22ba15f6337c948d3c2d1c7d2a261f8c28` |
| 5 | `theorem` | [hasDerivWithinAt_arcsin_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivwithinat-arcsin-ici--c578ac4d58519f7ba671a9c1.md) | 65 | `result-track:c578ac4d58519f7ba671a9c10308fcdd8bc189db7ef7fb4e987c49b070a38550` |
| 6 | `theorem` | [hasDerivWithinAt_arcsin_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivwithinat-arcsin-iic--71231838387ea8a15085f6e2.md) | 72 | `result-track:71231838387ea8a15085f6e2c631166d4ffc4d9d69e17e45c89f04e8a96d8e58` |
| 7 | `theorem` | [differentiableWithinAt_arcsin_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiablewithinat-arcsin-ici--e6b1bd509fa8d70515a6b1d4.md) | 79 | `result-track:e6b1bd509fa8d70515a6b1d43e2cd67959e15a078e9584999fb1a5bd8ba8e1c8` |
| 8 | `theorem` | [differentiableWithinAt_arcsin_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiablewithinat-arcsin-iic--6910f9f617a3498f0c05c30d.md) | 88 | `result-track:6910f9f617a3498f0c05c30d10bc4c477ecf72b896896f4193f7daa8bf897975` |
| 9 | `theorem` | [differentiableAt_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiableat-arcsin--f5b62f95560e0c67ce654904.md) | 95 | `result-track:f5b62f95560e0c67ce6549045bd9c469e5341f518f1cb2e037f43fdde83efea0` |
| 10 | `theorem` | [deriv_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/deriv-arcsin--14b77b81acf0134f628508f0.md) | 101 | `result-track:14b77b81acf0134f628508f0630b65c64c258a1fa6e06853f142593e76981eaa` |
| 11 | `theorem` | [differentiableOn_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiableon-arcsin--d35177c4d3c47f65e79ce61e.md) | 109 | `result-track:d35177c4d3c47f65e79ce61e44a2102761d0b29705bad90c8bc850c455b30066` |
| 12 | `theorem` | [contDiffOn_arcsin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffon-arcsin--da463dba04512743517977af.md) | 113 | `result-track:da463dba04512743517977afee6e9f85abb899b633812de3707c6617c81d969b` |
| 13 | `theorem` | [contDiffAt_arcsin_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffat-arcsin-iff--0774782a4263a6a3177436ad.md) | 116 | `result-track:0774782a4263a6a3177436ade6b2563a3ca0c2b64280cdea4c1cc7fce7065fd3` |
| 14 | `theorem` | [hasStrictDerivAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasstrictderivat-arccos--f7e77745929dc96f2ff31dd8.md) | 127 | `result-track:f7e77745929dc96f2ff31dd8b2da709294bdb40eecff09da39c1e6955a37b039` |
| 15 | `theorem` | [hasDerivAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivat-arccos--942889db224bff691bbde788.md) | 131 | `result-track:942889db224bff691bbde7886a96bd6e105a8fbd348cef4c0e0ae69b3c0dce52` |
| 16 | `theorem` | [contDiffAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffat-arccos--9b47640b0bef3bb68d9d1664.md) | 135 | `result-track:9b47640b0bef3bb68d9d16649a7a64d53f9b545642cb1fcf76042c78c29cd2bb` |
| 17 | `theorem` | [hasDerivWithinAt_arccos_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivwithinat-arccos-ici--cc370acc3f76694181ecfd53.md) | 139 | `result-track:cc370acc3f76694181ecfd53501347cc48c64fe2732eb20d2bdf609dc6eda5ec` |
| 18 | `theorem` | [hasDerivWithinAt_arccos_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/hasderivwithinat-arccos-iic--3323840aee825cfa1240bf2b.md) | 143 | `result-track:3323840aee825cfa1240bf2be3476663048b9426b396a4da492363ad08dcbb30` |
| 19 | `theorem` | [differentiableWithinAt_arccos_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiablewithinat-arccos-ici--c4701aff9e1ae7843e033be9.md) | 147 | `result-track:c4701aff9e1ae7843e033be906915a188844cce780f99e90b036b141f7e4bc6b` |
| 20 | `theorem` | [differentiableWithinAt_arccos_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiablewithinat-arccos-iic--0f36bff606e5053bf90b80ea.md) | 151 | `result-track:0f36bff606e5053bf90b80ea7fee361aaee98be1c71371ac25f7464fa75c75b0` |
| 21 | `theorem` | [differentiableAt_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiableat-arccos--8cbcf667e3b9a3840965a193.md) | 155 | `result-track:8cbcf667e3b9a3840965a19359f604f47cb7e64817068cd7ec7b27fc3e8daa77` |
| 22 | `theorem` | [deriv_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/deriv-arccos--c25d129cc213e26390f07db2.md) | 159 | `result-track:c25d129cc213e26390f07db219d82d73f0b6fc46ab62751d2829b18301673e9b` |
| 23 | `theorem` | [differentiableOn_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/differentiableon-arccos--1cefeb97da0b194159e3e130.md) | 162 | `result-track:1cefeb97da0b194159e3e13004286993ec9bd68b3833c99d7ed09295be9525c4` |
| 24 | `theorem` | [contDiffOn_arccos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffon-arccos--86fcfad83c5279871e0c2735.md) | 165 | `result-track:86fcfad83c5279871e0c273514e06ef15c9d5fcbf40a7e28bd6ba1148ac13d12` |
| 25 | `theorem` | [contDiffAt_arccos_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f.lean/declarations/contdiffat-arccos-iff--e125f2a5c260d5a8a8374e71.md) | 168 | `result-track:e125f2a5c260d5a8a8374e71b77f1a3500dfcb694b9947e04d5db0f53d45b29c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
