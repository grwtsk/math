# Verification target: GRWTSK.Algebra.CartanExists.Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8d89542ec2494352a56381215683ad242c2d9a6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/index.md) · [Full source](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8d89542ec2494352a56381215683ad242c2d9a6`.

Source path: `GRWTSK/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Rank` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieCharpoly](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/liecharpoly--121e559230923017771b4117.md) | 78 | `declaration-track:121e559230923017771b41178f0d6ed171186603667c51ff29a3810582b6c894` |
| 2 | `lemma` | [lieCharpoly_monic](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/liecharpoly-monic--6f9fb6cdcc05b03f19f72d75.md) | 83 | `result-track:6f9fb6cdcc05b03f19f72d7507af73aaafb2ae7796041958f0b0f3bf6238d276` |
| 3 | `lemma` | [lieCharpoly_natDegree](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/liecharpoly-natdegree--56045cbf2df1bed5952729ef.md) | 86 | `result-track:56045cbf2df1bed5952729ef8cfb9cf79ce7c25a4b23c009071b813bdb74185e` |
| 4 | `lemma` | [lieCharpoly_map_eval](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/liecharpoly-map-eval--e53d220e237ee7f7a83527cb.md) | 90 | `result-track:e53d220e237ee7f7a83527cbdae014b96f185743de439f2d755d588d64256aec` |
| 5 | `lemma` | [lieCharpoly_coeff_natDegree](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/liecharpoly-coeff-natdegree--57c749fba1e2d1689653875d.md) | 100 | `result-track:57c749fba1e2d1689653875d1c27da0f2231cb8601e4fbcb0434344b43b3b17b` |
| 6 | `lemma` | [engel_isBot_of_isMin](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/engel-isbot-of-ismin--0931e02fdc91ba4f4d670a39.md) | 128 | `result-track:0931e02fdc91ba4f4d670a396ab08d836a6617412fe724109bbb6c9b2dac2484` |
| 7 | `lemma` | [exists_isCartanSubalgebra_engel_of_finrank_le_card](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/exists-iscartansubalgebra-engel-of-finrank-le-card--2e5965350a213a48c8605593.md) | 348 | `result-track:2e5965350a213a48c8605593170f16c5f103f0118b29a1b34953dd9d59220032` |
| 8 | `lemma` | [exists_isCartanSubalgebra_engel](../../../../mathematics/Algebra/CartanExists/Variant3b1e31391bb467659cad301f0f983a1a1a08969e4cfe93639ef3d47a2d030266.lean/declarations/exists-iscartansubalgebra-engel--e00ecf428cf439eacdd73320.md) | 366 | `result-track:e00ecf428cf439eacdd733207058480d9d14f1a6a11b2b9ffa0d1af38562431a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
