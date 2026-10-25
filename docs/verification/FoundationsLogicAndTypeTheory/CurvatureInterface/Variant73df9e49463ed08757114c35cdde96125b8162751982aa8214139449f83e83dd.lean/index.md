# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CurvatureInterface.Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42945280b1f60be41faca01710217de183331054",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42945280b1f60be41faca01710217de183331054`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CurvatureSemantics](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/curvaturesemantics--5a021a637ea90190469273cb.md) | 29 | `declaration-track:5a021a637ea90190469273cb3f1e0b0148d6057528320bcb744e6254f0b20f22` |
| 2 | `def` | [IsDiscrete](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/isdiscrete--5df6d100b551b1d044e2fef6.md) | 39 | `declaration-track:5df6d100b551b1d044e2fef615e7dc1decda1e5d31a0d5af426a152d3ebe84c5` |
| 3 | `theorem` | [isDiscrete_ne_smoothManifold](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/isdiscrete-ne-smoothmanifold--4a3eaeecf0718873cfdea4ee.md) | 43 | `result-track:4a3eaeecf0718873cfdea4ee6d078bbf9739a5d4ecc449ce2b19631a1ef78104` |
| 4 | `structure` | [DiscreteCurvatureModel](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/discretecurvaturemodel--8322d807a1a3aced0236b752.md) | 59 | `declaration-track:8322d807a1a3aced0236b7526594364a92ac1e0ff90937b3d60e098e991038dc` |
| 5 | `theorem` | [semantics_ne_smoothManifold](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/semantics-ne-smoothmanifold--19ba1242f178875d45d19226.md) | 84 | `result-track:19ba1242f178875d45d19226ff06d907b81c312bc0502bffcb6ca6481662f71d` |
| 6 | `theorem` | [weight_eq_zero_of_not_adjacent](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/declarations/weight-eq-zero-of-not-adjacent--e8da0c00850aa294515831d8.md) | 91 | `result-track:e8da0c00850aa294515831d839cf444f1693b483f0798ac68c4a4a529209fabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
