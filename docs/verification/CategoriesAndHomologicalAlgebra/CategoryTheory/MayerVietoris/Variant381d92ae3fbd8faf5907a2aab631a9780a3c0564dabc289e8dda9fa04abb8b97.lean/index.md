# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MayerVietoris.Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df11ee0aa973db7c32e3e017173d6ac00ae2ca38",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df11ee0aa973db7c32e3e017173d6ac00ae2ca38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.MayerVietorisSquare` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Spaces` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mayerVietorisSquare'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/declarations/mayervietorissquare--08c91ce81197ccd98ff9a7b8.md) | 46 | `declaration-track:08c91ce81197ccd98ff9a7b819b84441d935d33a7d4513b8949c2f704cd5063f` |
| 2 | `def` | [mayerVietorisSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/declarations/mayervietorissquare--9cd1e12dce0dd31cf967ebd4.md) | 67 | `declaration-track:9cd1e12dce0dd31cf967ebd4ab78b4ed959a38905eaec8da1d3e42e523c4d7f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
