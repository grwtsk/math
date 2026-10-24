# Verification target: GRWTSK.Analysis.Fourier.ZModIndependentSelection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81445acd3340984720843e8bc6b5ec40f5adecce",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModIndependentSelection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81445acd3340984720843e8bc6b5ec40f5adecce`.

Source path: `GRWTSK/Analysis/Fourier/ZModIndependentSelection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModIndependentSelection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [character_orthogonality](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/character-orthogonality--95c9c4b1686d56c508386ad4.md) | 23 | `result-track:95c9c4b1686d56c508386ad480b489c5642583d19c8cc63754bbcb54c77923c7` |
| 2 | `theorem` | [equality_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/equality-indicator--96beffc6c56659cfe8485dc6.md) | 32 | `result-track:96beffc6c56659cfe8485dc6a3983a2787bd9e185783ad095b3bafbb0c65254c` |
| 3 | `def` | [valueProbability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/valueprobability--54386b7731d216329bdf0fe7.md) | 41 | `declaration-track:54386b7731d216329bdf0fe79fc2eeb787fa49a17085cdad27bef2c01a544a82` |
| 4 | `theorem` | [valueProbability_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/valueprobability-nonneg--c0aeba1dc876b16c211fde87.md) | 47 | `result-track:c0aeba1dc876b16c211fde87a8f2071ecd89f6371b71b52acfe5784020e50849` |
| 5 | `theorem` | [valueProbability_eq_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/valueprobability-eq-indicator--27c370476c0034c6c3a73372.md) | 54 | `result-track:27c370476c0034c6c3a73372bf387441c32b54e645ffd804b75304a1d17897e9` |
| 6 | `theorem` | [valueProbability_fourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/valueprobability-fourier--0ef97b5a02c5f1d68c2ac04d.md) | 65 | `result-track:0ef97b5a02c5f1d68c2ac04de6df0b730d9914d0c04b00af3ae18c764ddc82b5` |
| 7 | `theorem` | [valueProbability_total](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/valueprobability-total--41daa5e5aa28b25b4559b610.md) | 82 | `result-track:41daa5e5aa28b25b4559b61005f6d55c1212f91f4265e05fe57e9049e6e96ddf` |
| 8 | `def` | [eventProbability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/eventprobability--e017ad97203cbf24d896bb9d.md) | 98 | `declaration-track:e017ad97203cbf24d896bb9dc0e2638941bfe0af0647e8d78378f2abeb7d9577` |
| 9 | `abbrev` | [Selection](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/selection--e5fd6372a04df0adbdbc9003.md) | 106 | `declaration-track:e5fd6372a04df0adbdbc900388eea8d616a6fd2588e23351ccaa4de949601f94` |
| 10 | `def` | [selectionSum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/selectionsum--cf95881ba1bdfc7073de2c35.md) | 109 | `declaration-track:cf95881ba1bdfc7073de2c35a86d70d842286aeded42260bebc7a2c2a6dc7da6` |
| 11 | `def` | [coordinateCharacterAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/coordinatecharacteraverage--8ab4ce4c448db855fd7c9c8d.md) | 113 | `declaration-track:8ab4ce4c448db855fd7c9c8df5502b87e1c146e072a2b28b353147d75c7a5ce3` |
| 12 | `theorem` | [uniform_product_factorization](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/uniform-product-factorization--c50b3720d7b90f4af2052042.md) | 118 | `result-track:c50b3720d7b90f4af205204288f3323758e0c535a37baec0abe4676ed0e7f0bc` |
| 13 | `theorem` | [independent_cylinder_probability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/independent-cylinder-probability--c034a3f604c5e2f9a2d4aa6a.md) | 127 | `result-track:c034a3f604c5e2f9a2d4aa6a8322c82aa2470f833d01d58b03117538ec7e73bc` |
| 14 | `theorem` | [character_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/character-sum--acab32866ea74043bca6fdbb.md) | 143 | `result-track:acab32866ea74043bca6fdbbf76a49ec4ac38ebb1943e4c90a246867447c0b36` |
| 15 | `theorem` | [selection_character_factorization](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/selection-character-factorization--9be91ccca67c07cecbbb23e6.md) | 154 | `result-track:9be91ccca67c07cecbbb23e66b33c216369afecf35675ecf9095b0d269636973` |
| 16 | `theorem` | [independent_fourier_formula](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/independent-fourier-formula--2a4584060a96c6833d549e3f.md) | 171 | `result-track:2a4584060a96c6833d549e3f2c0d28e687db2a5e9ae2c01b9c911ce67b70983a` |
| 17 | `theorem` | [independent_mass_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/independent-mass-bound--7c082858dd199f78f6af6411.md) | 181 | `result-track:7c082858dd199f78f6af6411c6fef363fc562f5aa0753dee30bccf2da7b8f875` |
| 18 | `theorem` | [coordinateCharacterAverage_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/coordinatecharacteraverage-zero--903f8c017518019af8fe252d.md) | 201 | `result-track:903f8c017518019af8fe252dd64ceec9404e8b54d7a550e2d8e86a4eb33b4289` |
| 19 | `theorem` | [independent_nontrivial_mass_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/independent-nontrivial-mass-bound--4ffe7779cbf36a3524dfd93c.md) | 207 | `result-track:4ffe7779cbf36a3524dfd93ca97733d2e3a4afa8c4ab78e982e9d29f83a0e7ce` |
| 20 | `abbrev` | [PartSelection](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/partselection--a579809fd2b3003804e532f2.md) | 222 | `declaration-track:a579809fd2b3003804e532f251f56641e1e4240162b274378af94242891facb6` |
| 21 | `abbrev` | [characterAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/characteraverage--5db49455c203aa81ddda5132.md) | 225 | `declaration-track:5db49455c203aa81ddda51327102286387c43bc48d6966d7e427a0c5677f2546` |
| 22 | `theorem` | [coordinateCharacterAverage_part](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/coordinatecharacteraverage-part--80fb1b7a5ecc81d271065190.md) | 230 | `result-track:80fb1b7a5ecc81d271065190f9c99bb6eaf4b8eadf8a571a2b93aed9ba3edd84` |
| 23 | `theorem` | [part_mass_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/declarations/part-mass-bound--aa65c32075d21a3c6db49c83.md) | 241 | `result-track:aa65c32075d21a3c6db49c8377245fa5d75f0e02a08b4eae6c261c4093717e54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
