# Verification target: GRWTSK.Topology.AlgebraicTopology.Shape.Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50d79d0810c3536b4358065fab002a9331e9c3ab",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50d79d0810c3536b4358065fab002a9331e9c3ab`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.Truncated` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Shape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/shape--899afa97e775b9ab7bba3045.md) | 25 | `declaration-track:899afa97e775b9ab7bba30457ead4d3f9431b0c190296c0e6010be99447504ea` |
| 2 | `abbrev` | [SimplexOperator](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/simplexoperator--6cd50ee3755b6fea6dd32db7.md) | 28 | `declaration-track:6cd50ee3755b6fea6dd32db7603d15ab2e1a41eccc0934efd7bc4fb23eeed042` |
| 3 | `abbrev` | [Cell](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/cell--94b19b544abe53bf1f06ec9b.md) | 34 | `declaration-track:94b19b544abe53bf1f06ec9b5975df807d78170f64460456a72206feb4bae87a` |
| 4 | `def` | [restrict](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/restrict--715ff6b5d47937ecf923b676.md) | 38 | `declaration-track:715ff6b5d47937ecf923b676c55dda3f7a910168f3c10f6fc0046c4f5323ae81` |
| 5 | `def` | [face](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/face--4d8fe7e6f83d1c50d9e5d7e9.md) | 43 | `declaration-track:4d8fe7e6f83d1c50d9e5d7e9205de9527ec0c135ef0aa2c99c2c8b6c3abfec0b` |
| 6 | `def` | [degeneracy](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/degeneracy--caf9b6eee0a3d53f070eb937.md) | 48 | `declaration-track:caf9b6eee0a3d53f070eb9378b3c8d3350188b9d2c6e79451f38760a9b995ae5` |
| 7 | `theorem` | [restrict_id](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/restrict-id--d7ca18cd9f9371ac2043ea8a.md) | 53 | `result-track:d7ca18cd9f9371ac2043ea8a752d5d7b888b5557019f3818406a0248d94abde1` |
| 8 | `theorem` | [restrict_comp](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/restrict-comp--c3ce7800cab2e43896236e32.md) | 58 | `result-track:c3ce7800cab2e43896236e324ed44fbba03f4e21ac305e220c985d63a40d32a5` |
| 9 | `theorem` | [restrict_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/restrict-naturality--74c8442a7808152459fe0031.md) | 65 | `result-track:74c8442a7808152459fe00310e971918199e8caa4d2312011ea7a30c6f21c1e8` |
| 10 | `abbrev` | [compMap](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/compmap--7bd0e6e1e85c81c39443153f.md) | 76 | `declaration-track:7bd0e6e1e85c81c39443153fcd1cdde670df8a3fcfdac0b956327683bcefd894` |
| 11 | `theorem` | [compMap_app_apply](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/compmap-app-apply--23661454b1f59c7d4f16dd57.md) | 80 | `result-track:23661454b1f59c7d4f16dd570d3eff2eb4e606451ef7e4897dbcc578f0a28da9` |
| 12 | `theorem` | [face_eq_map](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/face-eq-map--e273cc7ed1f00cb7750b4071.md) | 86 | `result-track:e273cc7ed1f00cb7750b4071c4786f92689b521a14750d8f6eae97ab406a6c54` |
| 13 | `theorem` | [degeneracy_eq_map](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/degeneracy-eq-map--6c8a8928c3ac8117038e6a50.md) | 92 | `result-track:6c8a8928c3ac8117038e6a50550983944c9908199dc34716dd27ecae12a5a5ff` |
| 14 | `structure` | [FiniteShape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/finiteshape--8e14af8464a81ee96e6e8463.md) | 100 | `declaration-track:8e14af8464a81ee96e6e84634a5133b398e8bda04fa2ace09b20b716c20ac47e` |
| 15 | `structure` | [TruncatedShape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/truncatedshape--40c846051b54c0996ab873dc.md) | 105 | `declaration-track:40c846051b54c0996ab873dc17b224ea9bd13dd3ec8a19f7bf5651309378825d` |
| 16 | `def` | [Cell](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant1f3102b45972d1aac6de2a99e4e07c2a7cf241d830188e30d3b1bc8dc1963e3c.lean/declarations/cell--85755dc0227086305c470bc2.md) | 111 | `declaration-track:85755dc0227086305c470bc209db5dff08145511dbbd95424eb468671a8f1a4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
