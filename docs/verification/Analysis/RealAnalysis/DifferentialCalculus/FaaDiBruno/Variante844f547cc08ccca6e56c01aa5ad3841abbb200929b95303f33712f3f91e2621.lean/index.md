# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FaaDiBruno.Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb585d48ddebe1bd0c0ff12607291bf282ae8b0f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb585d48ddebe1bd0c0ff12607291bf282ae8b0f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDerivWithin_vcomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-vcomp-eq-sum-orderedfinpartition--5e612b266f609f6e6d53d528.md) | 42 | `result-track:5e612b266f609f6e6d53d5283286c2bf92df00e8cb834e02783717393224fc8c` |
| 2 | `theorem` | [iteratedDeriv_vcomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-vcomp-eq-sum-orderedfinpartition--496f9bb173c68d3dc0eb8fa5.md) | 52 | `result-track:496f9bb173c68d3dc0eb8fa558b5a036f04fb0dc391a90506b1c7d2e1b540f9f` |
| 3 | `theorem` | [iteratedDerivWithin_vcomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-vcomp-two--1716dcec21dfc39cc6404ff7.md) | 61 | `result-track:1716dcec21dfc39cc6404ff737f079e497668413532d10daa32ac7bbb29fb06c` |
| 4 | `theorem` | [iteratedDeriv_vcomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-vcomp-two--ed60ec53a8f1a8b76f6c3b82.md) | 76 | `result-track:ed60ec53a8f1a8b76f6c3b821422b69bd8e2b7350d0aaf37c06ca4cae65a73f2` |
| 5 | `theorem` | [iteratedDerivWithin_vcomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-vcomp-three--2bba140ad58ffee513436069.md) | 84 | `result-track:2bba140ad58ffee513436069afcd2bc3a8418629217c810427e8e02231c2fd5a` |
| 6 | `theorem` | [iteratedDeriv_vcomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-vcomp-three--7dca0270eb0115f0f6c314ea.md) | 111 | `result-track:7dca0270eb0115f0f6c314eae7193479bba95f389a742599232d6ff6205042f4` |
| 7 | `theorem` | [iteratedDerivWithin_scomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-scomp-eq-sum-orderedfinpartition--84f4a9cfe95d7d50f427b091.md) | 129 | `result-track:84f4a9cfe95d7d50f427b091a1338047ad8f699e3e6e369704d9d257ff34974e` |
| 8 | `theorem` | [iteratedDeriv_scomp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-scomp-eq-sum-orderedfinpartition--99fa7a3b4f785d8a0ffbf573.md) | 139 | `result-track:99fa7a3b4f785d8a0ffbf57328b19182fa9298d375aaf2ffa91f1c1e46a792ea` |
| 9 | `theorem` | [iteratedDerivWithin_scomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-scomp-two--84b1742fb4487c43cbb21d83.md) | 147 | `result-track:84b1742fb4487c43cbb21d831dbde48e6c948e4548f7bb92ee79c0be760d274c` |
| 10 | `theorem` | [iteratedDeriv_scomp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-scomp-two--35ef66549290b972c1fc1b89.md) | 156 | `result-track:35ef66549290b972c1fc1b899ccb1978d017deb36e063cd000544ae44db7af00` |
| 11 | `theorem` | [iteratedDerivWithin_scomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-scomp-three--c8c00e1a8edd1ed41c94ebb9.md) | 163 | `result-track:c8c00e1a8edd1ed41c94ebb90368be422fccc794051b1dd060f4fd47f3c06805` |
| 12 | `theorem` | [iteratedDeriv_scomp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-scomp-three--6fe325c8d819020bfd89d794.md) | 180 | `result-track:6fe325c8d819020bfd89d7941ce651982387e499dc3c10e33007eabd1644eed2` |
| 13 | `theorem` | [iteratedDerivWithin_comp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-comp-eq-sum-orderedfinpartition--0be10f150ce49643de1b1698.md) | 196 | `result-track:0be10f150ce49643de1b169828700b2f932ea82b1257ef4f5650a2358cfd5c9e` |
| 14 | `theorem` | [iteratedDeriv_comp_eq_sum_orderedFinpartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-comp-eq-sum-orderedfinpartition--6ba06c5d5eb5a257ef3da39c.md) | 205 | `result-track:6ba06c5d5eb5a257ef3da39c795037be9af5f23c31a299ef1a1046f0aa6ae415` |
| 15 | `theorem` | [iteratedDerivWithin_comp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-comp-two--227e40f6d124575bba52921d.md) | 213 | `result-track:227e40f6d124575bba52921da1762d4c0f0348fd8651f77f64864fce2aca4d20` |
| 16 | `theorem` | [iteratedDeriv_comp_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-comp-two--dbcdd7853173e1e7d474a495.md) | 222 | `result-track:dbcdd7853173e1e7d474a495204799c9880e0d425ba263b976705de972149198` |
| 17 | `theorem` | [iteratedDerivWithin_comp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderivwithin-comp-three--93e1f300661e19eb156c9ff1.md) | 229 | `result-track:93e1f300661e19eb156c9ff1f5067267f56521e23ad21970c033659e7d5a387f` |
| 18 | `theorem` | [iteratedDeriv_comp_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/declarations/iteratedderiv-comp-three--0d65bb43e2e509274f710fff.md) | 240 | `result-track:0d65bb43e2e509274f710fff1c23a7d9bf0f3434b32b8d870c6e80080a5cea07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
