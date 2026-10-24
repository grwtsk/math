# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Spaces.Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb04f06d653f2b05379481e73a71800afbb9dfa4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb04f06d653f2b05379481e73a71800afbb9dfa4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Grothendieck` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/declarations/grothendiecktopology--6595ce186718e02823b4ffba.md) | 52 | `declaration-track:6595ce186718e02823b4ffbaee2a40aaf29944cfe3fd487819e3bc626d9cee2a` |
| 2 | `def` | [pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/declarations/pretopology--b2fb76ae379328339c7af785.md) | 65 | `declaration-track:b2fb76ae379328339c7af785c1c18c65c8f25fc8e08b3a45343c2f1a027b2f43` |
| 3 | `theorem` | [pretopology_ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/declarations/pretopology-ofgrothendieck--ed9e43320cfa30be211b0f9b.md) | 82 | `result-track:ed9e43320cfa30be211b0f9bfdff3cf2fc827d5e4bb2aa08b24e8a97612daf14` |
| 4 | `theorem` | [pretopology_toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/declarations/pretopology-togrothendieck--efb1c9c184fc4246ba5c7c1d.md) | 95 | `result-track:efb1c9c184fc4246ba5c7c1d8d08da548ff22a7626a0ce9fede8f77a6ccfdbe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
