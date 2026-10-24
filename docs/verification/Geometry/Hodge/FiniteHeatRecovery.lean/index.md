# Verification target: GRWTSK.Geometry.Hodge.FiniteHeatRecovery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc`.

Source path: `GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/FiniteHeatRecovery.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteMatrixHodge`](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagonalHeat](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat--2852159c1f7c8c63ea795681.md) | 51 | `declaration-track:2852159c1f7c8c63ea795681cad009062ca7939c7d961cb1c68522306cbd7c80` |
| 2 | `def` | [inverseDiagonalHeat](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/inversediagonalheat--9013569ffe00ad7eb88e03c3.md) | 56 | `declaration-track:9013569ffe00ad7eb88e03c3e1c61935e236ec6fda263c450744382581c2eb46` |
| 3 | `theorem` | [inverse_after_heat](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/inverse-after-heat--a1a8fe9566ed458df1d96df3.md) | 61 | `result-track:a1a8fe9566ed458df1d96df3bb3a41ec843deebea970faec89066ee92acc3727` |
| 4 | `theorem` | [heat_after_inverse](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/heat-after-inverse--390374038ccce156e935f9dd.md) | 78 | `result-track:390374038ccce156e935f9ddd6c1733f6b452585ceceec4a3126e58562acbd45` |
| 5 | `theorem` | [diagonalHeat_injective](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat-injective--f6b638365edca2cb38dd12ae.md) | 95 | `result-track:f6b638365edca2cb38dd12ae970c5cfc8c75e9c9fcfb5a2244f9af7ec497571a` |
| 6 | `theorem` | [diagonalHeat_add_time](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat-add-time--5fb3296c76b05b695751e43c.md) | 106 | `result-track:5fb3296c76b05b695751e43c07cf59dfba1df13e33deab1722c1de6fc6e160c4` |
| 7 | `theorem` | [diagonalHeat_abs_le](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat-abs-le--fa5525d4338cca54af596151.md) | 121 | `result-track:fa5525d4338cca54af5961515aadc4b5888f5cf8210a17c0bde4578233779e0f` |
| 8 | `theorem` | [diagonalHeat_squareEnergy_le](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat-squareenergy-le--41cd961636df297cfec2e814.md) | 140 | `result-track:41cd961636df297cfec2e8142e3e581896316a99523bf75e345ae87a64bd01f5` |
| 9 | `theorem` | [diagonalHeat_zero_mode](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/diagonalheat-zero-mode--4351ed4e60ff81f9270841d1.md) | 153 | `result-track:4351ed4e60ff81f9270841d1738fa8286684e6a57a1e8dd2826ff855e794c69a` |
| 10 | `theorem` | [inverse_gain_readout](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/inverse-gain-readout--b9b7f9f7c992adf124eceab5.md) | 160 | `result-track:b9b7f9f7c992adf124eceab55c4fbebbd7b165f9fba05ebfd3af794e76cbce8f` |
| 11 | `def` | [UniformInverseBound](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/uniforminversebound--bbd7a98c96180c7e8ac6435e.md) | 173 | `declaration-track:bbd7a98c96180c7e8ac6435eac211e7f1123c3ea51088e60a4c58cdec0e63213` |
| 12 | `theorem` | [uniformInverseBound_iff_gain](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/uniforminversebound-iff-gain--4bb5e4a0dabcdac0bb919079.md) | 181 | `result-track:4bb5e4a0dabcdac0bb9190797a7203d181f242df9e2c424f756e9d457a90860c` |
| 13 | `structure` | [HodgeSpectralChart](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/hodgespectralchart--2c5490d705e4fe13d2989d8f.md) | 199 | `declaration-track:2c5490d705e4fe13d2989d8fc37b1476edcc02016c69002219d78234907a7b46` |
| 14 | `def` | [HodgeSpectralChart.heat](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/hodgespectralchart-heat--d19830ff790c12464f1bcd65.md) | 219 | `declaration-track:d19830ff790c12464f1bcd653bcf7f2691271ddf4033f0c74ac116469e759137` |
| 15 | `def` | [HodgeSpectralChart.recover](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/hodgespectralchart-recover--e8adc207550d0d035e60e071.md) | 227 | `declaration-track:e8adc207550d0d035e60e071d0cef55ddef26091c4ae7e618aa9538580c45770` |
| 16 | `theorem` | [HodgeSpectralChart.recover_heat](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/hodgespectralchart-recover-heat--2a794a59c44ebdb5b66fd9ad.md) | 237 | `result-track:2a794a59c44ebdb5b66fd9ad1d57855141865e5921df62fa79b41cf4a1721d30` |
| 17 | `theorem` | [HodgeSpectralChart.heat_squareEnergy_le](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/hodgespectralchart-heat-squareenergy-le--2637b8dd3ee98ff0f89204ee.md) | 251 | `result-track:2637b8dd3ee98ff0f89204eedc92e4044f4cd8dc27bb39413bdb7140c24384d3` |
| 18 | `theorem` | [discarded_coordinate_is_not_injective](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/discarded-coordinate-is-not-injective--21ff5fc65787544789a1887b.md) | 274 | `result-track:21ff5fc65787544789a1887bfb4574ff3b3344c65f3486aa589a81dec43ab49a` |
| 19 | `def` | [implicitEulerEncode](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/impliciteulerencode--ea6d5a3e5d7c3124b0df87a3.md) | 291 | `declaration-track:ea6d5a3e5d7c3124b0df87a3bc4457b037f1c983e8dfd939f539650462c7e507` |
| 20 | `def` | [implicitEulerRecover](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/impliciteulerrecover--5a514e66e9e4aecd4ed2a1fa.md) | 294 | `declaration-track:5a514e66e9e4aecd4ed2a1fa1a068bb8ffce2bf86be31b927479fd46d307a92a` |
| 21 | `theorem` | [implicitEuler_exact](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/impliciteuler-exact--abe6d3924454d017add5a53d.md) | 298 | `result-track:abe6d3924454d017add5a53dcb65f44a909eb83264f17723f07f7055068f8037` |
| 22 | `theorem` | [implicitEuler_no_uniform_inverse_bound](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/declarations/impliciteuler-no-uniform-inverse-bound--78c1f13d7cefb4cc9505412d.md) | 307 | `result-track:78c1f13d7cefb4cc9505412d15799c498d7708a5c2a6f1ef1b162b9559634ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
