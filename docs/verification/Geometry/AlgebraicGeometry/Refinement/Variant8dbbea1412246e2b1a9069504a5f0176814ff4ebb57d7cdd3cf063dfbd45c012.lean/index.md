# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Refinement.Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6bb8248560a1e4ba40bc95ca89164b2072f9eaa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6bb8248560a1e4ba40bc95ca89164b2072f9eaa`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Refinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/refinement--f21c24f30fc48732ef44e07d.md) | 22 | `declaration-track:f21c24f30fc48732ef44e07d27cf3ea276d7b015222b77a53b024e701c011d30` |
| 2 | `theorem` | [valid_run](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/valid-run--bd322459a5a49d5d6066b5db.md) | 49 | `result-track:bd322459a5a49d5d6066b5db39a852627af49adffc2d5141885c5d05a273cfb0` |
| 3 | `theorem` | [abstract_run](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/abstract-run--93c7a1339e413916c70aa96e.md) | 62 | `result-track:93c7a1339e413916c70aa96e910d93ede8834f952063f0c761338698ff17f296` |
| 4 | `theorem` | [observe_run_sound](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/observe-run-sound--4725c5ee366fa4e1c157c696.md) | 76 | `result-track:4725c5ee366fa4e1c157c696d1a18e32d47f61e7059a8402807012f4411ab8bf` |
| 5 | `structure` | [RepresentationRefinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/representationrefinement--7ca020b9df7c2bf481bc42d7.md) | 91 | `declaration-track:7ca020b9df7c2bf481bc42d7d4df6b81763cbcea6c1950a798a18378c4f46790` |
| 6 | `theorem` | [abstract_represent_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/abstract-represent-apply--68761be8c50c800a66fefc02.md) | 106 | `result-track:68761be8c50c800a66fefc023a5c1ac875767611f94bcdd169baaef55d571637` |
| 7 | `theorem` | [represent_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Refinement/Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012.lean/declarations/represent-injective--e29f3a0790e635b30bbb6a7b.md) | 113 | `result-track:e29f3a0790e635b30bbb6a7be4d70cbc6a41fc0985317a3a86e1a5f8bfcda7e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
