# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2e6ca675cf5674beb4a9a522c50077733d5d96b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2e6ca675cf5674beb4a9a522c50077733d5d96b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Limits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/instance--96ce508533b2ec098dc357a7.md) | 34 | `declaration-track:96ce508533b2ec098dc357a77a88473da46bed487f097908dd4a0cf3c7d3aa9a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/instance--0d69dfd68e88f531ea1a114a.md) | 37 | `declaration-track:0d69dfd68e88f531ea1a114a98dd4ab4cd52482bd3b3b2c84c23b5894cef7b79` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/binaryproductlimitcone--dd48d9c7e02b7d28c6ad27af.md) | 46 | `declaration-track:dd48d9c7e02b7d28c6ad27af10f0a8515cff7c6456c5269988267edb1f77026f` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/binaryproductlimitcone-cone-app-left--2c564d88fad67a9b369ad667.md) | 52 | `result-track:2c564d88fad67a9b369ad6673c47ffc1d40d33d62bd5ae0d26a237699a94e3d0` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/binaryproductlimitcone-cone-app-right--faf5e5d6abae298aca365bd6.md) | 57 | `result-track:faf5e5d6abae298aca365bd65eb010d59e4e6a638a20dbcebee4c8d894b77fb0` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/biprodisoprod--2d11bea55e0db743f6cdcb72.md) | 64 | `declaration-track:2d11bea55e0db743f6cdcb727510bfbc44c626ed1f7e7eb4d098485d535f34fa` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/biprodisoprod-inv-comp-fst--fae7d956b5b0eb852e77a317.md) | 69 | `result-track:fae7d956b5b0eb852e77a31786d26c62019bb86cbf560518938b5a1c7a1a6a7f` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/biprodisoprod-inv-comp-snd--026807e589a57926085af812.md) | 74 | `result-track:026807e589a57926085af81299f79972946ef451d45519b0c110669ced39e206` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/lift--bc2af352b754278a012c7a4d.md) | 86 | `declaration-track:bc2af352b754278a012c7a4db866361a91435102305d96f41758b5f956618280` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/productlimitcone--7cb7d2cd7fc9736b852432a2.md) | 100 | `declaration-track:7cb7d2cd7fc9736b852432a28aaf64f7337a28efb8589965fb9387b4d91a535e` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/biproductisopi--3c304e4f0b887393f95d46ee.md) | 120 | `declaration-track:3c304e4f0b887393f95d46ee8de2d6ddc212fdd121cfb00bb530819f8f2e1b6e` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e.lean/declarations/biproductisopi-inv-comp--08a2fa23ae69117ef17c0b0d.md) | 125 | `result-track:08a2fa23ae69117ef17c0b0dd795cf225a97727e6e92d18992f98e2f7b13b7d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
