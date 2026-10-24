# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothSeries.Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98065890f200d80623627575bae274d64fe8432e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98065890f200d80623627575bae274d64fe8432e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_of_summable_hasFDerivAt_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/summable-of-summable-hasfderivat-of-ispreconnected--fb5b17ef11be4eed5ec5e170.md) | 49 | `result-track:fb5b17ef11be4eed5ec5e1701c1bfec6cb9aa440249e63f5df92f74769bc86bd` |
| 2 | `theorem` | [summable_of_summable_hasDerivAt_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/summable-of-summable-hasderivat-of-ispreconnected--9d0ab43058d0c1a5278fc3b9.md) | 64 | `result-track:9d0ab43058d0c1a5278fc3b99b0cbc62f235990b593b605dfcbc9b97f6d06006` |
| 3 | `theorem` | [hasFDerivAt_tsum_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/hasfderivat-tsum-of-ispreconnected--783d82c3cda1e77993b761c0.md) | 76 | `result-track:783d82c3cda1e77993b761c09ac0ca6cf1fa458a8b0dc207fcd2d9c4c35a08cf` |
| 4 | `theorem` | [hasDerivAt_tsum_of_isPreconnected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/hasderivat-tsum-of-ispreconnected--e692e1b424787f157350d779.md) | 94 | `result-track:e692e1b424787f157350d779391afe555fce90bcb6c00509344406fb0a773e9d` |
| 5 | `theorem` | [summable_of_summable_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/summable-of-summable-hasfderivat--61841fd8fac1eb0005601c0b.md) | 107 | `result-track:61841fd8fac1eb0005601c0b2d384d8f47018c72b55b45bba8f095dee277e597` |
| 6 | `theorem` | [summable_of_summable_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/summable-of-summable-hasderivat--5a29b38951eaef62234681e4.md) | 118 | `result-track:5a29b38951eaef62234681e4decb62a98b76235fcef42cff91f369c800faf9ed` |
| 7 | `theorem` | [hasFDerivAt_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/hasfderivat-tsum--c75ce59f5e9923981e14a061.md) | 127 | `result-track:c75ce59f5e9923981e14a0616c70fb78a4bff0faf99b9a9cb96a985b3f0c15c9` |
| 8 | `theorem` | [hasDerivAt_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/hasderivat-tsum--c7ddca15029953eb7b5413c9.md) | 138 | `result-track:c7ddca15029953eb7b5413c90123342411d37716416739aee66829791a0319f5` |
| 9 | `theorem` | [differentiable_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/differentiable-tsum--cee185ec5bc805dde8e98251.md) | 148 | `result-track:cee185ec5bc805dde8e9825156fb57e58233272e0c4ee8a329fc48f6a7f1f1c6` |
| 10 | `theorem` | [differentiable_tsum'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/differentiable-tsum--c6078e9122461421504d7150.md) | 163 | `result-track:c6078e9122461421504d71502f9cf57f40b408f541f9bef4a5a8307ac5003b64` |
| 11 | `theorem` | [fderiv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/fderiv-tsum-apply--612f51e3bd92cf6a463b4509.md) | 169 | `result-track:612f51e3bd92cf6a463b450978beca3f96bb09b61d323064a618541ec71369c4` |
| 12 | `theorem` | [deriv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/deriv-tsum-apply--f34a511b10bb47e5b321f176.md) | 174 | `result-track:f34a511b10bb47e5b321f176a3dd7ec2802db4b440cea8f7e76c8ce7cc23935e` |
| 13 | `theorem` | [fderiv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/fderiv-tsum--ceecb284c8d3160b8efb8334.md) | 179 | `result-track:ceecb284c8d3160b8efb8334a4540c1975294989d7f1604eb669f93758f86828` |
| 14 | `theorem` | [deriv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/deriv-tsum--5c9e031e691430dec4ae61f9.md) | 185 | `result-track:5c9e031e691430dec4ae61f9783d9a7a63c923eb92f834634108c65114ba84dc` |
| 15 | `theorem` | [iteratedFDeriv_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/iteratedfderiv-tsum--2f64258057b8dbf8b3360b4b.md) | 195 | `result-track:2f64258057b8dbf8b3360b4bc5acf725371d18f747a22f94df82f4eb7a529921` |
| 16 | `theorem` | [iteratedFDeriv_tsum_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/iteratedfderiv-tsum-apply--1975b67d0a803adfe62d1d24.md) | 219 | `result-track:1975b67d0a803adfe62d1d24ac9dfb6862a132b9b4cd96edaedf908a1363e508` |
| 17 | `theorem` | [contDiff_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/contdiff-tsum--5282ea0414e0f672bb0cc254.md) | 229 | `result-track:5282ea0414e0f672bb0cc25447f8f08a1c81e115f112ad629c223886bcba11a5` |
| 18 | `theorem` | [contDiff_tsum_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant3a4641e4d8242111eb7e9ce4eb63526c361c52916900ab6ee4d61b1bb6046204.lean/declarations/contdiff-tsum-of-eventually--6fb604ed7849a9011d85fad0.md) | 255 | `result-track:6fb604ed7849a9011d85fad05e5b4c46599fab21b491a286818a27a2c9e99ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
