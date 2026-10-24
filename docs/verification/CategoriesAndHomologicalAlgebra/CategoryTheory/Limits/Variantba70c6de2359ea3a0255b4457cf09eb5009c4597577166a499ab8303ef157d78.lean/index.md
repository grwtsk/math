# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450770693988fc5ca8467f8f944c36b3406e4333",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450770693988fc5ca8467f8f944c36b3406e4333`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/limit--bd1b0eef43a5f00e105d2cf7.md) | 40 | `declaration-track:bd1b0eef43a5f00e105d2cf75fbbc38ef5fb73889b62eb26e6653913086411aa` |
| 2 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/limitcone--9da1807d208122d4adea6283.md) | 48 | `declaration-track:9da1807d208122d4adea6283fc7adc8b065719c825916e7abab1bc7a41feda1b` |
| 3 | `def` | [forgetMapConeLimitConeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/forgetmapconelimitconeiso--2c6dbc1b8cb2e0034a4181bb.md) | 59 | `declaration-track:2c6dbc1b8cb2e0034a4181bbf6a1da60f41d31b8d672b89a91cb5c7bd6207ba0` |
| 4 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/limitconeislimit--7e9bd978fec105592b1afc04.md) | 69 | `declaration-track:7e9bd978fec105592b1afc049a6c52a1ff0892c56e2a991e7a723608594b314c` |
| 5 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/haslimits--1eb60a8df55ca17ccd6f1379.md) | 85 | `declaration-track:1eb60a8df55ca17ccd6f1379d14dabc2fec37bf4e2723db99d486f283bbebfa4` |
| 6 | `instance` | [forgetPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/declarations/forgetpreserveslimits--476edb09e60b50e393713b49.md) | 94 | `declaration-track:476edb09e60b50e393713b49789963e17e83ced3ae482c1358412b97f7a58085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
