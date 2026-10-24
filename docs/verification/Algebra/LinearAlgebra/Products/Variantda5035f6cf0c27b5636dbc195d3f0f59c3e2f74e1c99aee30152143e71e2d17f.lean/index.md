# Verification target: GRWTSK.Algebra.LinearAlgebra.Products.Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd6f2a722dee488b95c2601d56174e057f9ac10",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd6f2a722dee488b95c2601d56174e057f9ac10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/productcone--f1dedebdce1891d15899e577.md) | 38 | `declaration-track:f1dedebdce1891d15899e577fe78d029ef4de24a515186c77570a38b66f9969f` |
| 2 | `def` | [productConeIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/productconeislimit--cb802824b8f9294c051008c0.md) | 43 | `declaration-track:cb802824b8f9294c051008c02440148751cc919e7954de558d28e600ed494232` |
| 3 | `def` | [piIsoPi](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/piisopi--96225ce96432d6d106172346.md) | 57 | `declaration-track:96225ce96432d6d106172346c2807cbb4005f4c9261af8a09c6a3e8ae85085f1` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/piisopi-inv-kernel--e8f055a06716a0d9bc455302.md) | 62 | `result-track:e8f055a06716a0d9bc455302f969c0ebf4ac19b467fdaf8baa7f698212ca5bc9` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/piisopi-hom-ker-subtype--a8c14bb3675223500a4d293c.md) | 67 | `result-track:a8c14bb3675223500a4d293c9ee84b073ce37c894b4ce314ca7257f0665c63c6` |
| 6 | `def` | [coproductCocone](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/coproductcocone--219cafc02bdf7fa55bf74b52.md) | 80 | `declaration-track:219cafc02bdf7fa55bf74b527c3b566e2b44046cb01f65a28a5e41d17e07034d` |
| 7 | `def` | [coproductCoconeIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/coproductcoconeiscolimit--641521f525bd2054fa712283.md) | 84 | `declaration-track:641521f525bd2054fa712283235cbc2587613035fe1b60032dd4a24b4960f246` |
| 8 | `def` | [coprodIsoDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/coprodisodirectsum--e5f111e0170fbc586e1cbfd4.md) | 105 | `declaration-track:e5f111e0170fbc586e1cbfd490dbc140aa320a6954ec9a1b74d0cb81065c67b4` |
| 9 | `theorem` | [ι_coprodIsoDirectSum_hom](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/coprodisodirectsum-hom--b6a033b7fe30fa8e6339da49.md) | 109 | `result-track:b6a033b7fe30fa8e6339da49d5abb192e7497758f576c64f2c1c67e9c4fae635` |
| 10 | `theorem` | [lof_coprodIsoDirectSum_inv](../../../../../mathematics/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/declarations/lof-coprodisodirectsum-inv--c85bc9e86d52b42aca0a28b5.md) | 114 | `result-track:c85bc9e86d52b42aca0a28b54c96bbdd0ea8cdf2fb8e6398ba6a16ac0ff088f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
