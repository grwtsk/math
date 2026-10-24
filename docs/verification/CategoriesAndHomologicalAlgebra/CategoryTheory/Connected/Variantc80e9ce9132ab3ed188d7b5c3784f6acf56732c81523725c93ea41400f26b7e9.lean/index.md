# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7284e42bab61436f13033904db6590be312744a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7284e42bab61436f13033904db6590be312744a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natTransInOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/nattransinover--e377e4ee7f8a8eb91458e011.md) | 44 | `declaration-track:e377e4ee7f8a8eb91458e01118deb355b1e0eb135c4e3ef5537271bc1f87eade` |
| 2 | `def` | [raiseCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/raisecone--9b39993465337707de4cc9c9.md) | 52 | `declaration-track:9b39993465337707de4cc9c9e0487b88d9c7cff06556ffeff63d58724e1d95eb` |
| 3 | `theorem` | [raised_cone_lowers_to_original](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/raised-cone-lowers-to-original--4af3520e754158902be0e842.md) | 64 | `result-track:4af3520e754158902be0e8424272dead24cdb8db544c97e6c7e3e696dcf94bb5` |
| 4 | `def` | [raisedConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/raisedconeislimit--18002215b920f8ada795b177.md) | 69 | `declaration-track:18002215b920f8ada795b17748abff38f5df36b70726a16a5df75e9143d7ca39` |
| 5 | `instance` | [forgetCreatesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/forgetcreatesconnectedlimits--596d28909ba2d16ac8eee29c.md) | 82 | `declaration-track:596d28909ba2d16ac8eee29c9447d6038361dcc8f47dcb7a3627d5a58c518ce0` |
| 6 | `instance` | [has_connected_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantc80e9ce9132ab3ed188d7b5c3784f6acf56732c81523725c93ea41400f26b7e9.lean/declarations/has-connected-limits--42898082f7dc7942e219f518.md) | 91 | `declaration-track:42898082f7dc7942e219f518ebfb79de919b5303e3d201668061f6be0546ff3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
