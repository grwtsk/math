# Verification target: GRWTSK.Topology.GeneralTopology.Evaluation.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e09acfc6324171966f4efc0088d04d7b3a8a525f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e09acfc6324171966f4efc0088d04d7b3a8a525f`.

Source path: `GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Trunc` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.TopologicallyNilpotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.LinearTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval--df8ab6c7fe1bf66e3e333b12.md) | 64 | `declaration-track:df8ab6c7fe1bf66e3e333b127c43a58acc030c26167b81367bd555c9cd1c75af` |
| 2 | `theorem` | [HasEval.mono](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-mono--487f4c48af583f16c13e70fb.md) | 68 | `result-track:487f4c48af583f16c13e70fb41ea8a76a54a51fa8bbc5f285a9d9d21a2cf1ff0` |
| 3 | `theorem` | [HasEval.zero](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-zero--1d94a0a2de7a7cf4bc114787.md) | 74 | `result-track:1d94a0a2de7a7cf4bc114787797ea0999d3243373ef3ef7d063a011df938cf97` |
| 4 | `theorem` | [HasEval.add](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-add--dbfd5fb11e1c492ed95c2cb1.md) | 78 | `result-track:dbfd5fb11e1c492ed95c2cb1b800c404792051b2272ca08abbe5c865c8b9d256` |
| 5 | `theorem` | [HasEval.mul_left](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-mul-left--305c86fd60d1a87065782bd7.md) | 83 | `result-track:305c86fd60d1a87065782bd7d2bd3fba3b77bc0ab3daeda56a72248527c5bd07` |
| 6 | `theorem` | [HasEval.mul_right](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-mul-right--5852a63e739b7b83a6465b4c.md) | 88 | `result-track:5852a63e739b7b83a6465b4c3698eff59d5698755b20fed066e3d0635fbd0f8c` |
| 7 | `theorem` | [HasEval.map](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-map--48f16b7d5dc0b95db6c4ca94.md) | 93 | `result-track:48f16b7d5dc0b95db6c4ca942d2e1399ad6edd04b9e57643010d6508877907e1` |
| 8 | `theorem` | [HasEval.X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/haseval-x--38dfde67e1e6b5823e1c5c33.md) | 98 | `result-track:38dfde67e1e6b5823e1c5c3381baf192b7f0d94c9f68cd9c31f5f0b8030ad03e` |
| 9 | `def` | [hasEvalIdeal](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/hasevalideal--d997519e518ee4d902712a6c.md) | 107 | `declaration-track:d997519e518ee4d902712a6c21f898cc7123bc0b264fae03d08f723415595e6f` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/mem-hasevalideal-iff--d1fbc86a06e2d10d65481686.md) | 113 | `result-track:d1fbc86a06e2d10d654816861b7b3c54d63b04ef6bbb6f0eace4910a0ffc1ad5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/instance--1783f4f761aa6654b208302f.md) | 131 | `declaration-track:1783f4f761aa6654b208302f514037089bb3f707c6cad83ed8f678317e7fe7f1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/instance--e9af9d8441ffadd6142650ac.md) | 135 | `declaration-track:e9af9d8441ffadd6142650acfb6cafe4bc918e74728a6786acb4a262f15555ab` |
| 13 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isUniformInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/root-mvpolynomial-tomvpowerseries-isuniforminducing--1e46ea710c333dddc4affc0c.md) | 138 | `result-track:1e46ea710c333dddc4affc0c6ecc9d2d34266547c4de02f987d448bc84f40913` |
| 14 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isDenseInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/root-mvpolynomial-tomvpowerseries-isdenseinducing--60fcba9023c4ef7947ce160b.md) | 142 | `result-track:60fcba9023c4ef7947ce160b04a67dd08101b308dd2c38d98cc2e08fcbec7d51` |
| 15 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_uniformContinuous](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/root-mvpolynomial-tomvpowerseries-uniformcontinuous--1d63f294d49138476c65377f.md) | 150 | `result-track:1d63f294d49138476c65377ffb0ff35cc33af8bca0ffdd5cc7fa0659e81b0b14` |
| 16 | `def` | [eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval--4a89384f345c9913af8c66a1.md) | 194 | `declaration-track:4a89384f345c9913af8c66a16884317e95abf7f2bd209ee1e5a3b40568d7d59b` |
| 17 | `theorem` | [eval₂_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-coe--e87b41105802ff5341c15727.md) | 199 | `result-track:e87b41105802ff5341c15727ca9f24351d5b5530f4ec1494076701d5f3cd354d` |
| 18 | `theorem` | [eval₂_C](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-c--9230a599fd103371dd6170dc.md) | 207 | `result-track:9230a599fd103371dd6170dcd658b5fd808c23e75a48c4fa651d2782460adfdf` |
| 19 | `theorem` | [eval₂_X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-x--9d9bbb4a88d049db7aec7fdd.md) | 211 | `result-track:9d9bbb4a88d049db7aec7fdd82a5fc612e87620e53f185acb10b85b4e1bc4151` |
| 20 | `def` | [eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-hom--cc489a8a322e7f44a945f640.md) | 221 | `declaration-track:cc489a8a322e7f44a945f64025166ce0de4e3e3a09f779d595cf87d7305cafa7` |
| 21 | `theorem` | [eval₂Hom_eq_extend](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-hom-eq-extend--9fb8adc014949cbde43775ec.md) | 228 | `result-track:9fb8adc014949cbde43775ecf6bdf10e512566b9510dd905dab12fcfd5ef4e14` |
| 22 | `theorem` | [coe_eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/coe-eval-hom--616d4f7a9e3d574e099f2d79.md) | 233 | `result-track:616d4f7a9e3d574e099f2d7993d75e16f67971d3560223d011b012a28ef168ce` |
| 23 | `theorem` | [uniformContinuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/uniformcontinuous-eval--b53010619fab4012c9d36384.md) | 247 | `result-track:b53010619fab4012c9d36384dce6d7c2371da760d35a45c6cee4a9423fb8eec9` |
| 24 | `theorem` | [continuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/continuous-eval--eac92e52fecd37bfe572bd6a.md) | 255 | `result-track:eac92e52fecd37bfe572bd6a08d6d058ad7795c142dc3f8007f25e419e41c5ba` |
| 25 | `theorem` | [hasSum_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/hassum-eval--f573e2947a5d7a8fca490ed9.md) | 259 | `result-track:f573e2947a5d7a8fca490ed99c683704e7708aacb755d0d361713849ed85920f` |
| 26 | `theorem` | [eval₂_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-eq-tsum--cdb3b5c12c1153bcbf61240e.md) | 269 | `result-track:cdb3b5c12c1153bcbf61240e76d8c398e470a5e86fc6d3009e2debae5963c77c` |
| 27 | `theorem` | [eval₂_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/eval-unique--ae11d5eb2529cd8612b4abd3.md) | 274 | `result-track:ae11d5eb2529cd8612b4abd359e03f865815568a7aa177cc1d77bd8e618b3498` |
| 28 | `theorem` | [comp_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/comp-eval--68239217cfdc3570659e477f.md) | 281 | `result-track:68239217cfdc3570659e477fe8ec981731e18bf2598d1ce5bd788b4cab759aad` |
| 29 | `def` | [aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/aeval--313dfefaa2821fb750126ce4.md) | 297 | `declaration-track:313dfefaa2821fb750126ce40cc229f0a806cadce8347e258065593a1624f853` |
| 30 | `theorem` | [coe_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/coe-aeval--e2547db03bfec086ebdaa09e.md) | 303 | `result-track:e2547db03bfec086ebdaa09ef16a0c213a9a4eae3a1171a04f700c2d0b9167f5` |
| 31 | `theorem` | [continuous_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/continuous-aeval--6347c29a21039866f9fea1a5.md) | 307 | `result-track:6347c29a21039866f9fea1a59985f470cd82f42db69bde26a02d2aa7a044bddc` |
| 32 | `theorem` | [aeval_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/aeval-coe--4c2b4ccf038e6219c6f768a9.md) | 313 | `result-track:4c2b4ccf038e6219c6f768a9f95aa7fd2ef49b5f90a2a26a5ef71c8b69216060` |
| 33 | `theorem` | [aeval_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/aeval-unique--c8ec7312480b16429a1846e5.md) | 317 | `result-track:c8ec7312480b16429a1846e5412db419a1e738c4439d297bd723134dff0858bd` |
| 34 | `theorem` | [hasSum_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/hassum-aeval--30587d6f3ba78c4da8472470.md) | 328 | `result-track:30587d6f3ba78c4da847247032b25122c23527270fbc696ba9c247588a401fd8` |
| 35 | `theorem` | [aeval_eq_sum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/aeval-eq-sum--3b9eebe7914cdd2f6d528aeb.md) | 334 | `result-track:3b9eebe7914cdd2f6d528aeb80d5122b708a2c3fbd41d0cdfab6ba9d97f1a9d8` |
| 36 | `theorem` | [comp_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/declarations/comp-aeval--aca3da3c0dbc0944d7a550f5.md) | 339 | `result-track:aca3da3c0dbc0944d7a550f5df659e64742c4991b9186ece72f516ff843b4532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
