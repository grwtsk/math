# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DegreeSum.Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a7a15a9053d450830a51dc5f0e13f7c294970dc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a7a15a9053d450830a51dc5f0e13f7c294970dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Parity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dart_fst_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-fst-fiber--94dc6179cd615198da7ffb00.md) | 58 | `result-track:94dc6179cd615198da7ffb0089b51f636e8899936a3fcbb27f36e5b3b329274a` |
| 2 | `theorem` | [dart_fst_fiber_card_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-fst-fiber-card-eq-degree--0c4448cb2e86cb0c4b21d499.md) | 69 | `result-track:0c4448cb2e86cb0c4b21d4996dd56bb8245d8ceee506942f32cdcaec84ad9e00` |
| 3 | `theorem` | [dart_card_eq_sum_degrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-card-eq-sum-degrees--5d34ad94c54a4381f393baae.md) | 75 | `result-track:5d34ad94c54a4381f393baae3ebc37441ed8984f123ecf41c9bb8d71451ed138` |
| 4 | `theorem` | [Dart.edge_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-edge-fiber--c0da674c2dff6846cdbf8b5a.md) | 83 | `result-track:c0da674c2dff6846cdbf8b5a01dd9e42567f8d9609659fc5bf45ea21debcf9ba` |
| 5 | `theorem` | [dart_edge_fiber_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-edge-fiber-card--93981aca3f0abbed76beb3b7.md) | 90 | `result-track:93981aca3f0abbed76beb3b7bcf02e8ff99cae7673e182f44a6b4eddd8516881` |
| 6 | `theorem` | [dart_card_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/dart-card-eq-twice-card-edges--0f92af903823bda9d148eb24.md) | 100 | `result-track:0f92af903823bda9d148eb24b004911aaf08e326745fa3ceee8cc295d7057a80` |
| 7 | `theorem` | [sum_degrees_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/sum-degrees-eq-twice-card-edges--6c972ceae7de00e8a0b64099.md) | 112 | `result-track:6c972ceae7de00e8a0b64099867b1ee9ea12da68f704be5180febd6b3fafbd9f` |
| 8 | `theorem` | [even_card_odd_degree_vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/even-card-odd-degree-vertices--9d2660bc11e31491a4fa1331.md) | 119 | `result-track:9d2660bc11e31491a4fa1331ea568ec45652615e54d2a1d7e0090db6038e82e8` |
| 9 | `theorem` | [odd_card_odd_degree_vertices_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/odd-card-odd-degree-vertices-ne--1f61f71a36ea2c1c092bdd09.md) | 136 | `result-track:1f61f71a36ea2c1c092bdd0953298718f42bc1652a0fc611f09073efc14a4ff4` |
| 10 | `theorem` | [exists_ne_odd_degree_of_exists_odd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantb351a24bb52a17153643d2ff8f9ceb50606e6dad4c4e2e419c6d0a0adad2d31d.lean/declarations/exists-ne-odd-degree-of-exists-odd-degree--c9f6b5d5e111e1ca2ccace58.md) | 158 | `result-track:c9f6b5d5e111e1ca2ccace58350b86c230f7d8dc305d50b9c1d15410ac55926b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
