# Verification target: GRWTSK.Analysis.MeasureTheory.ENNRealLogExp.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "650809acc83fb608855887b0bad16b238a296385",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `650809acc83fb608855887b0bad16b238a296385`.

Source path: `GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.ERealExp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.ENNRealLog` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [EReal.log_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/ereal-log-exp--9a393ac060eee0f31ec5c4f2.md) | 36 | `result-track:9a393ac060eee0f31ec5c4f260a5898c9cd214b3167ebeebadbed25b91a6c72d` |
| 2 | `lemma` | [ENNReal.exp_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/ennreal-exp-log--0a974404d3d3ec1838d4b0a6.md) | 42 | `result-track:0a974404d3d3ec1838d4b0a62e23d9589a64005afcca785a24a6a6017cd06bf2` |
| 3 | `lemma` | [exp_nmul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/exp-nmul--0dd5b1b32cc46f2a599d3b41.md) | 55 | `result-track:0dd5b1b32cc46f2a599d3b41a9399c5314b811d93ae0b076e42fdbed08d5662e` |
| 4 | `lemma` | [exp_mul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/exp-mul--09676e767cec0aec2412f0f4.md) | 58 | `result-track:09676e767cec0aec2412f0f45ab45b5a100c7b10169aab13f8b428b80b9c0ccb` |
| 5 | `def` | [logOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/logorderiso--70c59b8ddc38febee4ac71ea.md) | 70 | `declaration-track:70c59b8ddc38febee4ac71ea907b4ca9a5c3726a7640976a0a1570cef8e6f4aa` |
| 6 | `lemma` | [logOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/logorderiso-apply--5211db42426639951656e885.md) | 77 | `result-track:5211db42426639951656e88583d0541a9c15c0e0425e346c888f2dbb21ff44cb` |
| 7 | `def` | [_root_.EReal.expOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exporderiso--a73aa3e92559b856678822d3.md) | 82 | `declaration-track:a73aa3e92559b856678822d3b704d210c6a20e9d146b3d9dfe565cc7331e9162` |
| 8 | `lemma` | [_root_.EReal.expOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exporderiso-apply--37b792b282950a06313a8d66.md) | 84 | `result-track:37b792b282950a06313a8d668f00242f6c615a722cd3e7df4e17c32d5ac31651` |
| 9 | `lemma` | [logOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/logorderiso-symm--74467202f130730a34c6a14e.md) | 86 | `result-track:74467202f130730a34c6a14e39abdd85420344dbf52f1e93867c1467b62056b6` |
| 10 | `lemma` | [_root_.EReal.expOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exporderiso-symm--5c8f5fd9d4e4dae680302e63.md) | 87 | `result-track:5c8f5fd9d4e4dae680302e63a13642837d024952bf6800c88b5adbe7d8e06d82` |
| 11 | `def` | [logHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/loghomeomorph--688eeaaf6877d822eb84751c.md) | 94 | `declaration-track:688eeaaf6877d822eb84751c00a18db9b2e21655a669d85768391fad5f4333be` |
| 12 | `lemma` | [logHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/loghomeomorph-apply--935e076c52c6f1a19bc7e27d.md) | 96 | `result-track:935e076c52c6f1a19bc7e27df47926720a603ab17171500afef49658d0744f26` |
| 13 | `def` | [_root_.EReal.expHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exphomeomorph--7507785a04b128ead49a447f.md) | 99 | `declaration-track:7507785a04b128ead49a447ffee84a516d4540fadc566e80f487471fe82ab426` |
| 14 | `lemma` | [_root_.EReal.expHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exphomeomorph-apply--f8fc0ad045e870c12c5bf64d.md) | 101 | `result-track:f8fc0ad045e870c12c5bf64d622a80a4abf5d10364be1f406b4aebdd9e1c97d2` |
| 15 | `lemma` | [logHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/loghomeomorph-symm--f5b2d26d8a59045dc5c8214a.md) | 103 | `result-track:f5b2d26d8a59045dc5c8214a7e8f76264107d44d24d23834c96b1f7b09e6ecd2` |
| 16 | `lemma` | [_root_.EReal.expHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-exphomeomorph-symm--ad40fe419409f73aec210ce1.md) | 105 | `result-track:ad40fe419409f73aec210ce199281d5db27c999d739b4aad4b93523f7ccbf677` |
| 17 | `lemma` | [continuous_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/continuous-log--66d7eaeb5c6beb0e7d68326a.md) | 108 | `result-track:66d7eaeb5c6beb0e7d68326a74cb63371b97c1e3450cf1f58ea614eaef5fae2b` |
| 18 | `lemma` | [continuous_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/continuous-exp--1e1441b95c4f8121833c83c5.md) | 111 | `result-track:1e1441b95c4f8121833c83c509d34ee9b7a12151458e9867db3b7a60b3fc6e92` |
| 19 | `lemma` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/measurable-log--206cd4f1c7d232850d33d698.md) | 118 | `result-track:206cd4f1c7d232850d33d698aee39233fcf97c540eef7bb1cec0e6df498a1292` |
| 20 | `lemma` | [_root_.EReal.measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-ereal-measurable-exp--bfd1d11fdb0351f325f17557.md) | 121 | `result-track:bfd1d11fdb0351f325f1755741ee8d04dc5276240efdffe28d90d7cc187772e6` |
| 21 | `lemma` | [_root_.Measurable.ennreal_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-measurable-ennreal-log--87963fc68714f6d17f467f18.md) | 124 | `result-track:87963fc68714f6d17f467f184f96f1e1c1befb84c81711b8a0c7a83ec6d2c30b` |
| 22 | `lemma` | [_root_.Measurable.ereal_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/root-measurable-ereal-exp--e34c535cc0aff5e82ea194c4.md) | 129 | `result-track:e34c535cc0aff5e82ea194c4ce65433daf42f3d45a1cdd2a2c7ee4f47a5d0708` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.lean/declarations/instance--b9d568345fe77214cdc07ba1.md) | 137 | `declaration-track:b9d568345fe77214cdc07ba1f6e38f35801c9a063dc3570d26cb569aa6210e27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
