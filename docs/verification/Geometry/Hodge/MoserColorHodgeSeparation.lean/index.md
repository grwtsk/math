# Verification target: GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afaa4254aca2b7789dc1f27425a0b478c2a5a5b7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/MoserColorHodgeSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afaa4254aca2b7789dc1f27425a0b478c2a5a5b7`.

Source path: `GRWTSK/Geometry/Hodge/MoserColorHodgeSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/MoserColorHodgeSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteGraphCellular`](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colorCochain](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/declarations/colorcochain--da1a4e93df983f6f7272b862.md) | 11 | `declaration-track:da1a4e93df983f6f7272b862bbad506379fdbcad227604b5a267e03934012618` |
| 2 | `theorem` | [colorCochain_not_constant](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/declarations/colorcochain-not-constant--4c9553bfaf9ead0a3a883df2.md) | 15 | `result-track:4c9553bfaf9ead0a3a883df29f0dbe670461656e727faa9b3583397556a6927c` |
| 3 | `theorem` | [colorCochain_energy_pos](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/declarations/colorcochain-energy-pos--b5055a973ed232aed7e61358.md) | 23 | `result-track:b5055a973ed232aed7e61358f5f1effbb33c13de78a1bf2c039a156839371cfc` |
| 4 | `theorem` | [constantColor_not_proper](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/declarations/constantcolor-not-proper--88637415d0def7544fe94594.md) | 33 | `result-track:88637415d0def7544fe94594abf1e96588d1ced1fb5718e4d01f40ca29d505e4` |
| 5 | `theorem` | [harmonic_constant_not_coloring](../../../../mathematics/Geometry/Hodge/MoserColorHodgeSeparation.lean/declarations/harmonic-constant-not-coloring--4e8d5bb98b0eb6d674625978.md) | 39 | `result-track:4e8d5bb98b0eb6d6746259784d1ffbf7c4b963b4ae96192b25dac6cc81d2b7c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
