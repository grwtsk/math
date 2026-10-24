# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MinimumObservation.Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "003929f7dd94332b0795211d8242684b906c1fb4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `003929f7dd94332b0795211d8242684b906c1fb4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sufficientObservationFamilies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/sufficientobservationfamilies--16879bf0ec58d6540e16954f.md) | 23 | `declaration-track:16879bf0ec58d6540e16954f2234991948564af15bce35d12e32afdc43ce2cd9` |
| 2 | `theorem` | [mem_sufficientObservationFamilies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/mem-sufficientobservationfamilies--05797e6a08a6026bc007e7de.md) | 28 | `result-track:05797e6a08a6026bc007e7deec843e10492a3e3a8f8df106679b373908aa3be3` |
| 3 | `theorem` | [sufficientObservationFamilies_nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/sufficientobservationfamilies-nonempty-iff--620b36ea78dce1ab297e257e.md) | 35 | `result-track:620b36ea78dce1ab297e257e36b9d5219dfa9da781b26664e88c475df1e0064f` |
| 4 | `theorem` | [sufficientObservationFamilies_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/sufficientobservationfamilies-eq-empty-iff--9aff7926c2928a9fddf8c906.md) | 48 | `result-track:9aff7926c2928a9fddf8c906e22f32b47013d19bc51d9b5d36e13db142786b59` |
| 5 | `def` | [TargetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank--fe2e940317f17dac691e1de3.md) | 55 | `declaration-track:fe2e940317f17dac691e1de35227893997fd9e1a27bd0b5b1a588034ba5b91ad` |
| 6 | `def` | [TargetSeparationCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost--ac19a8b73edb85530c42dc3a.md) | 60 | `declaration-track:ac19a8b73edb85530c42dc3ae7eb8ef4b8c646c6b73d2db8c350c59612ab8b35` |
| 7 | `theorem` | [targetSeparationCost_unit_eq_rank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-unit-eq-rank--0c2a8c0478a39fa7ba8d768d.md) | 67 | `result-track:0c2a8c0478a39fa7ba8d768d19132658ff9be143c8f5c6cd807815094827071b` |
| 8 | `theorem` | [targetSeparationRank_le_of_sufficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-le-of-sufficient--03a76f29edc4ca7182600c96.md) | 74 | `result-track:03a76f29edc4ca7182600c963b38d1eb2f06ebea7bf867b0094899fe783c7626` |
| 9 | `theorem` | [le_targetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/le-targetseparationrank--96f2f578af33496f537c575b.md) | 82 | `result-track:96f2f578af33496f537c575bab10bf3c58c57953395a99ddf8ad0f932b6370ac` |
| 10 | `theorem` | [targetSeparationCost_le_of_sufficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-le-of-sufficient--75e867aec7fa74871c1007e1.md) | 94 | `result-track:75e867aec7fa74871c1007e18f1964517cebf86c04e1a7e682cc75999431310a` |
| 11 | `theorem` | [le_targetSeparationCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/le-targetseparationcost--8203d3b08f3a517305d60911.md) | 104 | `result-track:8203d3b08f3a517305d60911de5b579332723fcf9610227de14692bca190f112` |
| 12 | `theorem` | [targetSeparationRank_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-attained--c31ca293f22f7945565b30da.md) | 117 | `result-track:c31ca293f22f7945565b30da8f567b84c9d7277e95a9047d3c1e163f866ab702` |
| 13 | `theorem` | [targetSeparationCost_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-attained--859a133a60129d8bf6899748.md) | 126 | `result-track:859a133a60129d8bf68997485d0a2e2928c491fd4d4e900fb813da5f78ffaf89` |
| 14 | `theorem` | [targetSeparationRank_eq_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-eq-top-iff--b280cdfb76e6827be80b34c5.md) | 137 | `result-track:b280cdfb76e6827be80b34c5ad3a1b0b2d4754d00004bd2949de82719cbdaf7f` |
| 15 | `theorem` | [targetSeparationCost_eq_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-eq-top-iff--6ae8f61cdda52313c184651a.md) | 143 | `result-track:6ae8f61cdda52313c184651a07fe14040332942a5b7de6a317ab4dc32b78e44c` |
| 16 | `theorem` | [targetSeparationRank_eq_top_iff_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-eq-top-iff-collision--5a1d664e0ec2738fed2ef129.md) | 150 | `result-track:5a1d664e0ec2738fed2ef1291d5a2593b99e2796f2d4deb859f27a02803511c1` |
| 17 | `theorem` | [targetSeparationRank_eq_top_iff_obstructed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-eq-top-iff-obstructed--6c48355d8a09604313663999.md) | 168 | `result-track:6c48355d8a096043136639996fcce2c7a2ec68c60d9319b64b94f2ccf4086beb` |
| 18 | `theorem` | [targetSeparationRank_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-eq-zero-iff--87081f7ac8d66beff762a1d3.md) | 181 | `result-track:87081f7ac8d66beff762a1d353a7e306de6c03f1251c1b3a9fc6158064cbf8dd` |
| 19 | `theorem` | [targetSeparationRank_mono_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-mono-admitted--ceb5743348a4d3efad4a2994.md) | 203 | `result-track:ceb5743348a4d3efad4a299446657d2a3889511d37d51b2d4273dd893ac5a7c0` |
| 20 | `theorem` | [targetSeparationCost_mono_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-mono-admitted--110b18a78d7e7e99c2448773.md) | 211 | `result-track:110b18a78d7e7e99c2448773798212d00381e637714a6390959a51127ab016ae` |
| 21 | `theorem` | [targetSeparationRank_mono_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-mono-target--aa8ca3011f317e4fc41d4e8f.md) | 220 | `result-track:aa8ca3011f317e4fc41d4e8fc1a84d6cfc43ea63cb390e826e3c35824d2d8e6e` |
| 22 | `theorem` | [targetSeparationCost_mono_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-mono-target--c4587fa6e6286981ce40dfa6.md) | 231 | `result-track:c4587fa6e6286981ce40dfa6929f13406befa6ac068814b6c4cddff34ce0a039` |
| 23 | `theorem` | [targetSeparationRank_pair_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-pair-le--a1acbe2142a520dd9d180ed3.md) | 243 | `result-track:a1acbe2142a520dd9d180ed3d9ef2f5e0c0c2d1e284c77fe73f851f2e74d3063` |
| 24 | `theorem` | [card_le_targetSeparationRank_of_disjoint_separators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/card-le-targetseparationrank-of-disjoint-separators--6cf364e06ce5d46c51428f9e.md) | 258 | `result-track:6cf364e06ce5d46c51428f9ed1bd5a4ff1d7842080f10c86255c5e506ed05150` |
| 25 | `def` | [FiniteNotion.targetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/finitenotion-targetseparationrank--f92eea27108d0c54ad603e47.md) | 272 | `declaration-track:f92eea27108d0c54ad603e47cb5d95d28d34dbde54ca5ebb105e2b62544cb55b` |
| 26 | `theorem` | [FiniteNotion.targetSeparationRank_ne_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/finitenotion-targetseparationrank-ne-top-iff--ec0bc3adea3cd0fa05b74851.md) | 278 | `result-track:ec0bc3adea3cd0fa05b74851fb134c23165e85304d9fd3577567b1c10f6354e5` |
| 27 | `theorem` | [FiniteNotion.targetSeparationRank_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/finitenotion-targetseparationrank-of-budget-le--8ac2924fbda47e886c303590.md) | 287 | `result-track:8ac2924fbda47e886c30359081044c0bca0dd214773f724a0de9763c426a000b` |
| 28 | `theorem` | [sufficientObservationFamilies_eq_hitting_sets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/sufficientobservationfamilies-eq-hitting-sets--6f48c65e3a6e1776f470dc92.md) | 297 | `result-track:6f48c65e3a6e1776f470dc9285f69b25574c8544edccafe33d34bf3d458aad65` |
| 29 | `theorem` | [targetSeparationRank_eq_minimum_hitting_set_size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationrank-eq-minimum-hitting-set-size--f97a0d1a3044731fdbfdc7ad.md) | 311 | `result-track:f97a0d1a3044731fdbfdc7ad8bd75835881b8f1607c564e5c82f9e0d86bc404a` |
| 30 | `theorem` | [targetSeparationCost_eq_minimum_hitting_set_cost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-eq-minimum-hitting-set-cost--91c43369aa379a96c6dff43d.md) | 320 | `result-track:91c43369aa379a96c6dff43ddc40117f39d6693ff6fa56b6ecb09c9bb22e46a2` |
| 31 | `theorem` | [targetSeparationCost_pair_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/declarations/targetseparationcost-pair-le--44e449cb6c13a7625015bb9d.md) | 331 | `result-track:44e449cb6c13a7625015bb9dc9609ae49b4d955ac997cbb13cf97d299fe858bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
