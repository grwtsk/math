# Verification target: GRWTSK.Algebra.UniversalAlgebra.Floor.Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177828e20a255ad2bb73152266e19c75f0fdf518",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177828e20a255ad2bb73152266e19c75f0fdf518`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [floorSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean/declarations/floorsemiring--d5b0ee787556526c6bcfa088.md) | 40 | `declaration-track:d5b0ee787556526c6bcfa088bf4db17eefe51eb25b5bc6734d5f6ad7a77fe320` |
| 2 | `theorem` | [nat_floor_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean/declarations/nat-floor-coe--9cf947deece745c0acf85e0d.md) | 49 | `result-track:9cf947deece745c0acf85e0d60031b2780f2a0213989b541135c84dfcbba98f0` |
| 3 | `theorem` | [nat_ceil_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variant36655477ca581e2a40dc295e665b5517e569017810a54869a39585dd4f15a696.lean/declarations/nat-ceil-coe--9efbfe87f5b2b469bf9a2610.md) | 55 | `result-track:9efbfe87f5b2b469bf9a2610e4ded1b19a84005840e4e257f28dac0d328d5913` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
