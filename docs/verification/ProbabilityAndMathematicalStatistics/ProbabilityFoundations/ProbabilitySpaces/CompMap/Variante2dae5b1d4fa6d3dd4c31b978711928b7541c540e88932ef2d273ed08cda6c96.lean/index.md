# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.CompMap.Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f85e2f2fe09fd8ed1a7d10153845d538775d107",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f85e2f2fe09fd8ed1a7d10153845d538775d107`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.Comp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deterministic_comp_eq_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/deterministic-comp-eq-map--817bd6328074fb71beb1762f.md) | 42 | `result-track:817bd6328074fb71beb1762fd682fe00872c22d0d9df277d0116b4006f3adb48` |
| 2 | `theorem` | [comp_deterministic_eq_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/comp-deterministic-eq-comap--a824e55d747463834b715d70.md) | 48 | `result-track:a824e55d747463834b715d70e8cddc712c11e64883ec182492088d13a627809e` |
| 3 | `lemma` | [deterministic_comp_deterministic](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/deterministic-comp-deterministic--dfeb05acc79d8d44fd07ad2c.md) | 54 | `result-track:dfeb05acc79d8d44fd07ad2ca66be7c89c43acaa8c1c89a4bf9655c52dbbedd5` |
| 4 | `lemma` | [comp_id](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/comp-id--fac45bedc00b2d7fcd34976d.md) | 59 | `result-track:fac45bedc00b2d7fcd34976d76b16a9b4d2dd8f24741e9841f06f3afdfda97ae` |
| 5 | `lemma` | [id_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/id-comp--bafa59d0fb0729dd0ac6bf8c.md) | 63 | `result-track:bafa59d0fb0729dd0ac6bf8cb8e01bfc050cc9344c22b5f7bc5ec36f201c01d6` |
| 6 | `lemma` | [swap_swap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/swap-swap--e3dc29b1930c497ce568bf90.md) | 67 | `result-track:e3dc29b1930c497ce568bf909dfbf670b8cdae56e1c722b82f827ae0708d0b54` |
| 7 | `lemma` | [swap_comp_eq_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/swap-comp-eq-map--8050b01f5d1e2850b8b3b7ec.md) | 70 | `result-track:8050b01f5d1e2850b8b3b7ecab1f6000e1c04127cf449e0dce12e8368411c6b2` |
| 8 | `lemma` | [map_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/map-comp--64a5726b8d55133dad660fdc.md) | 73 | `result-track:64a5726b8d55133dad660fdc9955943de204e8b7204630827c5c2eb4a33c80d1` |
| 9 | `lemma` | [comp_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/comp-map--0c86e9ec046b7b0b042719d2.md) | 82 | `result-track:0c86e9ec046b7b0b042719d27fbbd062043d885bbdc994a3e596367b95a6167d` |
| 10 | `lemma` | [fst_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/fst-comp--39a75a1bfdad3abf9d8324d3.md) | 88 | `result-track:39a75a1bfdad3abf9d8324d3d1e007e5f4e0829852437d8309b2342eb6de60b0` |
| 11 | `lemma` | [snd_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/CompMap/Variante2dae5b1d4fa6d3dd4c31b978711928b7541c540e88932ef2d273ed08cda6c96.lean/declarations/snd-comp--87fc17042f37578d1fbb817c.md) | 91 | `result-track:87fc17042f37578d1fbb817ccd7811d45a0c0b94d9d85f7217f56c3e72ac4d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
