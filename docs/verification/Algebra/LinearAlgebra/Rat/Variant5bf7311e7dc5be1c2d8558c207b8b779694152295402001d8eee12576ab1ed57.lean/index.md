# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68dc81821f5cf2cc164aa39420c516bf0faa11db",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68dc81821f5cf2cc164aa39420c516bf0faa11db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidHom.toRatLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean/declarations/addmonoidhom-toratlinearmap--4c4937d5968e06385d5649d8.md) | 19 | `declaration-track:4c4937d5968e06385d5649d8addff38d1b6b8e09dabbfcd0db0d90fac5041e32` |
| 2 | `theorem` | [AddMonoidHom.toRatLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean/declarations/addmonoidhom-toratlinearmap-injective--6900a34f3e94e5cfa99b7092.md) | 23 | `result-track:6900a34f3e94e5cfa99b70927b9afa5ece33f6221ea10aac92e965c0cbf57893` |
| 3 | `theorem` | [AddMonoidHom.coe_toRatLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean/declarations/addmonoidhom-coe-toratlinearmap--97ce1175585fb2d8b9deaf03.md) | 30 | `result-track:97ce1175585fb2d8b9deaf030b60fe4038f6122fc413912f70becb61470e4cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
